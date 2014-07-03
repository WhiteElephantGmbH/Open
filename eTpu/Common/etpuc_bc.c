/*******************************************************************************
*
*  FREESCALE SEMICONDUCTOR INC. 2004
*  ALL RIGHTS RESERVED
*  COPYRIGHT (c)
*
********************************************************************************
*
*  DESCRIPTION:
*   Break Controller
*
********************************************************************************
*
*  REVISION HISTORY:
*
*  REVISION    AUTHOR       DATE        DESCRIPTION OF CHANGE
*  --------    -----------  ---------   ------------------------------------
*  0.1         V.Philippov  20/Feb/04   Initial version of the file
*  1.0         M. Brejl     21/Feb/05   New implementation.
*
*******************************************************************************/
#include <etpu_std.h>

/***********************************/
/* Verify performance requirements */
/***********************************/
#ifndef NO_OPT
#pragma verify_wctl  BC                32  steps  13 rams
#endif
#pragma exclude_wctl BC::BC_Error

#ifdef BC_FUNCTION_NUMBER /* function is being compiled as part of a set? */
#pragma ETPU_function BC, standard @ BC_FUNCTION_NUMBER;
#else
#pragma ETPU_function BC, standard;
#endif

/************************************************************************
 *  Definitions.
 ************************************************************************/
/* HSR values */
#define BC_HSR_INIT_SLAVE_ON_OFF            7
#define BC_HSR_INIT_SLAVE_PWM               6
#define BC_HSR_INIT_MASTER_ON_OFF           5
#define BC_HSR_CALC                         1

/* ON_OFF_state values */
#define BC_ON                               1
#define BC_OFF                              0
#define BC_ON_OFF_BIT                       0x01

/* FMs */
#define BC_POLARITY_ON_HIGH       (channel.FM0==0)
#define BC_POLARITY_ON_LOW        (channel.FM0==1)


