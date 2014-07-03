/*******************************************************************************
*
*  FREESCALE SEMICONDUCTOR INC. 2004
*  ALL RIGHTS RESERVED
*  COPYRIGHT (c)
*
********************************************************************************
* 
*  DESCRIPTION:
*   The Motor-Control PWM - Commutation Capable (PWMC) function drives
*   a PWM phase with the feature to commutate (switch ON/OFF, change
*   polarity, swap-channels).
*   This function is not functional standalone. The PWMM (PWM Master)
*   function must update the PWMC edge times.
*
********************************************************************************
*
*  REVISION HISTORY:
*
*  REVISION    AUTHOR       DATE        DESCRIPTION OF CHANGE         
*  --------    -----------  ---------   ------------------------------------                  
*   1.0        M. Brejl     20/Sep/04   Ready for set3 release 0.5.
*   1.1        M. Brejl     21/Feb/05   Implementation of Commutation routine
*                                       improved.
*
*******************************************************************************/
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
#pragma verify_wctl  PWMC                39  steps  5 rams
#pragma exclude_wctl PWMC::PWMC_Error
#endif

#ifdef PWMC_FUNCTION_NUMBER /* function is being compiled as part a set? */
#pragma ETPU_function PWMC, standard @ PWMC_FUNCTION_NUMBER;
#else
#pragma ETPU_function PWMC, standard;
#endif

/************************************************************************
*  Includes.
************************************************************************/
#include "etpuc_pwmm.h"     /* Shared by PWMMDC, PWMMAC, PWMF and PWMC */
#include "etpuc_pwmc.h"     /* Commutation definitions */
#include "etpuc_mc_comm.c"  /* routine to execute commutation command */

/************************************************************************
*  Definitions.
*************************************************************************/
/* HSR values */
#define PWMC_HSR_UPDATE            1
#define PWMC_HSR_STOP_LOW          7
#define PWMC_HSR_STOP_HIGH         6
#define PWMC_HSR_START             5
#define PWMC_HSR_COMMUTATE         4

/* Function Modes */
#define PWMC_BASE_CHAN             (fm0==0)
#define PWMC_COMPLEMENTARY_CHAN    (fm0==1)
#define PWMC_ACTIVE_HIGH           (fm1==0)
#define PWMC_ACTIVE_LOW            (fm1==1)

#if 0 // moved to etpuc_mc_comm.c
/************************************************************************
* NAME: PWMCCommutate()
*
* DESCRIPTION: This routine is called by PWMC and HD in order to execute
*              a commutation command.
* 
* FUNCTION PARAMETERS:
*  This function has no function parameters. The commutation command
*  is passed in through 32-bit p register.
*  The commutation command consists of 4 parts: 
*    - base channel number (msb byte)
*    - base channel commutation byte (high byte)
*    - complementary channel commutation byte (middle byte)
*    - phase options (low byte)
*  The commutation byte can be one of:
*      PWMC_COMM_DO_NOTHING
*      PWMC_COMM_OFF_LOW
*      PWMC_COMM_OFF_HIGH
*      PWMC_COMM_ON_ACTIVE_HIGH
*      PWMC_COMM_ON_ACTIVE_LOW
*  The phase options rewrites the PWMC options parameter.
* 
************************************************************************/
/* void PWMCCommutate( comm_cmd_t comm_cmd ) */

/* 32-bit comm_cmd is passed through register p */
register_p7_0    comm_cmd_base_ch_num;         /* comm_cmd.base_ch_num */
register_p15_8   comm_cmd_base_ch_comm_byte;   /* comm_cmd.base_ch_comm_byte */
register_p23_16  comm_cmd_compl_ch_comm_byte;  /* comm_cmd.compl_ch_comm_byte */
register_p31_24  comm_cmd_phase_options;       /* comm_cmd.phase_options */

