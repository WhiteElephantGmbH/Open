/*******************************************************************************
*
*  FREESCALE SEMICONDUCTOR INC. 2005
*  ALL RIGHTS RESERVED
*  COPYRIGHT (c)
*  
********************************************************************************
*                                                                      
*  DESCRIPTION:
*   Analog sensing function for DC motors (set3)
*
********************************************************************************
*
*  REVISION HISTORY:
*                                                         
*  REVISION   AUTHOR       DATE        DESCRIPTION OF CHANGE                  
*  --------   -----------  ---------   ------------------------------------                  
*  0.1        M.Princ      18/Feb/05   Initial version derived from ASENSE func.
*  1.0        M.Brejl      22/Feb/05   A couple of assembler code optimizations.
*  1.1        M.Princ      16/Mar/05   Sign switch option added.
*  1.2        M.Princ      03/Jan/06   Fixed for ETPU_C 1.0.7.
* 
********************************************************************************/
#ifdef __ETEC__  // ASH WARE
#include <etpu_std.h>
#else  // Byte Craft
#ifndef __ETPUC_H
#include <etpuc.h>          /* Defines eTPU hardware */
#endif
#ifndef __ETPUC_COMMON_H
#include <eTPUc_common.h>   /* Standard way to use eTPU */
#endif
#endif

/***********************************/
/* Verify performance requirements */
/***********************************/
#ifdef __ETEC__  // ASH WARE
#pragma verify_wctl  ASDC                71  steps  30 rams
#pragma exclude_wctl ASDC::ASDC_Error
#endif

#ifdef ASDC_FUNCTION_NUMBER /* function is being compiled as part of a set3 */
#pragma ETPU_function ASDC, standard @ ASDC_FUNCTION_NUMBER;
#else
#pragma ETPU_function ASDC, standard;
#endif

/************************************************************************
*  Definitions. 
*************************************************************************/
/* HSR values */
#define ASDC_HSR_INIT_HIGH_PERIOD_MODE   7
#define ASDC_HSR_INIT_HIGH_SYNC_MODE     6
#define ASDC_HSR_INIT_LOW_PERIOD_MODE    5
#define ASDC_HSR_INIT_LOW_SYNC_MODE      4
#define ASDC_HSR_MEASURE_DC_OFFSETS      2

/* FM modes */
#define ASDC_SIGNUM_SAMPLE_A_OFF     fm0 == 0
#define ASDC_SIGNUM_SAMPLE_A_ON      fm0 == 1
#define ASDC_SIGNUM_SAMPLE_B_OFF     fm1 == 0
#define ASDC_SIGNUM_SAMPLE_B_ON      fm1 == 1

/* Sample masks */
#define ASDC_SAMPLE_A                 0x01
#define ASDC_SAMPLE_B                 0x02

