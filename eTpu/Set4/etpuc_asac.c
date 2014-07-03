/*******************************************************************************
*
*  FREESCALE SEMICONDUCTOR INC. 2006
*  ALL RIGHTS RESERVED
*  COPYRIGHT (c)
*  
********************************************************************************
*                                                                      
*  DESCRIPTION:
*   Analog sensing function for AC motors (set4)
*
********************************************************************************
*
*  REVISION HISTORY:
*                                                         
*  REVISION   AUTHOR       DATE        DESCRIPTION OF CHANGE                  
*  --------   -----------  ---------   -----------------------------------------
*  0.1        M.Princ      26/Aug/05   Initial version derived from ASDC func.
*  0.2        M.Princ      28/Nov/05   ASAC options and the definition of eQADC 
*                                      command queue added.
*  0.3        M. Brejl     07/Dec/05   Fixed for ETPU_C 1.0.7 assembler.
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
#ifndef NO_OPT
#pragma verify_wctl  ASAC                190  steps  65 rams
#endif
#pragma exclude_wctl ASAC::ASAC_Error
#endif

#ifdef ASAC_FUNCTION_NUMBER /* function is being compiled as part of a set4 */
#pragma ETPU_function ASAC, standard @ ASAC_FUNCTION_NUMBER;
#else
#pragma ETPU_function ASAC, standard;
#endif

/************************************************************************
*  Definitions. 
*************************************************************************/
/* HSR values */
#define ASAC_HSR_INIT_HIGH_PERIOD_MODE   7
#define ASAC_HSR_INIT_HIGH_SYNC_MODE     6
#define ASAC_HSR_INIT_LOW_PERIOD_MODE    5
#define ASAC_HSR_INIT_LOW_SYNC_MODE      4
#define ASAC_HSR_MEASURE_DC_OFFSETS      2

/* FM modes */
#define ASAC_PHASE_CURRENTS_OFF      (fm0==0)
#define ASAC_PHASE_CURRENTS_ON       (fm0==1)
#define ASAC_DTC_OFF                 (fm1==0)
#define ASAC_DTC_ON                  (fm1==1)

/* measure_dc_offset masks */
#define ASAC_DC_OFFSET_CURRENT_A      0x01
#define ASAC_DC_OFFSET_CURRENT_B      0x02
#define ASAC_DC_OFFSET_CURRENT_C      0x04
#define ASAC_DC_OFFSET_U_DC_BUS       0x08

/* measure_samples masks */
#define ASAC_SAMPLE_CURRENTS          0x01
#define ASAC_SAMPLE_U_DC_BUS          0x08

/* options parameter bits */
#define ASAC_DMA_INTR_FIRST_EDGE      0x01
#define ASAC_DMA_INTR_SECOND_EDGE     0x02
#define ASAC_PHASE_CURRENTS_ON_UPDATE_COMMAND_QUEUE 0x04

/*******************************************************************************

  The macro ASAC_PROCESS provides call to routine which removes DC offset
  from the selected sample and performs bit shift.
  
  Example of usage:

    ASAC_PROCESS(b,result_queue,queue_offset_a,dc_offset_a,bit_shift);

*******************************************************************************/
#define ASAC_PROCESS(reg,rq,qo,dco,bs)\
#asm(ram p31_24 <- qo.)\
#asm(alu a = p31_24;ram p <- bs.)\
#asm(call asac_process,no_flush.)\
#asm(alu sr = p;ram diob <- rq.)\
#asm(ram p <- dco.)\
#asm(alu reg = a - p.)

/*******************************************************************************

  MODULE:    asac_process()
  
  DESCRIPTION:
   Ensures reading of the sample from the eTPU DATA RAM, removing of DC offset 
   and sample bit shift in order to get a 24-bit fractional value. The result 
   is stored in the defined register(b, c or d).
   Sample bit shift: 
    bit_shift = 0: sample<<8
    bit_shift = 1: sample<<10
    bit_shift = 2: sample<<12
    bit_shift = 3: sample<<16
       
*******************************************************************************/
fract24 asac_process(/*unsigned int16 * result_queue,
                     unsigned int8    queue_offset_a,
                     unsigned int24   bit_shift*/)
{
ASAC_PROCESS1:
  /* Inputs: */
  /* register diob ...... result_queue */
  /* register a    ...... queue_offset */
  /* register sr   ...... bit_shift    */

#asm(  alu diob = diob + a.               ) /* diob = result_queue + queue_offset */
#asm(  ram p31_0 <- by diob             . ) /* read sample from result queue */
#asm(  alu nil = diob & 0x02, ccs.        ) /* test whether the sample is in p15_0 or p31_16 */
#asm(  alu_if Z == 1 then p15_0 = p31_16. ) /* if the sample is in p31_16 move it to p15_0 */
#asm(  alu a = p15_0.                     ) /* a = sample (16 bits) */
#asm(  alu p = sr - 1, ccs.               ) /* p = bit_shift - 1, sample flags */
#asm(  if N == 1 then goto ASAC_PROCESS2, no_flush. ) /* if bit_shift==0 then sample<<8 */
#asm(  alu a =<<8 a.                      ) /* a = sample << 8 */
#asm(  return, no_flush.                  ) /* return */
#ifdef __ETEC__  // ASH WARE
// OBSOLOETE: #asm( alu a = a << p. )    /* sample <<2 or <<4 or <<8 */
#asm(  alu a = a << (2^^(p+1)). /* <<2 or <<4 or <<8 */ )
#else  // Byte Craft
#asm(  %hex 3F190FF9.  )
#endif
ASAC_PROCESS2: ;
  /* Outputs: */
  /* register a    ...... aligned sample without DC offset remove */
}

