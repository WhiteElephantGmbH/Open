/****************************************************************************
 * FILE NAME: etpuc_oc.c                     COPYRIGHT (c) FREESCALE 2004   *
 * DESCRIPTION:                                     All Rights Reserved     *
 * This function can create a single output transition or a pulse. The      *
 * initial reference time can be immediate, a pointer or a value. The       *
 * pin state can be defined. The pin action at each of the 2 events can be  *
 * defined seperately and timebase used for match and capture events can be *
 * specified seperately.                                                    *
 * An interrupt is requested after the second action.                       *
 *==========================================================================*
 * ORIGINAL AUTHOR: J. Loeliger                                             *
 * Revision 1.7  2006/01/09 13:11:34  r47354
 * Add function name prefix to #defines.
 * Fix auto file name comment.
 * Fix isue with function number when compiling standalone.
 * No compiled code changes.
 *
 * Revision 1.6  2005/04/18 08:59:26  r47354
 * Fix FM bits; Comment only.
 *
 * Revision 1.5  2005/04/13 14:21:42  r47354
 * Fix typo in Thread name.
 *
 * Revision 1.4  2005/03/29 12:43:11  r47354
 * Fix typo in ifdef.
 *
 * Revision 1.3  2005/03/16 16:32:59  r47354
 * Removed etpuc_util.h; not used.
 * Ran through indent.
 *
 * Revision 1.2  2005/02/04 14:07:59  r47354
 * Major re-work.
 *
 * Revision 1.1  2005/01/17 10:18:38  r47354
 * Initial revision.
 *
 *..........................................................................*
 * 0.01  J. Loeliger  20/Feb/04  Initial version of file.                   *
 ****************************************************************************/

#include <ETpu_Std.h>

/***********************************/
/* Verify performance requirements */
/***********************************/
#pragma verify_wctl  OC                  4  steps  2 rams
#pragma exclude_wctl OC::OC_init_pin_no_change
#pragma exclude_wctl OC::OC_initialialize_pin_low
#pragma exclude_wctl OC::OC_init_pin_high
#pragma exclude_wctl OC::OC_Error

#ifdef OC_FUNCTION_NUMBER      /* function is being compiled as part a set? */
#pragma ETPU_function OC, alternate @ OC_FUNCTION_NUMBER;
#else
#pragma ETPU_function OC, alternate;    /* stand alone */
#endif

/* Macros to make the code easier to understand.
   These are specific to this OC function
   Host service requests */
/* Initial pin state */
#define  OC_INIT_PIN_LOW          1
#define  OC_INIT_PIN_HIGH         3
#define  OC_INIT_PIN_NO_CHANGE    7

/* Match Timebase bits */
#define OC_MATCH_TCR1 0
#define OC_MATCH_TCR2 1

/* Capture Timebase bits */
#define OC_CAPTURE_TCR1 0
#define OC_CAPTURE_TCR2 1

/* option register bit postions */
#define OC_CAPTURE_TB 0x1
#define OC_PIN_ACTION_MODE0 0x2
#define OC_PIN_ACTION_MODE1 0x4

/* match_timebase bit positions */
#define OC_MATCH_TIMEBASE 0x1

/* PinAction mode0 bits */
/*when this bit is 0 mode1 bit controls pin state hi/lo
  when this bit is 1 mode1 bit controls pin state toggle/no_change */
#define OC_DRIVE_HI_LO 0
#define OC_TOGGLE_NO_CHANGE 1

/* PinAction mode1 bits */
#define OC_PIN_LOW 0
#define OC_PIN_HIGH 1
#define OC_PIN_TOGGLE 0
#define OC_PIN_NO_CHANGE 1

