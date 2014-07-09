/*******************************************************************************
*
*  FREESCALE SEMICONDUCTOR INC. 2005
*  ALL RIGHTS RESERVED
*  COPYRIGHT (c)
*
********************************************************************************
*
*  DESCRIPTION:
*   The Motor-Control PWM - Master for AC Motors (PWMMAC) function reads
*   input parameters, calculates duty-cycles and updates the edge-times
*   of up to three PWMC or PWMF phases.
*
*******************************************************************************
*
*  REVISION HISTORY:
*
*  REVISION    AUTHOR       DATE        DESCRIPTION OF CHANGE
*  --------    -----------  ---------   ------------------------------------
*   0.1        M. Brejl     13/Jun/05   Initial version ported from PWMMDC
*              M. Princ                 eTPU function of the set3.
*   0.2        M. Princ     01/Jul/05   SVM implemented
*   0.3        M. Princ     12/Jul/05   Table modulations implemented
*   0.4        M. Brejl     29/Jul/05   Corrections of SVM arithmetic overflows
*   0.5        M. Brejl     17/Oct/05   SVM inputs [a,b] and amplitude
*                                       in format 3.21.
*   0.6        M. Brejl     07/Dec/05   Fixed for ETPU_C 1.0.7 assembler.
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
#ifndef NO_OPT
#pragma verify_wctl  PWMMAC                260  steps  60 rams
#endif
#pragma exclude_wctl PWMMAC::PWMAC_InitNormal
#pragma exclude_wctl PWMMAC::PWMAC_InitHalfCycle
#pragma exclude_wctl PWMMAC::PWMAC_InitUpdate
#endif

#ifdef PWMMAC_FUNCTION_NUMBER /* function is being compiled as part of a set4 */
#pragma ETPU_function PWMMAC, alternate @ PWMMAC_FUNCTION_NUMBER;
#else
#pragma ETPU_function PWMMAC, alternate;
#endif

/************************************************************************
*  Includes.
************************************************************************/
#include "etpuc_pwmm.h"     /* Shared by PWMMDC, PWMMAC, PWMF and PWMC */
#include "etpuc_mc_sin.c"
#include "etpuc_mc_util.c"
/************************************************************************
*  Definitions.
************************************************************************/
/*  Host service requests */
#define PWMMAC_HSR_INIT_NORMAL       7
#define PWMMAC_HSR_INIT_HALF_CYCLE   5
#define PWMMAC_HSR_UPDATE            2

/* Function Modes */
#define PWMMAC_EDGE_ALIGNED          (fm0==0)
#define PWMMAC_CENTER_ALIGNED        (fm0==1)
#define PWMMAC_SINGLE_CHANNELS       (fm1==0)
#define PWMMAC_COMPLEMENTARY_PAIRS   (fm1==1)

/* Modulations */
#define PWMMAC_MODULATION_NO         0x0
#define PWMMAC_MODULATION_UNSIGNED   0x1
#define PWMMAC_MODULATION_SIGNED     0x2
#define PWMMAC_MODULATION_SVMSTD     0x3
#define PWMMAC_MODULATION_SVMU0N     0x4
#define PWMMAC_MODULATION_SVMU7N     0x5
#define PWMMAC_MODULATION_PWMICT     0x6
#define PWMMAC_MODULATION_SINE_TABLE 0x7
#define PWMMAC_MODULATION_USER_TABLE 0x8

/* phases_sarted flag */
#define PWMMAC_PHASES_STARTED        0x01

/* sqrt(3) */
#define PWMMAC_SQRT3_HALF            0x6ED9EA /* ((sqrt(3)/2)*2^23) - 1 */

