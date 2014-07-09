/****************************************************************************
 * FILE NAME: etpuc_gpio.c                      COPYRIGHT (c) freescale 2004*
 * DESCRIPTION:                                     All Rights Reserved     *
 * This function provide general purpose i/o functionality on the eTPU      *
 * allowing the user to configure an eTPU channel as an input or output     *
 *==========================================================================*
 * Revision 1.3  2006/01/09 13:09:30  r47354
 * Fix auto file name comment.
 * Fix isue with function number when compiling standalone.
 * No compiled code changes.
 *
 * Revision 1.2  2004/11/02 13:43:42  r12110
 * -Added support for building function stand alone or in a set.
 *   -This includes using the global error function if avaialable.
 * -Updated comments in auto generated file to include version number.
 *
 * Revision 1.1  2004/11/01 14:44:45  r12110
 * No changes to code, just updated for CVS and checked into CVS.
 *
 *..........................................................................*
 * 0.01  K Terry     19 March 04  Initial version of file                   *
 * 0.02  K Terry     21 April 04  Removed debug comments                    *
 * 0.03  K Terry     22 April 04  Modifications to reduce code size         *
 * 0.04  K Terry     27 April 04  Removed option to turn off match and      *
 *                                transition events                         *
 * 0.05  K Terry     7  Jun   04  Modified Input Immediate Mode thread (S6) *
 *                                to generate interrupt and DTR             *
 * 0.06  K Terry     22  Jun   04  Mod'd to accomodate changes to directory *
 *                                structure and new location of             *
 *                                of etpu_gpio_auto.h                       *
 *                                                                          *
 * 0.07  G. Emerson  16 July 04   Add DisableOutputBuffer to input init     *
 *                                threads                                   *
 *                                Add disclaimer                            *
 * 0.08  G.Emerson   19 July 04   add () to DisableOutputBuffer calls       *
 * 0.09  J. Loeliger  3/Aug/04    Fixed comments to always use standard C   *
 *                                 open and close pairs. This is needed for *
 *                                 version b097 of the compiler. General    *
 *                                 clean-up of coments and added freescale. *
 ****************************************************************************/
#include <ETpu_Std.h>

/***********************************/
/* Verify performance requirements */
/***********************************/
#ifndef NO_OPT
#pragma verify_wctl  GPIO                10  steps  6 rams
#endif
#pragma exclude_wctl GPIO::GPIO_Error

#ifdef GPIO_FUNCTION_NUMBER    /* function is being compiled as part a set? */
#pragma ETPU_function GPIO @ GPIO_FUNCTION_NUMBER;
#else
#pragma ETPU_function GPIO; /* stand alone */
#endif

/* GPIO Specific defines */

/* Host Service Requests */
#define GPIO_OUTPUT_HIGH         7
#define GPIO_OUTPUT_LOW          6
#define GPIO_INPUT_IMMED         5
#define GPIO_INPUT_RISING        4
#define GPIO_INPUT_FALLING       3
#define GPIO_INPUT_EITHER        2
#define GPIO_INPUT_MATCH         1

/* Functions Modes
 FM0 - selects timebase to use
 FM1 set to disable Match and Transition events with INPUT_IMMED host service request */

#define GPIO_USE_TCR1 0
#define GPIO_USE_TCR2 1

/* FM1 - used during INPUT_IMMED host service request to optionally disable
match and transition events */

/******************************************************************************/
/* Function Description                                                       */
/* This function allows the user the configure an eTPU channel as a general   */
/* purpose input or output. 7 function modes are supported These are:         */
/*    1/. Input Mode - Update periodically                                  */
/*    2/. Input Mode - Update on Transition - either edge                   */
/*    3/. Input Mode - Update on Transition - falling edge                  */
/*    4/. Input Mode - Update on Transition - rising edge                   */
/*    5/. Input Mode - Update on request/disable transition and             */
/*                               match updates                                */
/*    6/. Output Mode - (output low)                                        */
/*    7/. Output Mode - (output high)                                       */
/******************************************************************************/