/* Option register combined macros for exporting to the host */
#define OC_PIN_LOW_CAPTURE_TCR1       ((OC_PIN_LOW<<2) + (OC_DRIVE_HI_LO<<1) + OC_CAPTURE_TCR1)
#define OC_PIN_LOW_CAPTURE_TCR2       ((OC_PIN_LOW<<2) + (OC_DRIVE_HI_LO<<1) + OC_CAPTURE_TCR2)
#define OC_PIN_HIGH_CAPTURE_TCR1      ((OC_PIN_HIGH<<2) + (OC_DRIVE_HI_LO<<1) + OC_CAPTURE_TCR1)
#define OC_PIN_HIGH_CAPTURE_TCR2      ((OC_PIN_HIGH<<2) + (OC_DRIVE_HI_LO<<1) + OC_CAPTURE_TCR2)
#define OC_PIN_TOGGLE_CAPTURE_TCR1    ((OC_PIN_TOGGLE<<2) + (OC_TOGGLE_NO_CHANGE<<1) + OC_CAPTURE_TCR1)
#define OC_PIN_TOGGLE_CAPTURE_TCR2    ((OC_PIN_TOGGLE<<2) + (OC_TOGGLE_NO_CHANGE<<1) + OC_CAPTURE_TCR2)
#define OC_PIN_NO_CHANGE_CAPTURE_TCR1 ((OC_PIN_NO_CHANGE<<2) + (OC_TOGGLE_NO_CHANGE<<1) + OC_CAPTURE_TCR1)
#define OC_PIN_NO_CHANGE_CAPTURE_TCR2 ((OC_PIN_NO_CHANGE<<2) + (OC_TOGGLE_NO_CHANGE<<1) + OC_CAPTURE_TCR2)

/* Function Modes */
/* FM1 */
#define OC_INIT_REF  1
/* FM0 */
#define OC_INIT_IMMED 0
#define OC_INIT_VALUE  1

/*
   Channel Flag usage
   Flag0: Not used.
   Flag1: Not used.
*/