/************************************************************************
* NAME: PWMMACReloadPhase()
*
* DESCRIPTION: This routine is called by PWMMAC in order to calculate and
*              reload edge times of one (PWMC or PWMF) phase.
*    - send link to channelX and if complementary pairs to X+1
*    - send link to base, and optinally also the complementary, channel
*    - save period_copy to channelX period_copy, clear phase flags
*    - calculate high-time, consider channelX option "negate duty"
*    - adjust high-time using dtcX - no dead-time compensation for DC
*    - limit high-time using min_pw, set channelX duty-extreme flags
*    - calculate A_time, B_time, Ac_time, Bc_time,
*      consider options "edge-/center- aligned"
*      and channelX option "swap dead-time insertion"
*    - set/clear phase half_cycle flag
*    - save A/B/Ac/Bc_times
*    - switch back to master channel (PWMMAC)
*
* FUNCTION PARAMETERS:
*  This function has no function parameters. Special technics are used instead:
*  1) Values from PWMMAC function are passed to through registers,
*     as defined bellow. Furhther more the edge_time is passed in erta.
*  2) Phase parameters are accessed using phaseX structure, that position
*     is fixed to channel parameter base address. This technique presumes
*     that the active channel (value in chan register) is the processed phase
*     base channel.
*
************************************************************************/
void PWMMACReloadPhase(void)
{
  /* Values passed from PWMMAC through registers */
  register_b    tmp_half_reload_flag__master_chan;
  register_c    tmp_min_pw;
  register_d    tmp_period;
  register_diob tmp_dead_time;
  register_mach tmp_high_time;
  register_sr   tmp_max_pw;

  /* Access to phase parameters */
  pwmm_phase_t register_chan_base * phaseX;

  /* Register A is accessed in C-code for optimizations */
  register_ac   a;

  /* send link to base, and optinally also the complementary, channel */
  LinkTo(GetCurrentChanNum());
  if (PWMMAC_COMPLEMENTARY_PAIRS)
    LinkTo(GetCurrentChanNum() + 1);
  /* save period_copy to channelX period_copy, clear phase flags */
  phaseX->period_copy = tmp_period;
  phaseX->flags = 0;

  /* calculate high-time, consider channelX option "negate duty" */
#ifdef __ETEC__  // ASH WARE
  a = muliur(tmp_period, phaseX->duty);
#else  // Byte Craft
  a = tmp_period * phaseX->duty;
#endif
  if ( phaseX->options & PWMM_DUTY_NEG )
  {
    a = tmp_period - a;
  }
  /* adjust high-time using dtcX */
  /* tmp_high_time = a + tmp_dead_time*(int8)(phaseX->dtc); */
  #asm(  ram p31_24 <- pram8. )  /* p31_24 = dtcX */
  #asm(  alu p = p31_24.      )  /* p = dtcX */
  #asm(  mdu diob mults p(8). )  /* tmp_dead_time * dtcX */
  #asm(  nop.                 )  /* mbsy */
  #asm(  alu mach = macl + a. )  /* tmp_high_time = tmp_dead_time * dtcX + a */

  /* limit high-time using min_pw, set channelX duty-extreme flags */
  a = tmp_min_pw;
  /*if ( tmp_high_time < a )*/
  #asm(  alu nil = mach - a, ccs. )
  if( CC.LT )
  {
    a = a>>1;
    /*if ( tmp_high_time < a )*/
    #asm(  alu nil = mach - a, ccs. )
    if( CC.LT )
      phaseX->flags = PWMM_ZERO_DUTY;
    tmp_high_time = tmp_min_pw;
  }
  else if ( tmp_high_time > tmp_max_pw )
  {
    a = a>>1;
    a = tmp_max_pw + a;
    if ( tmp_high_time > a)
      phaseX->flags = PWMM_FULL_DUTY;
    tmp_high_time = tmp_max_pw;
  }
  /* calculate A_time, B_time, Ac_time, Bc_time,
     consider options "edge-/center- aligned"
     and channelX option "swap dead-time insertion". */
  if ( PWMMAC_CENTER_ALIGNED )
  {
    a = tmp_high_time;
    erta += (tmp_period - a)>>1;
  }
  /* set/clear phase half_cycle flag */
  /* if ( tmp_half_reload_flag__master_chan < 0 ) */
  #asm(  alu nil = b, ccs. )
  if( CC.N )
  {
    a = tmp_period;
    ertb = erta - a + tmp_high_time;
    phaseX->flags |= PWMM_HALF_CYCLE;
  }
  else
  {
    a = tmp_high_time;
    ertb = erta + a;
    phaseX->flags &= ~PWMM_HALF_CYCLE;
  }
  /* save A/B/Ac/Bc_times */
  if (phaseX->options & PWMM_SWAP)
  {
    phaseX->Ac_time = erta;
    phaseX->Bc_time = ertb;
    phaseX->A_time = erta - tmp_dead_time;
    phaseX->B_time = ertb + tmp_dead_time;
  }
  else
  {
    phaseX->A_time = erta;
    phaseX->B_time = ertb;
    phaseX->Ac_time = erta - tmp_dead_time;
    phaseX->Bc_time = ertb + tmp_dead_time;
  }
  /* switch back to master channel (PWMMAC) */
  a = 0x7F;
  SwitchToChannel(tmp_half_reload_flag__master_chan & a);
}

/************************************************************************
* NAME: PWMMACShiftLeftBy4AndSat()
*
* DESCRIPTION: This routine transfers a signed value from fractional
*              format 3.21 to fractional format 1.23 with saturation.
*
*  if (x >= 0)
*    if (x & 0xE00000 == 0)
*      return(x<<2);
*    else
*      return(0x7FFFFF);
*  else
*    if (x & 0xE00000 == 0xE00000)
*      return(x<<2);
*    else
*      return(0x800000);
************************************************************************/
fract24 PWMMACShiftLeftBy2AndSat(registera x)
{
#ifdef __ETEC__  // ASH WARE
  // need to test x (sample flags) - can't assume it is set
    #asm(  alu a = a, ccs.)
#else  // Byte Craft
  /* a = x, ccs flags are set */
#endif
  #asm(  if N == 1 then goto PMSMVC_SL4S_NEG, no_flush. )
  #asm(  alu p = a high& 0xE0. )
         /*------------*/
PMSMVC_SL4S_POS:
  #asm(  alu nil = p23_16, ccs. )
  #asm(  if Z == 1 then goto PMSMVC_SL4S_OK, flush. )
#ifdef __ETEC__  // ASH WARE
  // this instruction combination only supports "flush".  Note that using the "flush"
  // keyword works fine with BC version 1.0.7.55, but fails in 1.0.7.30.
  // Note 2: #ifdef does not work inside #asm/#endasm under Byte Craft
  #asm(  alu a = 0x7FFFFF; return, flush. )
#else  // Byte Craft
  #asm(  alu a = 0x7FFFFF; return. )
#endif
         /*------------*/
PMSMVC_SL4S_NEG:
  #asm(  alu nil = p23_16 low^ 0xE0, ccs8. )
  #asm(  if Z == 1 then goto PMSMVC_SL4S_OK, flush. )
#ifdef __ETEC__  // ASH WARE
  // this instruction combination only supports "flush".  Note that using the "flush"
  // keyword works fine with BC version 1.0.7.55, but fails in 1.0.7.30.
  // Note 2: #ifdef does not work inside #asm/#endasm under Byte Craft
  #asm(  alu a = 0x800001; return, flush. )
#else  // Byte Craft
  #asm(  alu a = 0x800001; return. )
#endif
PMSMVC_SL4S_OK:
  #asm(  return, no_flush. )
  #asm(  alu a = a << 2. )
}