void PWMCCommutate_( void)
{
  /* Access to phase parameters */
  pwmm_phase_t register_chan_base * phaseX;

  /* Registers accessed in C-code for optimizations */
  register_d compl_ch_comm_byte;
  register_c original_chan;
  register_b compl_done;


  compl_done = 0;
  original_chan = GetCurrentChanNum();
  SwitchToChannel(comm_cmd_base_ch_num);
  phaseX->options = comm_cmd_phase_options;
  compl_ch_comm_byte = comm_cmd_compl_ch_comm_byte;
PWMC_COMM:
  switch ( comm_cmd_base_ch_comm_byte )
  {
    case PWMC_COMM_OFF_LOW:
      Pin(SetLow);
      OnMatchA(NoChange);
      OnMatchB(NoChange);
      break;
    case PWMC_COMM_OFF_HIGH:
      Pin(SetHigh);
      OnMatchA(NoChange);
      OnMatchB(NoChange);
      break;
    case PWMC_COMM_ON_ACTIVE_HIGH:
      OnMatchA(PinHigh);
      OnMatchB(PinLow);
      chan = chan;
      if (erta > ertb) // active time
      {
        Pin(SetHigh);
        chan = chan;
        if (IsMatchBLatched())
        {
          Pin(SetLow);
        }
      }
      else             // inactive time
      {
        Pin(SetLow);
        chan = chan;
        if (IsMatchALatched())
        {
          Pin(SetHigh);
        }
      }
      break;
    case PWMC_COMM_ON_ACTIVE_LOW:
      OnMatchA(PinLow);
      OnMatchB(PinHigh);
      chan = chan;
      if (erta > ertb) // active time
      {
        Pin(SetLow);
        chan = chan;
        if (IsMatchBLatched())
        {
          Pin(SetHigh);
        }
      }
      else             // inactive time
      {
        Pin(SetHigh);
        chan = chan;
        if (IsMatchALatched())
        {
          Pin(SetLow);
        }
      }
    case PWMC_COMM_DO_NOTHING:
#ifdef __ETEC__  // ASH WARE
		// C requirement - statement must follow a case
		;
#endif
  }
  if ( compl_done != 0 )
  {
    SwitchToChannel(original_chan);
    return;
  }
  else
  {
    compl_done = 1;
    SwitchToChannel(GetCurrentChanNum()+1);
    comm_cmd_base_ch_comm_byte = compl_ch_comm_byte;
    goto PWMC_COMM;
  }
}
#endif

