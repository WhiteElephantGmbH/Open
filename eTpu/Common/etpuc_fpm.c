/****************************************************************************
 * FILE NAME: etpu_fpm.c                     COPYRIGHT (c) FREESCALE 2004   *
 * DESCRIPTION:                                     All Rights Reserved     *
 * This function counts the number of pulses in a specified window, and     *
 * alternately measures the frequency of a periodic stream of pulses.       *
 *==========================================================================*
 * ORIGINAL AUTHOR: Mike Pauwels                                            *
 * Revision 1.8  2006/01/09 13:11:34  r47354
 * Add function name prefix to #defines.
 * Fix auto file name comment.
 * Fix isue with function number when compiling standalone.
 * No compiled code changes.
 *
 * Revision 1.7  2005/11/07 12:56:12  r47354
 * Change PPA to FPM is auto generated file.
 *
 * Revision 1.6  2005/03/29 12:43:43  r47354
 * Prevent matches until first edge has occurred.
 *
 * Revision 1.5  2005/01/14 11:06:13  r47354
 * Post review tidy up.
 * Removed code that was already commented out.
 * Use of better macros.
 * Changed init HSR from 3 to 7. Believe this to be safer.
 * Added FS_ prefix to host side #defines.
 *
 * Revision 1.4  2005/01/12 16:19:29  r47354
 * Converted all #defines to uppercase.
 * Make entry table descriptors more specific.
 * Added comment blocks for all threads.
 * Following code now only executed in Continuous mode.
 * Removed Link thread. Now handled by the trailing else (Global_Error_Func).
 * #define TransA now in etpuc_common.h.
 * Added FPM_ to all #defines.
 *
 * Revision 1.3  2005/01/05 17:07:41  r47354
 * Remove debug variables.
 *
 * Revision 1.2  2005/01/05 15:38:27  r47354
 * Various changes for debug/development
 *
 * Revision 1.1  2004/12/10 11:01:01  r47354
 * Initial revision.
 *
 *..........................................................................*
 * 0.1     MAP         4 May 04    Designed from New Functional Spec.       *
 * 0.4     MAP         30 Jun 04   Corrected ref comments from tester       *
 ****************************************************************************/

#include <ETpu_Std.h>

/***********************************/
/* Verify performance requirements */
/***********************************/
#pragma verify_wctl  FPM                 14  steps 10 rams
#pragma exclude_wctl FPM::Init_FPM
#pragma exclude_wctl FPM::FPM_Error

#ifdef FPM_FUNCTION_NUMBER    /* function is being compiled as part a set? */
#pragma ETPU_function FPM, alternate @ FPM_FUNCTION_NUMBER;
#else
#pragma ETPU_function FPM, alternate; /* stand alone */
#endif

/* Host Service Requests */
#define FPM_HSR_INIT 7
#define FPM_HSR_UPDATE 3

/* Flag definitions */
#define FPM_WAITING flag0

/* Some macro functions */
#define FPM_END_OF_WINDOW m1

/* Function mode definitions */
#define FPM_SINGLE_SHOT_MODE FunctionMode0==0
#define FPM_CONTINUOUS_MODE FunctionMode0==1

#define FPM_RISING_EDGE FunctionMode1==1
#define FPM_FALLING_EDGE FunctionMode1==0

/* Function modes for host interface */
/* FM0 */
#define FPM_SINGLE_SHOT 0
#define FPM_CONTINUOUS 1

/* FM1 */
#define FPM_RISING 1
#define FPM_FALLING 0


enum timebase_t
   {
   tcr1_base,
   tcr2_base
   };