/*******************************************************************************

  The macro ASAC_EWMA provides call to routine which performs EWMA filtering.
  
  Example of usage:

    ASAC_EWMA(output_a,p_output_a,b,forget_factor_a);

*******************************************************************************/
#define ASAC_EWMA(out,p_out,reg,ff)\
#asm(alu a = reg;ram p <- ff.)\
#asm(alu sr = p;ram p <- out.)\
#asm(call asac_filter,no_flush.)\
#asm(ram diob <- p_out.)\
#asm(ram p -> out.)

/*******************************************************************************

  MODULE:    asac_filter()

  DESCRIPTION:
   Performs Exponentially-Weighted Moving Average(EWMA) filtering of samples. 
   The EWMA filter is defined by the following equation: 
     a = ((forget factor)*(previous sample)) + ((1 - forget factor)*new sample)
   
   Forget factor is the only filter parameter. It is a value between 0 and 1,
   usually close to 1.    

*******************************************************************************/
void asac_filter(/*int24    output,
                 int24  * p_output,
                 fract24  input,
                 fract24  forget_factor*/)
{
ASAC_EWMA1:
  /* Inputs: */
  /* register p    ...... output        */
  /* register diob ...... p_output      */
  /* register a    ...... input (reg)   */
  /* register sr   ...... forget_factor */
#asm(  mdu sr mults p.                          ) /* signed multiplication forget_factor*sample value in previous step */
#asm(  alu sr = 0 - sr - 1.                     ) /* mbsy | sr = - forget_factor */
#asm(  alu sr = sr + max.                       ) /* mbsy | sr = (1 - forget_factor) */
#asm(  nop.                                     ) /* mbsy */
#asm(  mdu sr macs a.                           ) /* mbsy | signed multiplication with accumulation (1 - forget_factor)*new sample value */
ASAC_EWMA2:
#asm(  if mb == 1 then goto ASAC_EWMA2, flush.  ) /* wait till multiplication is complete */
#asm(  alu p =<< mach + #0x00.                  ) /* p = multiplication result << 1*/
#asm(  return, no_flush.                        ) /* return */
#asm(  ram p -> by diob.                        ) /* save the result to p_output */
}

/*******************************************************************************

  The macro ASAC_DTC provides call to routine which performs calculation of dtc
  parameters.
  
  Example of usage:

    ASAC_DTC(p_dtc_a,output_a,dtc_threshold);

*******************************************************************************/
#define ASAC_DTC(p_dtc,sample,dtc_thr)\
#asm(ram p <- sample.)\
#asm(alu sr = p;ram p <- dtc_thr.)\
#asm(call asac_dtc,no_flush.)\
#asm(alu a = p;ram diob <- p_dtc.)\
#asm(ram p31_0 -> by diob.)

/*******************************************************************************

  MODULE:    asac_dtc()

  DESCRIPTION: 
   The three phase currents can be compared with threshold values, resulting in 
   dead-time compensation parameters (dtc), that are supplied
   to the corresponding PWM phases.
   
   if (*p_dtc==0)
   {
     if (sample value < dtc threshold)
     {
       *p_dtc = -2
     }
   }
   else
   {
     if (sample value > -dtc threshold)
     {
       *p_dtc = 0
     }
   }

*******************************************************************************/
void asac_dtc(/*int8  * p_dtc,
              int24   sample,
              fract24 dtc_threshold*/)
{
ASAC_DTC1:
  /* Inputs: */
  /* register sr   ...... sample        */
  /* register a    ...... dtc_threshold */
  /* register diob ...... p_dtc         */
#asm(  ram p31_0 <- by diob.                      ) /* p31_0 = *p_dtc */
#asm(  alu nil = p31_24,ccs.                    ) /* test p31_24 (dtc value) */
#asm(  if z == 0 then goto ASAC_DTC2,flush.     ) /* if dtc!=0 then jump to ASAC_DTC2 */
#asm(  alu nil = sr - a,ccs.                    ) /* test the result of subtraction (sample-dtc_threshold) */
#asm(  return, no_flush.                        ) /* return */
#asm(  alu_if N == 1 then p31_24 = p31_24 + #0xFE. ) /* if (sample < dtc_threshold) then dtc=-2 */
ASAC_DTC2:
#asm(  alu a = 0 - a - 1.                       ) /* a = - dtc_threshold */
#asm(  alu nil = a - sr ,ccs.                   ) /* test the result of subtraction (-dtc_threshold-sample) */
#asm(  return, no_flush.                        ) /* return */
#ifdef __ETEC__  // ASH WARE
#asm(  alu_if N == 1 then p31_24 = 0. )  /* if (sample > -dtc_threshold) then dtc=0 */
#else  // Byte Craft
#asm(  %hex 3FFFAF74. ) 
#endif
  /* Outputs: */
  /* register p31_24 ...... dtc */
}