/******************************************************************************
* Function Parameters
*
* InputMatch Period: Selects the match register value to define the match
* update period
*
******************************************************************************/
void GPIO (int24 InputMatchPeriod, int24 PinState)
{

  static int24 CurrentCount;
  static int24 NextMatch;

/*---------------------------------------------------------------------------+
| Thread Name: Output High (S0)                                            |
| Description: Set channel output high                                     |
+----------------------------------------------------------------------------*/
  if (HostServiceRequest == GPIO_OUTPUT_HIGH)
  {
GPIO_OutputHigh:
    SetPinHigh();
    act_unitA = enable_output_buffer;
  }

/*---------------------------------------------------------------------------+
| Thread Name: Output Low (S1)                                             |
| Description: Set channel output low                                      |
+----------------------------------------------------------------------------*/
  else if (HostServiceRequest == GPIO_OUTPUT_LOW)
  {
GPIO_OutputLow:
    SetPinLow();
    act_unitA = enable_output_buffer;
  }

/*---------------------------------------------------------------------------+
| Thread Name: Input Rising (S2)                                           |
| Description: Configure channel to detect input rising edge               |
|                                                                            |
| 1/. Configure Input Pin Action Control Register 1 (IPAC1)to detect       |
|         rising edge                                                        |
|   2/. Set Channel Mode for SingleMatchSingleTransition                     |
| 3/. Set Comparitor and Timebase Selection for TCR1 capture and TCR1      |
|       Match (Greater Equal)                                              |
| 4/. Enable Match and Transition Event Handling                           |
+----------------------------------------------------------------------------*/
  else if (HostServiceRequest == GPIO_INPUT_RISING)
  {
GPIO_InputRising:
    DisableOutputBuffer();
    DetectARisingEdge();

    goto setup1;
  }

/*---------------------------------------------------------------------------+
| Thread Name: Input Falling (S3)                                          |
| Description: Configure channel to detect input falling edge              |
|                                                                            |
| 1/. Configure Input Pin Action Control Register 1 (IPAC1)to detect       |
|         falling edge                                                       |
|   2/. Set Channel Mode for SingleMatchSingleTransition                     |
| 3/. Set Comparitor and Timebase Selection for TCR1 capture and TCR1      |
|       Match (Greater Equal)                                              |
| 4/. Enable Match and Transition Event Handling                           |
+----------------------------------------------------------------------------*/
  else if (HostServiceRequest == GPIO_INPUT_FALLING)
  {
GPIO_InputFalling:
    DisableOutputBuffer();
    DetectAFallingEdge();

    goto setup1;
  }

/*---------------------------------------------------------------------------+
| Thread Name: Input Either (S4)                                           |
| Description: Configure channel to detect input rising or falling edge    |
|                                                                            |
| 1/. Configure Input Pin Action Control Register 1 (IPAC1)to detect       |
|         rising or falling edge                                             |
|   2/. Set Channel Mode for SingleMatchSingleTransition                     |
| 3/. Set Comparitor and Timebase Selection for TCR1 capture and TCR1      |
|       Match (Greater Equal)                                              |
| 4/. Enable Match and Transition Event Handling                           |
+----------------------------------------------------------------------------*/
  else if (HostServiceRequest == GPIO_INPUT_EITHER)
  {
GPIO_InputEither:
    DisableOutputBuffer();
    DetectAAnyEdge();

setup1:
    SingleMatchSingleTransition();
    TimeBaseAMatchTcr1CaptureTcr1GreaterEqual();
    EnableMatchAndTransitionEventHandling();
  }

/*---------------------------------------------------------------------------+
| Thread Name: Input Match (S5)                                            |
| Description: Configure channel to read pin level on match event          |
|                                                                            |
| 1/. Select timebase for match and capture depending on FM0               |
| 2/. Set up next match erta =  current TCRx + InputMatchPeriod            |
|   3/. Enable MatchA - channel.ERWA = 0, write erta to Match1 register      |
|   4/. Enable MatchA Service Requests - channel.MTD = 0                     |
+----------------------------------------------------------------------------*/
  else if (HostServiceRequest == GPIO_INPUT_MATCH)
  {
GPIO_InputMatchS5:
    DisableOutputBuffer();
    SingleMatchSingleTransition();

    if ( FunctionMode0 == GPIO_USE_TCR1 )
    {
        ActionUnitA( MatchTCR1, CaptureTCR1, GreaterEqual);
        erta = tcr1;
    }
    else  /* use TCR2 */
    {
        ActionUnitA( MatchTCR2, CaptureTCR2, GreaterEqual);
        erta = tcr2;
    }

    erta = erta + InputMatchPeriod;

    NextMatch = erta;
    EnableMatchA();


    EnableMatchAndTransitionEventHandling();
  }

/*---------------------------------------------------------------------------+
| Thread Name: Input Immediate Reset Match and Transition (S6)             |
| Description: Read immediate value on pin - if FM1 = DISABLE_MATCH_TRANS  |
| then disable input transition and input match                            |
|                                                                            |
| 1/. If FM1 = DISABLE_MATCH_TRANS then disable transition and match events|
|           - option removed in rev. 0.04                                    |
| 2/. Shift PinState 1 bit left and make PinState lsb = input pin level    |
+----------------------------------------------------------------------------*/
  else if (HostServiceRequest == GPIO_INPUT_IMMED)
  {
GPIO_MatchTransition:
    DisableOutputBuffer();
    goto gen_intanddma;
  }

/*---------------------------------------------------------------------------+
| Thread Name: Match Event (S7)                                            |
| Description: Updates PinState on match event                             |
|                                                                            |
| 1/. Shift PinState 1 bit left and make PinState lsb = input pin level    |
| 2/. Schedule and enable next match                                       |
+----------------------------------------------------------------------------*/
  else if ((m1==1 && m2==0) || (m1==1 && m2==1) )
  {
GPIO_MatchS7:
      NextMatch = NextMatch + InputMatchPeriod; /* Set up Match for next pin value read */
      erta = NextMatch;
      ClearMatchAEvent();
      EnableMatchA();

gen_intanddma:
      SetChannelInterruptRequest();
      SetDataTransferInterruptRequest();

ud_pinstate:
      PinState = (PinState << 1);
      if(IsCurrentInputPinHigh())
      {
        PinState++;
      }
  }

/*---------------------------------------------------------------------------+
| Thread Name: Transition Event (S8)                                       |
| Description: Updates PinState on match event                             |
|                                                                            |
| 1/. Shift PinState 1 bit left and make PinState lsb = input pin level    |
| 2/. Clear transition event, enable next transition detection             |
+----------------------------------------------------------------------------*/
  else if ((m1==0) && (m2==1))
  {
GPIO_Transition:
      ClearTransitionEvents();
      goto gen_intanddma;
  }
/*--------------------------------------------------------------------------+
| THREAD NAME: Error (S9)                                                   |
| DESCRIPTION: Something has gone wrong. :-(                                |
|                Call the Global error routine and end.                     |
+--------------------------------------------------------------------------*/
  else {
GPIO_Error:
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
 *
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
