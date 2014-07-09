/*******************************************************************************
*
*  FREESCALE SEMICONDUCTOR INC. 2006
*  ALL RIGHTS RESERVED
*  COPYRIGHT (c)
*  
********************************************************************************
*
*  DESCRIPTION:
*   The ToothGen eTPU function generates crank and cam signals to simulate
*   input signals to the automotive engine system.
*
********************************************************************************
*
*  REVISION HISTORY:
*                                                         
* Revision 1.3  2009/06/30 15:03:43  r54529
* added EnableOutputBuffer() needed for ColdFires
*
* 
*  REVISION    AUTHOR       DATE         DESCRIPTION OF CHANGE                  
*  --------    -----------  ---------    ------------------------------------                  
*  0.0         MAP          11/05/02     Original release
*  0.1         MAP          01/03/03     Complete Rewrite
*  0.2         Ming Li      11/17/03     Updated to use new eTPU header files
*  1.0         M. Brejl     26/Jun/06    Updated to eTPU coding standards.
*                                        New features: missing tooth, noise, ...
*  1.1         M. Brejl     13/May/08    2nd missing tooth added, tooth in gap                                       
*  1.2         M. Brejl     30/Jun/09    added EnableOutputBuffer for ColdFires
*******************************************************************************/
#ifdef __ETEC__  // ASH WARE
#include <ETpu_Std.h>
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
#pragma verify_wctl  TOOTHGEN                59  steps 24 rams
#pragma exclude_wctl TOOTHGEN::TOOTH_GEN_Init 
#endif

#ifdef TOOTHGEN_FUNCTION_NUMBER /* function is being compiled as part of a set?*/
#pragma ETPU_function TOOTHGEN, alternate @ TOOTHGEN_FUNCTION_NUMBER;
#else
#pragma ETPU_function TOOTHGEN, alternate;
#endif

/*******************************************************************************
*  Includes.
*******************************************************************************/

/*******************************************************************************
    Definitions. 
*******************************************************************************/

/* HSR values.                  */
#define TOOTHGEN_HSR_INIT                7

/* FM option                    */
#define TOOTHGEN_FM0_CRANK_CHAN          0
#define TOOTHGEN_FM0_CAM_CHAN            1

/* Errors - errorSwitch bits */
#define TOOTHGEN_ERROR_MISSING_HIGHTIME  1
#define TOOTHGEN_ERROR_MISSING_LOWTIME   2
#define TOOTHGEN_ERROR_CRANKNOISE        4
#define TOOTHGEN_ERROR_MISSING_CAM       8
#define TOOTHGEN_ERROR_CAMNOISE         16
#define TOOTHGEN_ERROR_TOOTH_IN_GAP     32

/*******************************************************************************
* Channel Flag usage:
* Flag0 is used to define which tooth edge should occur next. Flag0 is set 
* during high-time.
* Flag1 is set during crank noise pulse.
*******************************************************************************/


