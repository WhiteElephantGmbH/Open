/*******************************************************************************
*
*  FREESCALE SEMICONDUCTOR INC. 2004
*  ALL RIGHTS RESERVED
*  COPYRIGHT (c)
*
********************************************************************************
*
*  DESCRIPTION:
*   The Motor-Control PWM - Full Range (PWMF) function drives a PWM phase
*   with the feature of full 0%-100% duty-cycle range.
*   This function is not functional standalone. The PWMM (PWM Master)
*   function must update the PWMF edge times.
*
********************************************************************************
*
*  REVISION HISTORY:
*
*  REVISION    AUTHOR       DATE        DESCRIPTION OF CHANGE
*  --------    -----------  ---------   ------------------------------------
*   1.0        M. Brejl     12/Oct/04   Ready for set3 release 0.5.
*   1.1        M. Brejl     23/Feb/05   Function parameters corresponds to new
*                                       pwm_phase_t structure.
*                                       Formal updates for set3 release 1.0.
*
*******************************************************************************/
#include <etpu_std.h>

/***********************************/
/* Verify performance requirements */
/***********************************/
#ifndef NO_OPT
#pragma verify_wctl  PWMF                35  steps  12 rams
#endif
#pragma exclude_wctl PWMF::PWMF_Error

#ifdef PWMF_FUNCTION_NUMBER /* function is being compiled as part of a set? */
#pragma ETPU_function PWMF, standard @ PWMF_FUNCTION_NUMBER;
#else
#pragma ETPU_function PWMF, standard;
#endif

/************************************************************************
*  Includes.
************************************************************************/
#include "etpuc_pwmm.h"    /* Shared by PWMMDC, PWMMAC, PWMF and PWMC */

/************************************************************************
*  Definitions.
*************************************************************************/
/* Host service requests */
#define PWMF_HSR_UPDATE            1
#define PWMF_HSR_STOP_LOW          7
#define PWMF_HSR_STOP_HIGH         6
#define PWMF_HSR_START             5

/* Function Modes */
#define PWMF_BASE_CHAN             (fm0==0)
#define PWMF_COMPLEMENTARY_CHAN    (fm0==1)
#define PWMF_ACTIVE_HIGH           (fm1==0)
#define PWMF_ACTIVE_LOW            (fm1==1)

/* stopped bit */
#define PWMF_STOPPED               0x1