/************************************************************************
* NAME: BC
*
* DESCRIPTION: Break Controller.
*
* FUNCTION PARAMETERS:
*  period            - In master mode = update period (in TCR1 ticks).
*                      In PWM slave mode = PWM period (in TCR1 ticks).
*  start_offset      - Applies in master mode only:
*                      Offset from initialization to first match (in tcr1 ticks)
*  services_per_irq  - Number of updates per one IRQ to CPU
*  u_dc_bus_measured - Input U_dc_bus value
*  u_dc_bus_ON       - The value of U_dc_bus above which the output switch
*                      is turned ON.
*  u_dc_bus_OFF      - The value of U_dc_bus bellow which the output switch
*                      is turned OFF.
*  PWM_slope         - PWM_slope equals to
*                      period*0x1000000/(u_dc_bus_ON - u_dc_bus_OFF)
*                      and it is calculated by API
*
* CHANNEL FLAG USAGE:
*   Flag0 is used to select switching mode.
*     0 = ON/OFF
*     1 = PWM
*
*************************************************************************/
void BC ( int24   period,
          int24   start_offset,
          int24   services_per_irq,
 unsigned fract24 u_dc_bus_measured,
 unsigned fract24 u_dc_bus_ON,
 unsigned fract24 u_dc_bus_OFF,
 unsigned fract24 PWM_slope )
{
  static int24 edge_time;        /* Time of first edge. Updated each period */
  static int24 service_counter;  /* Counts down from services_per_irq to zero */
  static int8  ON_OFF_state;     /* Current switch state */

/*******************************************************************************
* THREAD NAME: INIT_MASTER_ON_OFF
* DESCRIPTION: Initialize a channel to run the BC function in master mode,
*              with ON/OFF switching.
*              1. Disable matches in thread in case there are any previous
*                 pending matches. This could happen if the channel was
*                 running another function before this one.
*              2. Configure pin actions to no_detect on transition and
*                 no_change on match.
*              3. Configure channel to use TCR1 clock.
*              4. Select SingleMatch-SingleTransition channel mode.
*              5. Enable match and transition event handling.
*              6. Schedule first match after start_offset.
*              7. Continue with ON/OFF common processing.
*******************************************************************************/
  if (hsr==BC_HSR_INIT_MASTER_ON_OFF)
  {
BC_InitMasterOnOff:
    DisableMatchesInThread();

    OnTransA(NoDetect);
    OnTransB(NoDetect);
    ActionUnitA(MatchTCR1, CaptureTCR1, GreaterEqual);
    SingleMatchSingleTransition();
    EnableEventHandling();
    erta = tcr1+start_offset;     /* Time of first match */
    edge_time = erta;             /* Save time of first match to edge_time */
    EnableMatchA();               /* Schedule the match */
    OnMatchA(NoChange);
    OnMatchB(NoChange);
    goto BC_INIT_COMMON_ON_OFF;
  }
/*******************************************************************************
* THREAD NAME: INIT_SLAVE_ON_OFF
* DESCRIPTION: Initialize a channel to run the BC function in slave mode,
*              with ON/OFF switching.
*              1. Disable matches in thread in case there are any previous
*                 pending matches. This could happen if the channel was
*                 running another function before this one.
*  ON/OFF common processing:
*              2. Reset service counter.
*              3. Set pin off.
*              4. set ON_OFF_state = OFF.
*              5. Clear flag0 - ON/OFF mode.
*              6. Enable output buffer - set channel pin direction to output.
*              7. Clear latches.
*******************************************************************************/
  else if (hsr==BC_HSR_INIT_SLAVE_ON_OFF)
  {
BC_InitSlaveOnOff:
    DisableMatchesInThread();
BC_INIT_COMMON_ON_OFF:
    service_counter = services_per_irq;  /* Reset service counter */
    if ( BC_POLARITY_ON_HIGH )           /* Set pin inactive */
    {
      Pin(SetLow);
    }
    else
    {
      Pin(SetHigh);
    }
    Clear(flag0);
    ON_OFF_state = BC_OFF;               /* Initialize ON_OFF_state */
    EnableOutputBuffer();
    ClearAllLatches();
  }
/*******************************************************************************
* THREAD NAME: INIT_SLAVE_PWM
* DESCRIPTION: Initialize a channel to run the BC function in slave mode,
*              with PWM switching.
*              1. Disable matches in thread in case there are any previous
*                 pending matches. This could happen if the channel was
*                 running another function before this one.
*              2. Configure pin actions to no_detect on transition.
*              3. Configure channel to use TCR1 clock.
*              4. Select EitherMatch NonBlocking SingleTransition channel mode.
*              5. Reset service counter.
*              6. Set pin off.
*              7. Configure pin actions on match based on polarity.
*              8. Enable match and transition event handling.
*              9. set ON_OFF_state = OFF.
*             10. Clear flag0 - ON/OFF mode.
*             11. Enable output buffer - set channel pin direction to output.
*             12. Clear latches.
*******************************************************************************/
  else if (hsr==BC_HSR_INIT_SLAVE_PWM)
  {
BC_InitSlavePwm:
    DisableMatchesInThread();

    OnTransA(NoDetect);
    OnTransB(NoDetect);
    ActionUnitA(MatchTCR1, CaptureTCR1, GreaterEqual);
    EitherMatchNonBlockingSingleTransition();
    service_counter = services_per_irq;  /* Reset service counter */
    if ( BC_POLARITY_ON_HIGH )           /* Set pin inactive */
    {
      Pin(SetLow);
      OnMatchA(PinHigh);
      OnMatchB(PinLow);
    }
    else
    {
      Pin(SetHigh);
      OnMatchA(PinLow);
      OnMatchB(PinHigh);
    }
    EnableEventHandling();
    Set(flag0);
    ON_OFF_state = BC_OFF;               /* Initialize ON_OFF_state */
    EnableOutputBuffer();
    ClearAllLatches();
  }
/*******************************************************************************
* THREAD NAME: CALC_ON_OFF
* DESCRIPTION: Perform BC calculations and output update in ON/OFF mode.
*              1. If ON_OFF_state==OFF
*                   If u_dc_bus>=u_dc_bus_ON
*                     Set pin ON.
*                 else
*                   If u_dc_bus<=u_dc_bus_OFF
*                     Set pin OFF.
*              2. Generate Interrupt each services_per_irq period.
*              3. Clear link service latch.
*******************************************************************************/
  else if (((lsr==1) && (flag0==0)) || ((hsr==BC_HSR_CALC) && (flag0==0)))
  {
BC_CALC_ON_OFF:
    if ( (ON_OFF_state & BC_ON_OFF_BIT) == BC_OFF)       /* In OFF state */
    {
      if (u_dc_bus_ON <= u_dc_bus_measured) /* Compare with u_dc_bus_ON treshold */
      {
        ON_OFF_state = BC_ON;          /* Update state */
        if ( BC_POLARITY_ON_HIGH )     /* Set pin active */
        {
          Pin(SetHigh);
        }
        else
        {
          Pin(SetLow);
        }
      }
    }
    else                                /* ON_OFF_state == ON */
    {
      if ( u_dc_bus_measured <= u_dc_bus_OFF)/* Compare with u_dc_bus_OFF treshold */
      {
        ON_OFF_state = BC_OFF;          /* Update state */
        if ( BC_POLARITY_ON_HIGH )      /* Set pin inactive */
        {
          Pin(SetLow);
        }
        else
        {
          Pin(SetHigh);
        }
      }
    }
BC_CALC_COMMON:
    /**********************************************
    * Interrupt each services_per_irq period.
    **********************************************/
    if ( --service_counter == 0 )
    {
       SetChannelInterrupt();
       service_counter = services_per_irq;  /* Reset service counter */
    }
    ClearLSRLatch();
  }
/*******************************************************************************
* THREAD NAME: CALC_PWM
* DESCRIPTION: Perform BC calculations and output update in PWM mode.
*              1. If u_dc_bus<=u_dc_bus_OFF
*                   Disable matches.
*                   Set pin OFF.
*                 Else if u_dc_bus>=u_dc_bus_ON
*                   Disable matches.
*                   Set pin ON.
*                 Else
*                   Setup matchA now.
*                   Setup MatchB after calculated pulse width.
*              2. Generate Interrupt each services_per_irq period.
*              3. Clear link service latch.
*******************************************************************************/
  else if (((lsr==1) && (flag0==1)) || ((hsr==BC_HSR_CALC) && (flag0==1)))
  {
BC_CALC_PWM:
    if ( u_dc_bus_measured <= u_dc_bus_OFF )
    {
      DisableMatch();
      ClearMatchALatch();
      ClearMatchBLatch();
      if ( BC_POLARITY_ON_HIGH )           /* Set pin inactive */
      {
        Pin(SetLow);
      }
      else
      {
        Pin(SetHigh);
      }
    }
    else if ( u_dc_bus_ON <= u_dc_bus_measured )
    {
      DisableMatch();
      ClearMatchALatch();
      ClearMatchBLatch();
      if ( BC_POLARITY_ON_HIGH )           /* Set pin active */
      {
        Pin(SetHigh);
      }
      else
      {
        Pin(SetLow);
      }
    }
    else
    {
      SetupMatchA(tcr1);
      SetupMatchB(erta + PWM_slope*(u_dc_bus_measured - u_dc_bus_OFF));
    }

    goto BC_CALC_COMMON;
  }
/*******************************************************************************
* THREAD NAME: MatchA in ON/OFF mode
* DESCRIPTION: Schedule next periodic match and perform all BC calculations.
*              1. Schedule next match.
*              2. Goto BC_CALC_ON_OFF.
*******************************************************************************/
  else if(MatchA && (flag0==0))
  {
BC_MatchAInOnOffMode:
    erta = edge_time + period;       /* Schedule next match A */
    edge_time = erta;                /* Store edge time */
    EnableMatchA();
    ClearMatchALatch();

    goto BC_CALC_ON_OFF;
  }
/*******************************************************************************
* THREAD NAME: MatchA in PWM mode
* DESCRIPTION: Schedule next match A PWM period later.
*******************************************************************************/
  else if(MatchA && (flag0==1))
  {
BC_MatchAInPwmMode:
    SetupMatchA(GetCapRegA() + period);
  }
/*******************************************************************************
* THREAD NAME: MatchB in PWM mode
* DESCRIPTION: Schedule next match B PWM period later.
*******************************************************************************/
  else if(MatchB && (flag0==1))
  {
BC_MatchBInPwmMode:
    SetupMatchB(GetCapRegB() + period);
  }
/*******************************************************************************
* THREAD NAME: UNHANDLED_EVENTS
*******************************************************************************/
  else
  {
BC_Error:
#ifdef GLOBAL_ERROR_FUNC
    Global_Error_Func();
#else
    ClearAllLatches();
#endif
  }
}

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