/************************************************************************
* NAME: ASAC
*
* DESCRIPTION: Analog Sensing for AC motors.
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
*  queue_offset_c    - Sample C position in the result queue - offset in bytes.
*  queue_offset_d    - Sample D position in the result queue - offset in bytes.
*  bit_shift         - How to align data from result queue 
*                      into fract24 (or int24):
*                            0: shift left by 8
*                            1: shift left by 10
*                            2: shift left by 12
*                            3: shift left by 16
*  dc_offset_a       - DC offset to remove from the measured sample A.
*  dc_offset_b       - DC offset to remove from the measured sample B.
*  dc_offset_c       - DC offset to remove from the measured sample C.
*  dc_offset_d       - DC offset to remove from the measured sample D.
*  forget_factor_a   - Sample A EWMA filter "Forgetting Factor". Maximum 0x7FFFFF.
*  forget_factor_b   - Sample B EWMA filter "Forgetting Factor". Maximum 0x7FFFFF.
*  forget_factor_c   - Sample C EWMA filter "Forgetting Factor". Maximum 0x7FFFFF.
*  forget_factor_d   - Sample D EWMA filter "Forgetting Factor". Maximum 0x7FFFFF.
*  output_a          - Preprocessed sample A.
*  output_b          - Preprocessed sample B.
*  output_c          - Preprocessed sample C.
*  output_d          - Preprocessed sample D.
*  * p_output_a      - Pointer to ASAC output_a receiver.
*  * p_output_b      - Pointer to ASAC output_b receiver.
*  * p_output_c      - Pointer to ASAC output_c receiver.
*  * p_output_d1     - Pointer to ASAC output_d receiver 1.
*  * p_output_d2     - Pointer to ASAC output_d receiver 2.
*  measure_dc_offset_mask- The measure_dc_offset_mask determines 
*                          which samples are used as dc_offsets 
*                          in MEASURE_DC_OFFSETS.
*  measure_samples_mask  - The measure_samples_mask determines if samples A,B,C
*                          (phase currents) only, or sample D (DC BUS volatge) 
*                          only or all 4 samples are processed. 
*  * p_PWMMAC_sector - Pointer to Sector parameter of PWMMAC function. 
*                      The Sector value is used in 3-phase currents processing
*                      (FM0=1).                            
*  sector            - Stored sector value of PWMMAC function from the previous 
*                      PWM period.                            
*  dtc_threshold     - Threshold of dtc states.                                                             
*  * p_dtc_a         - Address of phase A dtc parameter.                                                    
*  * p_dtc_b         - Address of phase B dtc parameter.                                                    
*  * p_dtc_c         - Address of phase C dtc parameter. 
*  options           - ASAC options
*                      - bit0=1 … the DMA request and the interrupt to CPU
*                                 generation on the first ASAC edge enabled.
*                      - bit0=0 … the DMA request and the interrupt to CPU
*                                 generation on the first ASAC edge disabled.
*                      - bit1=1 … the DMA request and the interrupt to CPU
*                                 generation on the second ASAC edge enabled.
*                      - bit1=0 … the DMA request and the interrupt to CPU
*                                 generation on the second ASAC edge disabled.
*                      - bit2=1 … update command queue based on new sector value.
*                      - bit2=0 … do not update command queue.
*  ADC0_iA_cmd       - 32 bits eQADC conversion command which applies to ADC0
*                      when phase A current is measured.
*  ADC1_iA_cmd       - 32 bits eQADC conversion command which applies to ADC1
*                      when phase A current is measured.
*  ADC0_iB_cmd       - 32 bits eQADC conversion command which applies to ADC0
*                      when phase B current is measured.
*  ADC1_iB_cmd       - 32 bits eQADC conversion command which applies to ADC1
*                      when phase B current is measured.
*  ADC0_iC_cmd       - 32 bits eQADC conversion command which applies to ADC0
*                      when phase C current is measured.
*  ADC1_iC_cmd       - 32 bits eQADC conversion command which applies to ADC1
*                      when phase C current is measured.
*  *p_applied_eQADC_cmds  - Pointer to the beginning of the actual applied
*                           queue of the eQADC conversion commands  
*
*************************************************************************/
void ASAC( int24   period,
           int24   start_offset,
           int24 * p_edge_time,
           int24   measure_time,
  unsigned int24   periods_per_outerloop,
  unsigned int8    outerloop_chan,
  unsigned int8    innerloop_chan,
  unsigned int16 * result_queue,
  unsigned int8    queue_offset_a,
  unsigned int8    queue_offset_b,
  unsigned int8    queue_offset_c,
  unsigned int8    queue_offset_d,
  unsigned int24   bit_shift,
  unsigned int24   dc_offset_a,
  unsigned int24   dc_offset_b,
  unsigned int24   dc_offset_c,
  unsigned int24   dc_offset_d,
           fract24 forget_factor_a,
           fract24 forget_factor_b,
           fract24 forget_factor_c,
           fract24 forget_factor_d,
           int24   output_a,
           int24   output_b,
           int24   output_c,
           int24   output_d,
           int24 * p_output_a,     /* fract24 * p_output_a */
           int24 * p_output_b,     /* fract24 * p_output_b */
           int24 * p_output_c,     /* fract24 * p_output_c */
           int24 * p_output_d1,    /* fract24 * p_output_d1 */
           int24 * p_output_d2,    /* fract24 * p_output_d2 */
  unsigned int8    measure_dc_offset_mask,
  unsigned int8    measure_samples_mask,
           int8  * p_PWMMAC_sector,
           int8    sector,
           fract24 dtc_threshold,
           int8  * p_dtc_a,
           int8  * p_dtc_b,
           int8  * p_dtc_c,
           int8    options,
  unsigned int32   ADC0_iA_cmd,
  unsigned int32   ADC1_iA_cmd,
  unsigned int32   ADC0_iB_cmd,
  unsigned int32   ADC1_iB_cmd,
  unsigned int32   ADC0_iC_cmd,
  unsigned int32   ADC1_iC_cmd,
           int24 * p_applied_eQADC_cmds)
{
   register_b b;  /* Temporally preprocessed analog value A */
   register_c c;  /* Temporally preprocessed analog value B */
   register_d d;  /* Temporally preprocessed analog value C */
   static int24 edge_time;         /* Time of first edge. Updated each period. */
   static int24 period_counter;    /* Counts down from periods_per_outerloop to zero. */

   
   /**********************************************
   * ASAC Channel Initialization;
   * measure_time signal has active-low polarity.
   * periodic mode.
   **********************************************/
   if (hsr==ASAC_HSR_INIT_LOW_PERIOD_MODE)
   {
ASAC_InitLowPeriodMode:
      OnMatchA(PinLow);
      OnMatchB(PinHigh);
      EnableOutputBuffer();
      SetPinHigh();              /* Set pin to inactive state. */
      ClearAllLatches();

      goto ASAC_INIT_PERIODIC;
   }
   /**********************************************
   * ASAC Channel Initialization;
   * measure_time signal has active-low polarity.
   * PWM synchronized mode
   **********************************************/
   else if (hsr==ASAC_HSR_INIT_LOW_SYNC_MODE)
   {
ASAC_InitLowSynchMode:
      OnMatchA(PinLow);
      OnMatchB(PinHigh);
      EnableOutputBuffer();
      SetPinHigh();              /* Set pin to inactive state. */
      ClearAllLatches();

      goto ASAC_INIT_PWMSYNC;
   }
   /**********************************************
   * ASAC Channel Initialization;
   * measure_time signal has active-high polarity.
   * PWM synchronized mode.
   **********************************************/
   else if(hsr==ASAC_HSR_INIT_HIGH_SYNC_MODE)
   {
ASAC_InitHighSyncMode:
      OnMatchA(PinHigh);
      OnMatchB(PinLow);
      EnableOutputBuffer();
      SetPinLow();              /* Set pin to inactive state. */
      ClearAllLatches();
ASAC_INIT_PWMSYNC:
      Set(flag0);           /* PWM synchronized mode */
      erta = *p_edge_time;  /* First match will be scheduled from PWMM edge_time */

      goto ASAC_INIT;
   }
   /**********************************************
   * ASAC Channel Initialization;
   * measure_time signal has active-high polarity.
   * periodic mode.
   **********************************************/
   else if(hsr==ASAC_HSR_INIT_HIGH_PERIOD_MODE)
   {
ASAC_InitHighPeriodMode:
      OnMatchA(PinHigh);
      OnMatchB(PinLow);
      EnableOutputBuffer();
      SetPinLow();              /* Set pin to inactive state. */
      ClearAllLatches();
ASAC_INIT_PERIODIC:
      Clear(flag0);   /* Periodic mode */
      erta = tcr1;    /* First match will be scheduled from current time */
ASAC_INIT:
      ActionUnitA( MatchTCR1, CaptureTCR1, GreaterEqual);
      ActionUnitB( MatchTCR1, CaptureTCR1, GreaterEqual);
      OnTransA(NoDetect);
      OnTransB(NoDetect);
      EitherMatchNonBlockingSingleTransition();

      erta += start_offset;         /* Schedule first match */
      period_counter=periods_per_outerloop; /* Reset periods_counter */
      edge_time = erta;             /* Save match time to edge-time */
      
      EnableMatchA();
      EnableEventHandling();
   }
   /**********************************************
   * MEASURE DC OFFSETS
   **********************************************/
   else if(hsr==ASAC_HSR_MEASURE_DC_OFFSETS)
   {
ASAC_Measure_DC_Offsets:
      if (measure_dc_offset_mask & ASAC_DC_OFFSET_CURRENT_A)
      {
        dc_offset_a += output_a; /* += enables to measure DC offset repeatedly */
      }
      if (measure_dc_offset_mask & ASAC_DC_OFFSET_CURRENT_B)
      {
        dc_offset_b += output_b;
      }
      if (measure_dc_offset_mask & ASAC_DC_OFFSET_CURRENT_C)
      {
        dc_offset_c += output_c;
      }
      if (measure_dc_offset_mask & ASAC_DC_OFFSET_U_DC_BUS)
      {
        dc_offset_d += output_d;
      }
   }
   /**********************************************
   * First Match - periodic mode
   **********************************************/
   else if((m1==1) && (flag0==0))
   {
ASAC_Match1PeriodicMode:
      erta = edge_time + period; /* Schedule next match A. */
      goto ASAC_MATCH1;
   }
   /**********************************************
   * First Match - PWM synchronized mode
   **********************************************/
   else if((m1==1) && (flag0==1))
   {
ASAC_Match1SyncMode:
      erta = *p_edge_time + start_offset;           /* Read next edge-time from PWMM, add offset. */
ASAC_MATCH1:
      if(options & ASAC_DMA_INTR_FIRST_EDGE)
      {
         SetDataTransferInterruptRequest();         /* Generate DMA request. */
         SetChannelInterrupt();                     /* Generate Interrupt. */
      }
      ertb = edge_time + measure_time;              /* Schedule match B. */
      edge_time = erta;

      if(options & ASAC_PHASE_CURRENTS_ON_UPDATE_COMMAND_QUEUE)
      {
         switch (*p_PWMMAC_sector)
         {
            case 2:
            case 3:
            {
               /* *p_applied_eQADC_cmds = ADC0_iB_cmd;
               *(p_applied_eQADC_cmds + 0x4) = ADC1_iC_cmd;
               *(p_applied_eQADC_cmds + 0x8) = ADC0_iA_cmd; */
               #asm(ram diob <- p_applied_eQADC_cmds.)
               #asm(ram p31_0 <- ADC0_iB_cmd.)
               #asm(ram p31_0 -> by diob++.)
               #asm(ram p31_0 <- ADC1_iC_cmd.)
               #asm(ram p31_0 -> by diob++.)
               #asm(ram p31_0 <- ADC0_iA_cmd.)
               #asm(ram p31_0 -> by diob++.)
               break;
            }
            case 1:
            case 5:
            {
               /* *p_applied_eQADC_cmds = ADC0_iC_cmd;
               *(p_applied_eQADC_cmds + 0x4) = ADC1_iA_cmd;
               *(p_applied_eQADC_cmds + 0x8) = ADC0_iB_cmd; */
               #asm(ram diob <- p_applied_eQADC_cmds.)
               #asm(ram p31_0 <- ADC0_iC_cmd.)
               #asm(ram p31_0 -> by diob++.)
               #asm(ram p31_0 <- ADC1_iA_cmd.)
               #asm(ram p31_0 -> by diob++.)
               #asm(ram p31_0 <- ADC0_iB_cmd.)
               #asm(ram p31_0 -> by diob++.)
               break;
            } 
            case 4:
            case 6:
            {
               /* *p_applied_eQADC_cmds = ADC0_iA_cmd;
               *(p_applied_eQADC_cmds + 0x4) = ADC1_iB_cmd;
               *(p_applied_eQADC_cmds + 0x8) = ADC0_iC_cmd; */
               #asm(ram diob <- p_applied_eQADC_cmds.)
               #asm(ram p31_0 <- ADC0_iA_cmd.)
               #asm(ram p31_0 -> by diob++.)
               #asm(ram p31_0 <- ADC1_iB_cmd.)
               #asm(ram p31_0 -> by diob++.)
               #asm(ram p31_0 <- ADC0_iC_cmd.)
               #asm(ram p31_0 -> by diob++.)
               break;
            }                
         }
      }
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
ASAC_Match2:
      /**********************************************
      * Generate DMA request and interrupt to CPU
      * when enabled.      
      **********************************************/
      if(options & ASAC_DMA_INTR_SECOND_EDGE)
      {
         SetDataTransferInterruptRequest();         /* Generate DMA request. */
         SetChannelInterrupt();                     /* Generate Interrupt. */
      }
      
      /**********************************************
      * Phase current samples (A,B,C) processing.
      **********************************************/
      if (measure_samples_mask & ASAC_SAMPLE_CURRENTS)
      {
         /**********************************************
         * Calculation of phase currents.
         **********************************************/
         if (ASAC_PHASE_CURRENTS_ON)
         {
            switch (sector)
            {
               case 2:
               case 3:
               {
                  ASAC_PROCESS(c,result_queue,queue_offset_b,dc_offset_b,bit_shift);
                  ASAC_PROCESS(d,result_queue,queue_offset_c,dc_offset_c,bit_shift);
                  b = - (c + d);
                  break;
               }
               case 1:
               case 5:
               {
                  ASAC_PROCESS(b,result_queue,queue_offset_a,dc_offset_a,bit_shift);
                  ASAC_PROCESS(d,result_queue,queue_offset_c,dc_offset_c,bit_shift);
                  c = - (b + d);
                  break;
               } 
               case 4:
               case 6:
               {
                  ASAC_PROCESS(b,result_queue,queue_offset_a,dc_offset_a,bit_shift);
                  ASAC_PROCESS(c,result_queue,queue_offset_b,dc_offset_b,bit_shift);
                  d = - (b + c); 
                  break;
               }                
            }
            /* sector = *p_PWMMAC_sector; */
            #asm(ram diob <- p_PWMMAC_sector.)
            #asm(ram p31_0 <- by diob.)
            #asm(ram p31_24 -> sector.)
         }
         else
         {
            ASAC_PROCESS(b,result_queue,queue_offset_a,dc_offset_a,bit_shift);
            ASAC_PROCESS(c,result_queue,queue_offset_b,dc_offset_b,bit_shift);
            ASAC_PROCESS(d,result_queue,queue_offset_c,dc_offset_c,bit_shift);
         }

         /**********************************************
         * EWMA filtering.
         **********************************************/
         ASAC_EWMA(output_a,p_output_a,b,forget_factor_a);
         ASAC_EWMA(output_b,p_output_b,c,forget_factor_b);
         ASAC_EWMA(output_c,p_output_c,d,forget_factor_c);

         /**********************************************
         * Calculation of dtc parameters.
         **********************************************/
         if (ASAC_DTC_ON)
         {
            ASAC_DTC(p_dtc_a,output_a,dtc_threshold);
            ASAC_DTC(p_dtc_b,output_b,dtc_threshold);
            ASAC_DTC(p_dtc_c,output_c,dtc_threshold);
         }
      }

      /**********************************************
      * DC BUS voltage sample (D) processing.
      **********************************************/
      if (measure_samples_mask & ASAC_SAMPLE_U_DC_BUS)
      {
         ASAC_PROCESS(d,result_queue,queue_offset_d,dc_offset_d,bit_shift);
         ASAC_EWMA(output_d,p_output_d1,d,forget_factor_d);
         /* *p_output_d2 = output_d; */
         #asm(ram diob <- p_output_d2.)
         #asm(ram p -> by diob.)
      }
      
      ClearMatchBLatch();
      LinkTo(innerloop_chan);
   }
   else
   {
ASAC_Error:
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
#pragma write h, (::ETPUfilename (cpu/etpu_asac_auto.h));
#pragma write h, (/**************************************************************** );
#pragma write h, (* WARNING this file is automatically generated DO NOT EDIT IT!    );
#pragma write h, (*                                                                 );
#pragma write h, (* This file provides an interface between eTPU code and CPU       );
#pragma write h, (* code. All references to the ASAC function should be made with );
#pragma write h, (* information in this file. This allows only symbolic             );
#pragma write h, (* information to be referenced which allows the eTPU code to be   );
#pragma write h, (* optimized without effecting the CPU code.                       );
#pragma write h, (*****************************************************************/);
#pragma write h, (#ifndef _FS_ETPU_ASAC_AUTO_H_);
#pragma write h, (#define _FS_ETPU_ASAC_AUTO_H_);
#pragma write h, ( );
#pragma write h, (/****************************************************************);
#pragma write h, (* Function Configuration Information. );
#pragma write h, (****************************************************************/);
#pragma write h, (::ETPUliteral(#define FS_ETPU_ASAC_FUNCTION_NUMBER )                ::ETPUfunctionnumber(ASAC) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ASAC_TABLE_SELECT    )                ::ETPUentrytype(ASAC));
#pragma write h, (::ETPUliteral(#define FS_ETPU_ASAC_NUM_PARMS       )                ::ETPUram(ASAC) );
#pragma write h, ( );
#pragma write h, (/****************************************************************);
#pragma write h, (* Host Service Request Definitions. );
#pragma write h, (****************************************************************/);
#pragma write h, (::ETPUliteral(#define FS_ASAC_HSR_INIT_HIGH_PERIOD_MODE          )  ASAC_HSR_INIT_HIGH_PERIOD_MODE );
#pragma write h, (::ETPUliteral(#define FS_ASAC_HSR_INIT_HIGH_SYNC_MODE            )  ASAC_HSR_INIT_HIGH_SYNC_MODE   );
#pragma write h, (::ETPUliteral(#define FS_ASAC_HSR_INIT_LOW_PERIOD_MODE           )  ASAC_HSR_INIT_LOW_PERIOD_MODE  );
#pragma write h, (::ETPUliteral(#define FS_ASAC_HSR_INIT_LOW_SYNC_MODE             )  ASAC_HSR_INIT_LOW_SYNC_MODE    );
#pragma write h, (::ETPUliteral(#define FS_ASAC_HSR_MEASURE_DC_OFFSETS             )  ASAC_HSR_MEASURE_DC_OFFSETS    );
#pragma write h, ( );
#pragma write h, (/****************************************************************);
#pragma write h, (* Parameter Definitions. );
#pragma write h, (****************************************************************/);
#pragma write h, (::ETPUliteral(#define FS_ETPU_ASAC_MEASURE_TIME_OFFSET           ) ::ETPUlocation (ASAC, measure_time            ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ASAC_PERIOD_OFFSET                 ) ::ETPUlocation (ASAC, period                  ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ASAC_P_EDGE_TIME_OFFSET            ) ::ETPUlocation (ASAC, p_edge_time             ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ASAC_START_OFFSET_OFFSET           ) ::ETPUlocation (ASAC, start_offset            ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ASAC_PERIODS_PER_OUTERLOOP_OFFSET  ) ::ETPUlocation (ASAC, periods_per_outerloop   ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ASAC_OUTERLOOP_CHAN_OFFSET         ) ::ETPUlocation (ASAC, outerloop_chan          ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ASAC_INNERLOOP_CHAN_OFFSET         ) ::ETPUlocation (ASAC, innerloop_chan          ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ASAC_RESULT_QUEUE_OFFSET           ) ::ETPUlocation (ASAC, result_queue            ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ASAC_BIT_SHIFT_OFFSET              ) ::ETPUlocation (ASAC, bit_shift               ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ASAC_MEASURE_DC_OFFSET_MASK_OFFSET ) ::ETPUlocation (ASAC, measure_dc_offset_mask  ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ASAC_QUEUE_OFFSET_A_OFFSET         ) ::ETPUlocation (ASAC, queue_offset_a          ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ASAC_QUEUE_OFFSET_B_OFFSET         ) ::ETPUlocation (ASAC, queue_offset_b          ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ASAC_QUEUE_OFFSET_C_OFFSET         ) ::ETPUlocation (ASAC, queue_offset_c          ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ASAC_QUEUE_OFFSET_D_OFFSET         ) ::ETPUlocation (ASAC, queue_offset_d          ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ASAC_DC_OFFSET_A_OFFSET            ) ::ETPUlocation (ASAC, dc_offset_a             ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ASAC_DC_OFFSET_B_OFFSET            ) ::ETPUlocation (ASAC, dc_offset_b             ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ASAC_DC_OFFSET_C_OFFSET            ) ::ETPUlocation (ASAC, dc_offset_c             ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ASAC_DC_OFFSET_D_OFFSET            ) ::ETPUlocation (ASAC, dc_offset_d             ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ASAC_FORGET_FACTOR_A_OFFSET        ) ::ETPUlocation (ASAC, forget_factor_a         ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ASAC_FORGET_FACTOR_B_OFFSET        ) ::ETPUlocation (ASAC, forget_factor_b         ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ASAC_FORGET_FACTOR_C_OFFSET        ) ::ETPUlocation (ASAC, forget_factor_c         ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ASAC_FORGET_FACTOR_D_OFFSET        ) ::ETPUlocation (ASAC, forget_factor_d         ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ASAC_OUTPUT_A_OFFSET               ) ::ETPUlocation (ASAC, output_a                ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ASAC_OUTPUT_B_OFFSET               ) ::ETPUlocation (ASAC, output_b                ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ASAC_OUTPUT_C_OFFSET               ) ::ETPUlocation (ASAC, output_c                ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ASAC_OUTPUT_D_OFFSET               ) ::ETPUlocation (ASAC, output_d                ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ASAC_P_OUTPUT_A_OFFSET             ) ::ETPUlocation (ASAC, p_output_a              ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ASAC_P_OUTPUT_B_OFFSET             ) ::ETPUlocation (ASAC, p_output_b              ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ASAC_P_OUTPUT_C_OFFSET             ) ::ETPUlocation (ASAC, p_output_c              ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ASAC_P_OUTPUT_D1_OFFSET            ) ::ETPUlocation (ASAC, p_output_d1             ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ASAC_P_OUTPUT_D2_OFFSET            ) ::ETPUlocation (ASAC, p_output_d2             ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ASAC_MEASURE_SAMPLES_MASK_OFFSET   ) ::ETPUlocation (ASAC, measure_samples_mask    ) );
//#pragma write h, (::ETPUliteral(#define FS_ETPU_ASAC_P_PWMMAC_SECTOR_OFFSET        ) ::ETPUlocation (ASAC, p_PWMMAC_sector         ) );
//#pragma write h, (::ETPUliteral(#define FS_ETPU_ASAC_SECTOR_OFFSET                 ) ::ETPUlocation (ASAC, sector                  ) );
//#pragma write h, (::ETPUliteral(#define FS_ETPU_ASAC_DTC_THRESHOLD_OFFSET          ) ::ETPUlocation (ASAC, dtc_threshold           ) );
//#pragma write h, (::ETPUliteral(#define FS_ETPU_ASAC_P_DTC_A_OFFSET                ) ::ETPUlocation (ASAC, p_dtc_a                 ) );
//#pragma write h, (::ETPUliteral(#define FS_ETPU_ASAC_P_DTC_B_OFFSET                ) ::ETPUlocation (ASAC, p_dtc_b                 ) );
//#pragma write h, (::ETPUliteral(#define FS_ETPU_ASAC_P_DTC_C_OFFSET                ) ::ETPUlocation (ASAC, p_dtc_c                 ) );
//#pragma write h, (::ETPUliteral(#define FS_ETPU_ASAC_OPTIONS_OFFSET                ) ::ETPUlocation (ASAC, options                 ) );
//#pragma write h, (::ETPUliteral(#define FS_ETPU_ASAC_ADC0_I_A_CMD_OFFSET           ) ::ETPUlocation (ASAC, ADC0_iA_cmd  ) );
//#pragma write h, (::ETPUliteral(#define FS_ETPU_ASAC_ADC1_I_A_CMD_OFFSET           ) ::ETPUlocation (ASAC, ADC1_iA_cmd  ) );
//#pragma write h, (::ETPUliteral(#define FS_ETPU_ASAC_ADC0_I_B_CMD_OFFSET           ) ::ETPUlocation (ASAC, ADC0_iB_cmd  ) );
//#pragma write h, (::ETPUliteral(#define FS_ETPU_ASAC_ADC1_I_B_CMD_OFFSET           ) ::ETPUlocation (ASAC, ADC1_iB_cmd  ) );
//#pragma write h, (::ETPUliteral(#define FS_ETPU_ASAC_ADC0_I_C_CMD_OFFSET           ) ::ETPUlocation (ASAC, ADC0_iC_cmd  ) );
//#pragma write h, (::ETPUliteral(#define FS_ETPU_ASAC_ADC1_I_C_CMD_OFFSET           ) ::ETPUlocation (ASAC, ADC1_iC_cmd  ) );
//#pragma write h, (::ETPUliteral(#define FS_ETPU_ASAC_P_APPLIED_EQADC_CMDS_OFFSET   ) ::ETPUlocation (ASAC, p_applied_eQADC_cmds    ) );
#pragma write h, (#define FS_ETPU_ASAC_P_PWMMAC_SECTOR_OFFSET        0x0061 );
#pragma write h, (#define FS_ETPU_ASAC_SECTOR_OFFSET                 0x0020 );
#pragma write h, (#define FS_ETPU_ASAC_DTC_THRESHOLD_OFFSET          0x0065 );
#pragma write h, (#define FS_ETPU_ASAC_P_DTC_A_OFFSET                0x0069 );
#pragma write h, (#define FS_ETPU_ASAC_P_DTC_B_OFFSET                0x006D );
#pragma write h, (#define FS_ETPU_ASAC_P_DTC_C_OFFSET                0x0071 );
#pragma write h, (#define FS_ETPU_ASAC_OPTIONS_OFFSET                0x0024 );
#pragma write h, (#define FS_ETPU_ASAC_ADC0_I_A_CMD_OFFSET           0x0074 );
#pragma write h, (#define FS_ETPU_ASAC_ADC1_I_A_CMD_OFFSET           0x0078 );
#pragma write h, (#define FS_ETPU_ASAC_ADC0_I_B_CMD_OFFSET           0x007C );
#pragma write h, (#define FS_ETPU_ASAC_ADC1_I_B_CMD_OFFSET           0x0080 );
#pragma write h, (#define FS_ETPU_ASAC_ADC0_I_C_CMD_OFFSET           0x0084 );
#pragma write h, (#define FS_ETPU_ASAC_ADC1_I_C_CMD_OFFSET           0x0088 );
#pragma write h, (#define FS_ETPU_ASAC_P_APPLIED_EQADC_CMDS_OFFSET   0x008D );
#pragma write h, (#define FS_ETPU_ASAC_SECTOR_PLACE_HOLDER_OFFSET    0x0030 );
#pragma write h, ( );
#pragma write h, (/****************************************************************);
#pragma write h, (* Value Definitions. );
#pragma write h, (****************************************************************/);
#pragma write h, (::ETPUliteral(#define FS_ETPU_ASAC_FM_PHASE_CURRENTS_OFF) 0 );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ASAC_FM_PHASE_CURRENTS_ON ) 1 );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ASAC_FM_DTC_OFF           ) 0 );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ASAC_FM_DTC_ON            ) 2 );
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