/************************************************************************
* NAME: ASDC
*
* DESCRIPTION: Analog Sensing for DC motors.
* 
* FUNCTION PARAMETERS:
*
*  period            - Applies in master mode only:
*                      Update period (in TCR1 ticks).
*  start_offset      - In master mode:
*                      Offset from initialization to first match (in TCR1 ticks)
*                      In slave mode:
*                      Offset from PWM edge time to trigger edge.
*  * p_edge_time     - Pointer to PWM edge time value.
*   measure_time     - Time from triggering edge to the second edge,
*                      at which the result queue is supposed to be ready
*                      in the DATA_RAM (in TCR1 clocks).
*  periods_per_outerloop - Number of periods per one link to outerloop channel.
*  outerloop_chan    - Channel on which the Outer-Loop Controller runs.       
*  innerloop_chan    - Channel on which the Inner-Loop Controller runs. 
*  * result_queue    - Pointer to the result queue. Result queue is a filed of
*                      16-bit items.
*  queue_offset_a    - Sample A position in the result queue - offset in bytes.
*  queue_offset_b    - Sample B position in the result queue - offset in bytes.
*  bit_shift         - How to align data from result queue 
*                      into fract24 (or int24):
*                            0: shift left by 8
*                            1: shift left by 10
*                            2: shift left by 12
*                            3: shift left by 16
*  dc_offset_a       - DC offset to remove from the measured value.
*  dc_offset_b       - DC offset to remove from the measured value.
*  forget_factor_a   - EWMA filter "Forgetting Factor". Maximum 0x7FFFFF.
*  forget_factor_b   - EWMA filter "Forgetting Factor". Maximum 0x7FFFFF.
*  output_a          - Preprocessed sample A.
*  output_b          - Preprocessed sample B.
*  * p_output_a      - Pointer to ASDC output_a receiver.                                                           
*  * p_output_b      - Pointer to ASDC output_b receiver.                                                           
*  measure_dc_offset_mask- The measure_dc_offset_mask determines 
*                          which samples are used as dc_offsets 
*                          in MEASURE_DC_OFFSETS.
*  measure_samples_mask  - The measure_samples_mask determines if sample A only
*                          or both sample A and sample B are processed. 
*  * p_sign_a        - Pointer to a parameter which determines sign switch
*                      of output_a.
*  * p_sign_b        - Pointer to a parameter which determines sign switch
*                      of output_b.
*                                     
*************************************************************************/
void ASDC( int24   period,
           int24   start_offset,
           int24 * p_edge_time,
           int24   measure_time,
  unsigned int24   periods_per_outerloop,
  unsigned int8    outerloop_chan,
  unsigned int8    innerloop_chan,
  unsigned int16 * result_queue,
  unsigned int8    queue_offset_a,
  unsigned int8    queue_offset_b,
  unsigned int24   bit_shift,
  unsigned int24   dc_offset_a,
  unsigned int24   dc_offset_b,
           fract24 forget_factor_a,
           fract24 forget_factor_b,
           int24   output_a,
           int24   output_b,
           int24 * p_output_a,     /* fract24 * p_output_a */
           int24 * p_output_b,     /* fract24 * p_output_b */
  unsigned int8    measure_dc_offset_mask,
  unsigned int8    measure_samples_mask,
           int24 * p_sign_a,
           int24 * p_sign_b
         )
{
   static int24 edge_time;         /* Time of first edge. Updated each period. */
   static int24 period_counter;    /* Counts down from periods_per_outerloop to zero. */

   
   /**********************************************
   * ASDC Channel Initialization;
   * measure_time signal has active-low polarity.
   * periodic mode.
   **********************************************/
   if (hsr==ASDC_HSR_INIT_LOW_PERIOD_MODE)
   {
ASDC_InitActiveLowPeriodicMode:
      OnMatchA(PinLow);
      OnMatchB(PinHigh);
      EnableOutputBuffer();
      SetPinPerPacB();              /* Set pin to inactive state. */
      ClearAllLatches();

      goto ASDC_INIT_PERIODIC;
   }
   /**********************************************
   * ASDC Channel Initialization;
   * measure_time signal has active-low polarity.
   * PWM synchronized mode
   **********************************************/
   else if (hsr==ASDC_HSR_INIT_LOW_SYNC_MODE)
   {
ASDC_InitActiveLowSynchMode:
      OnMatchA(PinLow);
      OnMatchB(PinHigh);
      EnableOutputBuffer();
      SetPinPerPacB();              /* Set pin to inactive state. */
      ClearAllLatches();

      goto ASDC_INIT_PWMSYNC;
   }
   /**********************************************
   * ASDC Channel Initialization;
   * measure_time signal has active-high polarity.
   * PWM synchronized mode.
   **********************************************/
   else if(hsr==ASDC_HSR_INIT_HIGH_SYNC_MODE)
   {
ASDC_InitHighSynchMode:
      OnMatchA(PinHigh);
      OnMatchB(PinLow);
      EnableOutputBuffer();
      SetPinPerPacB();              /* Set pin to inactive state. */
      ClearAllLatches();
ASDC_INIT_PWMSYNC:
      Set(flag0);           /* PWM synchronized mode */
      erta = *p_edge_time;  /* First match will be scheduled from PWMM edge_time */

      goto ASDC_INIT;
   }
   /**********************************************
   * ASDC Channel Initialization;
   * measure_time signal has active-high polarity.
   * periodic mode.
   **********************************************/
   else if(hsr==ASDC_HSR_INIT_HIGH_PERIOD_MODE)
   {
ASDC_InitHighPeriodicMode:
      OnMatchA(PinHigh);
      OnMatchB(PinLow);
      EnableOutputBuffer();
      SetPinPerPacB();              /* Set pin to inactive state. */
      ClearAllLatches();
ASDC_INIT_PERIODIC:
      Clear(flag0);   /* Periodic mode */
      erta = tcr1;    /* First match will be scheduled from current time */
ASDC_INIT:
      ActionUnitA( MatchTCR1, CaptureTCR1, GreaterEqual);
      ActionUnitB( MatchTCR1, CaptureTCR1, GreaterEqual);
      OnTransA(NoDetect);
      OnTransB(NoDetect);
      EitherMatchNonBlockingSingleTransition();

      erta += start_offset;         /* Schedule first match */
      period_counter=periods_per_outerloop; /* Reset periods_counter */
      edge_time = erta;             /* Save match time to edge-time */
      
      *p_output_a = 0;              /* Reset EWMA last value */
      *p_output_b = 0;              /* Reset EWMA last value */

      EnableMatchA();
      EnableEventHandling();
   }
   /**********************************************
   * MEASURE DC OFFSETS
   **********************************************/
   else if(hsr==ASDC_HSR_MEASURE_DC_OFFSETS)
   {
ASDC_MeasureDcOffsets:
      if (measure_dc_offset_mask & ASDC_SAMPLE_A)
      {
        dc_offset_a += output_a; /* += enables to measure DC offset repeatably */
      }
      if (measure_dc_offset_mask & ASDC_SAMPLE_B)
      {
        dc_offset_b += output_b;
      }
   }
   /**********************************************
   * First Match - periodic mode
   **********************************************/
   else if((m1==1) && (flag0==0))
   {
ASDC_FirstMatchPeriodicMode:
      erta = edge_time + period; /* Schedule next match A. */
      goto ASDC_MATCH1;
   }
   /**********************************************
   * First Match - PWM synchronized mode
   **********************************************/
   else if((m1==1) && (flag0==1))
   {
ASDC_FirstMatchSynchMode:
      erta = *p_edge_time + start_offset;           /* Read next edge-time from PWMM, add offset. */
ASDC_MATCH1:
      SetDataTransferInterruptRequest();            /* Generate DMA request. */
      SetChannelInterrupt();                        /* Generate Interrupt. */
      ertb = edge_time + measure_time;              /* Schedule match B. */
      edge_time = erta;

      ClearMatchALatch();                           /* Clear matchA event. */
      EnableMatchA();                               /* Write ErtA to MatchA and Enable. */
      EnableMatchB();                               /* Write ErtB to MatchB and Enable. */

      /**********************************************
      * Send link each periods_per_outerloop period.
      **********************************************/
      if ( --period_counter == 0 )
      {
         period_counter = periods_per_outerloop;  /* Reset service counter */
         LinkTo(outerloop_chan);
      }
   }
   /**********************************************
   * Second Match.
   **********************************************/
   else if (m2==1)
   {
ASDC_SecondMatch:
      /* Sample_A is processed each time */
#asm
      /* Read sample from result queue */
      ram p31_24 <- queue_offset_a.
      alu a = p31_24;
      ram diob <- result_queue.
      alu diob = diob + a.
      alu nil = diob & 0x02, ccs.
      ram p31_0 <- by diob.
      alu_if Z == 1 then p15_0 = p31_16.
#if 0
      /* Remove DC offset */
      ram diob <- dc_offset_a.
      alu a = p15_0 - diob;
      ram p <- bit_shift.   
      /* Perform bit shift 
           bit_shift = 0: <<8
           bit_shift = 1: <<10
           bit_shift = 2: <<12
           bit_shift = 3: <<16 */
      alu p = p - 1, ccs.
      if N == 1 then goto ASDC_EWMAA_0, no_flush.
      alu a =<<8 a.
      /*---------*/
      %hex 3F190FF9. /* <<2 or <<4 or <<8 */
#endif
      
      alu a = p15_0;
      ram p <- bit_shift.   
      /* Perform bit shift 
           bit_shift = 0: <<8
           bit_shift = 1: <<10
           bit_shift = 2: <<12
           bit_shift = 3: <<16 */
      alu p = p - 1, ccs;
      ram diob <- dc_offset_a.
      if N == 1 then goto ASDC_EWMAA_0, no_flush.
      alu a =<<8 a.
      /*---------*/
#endasm
#ifdef __ETEC__  // ASH WARE
	  // OBSOLETE: #asm( alu a = a << p. /* <<2 or <<4 or <<8   alu a = a << p. */ )
	  #asm( alu a = a << (2^^(p+1)). /* <<2 or <<4 or <<8 */ )
#else  // Byte Craft
      #asm( %hex 3F190FF9. )
#endif
#asm
ASDC_EWMAA_0:
      /* Remove DC offset */
      alu a = a - diob;
      ram diob <- p_output_a.

      /* EWMA filter */
      /* a = ((forget_factor_a) * (output_a)) + ((0x7FFFFF - forget_factor_a) * a); */
      ram p <- forget_factor_a.
      alu sr = p;
      ram p <- output_a.
      mdu sr mults p.
      alu sr = 0 - sr - 1.
      alu sr = sr + max.
      nop.
      mdu sr macs a.
ASDC_EWMAA_1:
      if mb == 1 then goto ASDC_EWMAA_1, flush.
      alu a =<< mach + #0x00.
      /* Save preprocessed sample_A to output_a */
      if ASDC_SIGNUM_SAMPLE_A_OFF then goto ASDC_EWMAA_2, no_flush.
      alu p = a;
      ram p -> output_a.
      /*---------*/
      /* Sign switch */
      ram diob <- p_sign_a.
      ram p <- by diob.
      alu nil = p ,ccs.
      if N == 0 then goto ASDC_EWMAA_2, no_flush.
      ram diob <- p_output_a.
      /*---------*/
      alu a = 0 - a.
ASDC_EWMAA_2:
      /* Save preprocessed sample_A after sign switch to p_output_a */
      alu p = a;
      ram p -> by diob.
#endasm

      /* Sample_B is processed optionally */
      if (measure_samples_mask & ASDC_SAMPLE_B)
      {
#asm
      /* Read sample from result queue */
        ram p31_24 <- queue_offset_b.
        alu a = p31_24;
        ram diob <- result_queue.
        alu diob = diob + a.
        alu nil = diob & 0x02, ccs.
        ram p31_0 <- by diob.
        alu_if Z == 1 then p15_0 = p31_16.
#if 0
        /* Remove DC offset */
        ram diob <- dc_offset_b.
        alu a = p15_0 - diob;
        ram p <- bit_shift.   
        /* Perform bit shift 
             bit_shift = 0: <<8
             bit_shift = 1: <<10
             bit_shift = 2: <<12
             bit_shift = 3: <<16 */
        alu p = p - 1, ccs.
        if N == 1 then goto ASDC_EWMAB_0, no_flush.
        alu a =<<8 a.
        /*---------*/
        %hex 3F190FF9. /* <<2 or <<4 or <<8 */
#endif

        alu a = p15_0;
        ram p <- bit_shift.   
        /* Perform bit shift 
             bit_shift = 0: <<8
             bit_shift = 1: <<10
             bit_shift = 2: <<12
             bit_shift = 3: <<16 */
        alu p = p - 1, ccs;
        ram diob <- dc_offset_b.
        if N == 1 then goto ASDC_EWMAB_0, no_flush.
        alu a =<<8 a.
        /*---------*/
#endasm
#ifdef __ETEC__  // ASH WARE
		//OBSOLETE: #asm( alu a = a << p. /* <<2 or <<4 or <<8   alu a = a << p. */ )
		#asm( alu a = a << (2^^(p+1)). /* <<2 or <<4 or <<8 */ )
#else  // Byte Craft
        #asm( %hex 3F190FF9. )
#endif
#asm
ASDC_EWMAB_0:
        /* Remove DC offset */
        alu a = a - diob;
        ram diob <- p_output_b.

        /* EWMA filter */
        /* a = ((forget_factor_b) * (output_b)) + ((0x7FFFFF - forget_factor_b) * a); */
        ram p <- forget_factor_b.
        alu sr = p;
        ram p <- output_b.
        mdu sr mults p.
        alu sr = 0 - sr - 1.
        alu sr = sr + max.
        nop.
        mdu sr macs a.
ASDC_EWMAB_1:
        if mb == 1 then goto ASDC_EWMAB_1, flush.
        alu a =<< mach + #0x00.
        /* Save preprocessed sample_B to output_b */
        if ASDC_SIGNUM_SAMPLE_B_OFF then goto ASDC_EWMAB_2, no_flush.
        alu p = a;
        ram p -> output_b.
        /*---------*/
        /* Sign switch */
        ram diob <- p_sign_b.
        ram p <- by diob.
        alu nil = p ,ccs.
        if N == 0 then goto ASDC_EWMAB_2, no_flush.
        ram diob <- p_output_b.
        /*---------*/
        alu a = 0 - a.
ASDC_EWMAB_2:
        /* Save preprocessed sample_B after sign switch to p_output_b */
        alu p = a;
        ram p -> by diob.
#endasm
      }
      
      ClearMatchBLatch();
      LinkTo(innerloop_chan);
   }
   else
   {
ASDC_Error:
#ifdef GLOBAL_ERROR_FUNC
      Global_Error_Func();
#else
      ClearAllLatches();
#endif
   }
}

