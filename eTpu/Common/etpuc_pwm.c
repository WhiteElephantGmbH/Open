/****************************************************************************
 * FILE NAME: etpuc_pwm.c                      COPYRIGHT (c) Freescale 2004 *
 * DESCRIPTION:                                     All Rights Reserved     *
 * This function generals a PWM (Pulse Width Modulated) waveform in which   *
 * the frequency and duty can be changed at any time by the CPU. The        *
 * function can generate 0% and 100% output. The function uses both actions *
 * on the channel hardware so it can generate small output pulses.          *
 *==========================================================================*
 * ORIGINAL AUTHOR: Jeff Loeliger [r12110] (jeff.loeliger@freescale.com)    *
 * Revision 1.7  2006/01/09 13:09:30  r47354
 * Fix auto file name comment.
 * Fix isue with function number when compiling standalone.
 * No compiled code changes.
 *
 * Revision 1.6  2005/11/07 10:13:25  r12110
 * -Added DMA request on Frame edge.
 *
 * Revision 1.5  2004/11/02 14:11:16  r12110
 * -Fixed possible problem with comments in auto generated file.
 *
 * Revision 1.4  2004/11/02 13:49:59  r12110
 * -Added standard support for building function stand alone or in a set.
 * -Updated comments in auto generated file to include version number.
 *
 * Revision 1.3  2004/11/02 10:20:27  r12110
 * -Added support for building function stand alone or in a set.
 *   -This includes using the global error function if avaialable.
 * -Change PWM_flag to just Flag, since it is local to function.
 * -Added comments about Flag parameter.
 * -Updated comments in auto generated file to include version number.
 *
 * Revision 1.2  2004/11/01 15:13:46  r12110
 * Updated with new CVS log style comments.
 *
 *..........................................................................*
 * 0.01  J. Loeliger  02/Feb/04  Initial version of file.                   *
 * 0.02  J. Loeliger  12/Feb/04  Updated comments. Removed clear trans-     *
 *                                 latch in S6, it is better if this is     *
 *                                 handled by the error function.           *
 * 0.03  J. Loeliger  17/Feb/04  Updated after review/feedback from Milan   *
 *                                Added mrlA test in S2 and added code in S3*
 *                                because of compiler issue.                *
 * 1.00  J. Loeliger  25/May/04  Changed from Motorola to Freescale.        *
 *                               Changed all comments to standard C style.  *
 *                               Fixed problem in S0 when using TCR2, first *
 *                                edge was based on TCR1.                   *
 *                               Added EnableOutputBuffer(); in S0.         *
 *                               Added PWM_ prefix to macros to prevent     *
 *                                problems when used with other functions.  *
 *                               Changed to standard error routine for      *
 *                                unused entry points.                      *
 *                               Combined S1 & S2. The pin condition can not*
 *                                be used in the entry because it might not *
 *                                be connected to the output.               *
 *                               Fixed problem if 0% was selected during    *
 *                                init. 100% was generated for first period.*
 *                                Reworked S0 and combined with S4 & S5.    *
 * 1.01  J. Loeliger   1/Jun/04  Changed the idle state if the selected TCR *
 *                                is not running from active state to in-   *
 *                                active state [erta=tcrx->erta=tcrx+1]     *
 * 1.02  J. Loeliger  21/Jun/04  Swapped flag0 & flag1 to fix problem with  *
 *                                immediate update mode. More optimizations.*
 * 1.03  J. Loeliger  25/Jun/04  Added option comment in auto generated file*
 *                                for the CGT.                              *
 * 1.04  J. Loeliger  16/Jul/04  Added S2 back in. It recalcuates the edge  *
 *                                for the next frame.                       *
 * 1.05  J. Loeliger  19/Jul/04  Coherent update fix. Had to add a new flag *
 *                                parameter so coherent update can test the *
 *                                value in flag0.                           *
 * 1.1   J. Loeliger  25/Oct/04    Initial version checked into CVS.        *
 ****************************************************************************/
#include <ETpu_Std.h>

/***********************************/
/* Verify performance requirements */
/***********************************/
#pragma verify_wctl  PWM                 15  steps  6 rams
#pragma exclude_wctl PWM::PWM_init
#pragma exclude_wctl PWM::PWM_Error

#ifdef PWM_FUNCTION_NUMBER    /* function is being compiled as part a set? */
#pragma ETPU_function PWM, alternate @ PWM_FUNCTION_NUMBER;
#else
#pragma ETPU_function PWM, alternate; /* stand alone */
#endif

/* Macros to make the code easier to understand. */
/* These are specific to this PWM function */
/* Host service requests */
#define PWM_INIT            7
#define PWM_IMMED_UPDATE    3
#define PWM_COHERENT_UPDATE 5