/*******************************************************************************
* NAME: TOOTHGEN
*
* DESCRIPTION: Tooth Generator - generates engine system input signals - crank 
*              and cam.
* 
* FUNCTION PARAMETERS:
*  teethPerRev        - Number of teeth in a 360 deg cycle, counting the missing
*                       teeth.
*  teethMissing       - Number of missing teeth in the gap.
*  toothDutyCycle     - Fraction of toothPeriod when the tooth is high.
*  toothPeriod        - TCR1 count between tooth rising edges.
*  toothPeriodNew     - Target tooth period for an acceleration or deceleration.
*  accelRate          - The FRACTION of the difference between the toothPeriod
*                       and the toothPeriodNew that is added to the toothPeriod
*                       at each tooth. 
*                       This implements a rough exponential change of speed.
*  camStart           - The tooth count at which the cam signal goes high.
*  camStop            - The tooth count at which the cam signal goes low.
*  camChannel         - The channel producing the cam signal.
*  toothNumber        - Initial or current tooth number.
*  errorSwitch        - On/Off switch of 5 error types. Enable to separately 
*                       switch on or off each type of crank or cam error.
*  missingTooth       - Number of tooth where the missing high-time or missing 
*                       low-time error appears.
*  missingTooth2      - Number of second tooth where the missing high-time or 
*                       missing low-time error appears.
*  noiseTooth         - Number of tooth where the crank noise appears.
*  noisePulseShift    - TCR1 count between noiseTooth edge and noise pulse edge.
*                       Applies to crank noise.
*  noisePulseWidth    - Crank noise pulse width as TCR1 count.
*  camNoiseTooth      - Number of tooth where the cam noise appears.
*  camNoisePulseShift - TCR1 count between camNoiseTooth edge and noise pulse
*                       edge. Applies to cam noise.
*  camNoisePulseWidth - Cam noise pulse width as TCR1 count.
*******************************************************************************/
void TOOTHGEN( unsigned int24        teethPerRev,
               unsigned int8         teethMissing,
               unsigned fract24      toothDutyCycle,
               unsigned int24        toothPeriod,
               unsigned int24        toothPeriodNew,
               unsigned fract24      accelRate,
               unsigned int24        camStart,
               unsigned int24        camStop,
               unsigned int8         camChannel,
               unsigned int24        toothNumber,
               unsigned int8         errorSwitch,
               unsigned int24        missingTooth,
               unsigned int24        missingTooth2,
               unsigned int24        noiseTooth,
               unsigned int24        noisePulseShift,
               unsigned int24        noisePulseWidth,
               unsigned int24        camNoiseTooth,
               unsigned int24        camNoisePulseShift,
               unsigned int24        camNoisePulseWidth
             )
{
   static unsigned int24 edgeTime;     /* TCR1 time crank signal rising edge. */
          unsigned int24 temp;

/*******************************************************************************
* THREAD NAME: INIT
* DESCRIPTION: Initialize the channel to run the ToothGen function.
*              Start the signal generation.
*              1. Disable matches in thread in case there are any previous
*                 pending matches. This could happen if the channel was
*                 running another function before this one.
*              2. Clear flag1 - out of a noise pulse.
*              3. Set pin low.
*              4. Clear latches.
*              5. Configure pin actions to no_detect on transition.
*              6. Configure channel to use TCR1 clock, compare greater-equal.
*              7. Select Either Match Non-Blocking Single Transition mode.
*              8. Enable match and transition event handling.
*              9. Set actual TCR1 count to edgeTime.
*             10. Go to CRANK SECOND EDGE in orde to schedule tooth rising edge.
*******************************************************************************/
   if (hsr == TOOTHGEN_HSR_INIT)
   {
TOOTH_GEN_Init:
      DisableMatchesInThread();

      EnableOutputBuffer(); /* Needed for Coldfire products */
      OnTransA(NoDetect);
      OnTransB(NoDetect );
      ActionUnitA(MatchTCR1, CaptureTCR1, GreaterEqual);
      EitherMatchNonBlockingSingleTransition();
      ClearAllLatches();
      Pin(SetLow);
      Clear(flag1);
      EnableEventHandling(); 

      if (fm0 == TOOTHGEN_FM0_CRANK_CHAN)
      {
         edgeTime = tcr1;
         goto TOOTH_GEN_CRANK_SEC_EDGE;
      }
   }
/*******************************************************************************
* THREAD NAME: NOISE FISRT EDGE
* DESCRIPTION: Set Flag1 and schedule second noise edge.               
*              1. Disable matches in thread in case there are any previous
*                 pending matches. This could happen if the channel was
*                 running another function before this one.
*              2. Set flag1 - noise falling edge follows.
*              3. On crank channel (FM0 = TOOTHGEN_FM0_CRANK_CHAN) 
*                   Schedule Match B at ERT_B + noisePulseWidth
*                   PAC_B = toggle
*                 On cam channel  FM0 = TOOTHGEN_FM0_CAM_CHAN)
*                   Schedule Match B at ERT_B + camNoisePulseWidth
*                   PAC_B = toggle
*******************************************************************************/
   else if ((m2==1) && (flag1==0))
	 {
TOOTH_GEN_NoiseFirstEdge:
      DisableMatchesInThread();

      Set(flag1);
      if (fm0 == TOOTHGEN_FM0_CRANK_CHAN)
      {
         SetupMatch_B(GetCapRegB() + noisePulseWidth, Mtcr1_Ctcr1_ge, 
                      PinToggle);
      }
      else
      {
         SetupMatch_B(GetCapRegB() + camNoisePulseWidth, Mtcr1_Ctcr1_ge, 
                      PinToggle);
      }
	 }
/*******************************************************************************
* THREAD NAME: NOISE SECOND EDGE
* DESCRIPTION: Clear Flag1 and clear match.               
*              1. Disable matches in thread in case there are any previous
*                 pending matches. This could happen if the channel was
*                 running another function before this one.
*              2. Clear flag1 - noise raising edge follows.
*              3. Clear match B. 
*******************************************************************************/
   else if ((m2==1) && (flag1==1))
	 {
TOOTH_GEN_NoiseSecondEdge:
      DisableMatchesInThread();

      Clear(flag1);
      ClearMatchBLatch();
	 }
/*******************************************************************************
* THREAD NAME: CRANK FISRT EDGE
* DESCRIPTION: Increment toothNumber, schedule tooth falling edge, and noise
*              pulse if any.               
*              1. Disable matches in thread in case there are any previous
*                 pending matches. This could happen if the channel was
*                 running another function before this one.
*              2. Set flag0 - tooth falling edge follows.
*              3. Store ERT_A to edgeTime
*              4. Schedule Match A at ERT_A + toothDutyCycle * toothPeriod,
*                 PAC_A = high-low
*              6. If (errorSwitch & missing low-time) && 
*                    ((toothNumber+1 == missingTooth) 
*                     || (toothNumber+1 == missingTooth))
*                   PAC_A = no_change
*              7. If (errorSwitch & crank noise) && (toothNumber == noiseTooth)
*                   Schedule Match B at edgeTime + noisePulseShift,
*                   PAC_B = toggle
*              8. If (errorSwitch & cam noise) && (toothNumber == camNoiseTooth)
*                   Switch to camChannel
*                   Schedule Match B at edgeTime + camNoisePulseShift,
*                   PAC_B = toggle
*              7. If (~(errorSwitch & missing cam) && (toothNumber == camStart))
*                   Switch to camChannel
*                   Set pin high
*                 Else If (toothNumber == camStop)
*                   Switch to camChannel
*                   Set pin low
*******************************************************************************/
   else if ((m1==1) && (flag0==0))
	 {
TOOTH_GEN_CrankFirstEdge:
      DisableMatchesInThread();

      edgeTime = GetCapRegA();
#ifdef __ETEC__
      // for ASH WARE, per the TR18037 specification, in order to get the integer
      // portion of an int*fract multiply, the library function mulir/muliur must
      // be used
      SetupMatch_A(GetCapRegA() + muliur(toothPeriod, toothDutyCycle), 
                   Mtcr1_Ctcr1_ge, PinLow);
#else
      SetupMatch_A(GetCapRegA() + toothDutyCycle*toothPeriod, 
                   Mtcr1_Ctcr1_ge, PinLow);
#endif
      Set(flag0);

      temp = toothNumber;
      if (temp > teethPerRev)
      {
         temp -= teethPerRev;
      }

      if ((errorSwitch & TOOTHGEN_ERROR_MISSING_LOWTIME)
          && ((temp == missingTooth) || (temp == missingTooth2)))
      {
         OnMatchA(NoChange);
      }
      if ((errorSwitch & TOOTHGEN_ERROR_CRANKNOISE)
          && (temp == noiseTooth))
      {
         SetupMatch_B(edgeTime + noisePulseShift, Mtcr1_Ctcr1_ge, PinToggle);
      }
      if ((errorSwitch & TOOTHGEN_ERROR_CAMNOISE)
          && (toothNumber == camNoiseTooth))
      {
         SwitchToChannel(camChannel);
         SetupMatch_B(edgeTime + camNoisePulseShift, Mtcr1_Ctcr1_ge, PinToggle);
      }

      if (((errorSwitch & TOOTHGEN_ERROR_MISSING_CAM) == 0)
          && (toothNumber == camStart))
      {
         SwitchToChannel(camChannel);
         Pin(SetHigh);
      }
      else if (toothNumber == camStop)
      {
         SwitchToChannel(camChannel);
         Pin(SetLow);
      }
	 }
/*******************************************************************************
* THREAD NAME: CRANK SECOND EDGE
* DESCRIPTION: Schedule tooth rising edge if not in gap, calculate toothPeriod,
*              generate cam pulse.               
*              1. Disable matches in thread in case there are any previous
*                 pending matches. This could happen if the channel was
*                 running another function before this one.
*              2. Clear flag0 - tooth rising edge follows.
*              3. Schedule Match A at edgeTime + toothPeriod,  PAC_A = low-high
*              5. Increment toothNumber
*                 If (toothNumber > 2*teethPerRev)
*                   toothNumber = 1
*              4. If "in gap"
*                   PAC_A = no_change
*              5. If (errorSwitch & missing high-time) && 
*                    ((toothNumber+1 == missingTooth) 
*                     || (toothNumber+1 == missingTooth))
*                   PAC_A = no_change
*              6. Calculate acceleration/deceleration towards newToothPeriod.
*******************************************************************************/
   else if ((m1==1) && (flag0==1))
   {
TOOTH_GEN_CrankSecondEdge:
      DisableMatchesInThread();
TOOTH_GEN_CRANK_SEC_EDGE:
      SetupMatch_A(edgeTime + toothPeriod, Mtcr1_Ctcr1_ge, PinHigh);
      Clear(flag0);

      toothNumber++;
      if (2*teethPerRev < toothNumber)
      {
         toothNumber = 1;
      }

      temp = toothNumber;
      if (temp > teethPerRev)
      {
         temp -= teethPerRev;
      } 
      if (errorSwitch & TOOTHGEN_ERROR_TOOTH_IN_GAP)
      {
         if ((temp + teethMissing - 1) > teethPerRev)
         {
            OnMatchA(NoChange);
         } 
      }
      else
      {
         if ((temp + teethMissing) > teethPerRev)
         {
            OnMatchA(NoChange);
         } 
      }
      if ((errorSwitch & TOOTHGEN_ERROR_MISSING_HIGHTIME) 
          && ((temp == missingTooth) || (temp == missingTooth2)))
      {
         OnMatchA(NoChange);
      }

      if (toothPeriod > toothPeriodNew)
      {
#ifdef __ETEC__
         // for ASH WARE, per the TR18037 specification, in order to get the integer
         // portion of an int*fract multiply, the library function mulir/muliur must
         // be used
         toothPeriod -= muliur((toothPeriod - toothPeriodNew), accelRate) + 1;
#else
         toothPeriod -= accelRate*(toothPeriod - toothPeriodNew) + 1;
#endif
      }
      else if (toothPeriodNew > toothPeriod)
      {
#ifdef __ETEC__
         // for ASH WARE, per the TR18037 specification, in order to get the integer
         // portion of an int*fract multiply, the library function mulir/muliur must
         // be used
         toothPeriod += muliur((toothPeriodNew - toothPeriod), accelRate) + 1;
#else
         toothPeriod += accelRate*(toothPeriodNew - toothPeriod) + 1;
#endif
      }

	 }
/*******************************************************************************
* THREAD NAME: UNHANDLED_EVENTS
*******************************************************************************/
   else 
   {
TOOTH_GEN_Error:
#ifdef GLOBAL_ERROR_FUNC
		Global_Error_Func();
#else
		ClearAllLatches();
#endif
   }
}