/************************************************************************
* NAME: PWMMAC
*
* DESCRIPTION: Motor-Control PWM - Master for DC Motors
*
* FUNCTION PARAMETERS:
*   phases       - Number of used phases.
*   start_offset - This parameter is used to synchronize various eTPU functions
*                  that generate a signal. For PWMMAC: the first PWM period
*                  starts start_offset TCR1 clocks after initialization.
*   modulation   - Selection of modulation. In case of "PWMMAC_MODULATION_NO"
*                  the phase duty cycles are the inputs, otherwise the phase
*                  duty cycles are calculated based on the voltage.
*   update_time  - Time (as number of TCR1 clocks) that is necessary to perform
*                  the update of all PWM phases.
*   dead_time    - Dead-time as number of TCR1 clocks.
*   min_pw       - Minimum pulse width as number of TCR1 clocks.
*   period       - PWM period. Can be updated on each UPDATE.
*   period_copy  - Local copy of the period parameter.
*   edge_time    - Next PWM period edge-time. Updated each period.
*   inputs       - Depending on the selected modulation:
*                  .A - voltage                .B -
*                     - alpha (SVMs)              - beta (SVMs)
*                     - angle (sine modulations)  - amplitude (sine modulations)
*   table        - Pointer to the first quadrant table. Applies only if Table
*                  Modulation is selected. The table is an array of unsigned
*                  16-bit fract values, and of length of 129.
*   sector       - In case of an SVM modulatin the Applied Voltage Vector
*                  position in one of 6 sectors is returned.                                  |
*   phases_started-This flag is set by API to notify that the phases has just
*                  been enabled and the first reload must not be the half
*                  cycle reload.
*   phaseA       - Structure of PhaseA parameters. PhaseA channel parameter
*                  base address points to this parameter.
*   phaseB       - Structure of PhaseB parameters. PhaseA channel parameter
*                  base address points to this parameter.
*   phaseC       - Structure of PhaseC parameters. PhaseA channel parameter
*                  base address points to this parameter.
*
* CHANNEL FLAG USAGE:
*  - Flag0 is used to indentify that the update happend. The reload can
*    then process the updated duty-cycles.
*  - Flag1 is not used.
************************************************************************/
void PWMMAC (        int8  phases,
                    int24  start_offset,
                     int8  modulation,
                    int24  update_time,
                    int24  dead_time,
                    int24  min_pw,
                    int24  period,
                    int24  period_copy,
                    int24  edge_time,
            pwmm_inputs_t  inputs,
         unsigned fract16 *table,
                     int8  sector,
             pwmm_phase_t  phaseA,
             pwmm_phase_t  phaseB,
             pwmm_phase_t  phaseC,
                     int8  phases_started )
{
  /* Values passed to PWMMACReloadPhase through registers */
  register_b    tmp_half_reload_flag__master_chan;
  register_c    tmp_min_pw;
  register_d    tmp_period;
  register_diob tmp_dead_time;
  register_mach tmp_high_time;
  register_sr   tmp_max_pw;

  /* Used for SVM calculation */
  register_diob tmp_a;
  register_sr   tmp_b;
  register_c    tmp_c;

  register_diob tmp_x;
  register_sr   tmp_y;
  register_c    tmp_z;

  /* Register A is accessed in C-code for optimizations */
  register_ac   a;

/*--------------------------------------------------------------------------+
| THREAD NAME: INIT_NORMAL                                                  |
| DESCRIPTION: Initialize a channel to run the PWMM function with normal    |
|              reload.                                                      |
|              1. Disable matches in thread in case there are any previous  |
|                  pending matches. This could happen if the channel was    |
|                  running another function before this one.                |
|              2. Select SingleMatch-SingleTransition channel mode.         |
|              3. Configure channel to use TCR1 clock.                      |
|              4. Configure input pin actions to no_detect.                 |
|              5. Configure output pin actions to no_change.                |
|              6. Enable match and transition event handling.               |
|              7. Clear flag0.                                              |
|              8. Set pin low.                                              |
|              9. Clear latches.                                            |
|             10. Send link to self to issue the first update.              |
|             11. Set edge_time = tcr1 + start_offset.                      |
|             12. Schedule matchA at edge-time - update time.               |
+--------------------------------------------------------------------------*/
  if (hsr == PWMMAC_HSR_INIT_NORMAL)
  {
PWMAC_InitNormal:
    DisableMatchesInThread();

    OnTransA(NoDetect);
    OnTransB(NoDetect);
    ActionUnitA( MatchTCR1, CaptureTCR1, GreaterEqual);
    SingleMatchSingleTransition();
    OnMatchA(NoChange);
    OnMatchB(NoChange);
    EnableOutputBuffer();
    Pin(SetLow);
    ClearAllLatches();

    LinkTo(GetCurrentChanNum());
    edge_time = tcr1 + start_offset;
    SetupMatchA(edge_time - update_time);

    EnableEventHandling();
    Clear(flag0);
  }
/*--------------------------------------------------------------------------+
| THREAD NAME: INIT_HALF_CYCLE                                              |
| DESCRIPTION: Initialize a channel to run the PWMM function with half-cycle|
|              reload.                                                      |
|              1. Disable matches in thread in case there are any previous  |
|                  pending matches. This could happen if the channel was    |
|                  running another function before this one.                |
|              2. Select EitherMatch-Blocking-SingleTransition channel mode.|
|              3. Configure channel to use TCR1 clock.                      |
|              4. Configure input pin actions to no_detect.                 |
|              5. Configure output pin actions to no_change.                |
|              6. Enable match and transition event handling.               |
|              7. Clear flag0.                                              |
|              8. Set pin low.                                              |
|              9. Clear latches.                                            |
|             10. Send link to self to issue the first update.              |
|             11. Set edge_time = tcr1 + start_offset.                      |
|             12. Schedule matchA at edge-time - update time.               |
+--------------------------------------------------------------------------*/
  else if (hsr == PWMMAC_HSR_INIT_HALF_CYCLE)
  {
PWMAC_InitHalfCycle:
    DisableMatchesInThread();

    OnTransA(NoDetect);
    OnTransB(NoDetect);
    ActionUnitA( MatchTCR1, CaptureTCR1, GreaterEqual);
    ActionUnitB( MatchTCR1, CaptureTCR1, GreaterEqual);
    EitherMatchNonBlockingSingleTransition();
    OnMatchA(NoChange);
    OnMatchB(NoChange);
    EnableOutputBuffer();
    Pin(SetLow);
    ClearAllLatches();

    LinkTo(GetCurrentChanNum());
    edge_time = tcr1 + start_offset;
    SetupMatchA(edge_time - update_time);
    SetupMatchB(erta + (period>>1));

    EnableEventHandling();
    Clear(flag0);
  }
/*--------------------------------------------------------------------------+
| THREAD NAME: UPDATE                                                       |
| DESCRIPTION: Read new input values, perform the modulation and update the |
|              phase duty-cycles.                                           |
|              1. Set pin high to indicate the calculation time.            |
|              2. Based on the modulation parameter calculate duty-cycles.  |
|              3. Set flag0 to indicate that the update happend.            |
|              4. Set pin low.                                              |
+--------------------------------------------------------------------------*/
  else if ( ((lsr==1) && (m1==0) && (m2==0)) || (hsr == PWMMAC_HSR_UPDATE) )
  {
PWMAC_InitUpdate:
    Pin(SetHigh);
    Set(flag0);

    switch (modulation)
    {
    case PWMMAC_MODULATION_UNSIGNED:
#ifdef __ETEC__  // ASH WARE
      // take care on fract to unsigned fract conversion...
      // the code was written to NOT expect a (fract) -> (unsigned fract)
      // so fake it out
      phaseA.duty = phaseB.duty = phaseC.duty = (int24)inputs.A;
#else  // Byte Craft
      register_p p;
      p = inputs.A;
      phaseA.duty = p;
      phaseB.duty = p;
      phaseC.duty = p;
#endif
    break;
    case PWMMAC_MODULATION_SIGNED:
#ifdef __ETEC__  // ASH WARE
      // take care on fract to unsigned fract conversion...
      // the code was written to NOT expect a (fract) -> (unsigned fract)
      // so fake it out
      phaseA.duty = phaseB.duty = phaseC.duty = (int24)inputs.A + 0x800000;
#else  // Byte Craft
      p = inputs.A + 0x800000;
      phaseA.duty = p;
      phaseB.duty = p;
      phaseC.duty = p;
#endif
    break;
    case PWMMAC_MODULATION_PWMICT:
    case PWMMAC_MODULATION_SVMSTD:
    case PWMMAC_MODULATION_SVMU0N:
    case PWMMAC_MODULATION_SVMU7N:
      /* Sector number calculation
      Inputs:
        inputs.A ... Us_alpha/4
        inputs.B ... Us_beta/4
      Variables:
        r1 = inputs.B                                 ... Us_beta/4
        r2 = -inputs.B/2 + PWMMAC_SQRT3_HALF*inputs.A ... (-Us_beta + SQRT(3)*Us_alpha)/8
        r3 = -inputs.B/2 - PWMMAC_SQRT3_HALF*inputs.A ... (-Us_beta - SQRT(3)*Us_alpha)/8
      Outputs:
        sector ... a + b + c, where a = 1 (if r1 > 0), a = 0 (otherwise)
                                    b = 2 (if r2 > 0), b = 0 (otherwise)
                                    c = 4 (if r3 > 0), c = 0 (otherwise)
        diob = tmp_x =   r1  ... Us_beta/4
        sr   = tmp_y = - r3  ... (Us_beta + SQRT(3)*Us_alpha)/8
        c    = tmp_z = - r2  ... (Us_beta - SQRT(3)*Us_alpha)/8
      */
      #asm(  alu p31_24 = 0; ram diob <- inputs+4.          )  /* p_msb = 0, diob = inputs.B */
      #asm(  alu a = 0 - diob, ccs; ram p <- inputs.        )  /* a = -inputs.B, p = inputs.A */
      #asm(  alu_if N == 1 then p31_24 = p31_24 + #1.       )  /* if -inputs.B < 0 then p_msb = 1*/
      #asm(  alu sr = #PWMMAC_SQRT3_HALF.                   )  /* sr = PWMMAC_SQRT3_HALF */
      #asm(  mdu p mults sr.                                )  /* signed multiplication PWMMAC_SQRT3_HALF*inputs.A */
#ifdef __ETEC__  // ASH WARE
      #asm(  alu_if N == 1 then a = 0 - a.                  )  /* a = |-inputs.B| */
      #asm(  alu a =>> a + #0x0.                            )  /* a = |-inputs.B|/2 */
      #asm(  alu_if N == 1 then a = 0 - a.                  )  /* a = -inputs.B/2 */
#else  // Byte Craft
      #asm( %hex 3C3F0F74.                                  )  /* a = |-inputs.B| */
      #asm(  alu a =>> a + #0x0.                            )  /* a = |-inputs.B|/2 */
      #asm( %hex 3C3F0F74.                                  )  /* a = -inputs.B/2 */
#endif
      #asm(  alu a = 0 - a.                                 )  /* a = inputs.B/2 */
      #asm(  alu p =<< mach + #0x0.                         )  /* p = PWMMAC_SQRT3_HALF*inputs.A */
      #asm(  alu c = a - p, ccs.                            )  /* sr = inputs.B/2 - PWMMAC_SQRT3_HALF*inputs.A */
      #asm(  alu_if N == 1 then p31_24 = p31_24 + #2.       )  /* if -(-inputs.B/2 + PWMMAC_SQRT3_HALF*inputs.A) < 0 then p_msb = p_msb + 2 */
      #asm(  alu sr = a + p, ccs.                           )  /* c = inputs.B/2 + PWMMAC_SQRT3_HALF*inputs.A */
      #asm(  alu_if N == 1 then p31_24 = p31_24 + #4.       )  /* if -(-inputs.B/2 - PWMMAC_SQRT3_HALF*inputs.A) < 0 then p_msb = p_msb + 4 */
      #asm(  ram p31_24 -> sector.                          )  /* save sector = p_msb */

      switch (modulation)
      {
      case PWMMAC_MODULATION_PWMICT:
        /*
        Inputs:
          inputs.A ... Us_alpha/4
          inputs.B ... Us_beta/4
        Outputs (signed duty-cycles values in format 3.21):
          diob = tmp_a = inputs.A                                 ... Us_alpha/4
          sr   = tmp_b = -inputs.A/2 + PWMMAC_SQRT3_HALF*inputs.B ... (-Us_alpha + SQRT(3)*Us_beta)/8
          c    = tmp_c = -inputs.A/2 - PWMMAC_SQRT3_HALF*inputs.B ... (-Us_alpha - SQRT(3)*Us_beta)/8
        */
        #asm(  ram diob <- inputs.                            )  /* diob = inputs.A = tmp_a */
        #asm(  alu a = 0 - diob, ccs; ram p <- inputs+4.      )  /* a = -inputs.A, p = inputs.B */
        #asm(  alu sr = #PWMMAC_SQRT3_HALF.                   )  /* sr = PWMMAC_SQRT3_HALF */
        #asm(  mdu p mults sr.                                )  /* signed multiplication PWMMAC_SQRT3_HALF*inputs.B */
#ifdef __ETEC__  // ASH WARE
        #asm(  alu_if N == 1 then a = 0 - a.                  )  /* a = |-inputs.A| */
        #asm(  alu a =>> a + #0x0.                            )  /* a = |-inputs.A|/2 */
        #asm(  alu_if N == 1 then a = 0 - a.                  )  /* a = -inputs.A/2 */
#else  // Byte Craft
        #asm( %hex 3C3F0F74.                                  )  /* a = |-inputs.A| */
        #asm(  alu a =>> a + #0x0.                            )  /* a = |-inputs.A|/2 */
        #asm( %hex 3C3F0F74.                                  )  /* a = -inputs.A/2 */
#endif
        #asm(  alu p =<< mach + #0x0.                         )  /* p = PWMMAC_SQRT3_HALF*inputs.B */
        #asm(  alu sr = a + p.                                )  /* sr = -inputs.A/2 + PWMMAC_SQRT3_HALF*inputs.B = tmp_b */
        #asm(  goto PWMMAC_SATURATE_1, no_flush.              )
        #asm(  alu c = a - p.                                 )  /* c = -inputs.A/2 - PWMMAC_SQRT3_HALF*inputs.B = tmp_c */
      /*goto PWMMAC_SATURATE_1;*/
      case PWMMAC_MODULATION_SVMSTD:
        switch (sector)
        {
        case 3: /* Sector 1 */
        case 4: /* Sector 4 */
          /*
          tmp_a =   tmp_x - tmp_z;
          tmp_b =   tmp_x + tmp_z;
          tmp_c = - tmp_x + tmp_z;
          */
          tmp_b =   tmp_x + tmp_z;
          tmp_c = - tmp_x + tmp_z;
          tmp_a = - tmp_c;
        break;
        case 1: /* Sector 2 */
        case 6: /* Sector 5 */
          /*
          tmp_a =   tmp_y - tmp_z;
          tmp_b =   tmp_y + tmp_z;
          tmp_c = - tmp_y - tmp_z;
          */
          tmp_a =   tmp_y - tmp_z;
          tmp_b =   tmp_y + tmp_z;
          #asm(  alu c = 0 - sr.     )  /* tmp_c = - tmp_b; */
        break;
        case 5: /* Sector 3 */
        case 2: /* Sector 6 */
          /*
          tmp_a =   tmp_y - tmp_x;
          tmp_b = - tmp_y + tmp_x;
          tmp_c = - tmp_y - tmp_x;
          */
          #asm(  alu c = 0 - sr.     )  /* c = - tmp_y */
          #asm(  alu c = c - diob.   )  /* tmp_c = - tmp_y - tmp_x; */
          #asm(  alu sr = diob - sr. )  /* tmp_b = tmp_x - tmp_y; */
          #asm(  alu diob = 0 - sr.  )  /* tmp a = - tmp_b */
        }
#asm
PWMMAC_SATURATE_1:
#endasm
        /*
        Shift tmp_x values left by 2 and satureate them.
        Then, transform them to 0%-100% unsigned duty-cycle range.
        */
        phaseA.duty = 0x800000 + (unsigned int24)PWMMACShiftLeftBy2AndSat(tmp_a);
        phaseB.duty = 0x800000 + (unsigned int24)PWMMACShiftLeftBy2AndSat(tmp_b);
        phaseC.duty = 0x800000 + (unsigned int24)PWMMACShiftLeftBy2AndSat(tmp_c);
      break;
      case PWMMAC_MODULATION_SVMU0N:
        switch (sector)
        {
        case 3: /* Sector 1 */
          tmp_b = tmp_x;
          #asm(  alu a = c.           )
          #asm(  alu diob = diob - a. )  /* tmp_a = tmp_x - tmp_z; */
          tmp_c = 0;
        break;
        case 1: /* Sector 2 */
          tmp_a = tmp_y;
          tmp_b = tmp_y + tmp_z;
          tmp_c = 0;
        break;
        case 5: /* Sector 3 */
          #asm(  alu c = 0 - sr.     )  /* tmp_c = - tmp_y; */
          tmp_b = tmp_c + tmp_x;
          tmp_a = 0;
        break;
        case 4: /* Sector 4 */
          tmp_b = tmp_z;
          tmp_c = tmp_z - tmp_x;
          tmp_a = 0;
        break;
        case 6: /* Sector 5 */
          tmp_a = -tmp_z;
          #asm(  alu c = diob - sr.  )  /* tmp_c = tmp_a - tmp_y; */
          tmp_b = 0;
        break;
        case 2: /* Sector 6 */
          #asm(  alu c = 0 - diob.   )  /* tmp_c = -tmp_x; */
          tmp_a = -tmp_x + tmp_y;
          tmp_b = 0;
        }
      goto PWMMAC_SATURATE_2;
      case PWMMAC_MODULATION_SVMU7N:
        switch (sector)
        {
        case 3: /* Sector 1 */
          tmp_b = 0xFFFFFF + tmp_z;
          tmp_c = tmp_b - tmp_x;
          tmp_a = 0xFFFFFF;
        break;
        case 1: /* Sector 2 */
          tmp_a = -(1 + tmp_z);
          #asm(  alu c = diob - sr.     )  /* tmp_c = tmp_a - tmp_y; */
          tmp_b = 0xFFFFFF;
        break;
        case 5: /* Sector 3 */
          tmp_c = 0xFFFFFF - tmp_x;
          tmp_a = tmp_c + tmp_y;
          tmp_b = 0xFFFFFF;
        break;
        case 4: /* Sector 4 */
          tmp_b = tmp_x + 0xFFFFFF;
          tmp_a = tmp_b - tmp_z;
          tmp_c = 0xFFFFFF;
        break;
        case 6: /* Sector 5 */
          tmp_a = tmp_y + 0xFFFFFF;
          tmp_b = tmp_a + tmp_z;
          tmp_c = 0xFFFFFF;
        break;
        case 2: /* Sector 6 */
          tmp_c = 0xFFFFFF - tmp_y;
          tmp_b = tmp_c + tmp_x;
          tmp_a = 0xFFFFFF;
        break;
        case 0: /* Sector 0 */
          tmp_a = 0xFFFFFF;
          tmp_b = 0xFFFFFF;
          tmp_c = 0xFFFFFF;
        }
PWMMAC_SATURATE_2:
        /*
        Shift tmp_x values left by 2 and satureate them.
        */
        phaseA.duty = ((unsigned int24)PWMMACShiftLeftBy2AndSat(tmp_a))<<1;
        phaseB.duty = ((unsigned int24)PWMMACShiftLeftBy2AndSat(tmp_b))<<1;
        phaseC.duty = ((unsigned int24)PWMMACShiftLeftBy2AndSat(tmp_c))<<1;
        break;
      }
    break;
    case PWMMAC_MODULATION_SINE_TABLE:
    case PWMMAC_MODULATION_USER_TABLE:
      /* Shift inputs.B (amplitude) left by 2 and satureate. */
      a = PWMMACShiftLeftBy2AndSat(inputs.B+0);           /* register a = amplitude */
      #asm(  alu b = a; ram p <- inputs. )                /* b = amplitude, p = angle */
      /* Phase A */
      #asm(  call MC_LUT, no_flush. )                     /* a = mc_sin(pi*d) */
      #asm(  alu d = p; ram diob <- table. )              /* d = angle, diob = p_lut */
             /*---------*/
      #asm(  mdu b mults a. )                             /* amplitude * sin(angle) */
      PWMMAC_TABLE_A:
      #asm(  if mbsy then goto PWMMAC_TABLE_A, flush. )   /* wait till multiplication is complete */
      #asm(  alu a =<< mach + #0. )                       /* a = (fract24)duty */
      #asm(  alu p = a + max; ram p -> phaseA+1. )        /* phaseA.duty = (ufract24)duty */
      /* Phase B */
      #asm(  alu a = 0xAAAAAA. )                          /* a = 240/360 */
      #asm(  alu d = d + a. )                             /* d = angle - 240deg */
      #asm(  call MC_LUT, no_flush. )                     /* a = mc_sin(pi*d) */
      #asm(  ram diob <- table. )                         /* diob = p_lut */
             /*---------*/
      #asm(  mdu b mults a. )                             /* amplitude * sin(angle-120) */
      PWMMAC_TABLE_B:
      #asm(  if mbsy then goto PWMMAC_TABLE_B, flush. )   /* wait till multiplication is complete */
      #asm(  alu a =<< mach + #0. )                       /* a = (fract24)duty */
      #asm(  alu p = a + max; ram p -> phaseB+1. )        /* phaseB.duty = (ufract24)duty */

      if (modulation & PWMMAC_MODULATION_USER_TABLE)
      {
        /* Phase C */
        #asm(  alu a = 0xAAAAAA. )                          /* a = 240/360 */
        #asm(  alu d = d + a. )                             /* d = angle - 240deg */
        #asm(  call MC_LUT, no_flush. )                     /* a = mc_sin(pi*d) */
        #asm(  ram diob <- table. )                         /* diob = p_lut */
               /*---------*/
        #asm(  mdu b mults a. )                             /* amplitude * sin(angle-240) */
        PWMMAC_TABLE_C:
        #asm(  if mbsy then goto PWMMAC_TABLE_C, flush. )   /* wait till multiplication is complete */
        #asm(  alu a =<< mach + #0. )                       /* a = (fract24)duty */
        #asm(  alu p = a + max; ram p -> phaseC+1. )        /* phaseC.duty = (ufract24)duty */
      }
      else
      {
#ifdef __ETEC__
        // Note: with the ETEC compiler, when a local variable is assigned to a general purpose register,
        // it will not otherwise be used by the code generator.  General purpose registers include
        // sr, a, b, c, d.  Registers such as diob, mach, macl will be "aliased" and the compiler will avoid
        // using them when they are assigned to a local variable, except when it must.  E.g. diob will be
        // be used for indirect memory accesses, and mach/macl will be used for MDU operations.
        // The code below was re-written to avoid running out of registers and make better use of register a.
        a = 0x800000;
        a = a - (int24)phaseA.duty;
        phaseC.duty = a - (int24)phaseB.duty;
#else
        phaseC.duty = 0x800000 - phaseA.duty - phaseB.duty;
#endif
      }
    }

    Clear(lsr);
    Pin(SetLow);
PMSMAC_UPD_END: ;
  }
/*--------------------------------------------------------------------------+
| THREAD NAME: RELOAD                                                       |
| DESCRIPTION: Calculate and set all edge-times of each running phase based |
|              on the phase duty-cycles.                                    |
|              1. Set pin high to indicate the calculation time.            |
|              2. Save period to period_copy                                |
|              3. For each running phase X ( X = A, B, C )                  |
|                 call ReloadPhase routine.                                 |
|              4. Clear flag0.                                              |
|              5. Continue with RELOAD_MISSED                               |
+--------------------------------------------------------------------------*/
  else if ( (m1==1) && (flag0==1) )
  {
PWMAC_ReloadThread:
    DisableMatchesInThread();
    Pin(SetHigh);
    Clear(flag0);
    phases_started = 0;
    tmp_half_reload_flag__master_chan = GetCurrentChanNum();
    tmp_period = period;
    period_copy = tmp_period;

PWMMAC_RELOAD:
    tmp_dead_time = dead_time;
    tmp_min_pw = min_pw;
    a = tmp_dead_time<<1;
    a = a + tmp_min_pw;
    tmp_max_pw = tmp_period - a;

    switch (phases)
    {
      case 3:
        a = edge_time;
        SwitchToChannel(phaseC.chan_num);
        erta = a;
        PWMMACReloadPhase();
      case 2:
        a = edge_time;
        SwitchToChannel(phaseB.chan_num);
        erta = a;
        PWMMACReloadPhase();
      case 1:
        a = edge_time;
        SwitchToChannel(phaseA.chan_num);
        erta = a;
        PWMMACReloadPhase();
    }
    if ( IsMatchALatched() )
      goto PWMMAC_RELOAD_COMMON;
    else
      goto PWMMAC_HALF_RELOAD_COMMON;
  }
/*--------------------------------------------------------------------------+
| THREAD NAME: RELOAD_MISSED                                                |
| DESCRIPTION: Do not set any edge-times (phases continue with the same     |
|              duty-cycle), do not update period_copy by period.            |
|              Update edge_time and schedule next RELOAD.                   |
|              1. Set pin high to indicate the calculation time.            |
|              2. Update edge_time by period_copy.                          |
|              3. Schedule matchA at edge_time - update_time.               |
|              4. Negate mrlA.                                              |
|              5. Set pin low.                                              |
|              6. Generate channel interrupt request.                       |
+--------------------------------------------------------------------------*/
  else if ( (m1 == 1) && (flag0 == 0) )
  {
PWMAC_ReloadMissed:
    Pin(SetHigh);
PWMMAC_RELOAD_COMMON:
    SetChannelInterrupt();
    edge_time += period_copy;
    SetupMatchA(edge_time - update_time);
    Pin(SetLow);
  }
/*--------------------------------------------------------------------------+
| THREAD NAME: HALF_RELOAD                                                  |
| DESCRIPTION: Calculate and set all edge-times of each running phase based |
|              on the phase duty-cycles.                                    |
|              1. Set pin high to indicate the calculation time.            |
|              2. for each running phase X ( X = A, B, C )                  |
|               - calculate high-time, consider channelX option"negate duty"|
|               - adjust high-time using dtcX                               |
|               - limit high-time using min_pw, set channelX duty_extreme   |
|                 flags                                                     |
|               - calculate channel X A_time, B_time, Ac_time, Bc_time,     |
|                 consider options "edge X center-aligned" and channelX     |
|                 option "swap dead-time insertion"                         |
|               - set channelX half-cycle reload flag                       |
|               - send link to channelX and if complementary pairs to X+1   |
|              3. Clear flag0.                                              |
|              4. Continue with HALF_RELOAD_MISSED                          |
+--------------------------------------------------------------------------*/
  else if ( (m2 == 1) && (flag0 == 1) )
  {
PWMAC_HalfReload:
    DisableMatchesInThread();
#ifdef __ETEC__  // ASH WARE
    Pin(SetHigh);
    if (phases_started & PWMMAC_PHASES_STARTED)
      goto PWMMAC_HALF_RELOAD_COMMON;
#else  // Byte Craft
#asm
    ram p31_24 <- phases_started;
    chan pin = high.
    if p_24 == 1 then goto PWMMAC_HALF_RELOAD_COMMON, flush.
#endasm
#endif

    tmp_half_reload_flag__master_chan = 0x800000 + GetCurrentChanNum();
    Clear(flag0);
    tmp_period = period_copy;

    goto PWMMAC_RELOAD;
  }
/*--------------------------------------------------------------------------+
| THREAD NAME: HALF_RELOAD_MISSED                                           |
| DESCRIPTION: Do not set any edge-times (phases continue with the same     |
|              duty-cycle).                                                 |
|              Schedule next HALF_RELOAD.                                   |
|              1. Set pin high to indicate the calculation time.            |
|              2. Schedule matchB at edge_time + period_copy/2 - update_time|
|              3. Negate mrlB.                                              |
|              4. Set pin low.                                              |
|              5. Generate channel interrupt request.                       |
+--------------------------------------------------------------------------*/
  else if ( (m2 == 1) && (flag0 == 0) )
  {
PWMAC_HalfReloadMissed:
    Pin(SetHigh);
PWMMAC_HALF_RELOAD_COMMON:
    SetChannelInterrupt();
    SetupMatchB(edge_time + (period_copy>>1) - update_time);
    Pin(SetLow);
  }
/*--------------------------------------------------------------------------+
| Catch all unspecified entry table conditions                              |
+--------------------------------------------------------------------------*/
  else
  {
PWMAC_Error:
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
#pragma write h, (::ETPUfilename (cpu/etpu_pwmmac_auto.h));
#pragma write h, (/****************************************************************/);
#pragma write h, (/* WARNING this file is automatically generated DO NOT EDIT IT! */);
#pragma write h, (/*                                                              */);
#pragma write h, (/* This file provides an interface between eTPU code and CPU    */);
#pragma write h, (/* code. All references to the PWMMAC function should be made   */);
#pragma write h, (/* with information in this file. This allows only symbolic     */);
#pragma write h, (/* information to be referenced which allows the eTPU code to be*/);
#pragma write h, (/* optimized without effecting the CPU code.                    */);
#pragma write h, (/****************************************************************/);
#pragma write h, (#ifndef _ETPU_PWMMAC_AUTO_H_ );
#pragma write h, (#define _ETPU_PWMMAC_AUTO_H_ );
#pragma write h, ( );
#pragma write h, (/****************************************************************);
#pragma write h, (* Function Configuration Information. );
#pragma write h, (****************************************************************/);
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMMAC_FUNCTION_NUMBER)  PWMMAC_FUNCTION_NUMBER );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMMAC_TABLE_SELECT)     ::ETPUentrytype(PWMMAC) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMMAC_NUM_PARMS)        ::ETPUram(PWMMAC) );
#pragma write h, ( );
#pragma write h, (/****************************************************************);
#pragma write h, (* Host Service Request Definitions. );
#pragma write h, (****************************************************************/);
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMMAC_INIT_NORMAL       ) PWMMAC_HSR_INIT_NORMAL     );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMMAC_INIT_HALF_CYCLE   ) PWMMAC_HSR_INIT_HALF_CYCLE );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMMAC_UPDATE            ) PWMMAC_HSR_UPDATE          );
#pragma write h, ( );
#pragma write h, (/****************************************************************);
#pragma write h, (* Parameter Definitions. );
#pragma write h, (****************************************************************/);
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMMAC_PHASES_OFFSET       ) ::ETPUlocation (PWMMAC, phases      ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMMAC_STARTOFFSET_OFFSET  ) ::ETPUlocation (PWMMAC, start_offset) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMMAC_MODULATION_OFFSET   ) ::ETPUlocation (PWMMAC, modulation  ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMMAC_UPDATETIME_OFFSET   ) ::ETPUlocation (PWMMAC, update_time ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMMAC_DEADTIME_OFFSET     ) ::ETPUlocation (PWMMAC, dead_time   ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMMAC_MINPW_OFFSET        ) ::ETPUlocation (PWMMAC, min_pw      ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMMAC_PERIOD_OFFSET       ) ::ETPUlocation (PWMMAC, period      ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMMAC_PERIODCOPY_OFFSET   ) ::ETPUlocation (PWMMAC, period_copy ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMMAC_EDGETIME_OFFSET     ) ::ETPUlocation (PWMMAC, edge_time   ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMMAC_INPUTS_OFFSET       ) ::ETPUlocation (PWMMAC, inputs      ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMMAC_PTABLE_OFFSET       ) ::ETPUlocation (PWMMAC, table       ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMMAC_SECTOR_OFFSET       ) ::ETPUlocation (PWMMAC, sector      ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMMAC_PHASESSTARTED_OFFSET) ::ETPUlocation (PWMMAC, phases_started) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMMAC_PHASEA_OFFSET       ) ::ETPUlocation (PWMMAC, phaseA      ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMMAC_PHASEB_OFFSET       ) ::ETPUlocation (PWMMAC, phaseB      ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMMAC_PHASEC_OFFSET       ) ::ETPUlocation (PWMMAC, phaseC      ) );
#pragma write h, ( );
#pragma write h, (/****************************************************************);
#pragma write h, (* Value Definitions. );
#pragma write h, (****************************************************************/);
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMMAC_MODULATION_NO        ) PWMMAC_MODULATION_NO        );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMMAC_MODULATION_UNSIGNED  ) PWMMAC_MODULATION_UNSIGNED  );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMMAC_MODULATION_SIGNED    ) PWMMAC_MODULATION_SIGNED    );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMMAC_MODULATION_SVMSTD    ) PWMMAC_MODULATION_SVMSTD    );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMMAC_MODULATION_SVMU0N    ) PWMMAC_MODULATION_SVMU0N    );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMMAC_MODULATION_SVMU7N    ) PWMMAC_MODULATION_SVMU7N    );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMMAC_MODULATION_PWMICT    ) PWMMAC_MODULATION_PWMICT    );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMMAC_MODULATION_SINE_TABLE) PWMMAC_MODULATION_SINE_TABLE);
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMMAC_MODULATION_USER_TABLE) PWMMAC_MODULATION_USER_TABLE);
#pragma write h, ( );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMMAC_FM_EDGE_ALIGNED     ) 0 );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMMAC_FM_CENTER_ALIGNED   ) 1 );
#pragma write h, ( );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMMAC_FM_SINGLE_CHANNELS  ) 0 );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMMAC_FM_COMPLEMEN_PAIRS  ) 2 );
#pragma write h, ( );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMMAC_OPTION_DUTY_NEG     ) PWMM_DUTY_NEG );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMMAC_OPTION_SWAP         ) PWMM_SWAP );
#pragma write h, ( );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMMAC_PHASES_STARTED      ) PWMMAC_PHASES_STARTED );
#pragma write h, (#endif );

/*********************************************************************
 *
 * Copyright:
 *  Freescale Semiconductor, INC. All Rights Reserved.
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