/*Function Modes */
#define PWM_USE_TCR1    0
#define PWM_ACTIVE_HIGH 1
#define PWM_ACTIVE_LOW  0

/****************************************************************************
* General Notes:
* 1. This function works with high and low active times so the edges are
*       called FrameEdge which determines the frequency and ActiveEdge
*       which determines the active time of the signal.
*
* Channel Flag usage
* Flag1 is a mirror of FunctionMode0 and defines if the PWM is active high
*    or active low. It is used an entry condition. Flag1=1 for normal high
*    active PWM.
* Flag0 is used to define which edge should occur next. The problem is that
*    for very small high or low pulses both matches can get set and they
*    need to be serviced in a particular order.
*    0 = Match2 next and 1 = Match1 next.
****************************************************************************/

/*--------------------------------------------------------------------------+
| FUNCTION PARAMETERS:                                                      |
| Flag: Is a mirror of Flag0 so that it can be testing in a thread.         |
| Period: Determines the period of the output signal. It is the number of   |
|     selected TCR tick. The maximum valid value is 0x80 0000 and the       |
|     minimum useful value will depend on eTPU loading.                     |
| ActiveTime: Determines the active time of the output signal. It is the    |
|     number of TCR ticks. The maximum valid value is equal to the Period   |
|     and the minimum value is 0.                                           |
| Coherent_Period: Period value used for coherent update of period and      |
|     active time.                                                          |
| Coherent_ActiveTime: Period value used for coherent update of period and  |
|     active time.                                                          |
+--------------------------------------------------------------------------*/
void PWM(int8 Flag, int24 Period, int24 ActiveTime, int24 Coherent_Period,
        int24 Coherent_ActiveTime )
{
  static int24 LastFrame;
  static int24 NextEdge;

/*--------------------------------------------------------------------------+
| THREAD NAME: Initialize (S0)                                              |
| DESCRIPTION: Initialize a channel to run the PWM function.                |
|              1. Disable matches in thread in case there are any previous  |
|                  pending matches. This could happen if the channel was    |
|                  running another function before this one.                |
|              2. Configure channel for active high or low signal.          |
|              3. Configure channel to use TCR1 or TCR2.                    |
|              4. Configure first match and channel mode.                   |
|              5. Clear latches.                                            |
|              6. Set flag0 to do match1 next. This will happen immediately |
|                  because it has been scheduled for the current TCR count. |
+--------------------------------------------------------------------------*/
  if ( HostServiceRequest == PWM_INIT )
  {
PWM_init:
    DisableMatchesInThread();
    OnTransA( NoDetect );
    OnTransB( NoDetect );
    Clear ( TransLatch );
    Clear ( LSRLatch );
    EitherMatchNonBlockingSingleTransition();
    Set (flag0);      /*after init frame edge should be serviced 1st*/
    Flag = Flag | 1;

    ActionUnitA( MatchTCR2, CaptureTCR2, GreaterEqual);
    ActionUnitB( MatchTCR2, CaptureTCR2, GreaterEqual);
    erta = tcr2 + 1;
    if ( FunctionMode1 == PWM_USE_TCR1 )
    {
        ActionUnitA( MatchTCR1, CaptureTCR1, GreaterEqual);
        ActionUnitB( MatchTCR1, CaptureTCR1, GreaterEqual);
        erta = tcr1 + 1;
    }
    ertb = erta + ActiveTime;
    NextEdge = ertb;
    ConfigMatch_AB();
    if ( FunctionMode0 == PWM_ACTIVE_HIGH )
    {
      SetPinLow(); /*Active high so set pin low to start.*/
        EnableOutputBuffer();
      OnMatchB( PinLow );
      Set( flag1 );
      goto PWM_Frame;
    }
    else
    {
      SetPinHigh(); /*Active low so set pin low to start.*/
          EnableOutputBuffer();
      Clear( flag1 );
      OnMatchB( PinHigh );
      goto PWM_Frame2;
    }
  }
/*--------------------------------------------------------------------------+
| THREAD NAME: Immediate Update (S1)                                        |
| DESCRIPTION: This is used to change the active time of a channel during   |
|                 the current period. The NextEdge time is calculated and   |
|                 then scheduled.                                           |
|              1. Check if ActiveEdge match has occured, if so just end.    |
|              2. Reschedule the ActiveEdge.                                |
+--------------------------------------------------------------------------*/
  else if ( HostServiceRequest == PWM_IMMED_UPDATE  && flag0==0)
  {
PWM_immediate_update:
    NextEdge = LastFrame + ActiveTime;
    ertb = NextEdge - Period;
    WriteErtBToMatchBAndEnable();
  }
/*--------------------------------------------------------------------------+
| THREAD NAME: Immediate Update Missed (S2)                                 |
| DESCRIPTION: The immediate update can not be done because the active edge |
|                 has already occured so just reschedule edge in next frame.|
+--------------------------------------------------------------------------*/
  else if ( HostServiceRequest == PWM_IMMED_UPDATE  && flag0==1)
  {
PWM_immediate_update_missed:
    NextEdge = LastFrame + ActiveTime;
    ertb = NextEdge;
    WriteErtBToMatchBAndEnable();
  }
/*--------------------------------------------------------------------------+
| THREAD NAME: Coherent Update (S3)                                         |
| DESCRIPTION: Copy coherent update values into normal period and Active.   |
|                This will always be coherent on the eTPU side because      |
|                threads run to completion so this can not be interrupted.  |
|                This will be coherent on the CPU side as long as the CPU   |
|                writes the values, issues the host service request and then|
|                wait until the service is finished.                        |
+--------------------------------------------------------------------------*/
  else if (HostServiceRequest == PWM_COHERENT_UPDATE )
  {
PWM_coherent_update:
    NextEdge = LastFrame + Coherent_ActiveTime;
    if ((Flag & 0x1) == 1){
      ertb = NextEdge;
      WriteErtBToMatchBAndEnable();
    }
    Period = Coherent_Period;
    ActiveTime = Coherent_ActiveTime;
  }
/*--------------------------------------------------------------------------+
| THREAD NAME: Frame Edge Active high (S4)                                  |
| DESCRIPTION: All calculations are done on the frame edge to make sure     |
|                everything is coherent.                                    |
|              1. If 0% is requested stop the action on the match.          |
|              2. Calculate next period and active edge.                    |
|              3. Schedule the period edge.                                 |
|              4. Store the active edge.                                    |
|              5. Clear flag 0 to show next match should be match2.         |
|              6. Request interrupt & DMA.                                  |
+--------------------------------------------------------------------------*/
  else if (( m1==1 && m2==0 && flag0==1 && flag1==1) ||
           ( m1==1 && m2==1 && flag0==1 && flag1==1) )
  {
PWM_frame_edge_active_high:
    Clear( flag0);      /*Match2 is next.*/
    Flag = Flag & 0xFE;
    SetChannelInterrupt();
        SetDataTransferInterrupt();
    erta = erta + Period;

PWM_Frame:
    if( ActiveTime ==0 ){
      OnMatchA (PinLow);  /*opposite of normal for 0%*/
    }
    else{
      OnMatchA (PinHigh); /*normal*/
    }
PWM_Frame1:
    LastFrame = erta;
    WriteErtAToMatchAAndEnable();
    Clear( MatchALatch );
    NextEdge = erta + ActiveTime;

  }
/*--------------------------------------------------------------------------+
| THREAD NAME: Frame Edge Active Low (S5)                                   |
| DESCRIPTION: Do the 0% test and stop the action, then goto the full edge  |
|                thread.                                                    |
+--------------------------------------------------------------------------*/
  else if (( m1==1 && m2==0 && flag0==1 && flag1==0) ||
           ( m1==1 && m2==1 && flag0==1 && flag1==0) )
  {
PWM_frame_edge_active_low:
    Clear( flag0);      /*Match2 is next.*/
    Flag = Flag & 0xFE;
    SetChannelInterrupt();
        SetDataTransferInterrupt();
    erta = erta + Period;

PWM_Frame2:
    if( ActiveTime ==0 ){
      OnMatchA (PinHigh); /*opposite of normal for 0%*/
    }
    else{
      OnMatchA (PinLow);  /*normal*/
    }
    goto PWM_Frame1;
  }
/*--------------------------------------------------------------------------+
| THREAD NAME: Active Edge (S6)                                             |
| DESCRIPTION: 1. Schedule the next already calculated active edge.         |
|              2. Set flag 0 to show that match 1 should be next.           |
+--------------------------------------------------------------------------*/
  else if ((m1==0 && m2==1 && flag0==0) ||
           (m1==1 && m2==1 && flag0==0))
  {
PWM_active_edge:
    ertb = NextEdge;
    Set( flag0 );
    Flag = Flag | 1;
    WriteErtBToMatchBAndEnable();
    Clear( MatchBLatch );
  }
/*--------------------------------------------------------------------------+
| THREAD NAME: Error (S7)                                                   |
| DESCRIPTION: Something has gone wrong. :-(                                |
|                Call the Global error routine and end.                     |
+--------------------------------------------------------------------------*/
  else
  {
PWM_Error:
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

