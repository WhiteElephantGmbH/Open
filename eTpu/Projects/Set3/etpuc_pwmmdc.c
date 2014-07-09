/*******************************************************************************
*
*  FREESCALE SEMICONDUCTOR INC. 2004
*  ALL RIGHTS RESERVED
*  COPYRIGHT (c)
*  
********************************************************************************
*
*  DESCRIPTION:
*   The Motor-Control PWM - Master for DC Motors (PWMMDC) function reads
*   input parameters, calculates duty-cycles and updates the edge-times 
*   of up to three PWMC or PWMF phases.
*
*******************************************************************************
*
*  REVISION HISTORY:
*                                                         
*  REVISION    AUTHOR       DATE        DESCRIPTION OF CHANGE                  
*  --------    -----------  ---------   ------------------------------------                  
*   1.0        M. Brejl     12/Oct/04   HALF_RELOAD implemented. 
*              M. Princ                 PWM modulations not implemented.
*                                       Ready for set3 release 0.5.
*   2.0        M. Brejl     21/Feb/05   Changed from PWMM to PWMMDC:
*                                        - only voltage modulations and 
*                                          no modulation available.
*                                        - no dead-time correction.
*   2.1        M. Brejl     03/Jan/06   Fixed for ETPU_C 1.0.7.
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
#pragma verify_wctl  PWMMDC                230  steps  55 rams
#pragma exclude_wctl PWMMDC::PWMMDC_InitNormal 
#pragma exclude_wctl PWMMDC::PWMMDC_InitHalfCycle  
#endif

#ifdef PWMMDC_FUNCTION_NUMBER /* function is being compiled as part of a set? */
#pragma ETPU_function PWMMDC, alternate @ PWMMDC_FUNCTION_NUMBER;
#else
#pragma ETPU_function PWMMDC, alternate;
#endif

/************************************************************************
*  Includes.
************************************************************************/
#include "etpuc_pwmm.h"     /* Shared by PWMMDC, PWMMAC, PWMF and PWMC */

/************************************************************************
*  Definitions.
************************************************************************/
/*  Host service requests */
#define PWMMDC_HSR_INIT_NORMAL       7
#define PWMMDC_HSR_INIT_HALF_CYCLE   5
#define PWMMDC_HSR_UPDATE            2

/* Function Modes */
#define PWMMDC_EDGE_ALIGNED          (fm0==0)
#define PWMMDC_CENTER_ALIGNED        (fm0==1)
#define PWMMDC_SINGLE_CHANNELS       (fm1==0)
#define PWMMDC_COMPLEMENTARY_PAIRS   (fm1==1)

/* Modulations */
#define PWMMDC_MODULATION_NO         0
#define PWMMDC_MODULATION_UNSIGNED   1
#define PWMMDC_MODULATION_SIGNED     2

/**/
#define PWMMDC_PHASES_STARTED        0x01

/************************************************************************
* NAME: PWMMDCReloadPhase()
*
* DESCRIPTION: This routine is called by PWMMDC in order to calculate and
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
*    - switch back to master channel (PWMMDC)
* 
* FUNCTION PARAMETERS:
*  This function has no function parameters. Special technics are used instead:
*  1) Values from PWMMDC function are passed to through registers,
*     as defined bellow. Furhther more the edge_time is passed in erta.
*  2) Phase parameters are accessed using phaseX structure, that position
*     is fixed to channel parameter base address. This technique presumes
*     that the active channel (value in chan register) is the processed phase
*     base channel.
* 
************************************************************************/
void PWMMDCReloadPhase(void)
{
  /* Values passed from PWMDC through registers */
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
  if (PWMMDC_COMPLEMENTARY_PAIRS)
    LinkTo(GetCurrentChanNum() + 1);
  /* save period_copy to channelX period_copy, clear phase flags */
  phaseX->period_copy = tmp_period;
  phaseX->flags = 0;
  /* calculate high-time, consider channelX option "negate duty" */
#ifdef __ETEC__  // ASH WARE
  tmp_high_time = muliur(tmp_period, phaseX->duty);
#else  // Byte Craft
  tmp_high_time = tmp_period * phaseX->duty;
#endif
  if ( phaseX->options & PWMM_DUTY_NEG )
  {
    a = tmp_high_time;
    tmp_high_time = tmp_period - a;
  }
  /* adjust high-time using dtcX - no dead-time compensation for DC */
  tmp_high_time -= tmp_dead_time;
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
  if ( PWMMDC_CENTER_ALIGNED )
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
  /* switch back to master channel (PWMMDC) */
  a = 0x7F;
  SwitchToChannel(tmp_half_reload_flag__master_chan & a);
}