/*******************************************************************************
*  Information exported to Host CPU program.
*******************************************************************************/
#pragma write h, (::ETPUfilename (cpu/etpu_toothgen_auto.h));
#pragma write h, (/* WARNING this file is automatically generated DO NOT EDIT IT! */);
#pragma write h, (/*                                                              */);
#pragma write h, (/* This file provides an interface between eTPU code and CPU    */);
#pragma write h, (/* code. All references to the ToothGen function should be made */);
#pragma write h, (/* with information in this file. This allows only symbolic     */);
#pragma write h, (/* information to be referenced which allows the eTPU code to be*/);
#pragma write h, (/* optimized without effecting the CPU code.                    */);
#pragma write h, (/****************************************************************/);
#pragma write h, (#ifndef _ETPU_TOOTHGEN_AUTO_H_ );
#pragma write h, (#define _ETPU_TOOTHGEN_AUTO_H_ );
#pragma write h, ( );
#pragma write h, (/****************************************************************);
#pragma write h, (* Function Configuration Information. );
#pragma write h, (****************************************************************/);
#pragma write h, (::ETPUliteral(#define FS_ETPU_TOOTHGEN_FUNCTION_NUMBER  ) ::ETPUfunctionnumber(TOOTHGEN) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_TOOTHGEN_TABLE_SELECT     )  ::ETPUentrytype(TOOTHGEN) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_TOOTHGEN_NUM_PARMS        )  ::ETPUram(TOOTHGEN) );
#pragma write h, ( );
#pragma write h, (/****************************************************************);
#pragma write h, (* Host Service Request Definitions. );
#pragma write h, (****************************************************************/);
#pragma write h, (::ETPUliteral(#define FS_ETPU_TOOTHGEN_HSR_INIT         )  TOOTHGEN_HSR_INIT );
#pragma write h, ( );
#pragma write h, (/****************************************************************);
#pragma write h, (* TOOTHGEN eTPU Function Parameter Definitions. );
#pragma write h, (****************************************************************/);
#pragma write h, (::ETPUliteral(#define FS_ETPU_TOOTHGEN_TEETHPERREV_OFFSET       ) ::ETPUlocation (TOOTHGEN, teethPerRev) );  
#pragma write h, (::ETPUliteral(#define FS_ETPU_TOOTHGEN_TEETHMISSING_OFFSET      ) ::ETPUlocation (TOOTHGEN, teethMissing) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_TOOTHGEN_TOOTHDUTYCYCLE_OFFSET    ) ::ETPUlocation (TOOTHGEN, toothDutyCycle) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_TOOTHGEN_TOOTHPERIOD_OFFSET       ) ::ETPUlocation (TOOTHGEN, toothPeriod) );      
#pragma write h, (::ETPUliteral(#define FS_ETPU_TOOTHGEN_TOOTHPERIODNEW_OFFSET    ) ::ETPUlocation (TOOTHGEN, toothPeriodNew) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_TOOTHGEN_ACCELRATE_OFFSET         ) ::ETPUlocation (TOOTHGEN, accelRate) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_TOOTHGEN_CAMSTART_OFFSET          ) ::ETPUlocation (TOOTHGEN, camStart) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_TOOTHGEN_CAMSTOP_OFFSET           ) ::ETPUlocation (TOOTHGEN, camStop) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_TOOTHGEN_CAMCHANNEL_OFFSET        ) ::ETPUlocation (TOOTHGEN, camChannel) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_TOOTHGEN_TOOTHNUMBER_OFFSET       ) ::ETPUlocation (TOOTHGEN, toothNumber) );   
#pragma write h, (::ETPUliteral(#define FS_ETPU_TOOTHGEN_ERRORSWITCH_OFFSET       ) ::ETPUlocation (TOOTHGEN, errorSwitch) ); 
#pragma write h, (::ETPUliteral(#define FS_ETPU_TOOTHGEN_MISSINGTOOTH_OFFSET      ) ::ETPUlocation (TOOTHGEN, missingTooth) );    
#pragma write h, (::ETPUliteral(#define FS_ETPU_TOOTHGEN_MISSINGTOOTH2_OFFSET     ) ::ETPUlocation (TOOTHGEN, missingTooth2) );    
#pragma write h, (::ETPUliteral(#define FS_ETPU_TOOTHGEN_NOISETOOTH_OFFSET        ) ::ETPUlocation (TOOTHGEN, noiseTooth) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_TOOTHGEN_NOISEPULSESHIFT_OFFSET   ) ::ETPUlocation (TOOTHGEN, noisePulseShift) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_TOOTHGEN_NOISEPULSEWIDTH_OFFSET   ) ::ETPUlocation (TOOTHGEN, noisePulseWidth) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_TOOTHGEN_CAMNOISETOOTH_OFFSET     ) ::ETPUlocation (TOOTHGEN, camNoiseTooth) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_TOOTHGEN_CAMNOISEPULSESHIFT_OFFSET) ::ETPUlocation (TOOTHGEN, camNoisePulseShift) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_TOOTHGEN_CAMNOISEPULSEWIDTH_OFFSET) ::ETPUlocation (TOOTHGEN, camNoisePulseWidth) );
#pragma write h, ( );
#pragma write h, (/****************************************************************);
#pragma write h, (* Value Definitions. );
#pragma write h, (****************************************************************/);
#pragma write h, (::ETPUliteral(#define FS_ETPU_TOOTHGEN_FM0_CRANK_CHAN   ) TOOTHGEN_FM0_CRANK_CHAN );
#pragma write h, (::ETPUliteral(#define FS_ETPU_TOOTHGEN_FM0_CAM_CHAN     ) TOOTHGEN_FM0_CAM_CHAN );
#pragma write h, ( );
#pragma write h, (::ETPUliteral(#define FS_ETPU_TOOTHGEN_ERROR_MISSING_HIGHTIME ) TOOTHGEN_ERROR_MISSING_HIGHTIME );
#pragma write h, (::ETPUliteral(#define FS_ETPU_TOOTHGEN_ERROR_MISSING_LOWTIME  ) TOOTHGEN_ERROR_MISSING_LOWTIME  );
#pragma write h, (::ETPUliteral(#define FS_ETPU_TOOTHGEN_ERROR_CRANKNOISE       ) TOOTHGEN_ERROR_CRANKNOISE       );
#pragma write h, (::ETPUliteral(#define FS_ETPU_TOOTHGEN_ERROR_MISSING_CAM      ) TOOTHGEN_ERROR_MISSING_CAM      );
#pragma write h, (::ETPUliteral(#define FS_ETPU_TOOTHGEN_ERROR_CAMNOISE         ) TOOTHGEN_ERROR_CAMNOISE         );
#pragma write h, (::ETPUliteral(#define FS_ETPU_TOOTHGEN_ERROR_TOOTH_IN_GAP     ) TOOTHGEN_ERROR_TOOTH_IN_GAP     );
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