/*--------------------------------------------------------------------------+
| FUNCTION PARAMETERS:                                                      |
| Offset1: Offset count 1; the number of selected TCR counts from the       |
|      reference value to the first event. Except in value mode when it the |
|      actual TCR count at which the first event will be scheduled to occur.|
| Event1_Option: Flag bits for the first event. Consists of 3 bits:         |
|       Capture_tb: This is the LSB                                         |
|                 : 0 capture TCR1 on match events                          |
|                   1 capture TCR2 on match events                          |
|       Pin_action_mode0 : This is the LSB + 1                              |
|                          0 Pin_action_mode1 selects pin hi/lo             |
|                          1 Pin_action_mode1 selects pin toggle/no change  |
|       Pin_action_mode1 : This is the LSB + 1                              |
|                          0 Drive Low/Toggle                               |
|                          1 Drive High/No Change                           |
|            Hence                                                          |
|               | Pin_action_mode_bit |   Pin Action |                      |
|               --------------------------------------                      |
|               |  mode1 |  mode0     |              |                      |
|               --------------------------------------                      |
|               |    0   |    0       | Drive Low    |                      |
|               |    0   |    1       | Toggle       |                      |
|               |    1   |    0       | Drive High   |                      |
|               |    1   |    1       | No change    |                      |
|               --------------------------------------                      |
| Offset2: Offset time 2, the number of selected TCR counts from the first  |
|          event to the second event.                                       |
| Event2_Option: Flag bits for the second event. Consists of 3 bits:        |
|       Capture_tb: This is the LSB                                         |
|                   0 capture TCR1 on match events                          |
|                   1 capture TCR2 on match events                          |
|       Pin_action_mode0 : This is the LSB + 1                              |
|                          0 Pin_action_mode1 selects pin hi/lo             |
|                          1 Pin_action_mode1 selects pin toggle/no change  |
|       Pin_action_mode1 : This is the LSB + 1                              |
|                          0 Drive Low/Toggle                               |
|                          1 Drive High/No Change                           |
|            Hence                                                          |
|               | Pin_action_mode_bit |   Pin Action |                      |
|               --------------------------------------                      |
|               |  mode1 |  mode0     |              |                      |
|               --------------------------------------                      |
|               |    0   |    0       | Drive Low    |                      |
|               |    0   |    1       | Toggle       |                      |
|               |    1   |    0       | Drive High   |                      |
|               |    1   |    1       | No change    |                      |
|               --------------------------------------                      |
| Matchtimebase : This is the timebase to which match events are referenced |
|       and scheduled.                                                      |
| MatchTime1: The scheduled match time for event 1. This is valid after the |
|     initialization thread has finished.                                   |
| MatchTime2: The scheduled match time for event 2. This is valid after the |
|     initialization thread has finished.                                   |
| ActualTime1: The actual time that event 1 occurred. This could be         |
|     referenced to either timebase, not necessarily the match timebase.    |
|     This is only valid after the interrupt request is asserted.           |
| ActualTime2: The actual time that event 2 occurred. This could be         |
|     referenced to either timebase, not necessarily the match timebase.    |
|     This is only valid after the interrupt request is asserted.           |
| Ref_Addr_ptr: Pointer to reference count used in reference mode.          |
+--------------------------------------------------------------------------*/
void
OC (int24 Offset1, int8 Event1_Option,
    int24 Offset2, int8 Event2_Option,
    int8 MatchTimebase,
    int24 MatchTime1, int24 MatchTime2,
    int24 ActualTime1, int24 ActualTime2,
    int24 * Ref_Addr_ptr)
{

/*--------------------------------------------------------------------------+
| THREAD NAME: Initialize Pin: No Change in Pin State (S0)                  |
| DESCRIPTION: Initialize a channel to run OC; No change in pin state.      |
|              Matches are disabled in this thread as this is a "no change  |
|              pin state thread"; However other thread which jump to label  |
|              oc_init may have matches in thread enabled.                  |
|              1. Configure channel mode to BothMatchSingleTransition.      |
|              2. Configure match1 timebase and record selected TCR in ertb.|
|              3. Write ertb to matchB; enable the MRL                      |
|              4. Calculate the first match time and store in MatchTime1.   |
|              5. Configure match1 action.                                  |
|              6. Calculate match2 time and store in MatchTime2.            |
|              7. Configure match2 action.                                  |
|              8. Configure match2 timebase                                 |
|              9. Enable matches and clear latches.                         |
+--------------------------------------------------------------------------*/
    if (HostServiceRequest == OC_INIT_PIN_NO_CHANGE)
      {
OC_init_pin_no_change:
          DisableMatchesInThread ();
oc_init:
          /* 1. Configure channel mode. */
          BothMatchSingleTransition ();

          EnableOutputBuffer ();

          /* 2. Configure match1 timebase */
          ActionUnitB (MatchTCR2, CaptureTCR2, GreaterEqual);   /*default */

          if ((MatchTimebase & OC_MATCH_TIMEBASE) == OC_MATCH_TCR1)
            {
                if ((Event1_Option & OC_CAPTURE_TB) == OC_MATCH_TCR1)
                  {
                      ActionUnitB (MatchTCR1, CaptureTCR1, GreaterEqual);
                  }
                else
                  {
                      ActionUnitB (MatchTCR1, CaptureTCR2, GreaterEqual);
                  }
                ertb = tcr1;
            }
          else
            {
                if ((Event1_Option & OC_CAPTURE_TB) == OC_MATCH_TCR1)
                  {
                      ActionUnitB (MatchTCR2, CaptureTCR1, GreaterEqual);
                  }
                ertb = tcr2;
            }

          /* 3. Write ertb to matchB; enable the MRL */
          WriteErtBToMatchBAndEnable (); /* this causes an immediate match */
          /* because events have not yet been enabled there will be no thread
             beacuse of this match; the match is used to generate the initial
             pin condition only */

          /* 4. Calculate the first match time and store in MatchTime1. */
          if (FunctionMode0 != OC_INIT_VALUE)
            {                   /* mode other than value.? */
                if (FunctionMode1 == OC_INIT_REF)
                  {             /* address reference mode */
                      ertb = *Ref_Addr_ptr;
                  }
                else
                  {             /* immediate reference mode */
                  }
                ertb = ertb + Offset1;
            }
          else
            {                   /*value mode */
                ertb = Offset1;
            }
          MatchTime1 = ertb;

          /* 5. Configure match1 action. */
          OnMatchB (NoChange);  /*default */
          if ((Event1_Option & OC_PIN_ACTION_MODE0) == OC_DRIVE_HI_LO)
            {
                if ((Event1_Option & OC_PIN_ACTION_MODE1) == OC_PIN_LOW)
                  {
                      OnMatchB (PinLow);
                  }
                else
                  {
                      OnMatchB (PinHigh);
                  }
            }
          else
            {  /* Event1_Option & PIN_ACTION_MODE0) == OC_TOGGLE_NO_CHANGE */
                if ((Event1_Option & OC_PIN_ACTION_MODE1) == OC_PIN_TOGGLE)
                  {
                      OnMatchB (PinToggle);
                  }
            }

          /* 6. Calculate match2 time and store in MatchTime2. */
          erta = ertb + Offset2;
          MatchTime2 = erta;

          /* 7. Configure match2 action. */
          OnMatchA (NoChange);  /*default */
          if ((Event2_Option & OC_PIN_ACTION_MODE0) == OC_DRIVE_HI_LO)
            {
                if ((Event2_Option & OC_PIN_ACTION_MODE1) == OC_PIN_LOW)
                  {
                      OnMatchA (PinLow);
                  }
                else
                  {
                      OnMatchA (PinHigh);
                  }
            }
          else
            {   /* Event2_Option & PIN_ACTION_MODE0) == OC_TOGGLE_NO_CHANGE */
                if ((Event2_Option & OC_PIN_ACTION_MODE1) == OC_PIN_TOGGLE)
                  {
                      OnMatchA (PinToggle);
                  }
            }

          /* 8. Configure match2 timebase */
          ActionUnitA (MatchTCR2, CaptureTCR2, GreaterEqual);   /* default */
          if ((Event2_Option & OC_CAPTURE_TB) == OC_MATCH_TCR1)
            {
                if ((MatchTimebase & OC_MATCH_TIMEBASE) == OC_MATCH_TCR1)
                  {
                      ActionUnitA (MatchTCR1, CaptureTCR1, GreaterEqual);
                  }
                else
                  {
                      ActionUnitA (MatchTCR2, CaptureTCR1, GreaterEqual);
                  }
            }
          else
            {
                if ((MatchTimebase & OC_MATCH_TIMEBASE) == OC_MATCH_TCR1)
                  {
                      ActionUnitA (MatchTCR1, CaptureTCR2, GreaterEqual);
                  }
            }

          /* 9. Enable matches and clear latches. */
          ConfigMatch_AB ();
          OnTransA (NoDetect);
          OnTransB (NoDetect);
          Clear (TransLatch);
          Clear (LSRLatch);
      }
/*--------------------------------------------------------------------------+
| THREAD NAME: Initialize Pin Low (S1)                                      |
| DESCRIPTION: Initialize a channel with the pin low.                       |
|              1. Enables matches in the thread. This means that the        |
|                 immediate match scheduled in S0 will drive the pin low.   |
|              2. Set Pin Action for drive low on MatchB                    |
|              2. Goto common setup code in S0.                             |
+--------------------------------------------------------------------------*/
    else if (HostServiceRequest == OC_INIT_PIN_LOW)
      {
OC_initialialize_pin_low:
          EnableMatchesInThread ();
          OnMatchB (PinLow);
          goto oc_init;
      }
/*--------------------------------------------------------------------------+
| THREAD NAME: Initialize Pin High (S2)                                     |
| DESCRIPTION: Initialize a channel with the pin high.                      |
|              1. Enables matches in the thread. This means that the        |
|                 immediate match scheduled in S0 will drive the pin high.  |
|              2. Set Pin Action for drive high on MatchB                   |
|              2. Goto common setup code in S0.                             |
+--------------------------------------------------------------------------*/
    else if (HostServiceRequest == OC_INIT_PIN_HIGH)
      {
OC_init_pin_high:
          EnableMatchesInThread ();
          OnMatchB (PinHigh);
          goto oc_init;
      }
/*--------------------------------------------------------------------------+
| THREAD NAME: Match (S3)                                                   |
| DESCRIPTION: This only happens after both edges.                          |
|              1. Clean up after event.                                     |
|              2. Copy actual time value to parameter RAM.                  |
|              3. Request Interruput and DMA.                               |
+--------------------------------------------------------------------------*/
    else if (m1 == 1 && m2 == 1)
      {
OC_match:
          /* 1. Clean up after event. */
          Clear (MatchALatch);
          Clear (MatchBLatch);
          Clear (TransLatch);   /* in case it gets set for some reason. */

          /* 2. Copy actual time value to parameter RAM. */
          ActualTime1 = ertb;
          ActualTime2 = erta;

          /* Request Interruput and DMA. */
          SetChannelInterruptRequest ();
          SetDataTransferInterruptRequest ();
      }
/*--------------------------------------------------------------------------+
| THREAD NAME: Error (S4)                                                   |
| DESCRIPTION: Something has gone wrong. :-(                                |
|                Call the Global error routine and end.                     |
+--------------------------------------------------------------------------*/
    else
      {
OC_Error:
          /*This else statement is used to catch all
             unspecified entry table conditions */
#ifdef GLOBAL_ERROR_FUNC
          Global_Error_Func ();
#else
          ClearAllLatches ();
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