/************************************************************************
* NAME: PWMF
*
* DESCRIPTION: Motor-Control PWM - Full Range
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
*   stopped: Stopped flag. - bit0=0 … PWM running
*                            bit0=1 … PWM stopped
*   comm_cmd: Commutation command to execute by PWMC_HSR_COMMUTATE.
*
* CHANNEL FLAG USAGE:
*  - Flag0 is used to define which edge should occur next. The problem is that
*    for very small high or low pulses both matches can get set and they
*    need to be serviced in a particular order.
*    0 = MatchA next and 1 = MatchB next.
*  - Flag1 is not used.
************************************************************************/
void PWMF (
  unsigned fract24 duty,         /* duty-cycle */
           int8    chan_num,     /* base channel number */
           int24   period_copy,  /* copy of period value */
           int8    options,      /* phase options */
           int24   A_time,       /* time of first edge on base channel */
           int8    dtc,          /* dead-time correction options - not used */
           int24   B_time,       /* time of second edge on base channel */
           int8    flags,        /* duty-extreme limits for PWMF */
           int24   Ac_time,      /* time of first edge on complementary channel */
           int8    stopped,      /* stopped flag */
           int24   Bc_time,      /* time of second edge on complementary channel */
  unsigned int32   comm_cmd,     /* commutation command used by PWMC */
           int24   reserved      /* the structure size must an even number of longwords */
          )
{
/*--------------------------------------------------------------------------+
| THREAD NAME: START                                                        |
| DESCRIPTION: Initialize a channel to run the PWMF function.               |
|              1. Disable matches in thread in case there are any previous  |
|                  pending matches. This could happen if the channel was    |
|                  running another function before this one.                |
|              2. Select EitherMatch-NonBlocking-SingleTransition chan.mode.|
|              3. Configure channel to use TCR1 clock.                      |
|              4. Configure input pin actions to no_detect.                 |
|              5. Configure output pin actions according to polarity.       |
|              6. Enable match and transition event handling.               |
|              7. Clear flag0.                                              |
|              8. Set pin to inactive state.                                |
|              9. Clear latches.                                            |
|             10. Clear flag stopped.                                       |
+--------------------------------------------------------------------------*/
  if (hsr == PWMF_HSR_START)
  {
PWMF_Start:
    DisableMatchesInThread();

    EnableOutputBuffer();
    OnMatchA(PinHigh);         // set OPAC A according to active-high polarity
    OnMatchB(PinLow);          // set OPAC B according to active-high polarity
    if ( PWMF_ACTIVE_LOW )
    {
      OnMatchA(PinLow);        // set OPAC A according to active-low polarity
      OnMatchB(PinHigh);       // set OPAC B according to active-low polarity
    }
    OnTransA( NoDetect );
    OnTransB( NoDetect );
    ActionUnitA( MatchTCR1, CaptureTCR1, GreaterEqual);
    ActionUnitB( MatchTCR1, CaptureTCR1, GreaterEqual);
    EitherMatchNonBlockingSingleTransition();
    ClearAllLatches();
    Pin(PerPacB);              // set pin to inactive state
    EnableEventHandling();
    stopped = 0;
    Clear(flag0);
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
  else if (hsr == PWMF_HSR_STOP_LOW )
  {
PWMF_StopLow:
    DisableMatchesInThread();

    Pin(SetLow);
    goto PWMF_STOP_COMMON;
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
  else if (hsr == PWMF_HSR_STOP_HIGH )
  {
PWMF_StopHigh:
    DisableMatchesInThread();
    Pin(SetHigh);
PWMF_STOP_COMMON:
    DisableEventHandling();
    DisableMatchDetection();
    stopped = PWMF_STOPPED;
    ClearAllLatches();
    EnableOutputBuffer();
  }
/*--------------------------------------------------------------------------+
| THREAD NAME: UPDATE_0                                                     |
| DESCRIPTION: Reschedule :                                                 |
|              - in normal upd: Match A (with respect to 0%-duty flag) and  |
|                               Match B (with respect to 100%-duty flag).   |
|              - in half-cycle: Match B (with respect to 100%-duty flag).   |
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
            ((hsr == PWMF_HSR_UPDATE) && (flag0 == 0)) )
  {
PWMF_Update0:
    Clear(lsr);
    if ( !(stopped & PWMF_STOPPED))
    {
      if ( !(flags & PWMM_HALF_CYCLE) )
      {
PWMF_AB:
        if ( PWMF_BASE_CHAN )
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
        if ( flags & PWMM_ZERO_DUTY )
        {
          OnMatchA(NoChange);        // cancel pin action on matchA
        }
        else
        {
          if ( PWMF_ACTIVE_LOW )
          {
            OnMatchA(PinLow);      // set OPAC A according to active-low polarity
          }
          else
          {
            OnMatchA(PinHigh);     // set OPAC A according to active-high polarity
          }
        }
      }
      goto PWMF_B;
    }
  }
/*--------------------------------------------------------------------------+
| THREAD NAME: UPDATE_1                                                     |
| DESCRIPTION: Reschedule :                                                 |
|              - in normal upd: Match A (with respect to 0%-duty flag).     |
|              - in half-cycle: Match A (with respect to 0%-duty flag) and  |
|                               Match B (with respect to 100%-duty flag).   |
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
            ((hsr == PWMF_HSR_UPDATE) && (flag0 == 1)) )
  {
PWMF_Update1:
    Clear(lsr);
    if ( !(stopped & PWMF_STOPPED))
    {
      if ( flags & PWMM_HALF_CYCLE )
        goto PWMF_AB;
      else
        goto PWMF_A;
    }
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
  else if ((m1 == 1) && (flag0 == 0))
  {
PWMF_MatchA:
    ClearMatchALatch();
    Set(flag0);
PWMF_A:
    if ( PWMF_BASE_CHAN )
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

    if ( flags & PWMM_ZERO_DUTY )
    {
      OnMatchA(NoChange);       // cancel pin action on matchA
    }
    else
    {
      if ( PWMF_ACTIVE_LOW )
      {
        OnMatchA(PinLow);      // set OPAC A according to active-low polarity
      }
      else
      {
        OnMatchA(PinHigh);     // set OPAC A according to active-high polarity
      }
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
  else if (m2 == 1 )
  {
PWMF_MatchB:
    ClearMatchBLatch();
    Clear(flag0);
PWMF_B:
    if ( PWMF_BASE_CHAN )
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

    if ( flags & PWMM_FULL_DUTY )
    {
      OnMatchB(NoChange);       // cancel pin action on matchA
    }
    else
    {
      if ( PWMF_ACTIVE_LOW )
      {
        OnMatchB(PinHigh);     // set OPAC B according to active-low polarity
      }
      else
      {
        OnMatchB(PinLow);      // set OPAC A according to active-high polarity
      }
    }
  }
/*--------------------------------------------------------------------------+
| Catch all unspecified entry table conditions                              |
+--------------------------------------------------------------------------*/
  else
  {
PWMF_Error:
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