/************************************************************************
*  Information exported to Host CPU program.
************************************************************************/
#pragma write h, (::ETPUfilename (cpu/etpu_asdc_auto.h));
#pragma write h, (/**************************************************************** );
#pragma write h, (* WARNING this file is automatically generated DO NOT EDIT IT!    );
#pragma write h, (*                                                                 );
#pragma write h, (* This file provides an interface between eTPU code and CPU       );
#pragma write h, (* code. All references to the ASDC function should be made with );
#pragma write h, (* information in this file. This allows only symbolic             );
#pragma write h, (* information to be referenced which allows the eTPU code to be   );
#pragma write h, (* optimized without effecting the CPU code.                       );
#pragma write h, (*****************************************************************/);
#pragma write h, (#ifndef _FS_ETPU_ASDC_AUTO_H_);
#pragma write h, (#define _FS_ETPU_ASDC_AUTO_H_);
#pragma write h, ( );
#pragma write h, (/****************************************************************);
#pragma write h, (* Function Configuration Information. );
#pragma write h, (****************************************************************/);
#pragma write h, (::ETPUliteral(#define FS_ETPU_ASDC_FUNCTION_NUMBER )                ASDC_FUNCTION_NUMBER );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ASDC_TABLE_SELECT    )                ::ETPUentrytype(ASDC));
#pragma write h, (::ETPUliteral(#define FS_ETPU_ASDC_NUM_PARMS       )                ::ETPUram(ASDC) );
#pragma write h, ( );
#pragma write h, (/****************************************************************);
#pragma write h, (* Host Service Request Definitions. );
#pragma write h, (****************************************************************/);
#pragma write h, (::ETPUliteral(#define FS_ASDC_HSR_INIT_HIGH_PERIOD_MODE          )  ASDC_HSR_INIT_HIGH_PERIOD_MODE );
#pragma write h, (::ETPUliteral(#define FS_ASDC_HSR_INIT_HIGH_SYNC_MODE            )  ASDC_HSR_INIT_HIGH_SYNC_MODE   );
#pragma write h, (::ETPUliteral(#define FS_ASDC_HSR_INIT_LOW_PERIOD_MODE           )  ASDC_HSR_INIT_LOW_PERIOD_MODE  );
#pragma write h, (::ETPUliteral(#define FS_ASDC_HSR_INIT_LOW_SYNC_MODE             )  ASDC_HSR_INIT_LOW_SYNC_MODE    );
#pragma write h, (::ETPUliteral(#define FS_ASDC_HSR_MEASURE_DC_OFFSETS             )  ASDC_HSR_MEASURE_DC_OFFSETS    );
#pragma write h, ( );
#pragma write h, (/****************************************************************);
#pragma write h, (* Parameter Definitions. );
#pragma write h, (****************************************************************/);
#pragma write h, (::ETPUliteral(#define FS_ETPU_ASDC_MEASURE_TIME_OFFSET           ) ::ETPUlocation (ASDC, measure_time            ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ASDC_PERIOD_OFFSET                 ) ::ETPUlocation (ASDC, period                  ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ASDC_P_EDGE_TIME_OFFSET            ) ::ETPUlocation (ASDC, p_edge_time             ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ASDC_START_OFFSET_OFFSET           ) ::ETPUlocation (ASDC, start_offset            ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ASDC_PERIODS_PER_OUTERLOOP_OFFSET  ) ::ETPUlocation (ASDC, periods_per_outerloop   ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ASDC_OUTERLOOP_CHAN_OFFSET         ) ::ETPUlocation (ASDC, outerloop_chan          ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ASDC_INNERLOOP_CHAN_OFFSET         ) ::ETPUlocation (ASDC, innerloop_chan          ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ASDC_RESULT_QUEUE_OFFSET           ) ::ETPUlocation (ASDC, result_queue            ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ASDC_BIT_SHIFT_OFFSET              ) ::ETPUlocation (ASDC, bit_shift               ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ASDC_MEASURE_DC_OFFSET_MASK_OFFSET ) ::ETPUlocation (ASDC, measure_dc_offset_mask  ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ASDC_QUEUE_OFFSET_A_OFFSET         ) ::ETPUlocation (ASDC, queue_offset_a          ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ASDC_QUEUE_OFFSET_B_OFFSET         ) ::ETPUlocation (ASDC, queue_offset_b          ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ASDC_DC_OFFSET_A_OFFSET            ) ::ETPUlocation (ASDC, dc_offset_a             ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ASDC_DC_OFFSET_B_OFFSET            ) ::ETPUlocation (ASDC, dc_offset_b             ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ASDC_FORGET_FACTOR_A_OFFSET        ) ::ETPUlocation (ASDC, forget_factor_a         ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ASDC_FORGET_FACTOR_B_OFFSET        ) ::ETPUlocation (ASDC, forget_factor_b         ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ASDC_OUTPUT_A_OFFSET               ) ::ETPUlocation (ASDC, output_a                ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ASDC_OUTPUT_B_OFFSET               ) ::ETPUlocation (ASDC, output_b                ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ASDC_P_OUTPUT_A_OFFSET             ) ::ETPUlocation (ASDC, p_output_a              ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ASDC_P_OUTPUT_B_OFFSET             ) ::ETPUlocation (ASDC, p_output_b              ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ASDC_MEASURE_SAMPLES_MASK_OFFSET   ) ::ETPUlocation (ASDC, measure_samples_mask    ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ASDC_P_SIGN_A_OFFSET               ) ::ETPUlocation (ASDC, p_sign_a              ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ASDC_P_SIGN_B_OFFSET               ) ::ETPUlocation (ASDC, p_sign_b              ) );
#pragma write h, ( );
#pragma write h, (/****************************************************************);
#pragma write h, (* Value Definitions. );
#pragma write h, (****************************************************************/);
#pragma write h, (::ETPUliteral(#define FS_ETPU_ASDC_FM_SIGNUM_A_OFF   ) 0 );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ASDC_FM_SIGNUM_A_ON    ) 1 );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ASDC_FM_SIGNUM_B_OFF   ) 0 );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ASDC_FM_SIGNUM_B_ON    ) 2 );
#pragma write h, ( );
#pragma write h, (#endif);