/************************************************************************
* NAME: PWMMDC
*
* DESCRIPTION: Motor-Control PWM - Master for DC Motors   
* 
* FUNCTION PARAMETERS:
*   phases       - Number of used phases.
*   start_offset - This parameter is used to synchronize various eTPU functions
*                  that generate a signal. For PWMMDC: the first PWM period 
*                  starts start_offset TCR1 clocks after initialization.
*   modulation   - Selection of modulation. In case of "PWMMDC_MODULATION_NO" 
*                  the phase duty cycles are the inputs, otherwise the phase 
*                  duty cycles are calculated based on the voltage.
*   update_time  - Time (as number of TCR1 clocks) that is necessary to perform 
*                  the update of all PWM phases.                                
*   dead_time    - Dead-time as number of TCR1 clocks.                            
*   min_pw       - Minimum pulse width as number of TCR1 clocks.
*   period       - PWM period. Can be updated on each UPDATE.
*   period_copy  - Local copy of the period parameter.                          
*   edge_time    - Next PWM period edge-time. Updated each period.                
*   voltage      - Input voltage, either signed or unsigned based on the 
*                  selected type of modulation.
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
void PWMMDC (        int8  phases,
                    int24  start_offset,
                     int8  modulation,
                    int24  update_time,
                    int24  dead_time,
                    int24  min_pw,
                    int24  period,
                    int24  period_copy,
                    int24  edge_time,
           unsigned int24  voltage,
             pwmm_phase_t  phaseA,
             pwmm_phase_t  phaseB,
             pwmm_phase_t  phaseC,
                     int8  phases_started )
{
  /* Values passed to PWMDCReloadPhase through registers */
  register_b    tmp_half_reload_flag__master_chan;
  register_c    tmp_min_pw;
  register_d    tmp_period;
  register_diob tmp_dead_time;
  register_mach tmp_high_time;
  register_sr   tmp_max_pw;
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
  if (hsr == PWMMDC_HSR_INIT_NORMAL)
  {
PWMMDC_InitNormal:
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
  else if (hsr == PWMMDC_HSR_INIT_HALF_CYCLE)
  {
PWMMDC_InitHalfCycle:
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
  else if ( ((lsr==1) && (m1==0) && (m2==0)) || (hsr == PWMMDC_HSR_UPDATE) )
  {
PWMMDC_Update:
    Pin(SetHigh);
    Set(flag0);

    if (modulation != PWMMDC_MODULATION_NO)
    {
      tmp_period = voltage;
      if (modulation & PWMMDC_MODULATION_SIGNED)
      {
        tmp_period = tmp_period + 0x800000;
      }
      phaseA.duty = tmp_period;
      phaseB.duty = tmp_period;
      phaseC.duty = tmp_period;
    }
    
    Clear(lsr);
    Pin(SetLow);
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
PWMMDC_Reload:
    DisableMatchesInThread();
    Pin(SetHigh);
    Clear(flag0);
    phases_started = 0;
    tmp_half_reload_flag__master_chan = GetCurrentChanNum();
    tmp_period = period;
    period_copy = tmp_period;
    
PWMMDC_RELOAD:
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
        PWMMDCReloadPhase();
      case 2:
        a = edge_time;
        SwitchToChannel(phaseB.chan_num);
        erta = a;
        PWMMDCReloadPhase();
      case 1:
        a = edge_time;
        SwitchToChannel(phaseA.chan_num);
        erta = a;
        PWMMDCReloadPhase();
    }
    if ( IsMatchALatched() )
      goto PWMMDC_RELOAD_COMMON;
    else
      goto PWMMDC_HALF_RELOAD_COMMON;
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
PWMMDC_ReloadMissed:
    Pin(SetHigh);
PWMMDC_RELOAD_COMMON:
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
PWMMDC_HalfReload:
    DisableMatchesInThread();
#ifdef __ETEC__  // ASH WARE
    Pin(SetHigh);
    if (phases_started & PWMMDC_PHASES_STARTED)
      goto PWMMDC_HALF_RELOAD_COMMON;
#else  // Byte Craft
#asm
    ram p31_24 <- phases_started;
    chan pin = high.
    if p_24 == 1 then goto PWMMDC_HALF_RELOAD_COMMON, flush.
#endasm
#endif
    tmp_half_reload_flag__master_chan = 0x800000 + GetCurrentChanNum();
    Clear(flag0);
    tmp_period = period_copy;

    goto PWMMDC_RELOAD;
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
PWMMDC_HalfReloadMissed:
    Pin(SetHigh);
PWMMDC_HALF_RELOAD_COMMON:
    SetChannelInterrupt();
    SetupMatchB(edge_time + (period_copy>>1) - update_time);
    Pin(SetLow);
  }
/*--------------------------------------------------------------------------+
| Catch all unspecified entry table conditions                              |
+--------------------------------------------------------------------------*/
  else
  {
PWMMDC_Error:
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
#pragma write h, (::ETPUfilename (cpu/etpu_pwmmdc_auto.h));
#pragma write h, (/****************************************************************/);
#pragma write h, (/* WARNING this file is automatically generated DO NOT EDIT IT! */);
#pragma write h, (/*                                                              */);
#pragma write h, (/* This file provides an interface between eTPU code and CPU    */);
#pragma write h, (/* code. All references to the PWMMDC function should be made   */);
#pragma write h, (/* with information in this file. This allows only symbolic     */);
#pragma write h, (/* information to be referenced which allows the eTPU code to be*/);
#pragma write h, (/* optimized without effecting the CPU code.                    */);
#pragma write h, (/****************************************************************/);
#pragma write h, (#ifndef _ETPU_PWMMDC_AUTO_H_ );
#pragma write h, (#define _ETPU_PWMMDC_AUTO_H_ );
#pragma write h, ( );
#pragma write h, (/****************************************************************);
#pragma write h, (* Function Configuration Information. );
#pragma write h, (****************************************************************/);
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMMDC_FUNCTION_NUMBER)  PWMMDC_FUNCTION_NUMBER );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMMDC_TABLE_SELECT)     ::ETPUentrytype(PWMMDC) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMMDC_NUM_PARMS)        ::ETPUram(PWMMDC) );
#pragma write h, ( );
#pragma write h, (/****************************************************************);
#pragma write h, (* Host Service Request Definitions. );
#pragma write h, (****************************************************************/);
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMMDC_INIT_NORMAL       ) PWMMDC_HSR_INIT_NORMAL     );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMMDC_INIT_HALF_CYCLE   ) PWMMDC_HSR_INIT_HALF_CYCLE );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMMDC_UPDATE            ) PWMMDC_HSR_UPDATE          );
#pragma write h, ( );
#pragma write h, (/****************************************************************);
#pragma write h, (* Parameter Definitions. );
#pragma write h, (****************************************************************/);
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMMDC_PHASES_OFFSET     ) ::ETPUlocation (PWMMDC, phases      ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMMDC_STARTOFFSET_OFFSET) ::ETPUlocation (PWMMDC, start_offset) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMMDC_MODULATION_OFFSET ) ::ETPUlocation (PWMMDC, modulation  ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMMDC_UPDATETIME_OFFSET ) ::ETPUlocation (PWMMDC, update_time ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMMDC_DEADTIME_OFFSET   ) ::ETPUlocation (PWMMDC, dead_time   ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMMDC_MINPW_OFFSET      ) ::ETPUlocation (PWMMDC, min_pw      ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMMDC_PERIOD_OFFSET     ) ::ETPUlocation (PWMMDC, period      ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMMDC_PERIODCOPY_OFFSET ) ::ETPUlocation (PWMMDC, period_copy ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMMDC_EDGETIME_OFFSET   ) ::ETPUlocation (PWMMDC, edge_time   ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMMDC_VOLTAGE_OFFSET    ) ::ETPUlocation (PWMMDC, voltage     ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMMDC_PHASESSTARTED_OFFSET) ::ETPUlocation (PWMMDC, phases_started) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMMDC_PHASEA_OFFSET     ) ::ETPUlocation (PWMMDC, phaseA      ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMMDC_PHASEB_OFFSET     ) ::ETPUlocation (PWMMDC, phaseB      ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMMDC_PHASEC_OFFSET     ) ::ETPUlocation (PWMMDC, phaseC      ) );
#pragma write h, ( );
#pragma write h, (/****************************************************************);
#pragma write h, (* Value Definitions. );
#pragma write h, (****************************************************************/);
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMMDC_MODULATION_NO       ) PWMMDC_MODULATION_NO       );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMMDC_MODULATION_UNSIGNED ) PWMMDC_MODULATION_UNSIGNED );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMMDC_MODULATION_SIGNED   ) PWMMDC_MODULATION_SIGNED   );
#pragma write h, ( );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMMDC_FM_EDGE_ALIGNED     ) 0 );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMMDC_FM_CENTER_ALIGNED   ) 1 );
#pragma write h, ( );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMMDC_FM_SINGLE_CHANNELS  ) 0 );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMMDC_FM_COMPLEMEN_PAIRS  ) 2 );
#pragma write h, ( );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMMDC_OPTION_DUTY_NEG     ) PWMM_DUTY_NEG );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMMDC_OPTION_SWAP         ) PWMM_SWAP );
#pragma write h, ( );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PWMMDC_PHASES_STARTED      ) PWMMDC_PHASES_STARTED );
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