/* General Notes: */
/*--------------------------------------------------------------------------+
| CHANNEL PARAMETERS: (host readable and/or modifiable)                     |
|        EdgeCount: The number of active edge counted during the measurement|
|                   window. This parameter is coherent with ElapsedTCRCounts|
|                   and is copied from ElapsedTCRCounts_local during the    |
|                   COUNT_EM_FPM thread.                                    |
|           Window: This parameter is written by the host and defines the   |
|                   number of TCR counts over which active edge will be     |
|                   counted.                                                |
| ElapsedTCRCounts: The number of TCR counts which elapsed during the       |
|                   measurement window.This parameter is coherent with      |
|                   EdgeCount and is copied from ElapsedTCRCounts_local     |
|                   during the COUNT_EM_FPM thread.                         |
| timebase:         Defines which TCR will be used by the function          |
+--------------------------------------------------------------------------*/
/*--------------------------------------------------------------------------+
| LOCAL VARIABLES: (currently implemented as channel paramaters)is this true|
| These  parameters are only visible to the eTPU                            |
|      TimeStart: The TCR value at which the first edge occured in          |
|                 synchronous mode or the TCR vaslue at which the window    |
|                 opened in update mode.                                    |
|    TimeCurrent: The TCR value of at which the current edge occurred.      |
|ElapsedTCRCounts_local:                                                    |
|                 The number of TCR counts which elapsed during the         |
|                 measurement window.                                       |
| AccumEdgeCount: The number of active edge counted during the measurement  |
|                 window.
+--------------------------------------------------------------------------*/
void FPM( int24 EdgeCount, int24 Window, int24 ElapsedTCRCounts, enum timebase_t timebase)
{
  static int24 TimeStart, TimeCurrent, ElapsedTCRCounts_local, AccumEdgeCount;

/*--------------------------------------------------------------------------+
| THREAD NAME: Init_FPM                                                     |
| DESCRIPTION: Initialise a channel to run the FPM function in synchronous  |
|              mode.                                                        |
|              1. Disable matches in thread in case there are any previous  |
|                 pending matches. This could happen if the channel was     |
|                 running another function before this one.                 |
|              2. Disable the output buffer. Required for integration like  |
|                 Puma where the Pad needs to be configured by the eTPU.    |
|              3. Select No pin action on MatchA and B.                     |
|              4. Configure channel to use TCR1/2 as per timebase variable. |
|              5. Set input pin action on unit B to no_detect.              |
|              6. Set input pin action on unit A according to FM1.          |
|              7. Configure channel mode , PDCM = sm_st                     |
|              8. Clear all the latches (lsr/mrlA/mrlB/tdl).                |
|              9. Set waitng to 1 (set flag0).                              |
|              10. Enable match and transition event handling.              |
|              11. Prevent matches until first edge has occurred.           |
+--------------------------------------------------------------------------*/
  if (hsr == FPM_HSR_INIT)   /* Init FPM HSR -- Required to initialize the signal.*/
  {
Init_FPM:
    DisableMatchesInThread();
    DisableOutputBuffer(); /* required for Puma */

    OnMatchA(NoChange);  /* Needed so ouptut pin does not get toggled */
    OnMatchB(NoChange);  /* Needed so ouptut pin does not get toggled */

    ActionUnitA( MatchTCR1, CaptureTCR1, GreaterEqual);

    if (timebase == tcr2_base)
    {
        ActionUnitA( MatchTCR2, CaptureTCR2, GreaterEqual);
    }

    OnTransB(no_detect); /* no threads from 2nd action unit */
    OnTransA(low_high);

    if (FPM_FALLING_EDGE)
    {
      ipacA = high_low;
    }

    SetChannelMode(sm_st);
    ClearAllLatches();
    FPM_WAITING = 1;
    EnableEventHandling();
    DisableMatchDetection();
  }
/*--------------------------------------------------------------------------+
| THREAD NAME: Update_FPM                                                   |
| DESCRIPTION: Initialise a channel to run the FPM function in non          |
|              synchronous mode. In order to configre the channel thread    |
|              Init_FPM must be run first.                                  |
|              1. Store the selected TCR in erta.                           |
|              2. Enable match and transition event handling.               |
|              3. Proceed as per thread FIRST_EDGE.                         |
+--------------------------------------------------------------------------*/
  else if (hsr == FPM_HSR_UPDATE)  /* Force Window open  MAP 6/30/04 */
  {
Update_FPM:
      erta = tcr1;
      if (timebase == tcr2_base)
      {
        erta = tcr2;
      } ;
      EnableEventHandling();
      goto FIRST_EDGE;
  }
/*--------------------------------------------------------------------------+
| THREAD NAME: FIRST_EDGE                                                   |
| DESCRIPTION: Used to start the measurement.                               |
|              1. Set AccumEdgeCount to 0.                                  |
|              2. Store erta in TimeStart.                                  |
|              3. Set FPM_WAITING to 0 (clear flag0).                           |
|              4. Schedule a match for erta+Window. This is will schedule an|
|                 event (thread COUNT_EM_FPM) to end the current            |
|                 measurement.                                              |
|              5. Clear the TransitionDetectLatch.                          |
+--------------------------------------------------------------------------*/
  else if ((TransA && FPM_END_OF_WINDOW==0 && FPM_WAITING)  || /* First Edge */
           (TransA && FPM_END_OF_WINDOW==1 && FPM_WAITING)  )
    {
FIRST_EDGE:
      AccumEdgeCount = 0;
      TimeStart = erta;
      FPM_WAITING = 0;
      SetupMatchA(erta+Window);
      ClearTransLatch();
    }
/*--------------------------------------------------------------------------+
| THREAD NAME: TDL_FPM                                                      |
| DESCRIPTION: Used to continue the measurement.                            |
|              1. Store erta in TimeCurrent.                                |
|              2. Add 1 to AccumEdgeCount.                                  |
|              3. Clear the TransitionDetectLatch.                          |
+--------------------------------------------------------------------------*/
  else if (TransA && FPM_END_OF_WINDOW==0 && !FPM_WAITING)   /* More Edges */
TDL_FPM:
    {
      TimeCurrent = erta;
      AccumEdgeCount++;
      ClearTransLatch();
    }
/*--------------------------------------------------------------------------+
| THREAD NAME: COUNT_EM_FPM                                                 |
| DESCRIPTION: Used to end the measurement.                                 |
|              1. Calulate the elapsed TCR count. Store it locally.         |
|              2. Coherently copy AccumEdgeCount to EdgeCount and           |
|                 ElapsedTCRCounts_local to ElapsedTCRCounts.               |
|              3. Update erta with the value in the match register; it is   |
|                 possible that if a Transition occured before this thread  |
|                 is serviced that erta would now contain the tcr at the    |
|                 transition time.                                          |
|              4. Set Interrupt and DMA request bits                        |
|              5. If in single shot mode Disable further events.            |
|              6. If in continuous mode:                                    |
|                 Make TimeStart take the value of TimeCurrent.             |
|                 Set AccumEdgeCount to 0                                   |
|                 Schedule a match for erta+Window.                         |
+--------------------------------------------------------------------------*/
  else if ((FPM_END_OF_WINDOW==1 && TransA && !FPM_WAITING) ||
           (FPM_END_OF_WINDOW==1 && m2==0 && !FPM_WAITING))  /* End of Window */
           /* Note that the m2==0 above would ideally be !TransA; however
           at this time there is sufficient risk that future compiler changes
           may mean that !TransA does not get compiled correctly (esp. if
           the flag (!FPM_WAITING) is removed)). Current compiler is
           revision 1.0.0.5*/
COUNT_EM_FPM:
    {
        ElapsedTCRCounts_local = TimeCurrent - TimeStart;

        _coherentwrite(EdgeCount,AccumEdgeCount,
                       ElapsedTCRCounts, ElapsedTCRCounts_local);

        read_match();/* ensure ert is match time */
        SetChannelInterruptRequest();
        SetChannelDMARequest();
        if (FPM_SINGLE_SHOT_MODE) {
          DisableEventHandling();
          return;
        }
        TimeStart = TimeCurrent;
        AccumEdgeCount = 0;
        SetupMatchA(erta+Window);

    }

/*--------------------------------------------------------------------------+
| THREAD NAME: ERROR                                                        |
| DESCRIPTION: Something has gone wrong. :-(                                |
|                Call the Global error routine and end.                     |
+--------------------------------------------------------------------------*/
  else
  {
     FPM_Error:
    /*This else statement is used to catch all
      unspecified entry table conditions*/
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
 *  FREESCALE, INC. All Rights Reserved.
 *  You are hereby granted a copyright license to use, modify, and
 *  distribute the SOFTWARE so long as this entire notice is
 *  retained without alteration in any modified and/or redistributed
 *  versions, and that such modified versions are clearly identified
 *  as such. No licenses are granted by implication, estoppel or
 *  otherwise under any patents or trademarks of Motorola, Inc. This
 *  software is provided on an "AS IS" basis and without warranty.
 *
 *  To the maximum extent permitted by applicable law, FREESCALE
 *  DISCLAIMS ALL WARRANTIES WHETHER EXPRESS OR IMPLIED, INCLUDING
 *  IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR
 *  PURPOSE AND ANY WARRANTY AGAINST INFRINGEMENT WITH REGARD TO THE
 *  SOFTWARE (INCLUDING ANY MODIFIED VERSIONS THEREOF) AND ANY
 *  ACCOMPANYING WRITTEN MATERIALS.
 *
 *  To the maximum extent permitted by applicable law, IN NO EVENT
 *  SHALL FREESCALE BE LIABLE FOR ANY DAMAGES WHATSOEVER (INCLUDING
 *  WITHOUT LIMITATION, DAMAGES FOR LOSS OF BUSINESS PROFITS, BUSINESS
 *  INTERRUPTION, LOSS OF BUSINESS INFORMATION, OR OTHER PECUNIARY
 *  LOSS) ARISING OF THE USE OR INABILITY TO USE THE SOFTWARE.
 *
 *  Freescale assumes no responsibility for the maintenance and support
 *  of this software
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