/*********************************************************************
 *
 * Copyright:
 *	Freescale Semiconductor, INC. All Rights Reserved.
 *  You are hereby granted a copyright license to use, modify, and
 *  distribute the SOFTWARE so long as this entire notice is
 *  retained without alteration in any modified and/or redistributed
 *  versions, and that such modified versions are clearly identified
 *  as such. No licenses are granted by implication, estoppel or
 *  otherwise under any patents or trademarks of Freescale
 *  Semiconductor, Inc. This software is provided on an "AS IS"
 *  basis and without warranty.
 *
 *  To the maximum extent permitted by applicable law, Freescale
 *  Semiconductor DISCLAIMS ALL WARRANTIES WHETHER EXPRESS OR IMPLIED,
 *  INCLUDING IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A
 *  PARTICULAR PURPOSE AND ANY WARRANTY AGAINST INFRINGEMENT WITH
 *  REGARD TO THE SOFTWARE (INCLUDING ANY MODIFIED VERSIONS THEREOF)
 *  AND ANY ACCOMPANYING WRITTEN MATERIALS.
 *
 *  To the maximum extent permitted by applicable law, IN NO EVENT
 *  SHALL Freescale Semiconductor BE LIABLE FOR ANY DAMAGES WHATSOEVER
 *  (INCLUDING WITHOUT LIMITATION, DAMAGES FOR LOSS OF BUSINESS PROFITS,
 *  BUSINESS INTERRUPTION, LOSS OF BUSINESS INFORMATION, OR OTHER
 *  PECUNIARY LOSS) ARISING OF THE USE OR INABILITY TO USE THE SOFTWARE.
 *
 *  Freescale Semiconductor assumes no responsibility for the
 *  maintenance and support of this software
 ********************************************************************/

/*********************************************************************
 *
 * ASH WARE Inc. has modified this file so that it compiles under the
 * ETEC eTPU C Compiler Toolkit.  The source has been modified such that
 * it also maintains compatibility with other code generation tools.  This
 * source also compiles with Byte Craft eTPU-C 1.0.7.30 and the binary code
 * image output is bit-for-bit the same as the original Freescale release.
 *
 ********************************************************************/