/************************************************************************
* NAME: PWMC
*
* DESCRIPTION: Motor-Control PWM - Commutated
*
* FUNCTION PARAMETERS:
*   ch_num:  Channal number of base channel.
*   (used by PWMMDC/PWMMAC)
*   duty:    Duty-cycle.
*   (used by PWMMDC/PWMMAC)
*   options: Option bits.   - bit0=0 … -    
*   (used by PWMMDC/PWMMAC)   bit0=1 … negate duty-cycle    
*                           - bit1=0 … -    
*                             bit1=1 … swap dead-time insertion    
*   period_copy: Local copy of the PWMMDC/PWMMAC period parameter.    
*   dtc:     Dead-time correction. - 0 = base channel subtracts deat-times
*   (used by PWMMAC)               - 1 = both channels dead-times/2.    
*                                  - 2 = bottom channel adds dead-times.  
*   A_time:  Calculated base channel match A time.    
*            On each match updated for the next period.     
*   B_time:  Calculated base channel match B time.    
*            On each match updated for the next period.    
*   Ac_time: Calculated complementary channel match A time.    
*            On each match updated for the next period.     
*   Bc_time: Calculated complementary channel match B time.    
*            On each match updated for the next period.    
*   flags: Inner flags written by PWMM. - bit0=0 … -    
*                                         bit0=1 … half_cycle reload    
*                                       - bit1=0 … -    
*                                         bit1=1 … 0% duty-cycle    
*                                       - bit2=0 … -    
*                                         bit2=1 … 100% duty-cycle    
*   comm_cmd: Commutation command to execute by PWMC_HSR_COMMUTATE.    
*     
* CHANNEL FLAG USAGE:
*  - Flag0 is used to define which edge should occur next. The problem is that
*    for very small high or low pulses both matches can get set and they
*    need to be serviced in a particular order.
*    0 = MatchA next and 1 = MatchB next.
*  - Flag1 is not used.
************************************************************************/
void PWMC ( 
  unsigned fract24 duty,         /* duty-cycle */
           int8    chan_num,     /* base channel number */
           int24   period_copy,  /* copy of period value */
           int8    options,      /* phase options */
           int24   A_time,       /* time of first edge on base channel */
           int8    dtc,          /* dead-time correction options - not used */
           int24   B_time,       /* time of second edge on base channel */
           int8    flags,        /* duty-extreme limits for PWMF */
           int24   Ac_time,      /* time of first edge on complementary channel */
           int24   Bc_time,      /* time of second edge on complementary channel */
  unsigned int32   comm_cmd,     /* commutation command used by PWMC */
           int24   reserved)     /* the structure size must an even number of longwords */
{
/*--------------------------------------------------------------------------+
| THREAD NAME: START                                                        |
| DESCRIPTION: Initialize a channel to run the PWMC function.               |
|              1. Clear latches.                                            |
|              2. Select EitherMatch-NonBlocking-SingleTransition chan.mode.|
|              3. Configure channel to use TCR1 clock.                      |
|              4. Configure input pin actions to no_detect.                 |
|              5. Enable match and transition event handling.               |
|              6. Set pin.                                                  |
|              7. Put equal values into capture registers.                  |
|              8. Clear flag0.                                              |
|              9. Clear latches.                                            |
+--------------------------------------------------------------------------*/
  if (hsr == PWMC_HSR_START)
  {
PWMC_Start:
    OnTransA( NoDetect );
    OnTransB( NoDetect );
    ActionUnitA( MatchTCR1, CaptureTCR1, GreaterEqual);
    ActionUnitB( MatchTCR1, CaptureTCR1, GreaterEqual);
    EitherMatchNonBlockingSingleTransition();
    if ( PWMC_ACTIVE_LOW )
    {
      Pin(SetHigh);
      OnMatchA( NoChange);
      OnMatchB( NoChange);
      EnableOutputBuffer();
      ClearAllLatches();
    }
    else
    {
      Pin(SetLow);
      OnMatchA( NoChange);
      OnMatchB( NoChange);
      EnableOutputBuffer();
      ClearAllLatches();
    }
    /* initialize values in capture registers because of commutations
       - Commutate() routine compares erta and ertb. */
    erta = tcr1;
    ertb = tcr1;
    WriteErtAToMatchAAndEnable();
    WriteErtBToMatchBAndEnable();
    EnableEventHandling();
    Clear(flag0);
    ClearMatchALatch();
    ClearMatchBLatch();
  }
/*--------------------------------------------------------------------------+
| THREAD NAME: STOP_LOW                                                     |
| DESCRIPTION: Stop the PWM generation, set pin low.                        |
|              1. Disable matches in thread in case there are any previous  |
|                  pending matches. This could happen if the channel was    |
|                  running another function before this one.                |
|              2. Disable match and transition event handling.              |
|              3. Set pin low.                                              |
|              4. Set flag stopped.                                         |
|              5. Clear all latches.                                        |
|              6. Enable output buffer.                                     |
+--------------------------------------------------------------------------*/
  else if (hsr == PWMC_HSR_STOP_LOW )
  {
PWMC_StopLow:
    DisableMatchesInThread();

    Pin(SetLow);
    OnMatchA(NoChange);
    OnMatchB(NoChange);
    goto PWMC_STOP_COMMON;
  }
/*--------------------------------------------------------------------------+
| THREAD NAME: STOP_HIGH                                                    |
| DESCRIPTION: Stop the PWM generation, set pin high.                       |
|              1. Disable matches in thread in case there are any previous  |
|                  pending matches. This could happen if the channel was    |
|                  running another function before this one.                |
|              2. Disable match and transition event handling.              |
|              3. Set pin high.                                             |
|              4. Set flag stopped.                                         |
|              5. Clear all latches.                                        |
|              6. Enable output buffer.                                     |
+--------------------------------------------------------------------------*/
  else if (hsr == PWMC_HSR_STOP_HIGH )
  {
PWMC_HsrStopHigh:
    DisableMatchesInThread();
    Pin(SetHigh);
    OnMatchA(NoChange);
    OnMatchB(NoChange);
PWMC_STOP_COMMON:
    DisableEventHandling();
    DisableMatchDetection();
    ClearAllLatches();
    EnableOutputBuffer();
  }
/*--------------------------------------------------------------------------+
| THREAD NAME: COMMUTATE                                                    |
| DESCRIPTION: Execute the commutation command.                             |
|              1. Executes the commutation command.                         |
+--------------------------------------------------------------------------*/
  else if (hsr == PWMC_HSR_COMMUTATE )
  {
PWMC_Commutate:
    PWMCCommutate(comm_cmd);
  }
/*--------------------------------------------------------------------------+
| THREAD NAME: UPDATE_0                                                     |
| DESCRIPTION: Reschedule :                                                 |
|              - in normal upd: Match A and                                 |
|                               Match B.                                    |
|              - in half-cycle: Match B.                                    |
|              1. If not half-cycle realod                                  |
|                   On base channel:                                        |
|                   - schedule match A at A_time.                           |
|                   - update A_time = A_time + period_copy.                 |
|                   On complementary channel:                               |
|                   - schedule match A at Ac_time.                          |
|                   - update Ac_time = Ac_time + period_copy.               |
|                   If (flag 0% set), set OPAC A = no_change,               |
|                   else set OPAC A according to channel polarity.          |
|              2. On base channel:                                          |
|                 - schedule match B at B_time.                             |
|                 - update B_time = B_time + period_copy.                   |
|                 On complementary channel:                                 |
|                 - schedule match B at Bc_time.                            |
|                 - update Bc_time = Bc_time + period_copy.                 |
|                 If (flag 100% set), set OPAC B = no_change,               |
|                 else set OPAC B according to channel polarity.            |
|              3. Clear link service latch.                                 |
+--------------------------------------------------------------------------*/
  else if ( ((lsr == 1)               && (flag0 == 0)) ||
            ((hsr == PWMC_HSR_UPDATE) && (flag0 == 0)) )
  {
PWMC_Update0:
    Clear(lsr);
    if ( !(flags & PWMM_HALF_CYCLE) )
    {
PWMC_AB:
      if ( PWMC_BASE_CHAN )
      {
        erta = A_time;              // Setup Match A, but do not clear mrlA
        EnableMatchA();
        A_time = erta + period_copy;// predict for next period
      }
      else
      {
        erta = Ac_time;             // Setup Match A, but do not clear mrlA
        EnableMatchA();
        Ac_time = erta + period_copy;// predict for next period
      }
    }
    goto PWMC_B;
  }
/*--------------------------------------------------------------------------+
| THREAD NAME: UPDATE_1                                                     |
| DESCRIPTION: Reschedule :                                                 |
|              - in normal upd: Match A.                                    |
|              - in half-cycle: Match A and                                 |
|                               Match B.                                    |
|              1. On base channel:                                          |
|                 - schedule match A at A_time.                             |
|                 - update A_time = A_time + period_copy.                   |
|                 On complementary channel:                                 |
|                 - schedule match A at Ac_time.                            |
|                 - update Ac_time = Ac_time + period_copy.                 |
|                 If (flag 0% set), set OPAC A = no_change,                 |
|                 else set OPAC A according to channel polarity.            |
|              2. If half-cycle reload                                      |
|                   On base channel:                                        |
|                   - schedule match B at B_time.                           |
|                   - update B_time = B_time + period_copy.                 |
|                   On complementary channel:                               |
|                   - schedule match B at Bc_time.                          |
|                   - update Bc_time = Bc_time + period_copy.               |
|                   If (flag 100% set), set OPAC B = no_change,             |
|                   else set OPAC B according to channel polarity.          |
|              3. Clear link service latch.                                 |
+--------------------------------------------------------------------------*/
  else if ( ((lsr == 1)               && (flag0 == 1)) ||
            ((hsr == PWMC_HSR_UPDATE) && (flag0 == 1)) )
  {
PWMC_Update1:
    Clear(lsr);
    if ( flags & PWMM_HALF_CYCLE )
      goto PWMC_AB;
    else
      goto PWMC_A;
  }
/*--------------------------------------------------------------------------+
| THREAD NAME: MATCH_A                                                      |
| DESCRIPTION: Schedule match A at on A_time (resp. Ac_time) and            |
|              update A_time (resp. Ac_time) for next period.               |
|              1. On base channel:                                          |
|                 - schedule match A at A_time.                             |
|                 - update A_time = A_time + period_copy.                   |
|                 On complementary channel:                                 |
|                 - schedule match A at Ac_time.                            |
|                 - update Ac_time = Ac_time + period_copy.                 |
|              2. If (flag 0% set), set OPAC A = no_change,                 |
|                 else set OPAC A according to channel polarity.            |
|              3. Set flag0.                                                |
+--------------------------------------------------------------------------*/
  else if (m1 == 1)
  {
PWMC_MatchA:
    ClearMatchALatch();
    Set(flag0);
PWMC_A:
    if ( PWMC_BASE_CHAN )
    {
      erta = A_time;
      EnableMatchA();
      A_time = erta + period_copy;     // predict for next period
    }
    else
    {
      erta = Ac_time;
      EnableMatchA();
      Ac_time = erta + period_copy;    // predict for next period
    }
  }
/*--------------------------------------------------------------------------+
| THREAD NAME: MATCH_B                                                      |
| DESCRIPTION: Schedule match B at on B_time (resp. Bc_time) and            |
|              update B_time (resp. Bc_time) for next period.               |
|              1. On base channel:                                          |
|                 - schedule match B at B_time.                             |
|                 - update B_time = B_time + period_copy.                   |
|                 On complementary channel:                                 |
|                 - schedule match B at Bc_time.                            |
|                 - update Bc_time = Bc_time + period_copy.                 |
|              2. If (flag 100% set), set OPAC B = no_change,               |
|                 else set OPAC B according to channel polarity.            |
|              3. Clear flag0.                                              |
+--------------------------------------------------------------------------*/
  else if (m2 == 1)
  {
PWMC_MatchB:
    ClearMatchBLatch();
    Clear(flag0);
PWMC_B:
    if ( PWMC_BASE_CHAN )
    {
      ertb = B_time;
      EnableMatchB();
      B_time = ertb + period_copy;     // predict for next period
    }
    else
    {
      ertb = Bc_time;
      EnableMatchB();
      Bc_time = ertb + period_copy;    // predict for next period
    }
  }
/*--------------------------------------------------------------------------+
| Catch all unspecified entry table conditions                              |
+--------------------------------------------------------------------------*/
  else
  {
PWMC_Error:
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
#pragma write h, (::ETPUfilename (cpu/etpu_pwmc_auto.h));
#pragma write h, (/****************************************************************/);
#pragma write h, (/* WARNING this file is automatically generated DO NOT EDIT IT! */);
#pragma write h, (/*                                                              */);
#pragma write h, (/* This file provides an interface between eTPU code and CPU    */);
#pragma write h, (/* code. All references to the PWMC function should be made     */);
#pragma write h, (/* with information in this file. This allows only symbolic     */);
#pragma write h, (/* information to be referenced which allows the eTPU code to   */);
#pragma write h, (/* be optimized without effecting the CPU code.                 */);
#pragma write h, (/****************************************************************/);
#pragma write h, (#ifndef _ETPU_PWMC_AUTO_H_ );
#pragma write h, (#define _ETPU_PWMC_AUTO_H_ );
#pragma write h, ( );
#pragma write h, (/****************************************************************);
#pragma write h, (* Function Configuration Information. );
#pragma write h, (****************************************************************/);
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMC_FUNCTION_NUMBER) PWMC_FUNCTION_NUMBER );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMC_TABLE_SELECT)    ::ETPUentrytype(PWMC) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMC_NUM_PARMS)       ::ETPUram(PWMC) );
#pragma write h, ( );
#pragma write h, (/****************************************************************);
#pragma write h, (* Host Service Request Definitions. );
#pragma write h, (****************************************************************/);
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMC_UPDATE            ) PWMC_HSR_UPDATE );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMC_STOP_LOW          ) PWMC_HSR_STOP_LOW );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMC_STOP_HIGH         ) PWMC_HSR_STOP_HIGH );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMC_START             ) PWMC_HSR_START );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMC_COMMUTATE         ) PWMC_HSR_COMMUTATE );
#pragma write h, ( );
#pragma write h, (/****************************************************************);
#pragma write h, (* Parameter Definitions. );
#pragma write h, (****************************************************************/);
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMC_DUTY_OFFSET       ) ::ETPUlocation (PWMC, duty) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMC_CHANNUM_OFFSET    ) ::ETPUlocation (PWMC, chan_num) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMC_PERIODCOPY_OFFSET ) ::ETPUlocation (PWMC, period_copy) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMC_OPTIONS_OFFSET    ) ::ETPUlocation (PWMC, options) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMC_DTC_OFFSET        ) ::ETPUlocation (PWMC, dtc) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMC_ATIME_OFFSET      ) ::ETPUlocation (PWMC, A_time) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMC_BTIME_OFFSET      ) ::ETPUlocation (PWMC, Ac_time) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMC_ACTIME_OFFSET     ) ::ETPUlocation (PWMC, B_time) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMC_BCTIME_OFFSET     ) ::ETPUlocation (PWMC, Bc_time) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMC_FLAGS_OFFSET      ) ::ETPUlocation (PWMC, flags) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMC_COMMCMD_OFFSET    ) ::ETPUlocation (PWMC, comm_cmd) );
#pragma write h, ( );
#pragma write h, (#endif );

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
