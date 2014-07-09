/****************************************************************************
 * FILE NAME: etpu_cam.c                     COPYRIGHT (c) FREESCALE 2008   *
 * DESCRIPTION:                                     All Rights Reserved     *
 * This function keeps track of a single lobe of a CAM wheel. It signal CAM *
 * via an LSR when it's status changes.                                     *
 *==========================================================================*
 * ORIGINAL AUTHOR: Geoff Emerson                                           *

 ****************************************************************************/
#ifdef __ETEC__  // ASH WARE
#include <ETpu_Std.h>
#else  // Byte Craft
#ifndef __ETPUC_H
#include <etpuc.h>          /*Defines eTPU hardware*/
#endif
#include <etpuc_util.h>

#ifndef __ETPUC_COMMON_H
#include <eTPUc_common.h>   /*Standard way to use eTPU*/
#endif
#endif

#ifndef __ETPUC_CAM_H
#include <etpuc_cam.h>
#endif

#ifndef __ETPUC_CRANK_H
#include <etpuc_crank.h>
#endif

/***********************************/
/* Verify performance requirements */
/***********************************/
#ifdef __ETEC__  // ASH WARE
#pragma verify_wctl  Cam                28 steps 20 rams
#pragma exclude_wctl Cam::CAM_Init  
#endif

#ifdef CAM_FUNCTION_NUMBER    /* function is being compiled as part a set? */
#pragma ETPU_function Cam, standard @ CAM_FUNCTION_NUMBER;
#else
#pragma ETPU_function Cam, standard; /* stand alone */
#endif

/* General Notes: */
/*--------------------------------------------------------------------------+
| CHANNEL PARAMETERS: (host modifiable)                                     |
|                                                                           |
| State - The state of the CAM function possible values are :-              |
|                                              CAM_SYNC_SEEK_OR_START_ANGLE |
|                                              CAM_SYNC_ANGLE               |
|                                              CAM_SYNC_LOST                | 
| Edge_Angle - The TCR2 value at the last CAM edge which was in the         |
|              acceptance window.  Relative to Engine_Cycle_0_Count.        |
| Error_Status - The error status of the CAM function. Possible values are:-|
|               NO_ERROR  - indicates no error.                             |
|               INVALID_M1 - indicates an invalid MatchA_TransB.            |
|               INVALID_M2 - indicates an invalid MatchB_TransA.            |
| Edge_Time -  The TCR1 value at the last CAM edge.                         |
| Crank_Channel - the channel number of the CRANK function.                 |
| Angle_Window_Start_New - TCR2 count from Engine 'Frame' to acceptance     |
|                          window open. This is a buffer of                 |
|                          Angle_Window_Start.                              |
| State_Old - Buffer of State so changes in value can be detected.          |
| Angle_Window_Start_Host - Host modifiable TCR2 count from Engine 'Frame'  |
|                           to acceptance window open. This is copied on HSR|                
|                           to Angle_Window_Start_New.                      |
| Angle_Window_Start - TCR2 count from Engine 'Frame' to acceptance window  |
|                      open.                                                |
| Angle_Window_Width_New - TCR2 count from acceptance window opened to      |
|                          acceptancewindow closed. This is a buffer of     |
|                          Angle_Window_Width.                              |
| Angle_Window_Width_Host - Host modifiable TCR2 count from window opened to|
|                         acceptance window closed. This is copied on       |
|                         HSR to Angle_Window_Width_New.                    |
| Angle_Window_Width - TCR2 count from acceptance window open to acceptance |
|                      window closed.                                       |
| TCR2_counts_Per_Engine_Cycle -  Number of TCR2 counts in an engine cycle  |
| Engine_Cycle_0_Count - A "frame" reference value maintained by CAM.       |
|                        Updated once per engine cycle.                     |
| Angle_Start_Count - Value written to Engine_Cycle_0_Count at init and     |
|                     restart.                                              |
+--------------------------------------------------------------------------*/
void Cam(unsigned int8  State,
         unsigned int24 Edge_Angle,          
         unsigned int8  Error_Status,         
         unsigned int24 Edge_Time,          
         unsigned int8  Crank_Channel,
         unsigned int24 Angle_Window_Start_New,
         unsigned int8  State_Old,         
         unsigned int24 Angle_Window_Start_Host,
         unsigned int24 Angle_Window_Start,
         unsigned int24 Angle_Window_Width_New, 
         unsigned int24 Angle_Window_Width_Host, 
         unsigned int24 Angle_Window_Width, 
         unsigned int24 TCR2_counts_Per_Engine_Cycle,
         unsigned int24 Engine_Cycle_0_Count,
         unsigned int24 Angle_Start_Count
         )
{
/*--------------------------------------------------------------------------+
| THREAD NAME: INIT                                                         |
| State: S0                                                                 |
| DESCRIPTION: Initialise a channel to run the CAM function.                |
+--------------------------------------------------------------------------*/
    if ( HostServiceRequest == CAM_INIT )
    {
CAM_Init:
		DisableMatchesInThread();

      DisableMatchDetection(); /* prevent both matches from happening 
                                  until they are re-programmed */
      	      
      DisableOutputBuffer(); /* needed for Coldfire products */
      Match2OrderedSingleBlockingTransition(); /* channel mode is m2_o_st */


      OnTransA(high_low);
      if ( IsLatchedFuncMode0() ) /*Detect Rising Edge */
      {
        OnTransA(low_high);
      }      
      OnTransB(NoDetect);
      
      ActionUnitB( MatchTCR2, CaptureTCR2, GreaterEqual);
CAM_Restart:
      ActionUnitA( MatchTCR1, CaptureTCR1, GreaterEqual);
      
      Clear(flag0); /* CAM_FLAG_OTHER */
      State = CAM_SYNC_SEEK_OR_START_ANGLE;
      State_Old = CAM_SYNC_SEEK_OR_START_ANGLE;

      Engine_Cycle_0_Count = Angle_Start_Count;
      
      Clear(TransLatch);
      Clear(LSRLatch);

      erta = tcr1+1;          /* schedule an immediate match to open the window 
                                 the +1 means that the window won't open until the
                                 timebase has been started */
      ClearMatchAEvent();
      ClearMatchBEvent(); /* clear MatchB & don't set new match value 
                           so it always enabled window is fully open*/
      WriteErtAToMatchAAndEnable();
      EnableEventHandling();
	    }

/*--------------------------------------------------------------------------+
| THREAD NAME: CAM_UPDATE_WINDOW                                            |
| State: S4                                                                 |
| DESCRIPTION: Update window parameters.                                    |
+--------------------------------------------------------------------------*/
    else if ( HostServiceRequest == CAM_UPDATE_WINDOW )
    {
CAM_UpdateWindow:
    	NOP(); /* guaruntees the next instructions will be coherent */
      DisableMatchesInThread();
      _coherentwrite(Angle_Window_Start_New, Angle_Window_Start_Host,
                     Angle_Window_Width_New, Angle_Window_Width_Host);
    }

/*--------------------------------------------------------------------------+
| THREAD NAME: CAM_SEEK and CAM_START_ANGLE                                 |
| States: S1 and S8                                                         |
| DESCRIPTION: Record the transition time and/or open the window depeding   |
| upon  wether CRANK has found the gap.                                     |
+--------------------------------------------------------------------------*/
    else if ( m1==1  && m2==1 && lsr==0 && CAM_FLAG_OTHER )
    {
CAM_SeekAndStartAngle:
      DisableMatchesInThread();
      Clear(TransLatch); /* Clear transitions */
      if (Eng_Pos_Sync_Status_g == ENG_POS_SEEK)
      {
       /*-----------------------------------------------------------------+
       | State: S1 : CAM_SEEK                                             |
       | Description: Eng_Pos_Sync_Status_g == ENG_POS_SEEK.                    |
       | Wait until Eng_Pos_Sync_Status_g != ENG_POS_SEEK.                     |
       +-----------------------------------------------------------------*/       	
        Edge_Time = erta ; /* Record edge time in CAM_edge_time */
      }
      else /* Eng_Pos_Sync_Status_g != ENG_POS_SEEK */
     
       /*-----------------------------------------------------------------+
       | State: S8 : CAM_START_ANGLE                                      |
       | Description: First CAM edge was found. Signal CRANK via LSR.     |
       | Change to scheduling matches in Angle. Open window wide. TCR2 is |
       | not yet useable.                                                 |
       +-----------------------------------------------------------------*/
      {
      	/* Timeout can't happen here */
      	Set(flag0); /* CAM_FLAG_ANGLE */
        State_Old = State;
        State = CAM_SYNC_ANGLE;
        LinkToChannel(Crank_Channel); 
        /* signal Crank that Cam's state has changed */
        ActionUnitA( MatchTCR2, CaptureTCR1, GreaterEqual); /* match in angle */

        Edge_Time = erta ; /* Record edge time in CAM_edge_time */

        erta = tcr2;          /* schedule an immediate match to open the window */
        ClearMatchAEvent();
        ClearMatchBEvent(); /* clear MatchB & don't set new match value 
                           so it always enabled window is fully open*/
        WriteErtAToMatchAAndEnable();
      }
    }
/*--------------------------------------------------------------------------+
| THREAD NAME: CAM_SYNC_ANGLE and CAM_SYNC_LOST                             |
| State: S2 and S3                                                          |
| DESCRIPTION: If edge in window set up next window otherwise signal        |
| CAM_Lost.                                                                 |
| Schedule a window in which the next edge must happen.                     |
| Update Engine_Cycle_0_Count.                                              |
+--------------------------------------------------------------------------*/
    else if ( m1==1  && m2==1 && lsr==0 && CAM_FLAG_ANGLE_OR_LOST )
    {
CAM_Sync:
      State_Old = State;
      if (IsLatchedMatchB()) /* timeout? */
      {
       /*-----------------------------------------------------------------+
       | State: S3 : CAM_SYNC_LOST                                        |
       | Description: CAM edge was not found in the acceptance window.    |
       | Schedule a window in which the next edge must happen.            |
       | Signal CRANK via LSR if CAM's state changed.                     |
       +-----------------------------------------------------------------*/      	
        State = CAM_SYNC_LOST;
      }
      else /* edge in acceptance window */
      {
       /*-----------------------------------------------------------------+
       | State: S2 : CAM_SYNC_ANGLE                                       |
       | Description: CAM edge was found in the acceptance window.        |
       | Signal CRANK via LSR if CAM's state changed.                     |
       +-----------------------------------------------------------------*/ 
        Edge_Time = erta;
        State = CAM_SYNC_ANGLE;      
      }      
      if (State_Old != State)
      {
      	LinkToChannel(Crank_Channel) ;
      	/* signal Crank that Cam's state has changed */
      }      
      Edge_Angle = ertb - Engine_Cycle_0_Count ;

      /* copy window parameters in case host has updated them */
      Angle_Window_Start = Angle_Window_Start_New; 
      Angle_Window_Width = Angle_Window_Width_New;        
      
      /* open a window for the next edge */
      erta = Engine_Cycle_0_Count + Angle_Window_Start + TCR2_counts_Per_Engine_Cycle;
      ertb = erta + Angle_Window_Width ;
      ClearMatchALatch();  /* set up window for next tooth */   
      ClearMatchBLatch();
      WriteErtAToMatchAAndEnable();
      WriteErtBToMatchBAndEnable();
      Clear(TransLatch); /* Clear transitions */
      
      Engine_Cycle_0_Count = Engine_Cycle_0_Count + TCR2_counts_Per_Engine_Cycle;
    }

/*--------------------------------------------------------------------------+
| THREAD NAMES: CAM_LSR                                                     |
| State: S4                                                                 |
| DESCRIPTION: CRANK has signalled that sync has been lost. Restart CAM.    |
---------------------------------------------------------------------------*/

    else if (lsr == 1)
    {
CAM_Link:
     Clear(LSRLatch);
     goto CAM_Restart;
    }

/*--------------------------------------------------------------------------+
| THREAD NAME: CAM_Invalid_m1                                               |
| State: S6                                                                 |
| DESCRIPTION: Clean up, write error code, set GlobalErrorFlag              |
+---------------------------------------------------------------------------*/
    else if (MatchA_TransB && m2 == 0 )
    /* m2 means MatchB_TransA */
    {
CAM_InvalidM1:
      Clear(TransLatch); /* Clear transitions */
      ClearMatchAEvent();
      Error_Status = Error_Status | CAM_INVALID_M1;
      SetGlobalException();
    }
/*--------------------------------------------------------------------------+
| THREAD NAME: CAM_Invalid_m2                                               |
| State: S7                                                                 |
| DESCRIPTION: Clean up, write error code, set GlobalErrorFlag              |
+--------------------------------------------------------------------------*/
    else if (m1 == 0 && MatchB_TransA )
    /* m1 means MatchA_TransB */
    {
CAM_InvalidM2:
      Clear(TransLatch); /* Clear transitions */
      ClearMatchBEvent();    
      Error_Status = Error_Status | CAM_INVALID_M2 ;
      SetGlobalException();
    }       
    else
    {
CAM_Error:
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
#pragma write h, (::ETPUfilename (cpu/etpu_cam_auto.h));
#pragma write h, (/****************************************************************/);
#pragma write h, (/* WARNING this file is automatically generated DO NOT EDIT IT! */);
#pragma write h, (/*                                                              */);
#pragma write h, (/* This file provides an interface between eTPU code and CPU    */);
#pragma write h, (/* code. All references to the CAM function should be made   */);
#pragma write h, (/* with information in this file. This allows only symbolic     */);
#pragma write h, (/* information to be referenced which allows the eTPU code to be*/);
#pragma write h, (/* optimized without effecting the CPU code.                    */);
#pragma write h, (/****************************************************************/);
#pragma write h, (#ifndef _ETPU_CAM_AUTO_H_ );
#pragma write h, (#define _ETPU_CAM_AUTO_H_ );
#pragma write h, ( );
#pragma write h, (/****************************************************************);
#pragma write h, (* Function Configuration Information. );
#pragma write h, (****************************************************************/);
#pragma write h, (::ETPUliteral(#define FS_ETPU_CAM_FUNCTION_NUMBER) ::ETPUfunctionnumber(Cam) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_CAM_TABLE_SELECT)    ::ETPUentrytype(Cam) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_CAM_NUM_PARMS)       ::ETPUram(Cam) );
#pragma write h, ( );
#pragma write h, (/****************************************************************);
#pragma write h, (* Host Service Request Definitions. );
#pragma write h, (****************************************************************/);
#pragma write h, (::ETPUliteral(#define FS_ETPU_CAM_INIT       ) CAM_INIT );
#pragma write h, (::ETPUliteral(#define FS_ETPU_CAM_UPDATE_WINDOW            ) CAM_UPDATE_WINDOW);
#pragma write h, ( );
#pragma write h, (/****************************************************************);
#pragma write h, (* Parameter Definitions. );
#pragma write h, (****************************************************************/);
#pragma write h, (::ETPUliteral(#define FS_ETPU_CAM_STATE_OFFSET                        )  ::ETPUlocation (Cam, State));
#pragma write h, (::ETPUliteral(#define FS_ETPU_CAM_STATE_OLD_OFFSET                    )  ::ETPUlocation (Cam, State_Old));
#pragma write h, (::ETPUliteral(#define FS_ETPU_CAM_CRANK_CHANNEL_OFFSET                )  ::ETPUlocation (Cam, Crank_Channel));
#pragma write h, (::ETPUliteral(#define FS_ETPU_CAM_ANGLE_WINDOW_START_NEW_OFFSET       )  ::ETPUlocation (Cam, Angle_Window_Start_New));
#pragma write h, (::ETPUliteral(#define FS_ETPU_CAM_ANGLE_WINDOW_START_HOST_OFFSET      )  ::ETPUlocation (Cam, Angle_Window_Start_Host));
#pragma write h, (::ETPUliteral(#define FS_ETPU_CAM_ANGLE_WINDOW_START_OFFSET           )  ::ETPUlocation (Cam, Angle_Window_Start));
#pragma write h, (::ETPUliteral(#define FS_ETPU_CAM_ANGLE_WINDOW_WIDTH_NEW_OFFSET       )  ::ETPUlocation (Cam, Angle_Window_Width_New));
#pragma write h, (::ETPUliteral(#define FS_ETPU_CAM_ANGLE_WINDOW_WIDTH_HOST_OFFSET      )  ::ETPUlocation (Cam, Angle_Window_Width_Host));
#pragma write h, (::ETPUliteral(#define FS_ETPU_CAM_ANGLE_WINDOW_WIDTH_OFFSET           )  ::ETPUlocation (Cam, Angle_Window_Width));
#pragma write h, (::ETPUliteral(#define FS_ETPU_CAM_EDGE_TIME_OFFSET                    )  ::ETPUlocation (Cam, Edge_Time));
#pragma write h, (::ETPUliteral(#define FS_ETPU_CAM_EDGE_ANGLE_OFFSET                   )  ::ETPUlocation (Cam, Edge_Angle));
#pragma write h, (::ETPUliteral(#define FS_ETPU_CAM_TCR2_COUNTS_PER_ENGINE_CYCLE_OFFSET )  ::ETPUlocation (Cam, TCR2_counts_Per_Engine_Cycle));
#pragma write h, (::ETPUliteral(#define FS_ETPU_CAM_ERROR_STATUS_OFFSET                 )  ::ETPUlocation (Cam, Error_Status));
#pragma write h, (::ETPUliteral(#define FS_ETPU_CAM_ENGINE_CYCLE_0_COUNT_OFFSET         )  ::ETPUlocation (Cam, Engine_Cycle_0_Count));
#pragma write h, (::ETPUliteral(#define FS_ETPU_CAM_ANGLE_START_COUNT_OFFSET         )  ::ETPUlocation (Cam, Angle_Start_Count));
#pragma write h, ( );
#pragma write h, (/* cam_edge_polarity options */);
#pragma write h, (::ETPUliteral(#define FS_ETPU_CAM_FM0_RISING_EDGE) CAM_FM0_RISING_EDGE );
#pragma write h, (::ETPUliteral(#define FS_ETPU_CAM_FM0_FALLING_EDGE) CAM_FM0_FALLING_EDGE );
#pragma write h, ( );
#pragma write h, (/* CAM Sync States */);
#pragma write h, (::ETPUliteral(#define FS_ETPU_CAM_SYNC_SEEK_OR_START_ANGLE)       CAM_SYNC_SEEK_OR_START_ANGLE);
#pragma write h, (::ETPUliteral(#define FS_ETPU_CAM_SYNC_ANGLE) CAM_SYNC_ANGLE);
#pragma write h, (::ETPUliteral(#define FS_ETPU_CAM_SYNC_LOST)  CAM_SYNC_LOST); 
#pragma write h, (/* Error codes */);
#pragma write h, (::ETPUliteral(#define FS_ETPU_CAM_NO_ERROR)         CAM_NO_ERROR );
#pragma write h, (::ETPUliteral(#define FS_ETPU_CAM_INVALID_M1)       CAM_INVALID_M1 );
#pragma write h, (::ETPUliteral(#define FS_ETPU_CAM_INVALID_M2)       CAM_INVALID_M2 );
#pragma write h, ( );
#pragma write h, (/* cam_priority options ; required for GCT */);
#pragma write h, (::ETPUliteral(#define FS_ETPU_CAM_PRIORITY_DISABLE  FS_ETPU_PRIORITY_DISABLE  /* Disable */) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_CAM_PRIORITY_HIGH     FS_ETPU_PRIORITY_HIGH     /* High*/) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_CAM_PRIORITY_MIDDLE   FS_ETPU_PRIORITY_MIDDLE   /* Middle*/) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_CAM_PRIORITY_LOW      FS_ETPU_PRIORITY_LOW      /* Low*/) );
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
 
/*********************************************************************
 * Revision 1.19  2008/06/20 08:59:27  r47354
 * Correct Edge_Angle in CAM_SYNC_ANGLE state
 *
 * Revision 1.18  2008/05/01 15:29:21  r47354
 * Major overhaul based on output of Global team meeting held in EKB in March 08
 *
 * Revision 1.17  2008/04/03 12:48:55  r47354
 * Fixes for CAM in second half bug.
 *
 * Revision 1.16  2008/02/22 10:13:58  r47354
 * Replace erroneous use of ConfigMatch_AB
 *
 * Revision 1.15  2008/01/11 14:57:44  r47354
 * Revert to matches enabled in thread.
 *
 * Turn off matches using DisableMatchDetection so that neither match can happen until it is pre-programmed.
 *
 * match is scheduled for tcr1+1. This means the window won't open until the timebase starts.
 *
 * Revision 1.14  2008/01/10 14:22:22  r47354
 * EnableMatchesInThread in init thread.
 *
 * Revision 1.13  2007/12/18 16:14:47  r47354
 * In init thread ActionUnitA matches TCR1
 * In CAM_START_ANGLE state ActionUnitA matches TCR2
 *
 * Revision 1.12  2007/11/29 14:03:37  r47354
 * Change CAM --> Cam in #pragma statements
 *
 * Revision 1.11  2007/11/28 09:01:27  r47354
 * Make function name lower case i.e. CAM --> Cam
 *
 * Revision 1.10  2007/11/28 08:44:54  r47354
 * Make Crank_State pointer to int24. Makes for more efficient code.
 * Clear(TransLatch) happens in both s1 and s8. Move this to place common to s1 and s8.
 * Add Clear(TransLatch) to s2.
 * Changes to auto generated file for GCT compliance.
 *
 * Revision 1.9  2007/11/05 16:25:53  r47354
 * Add state numbers to thread descriptions.
 *
 * Revision 1.8  2007/11/05 15:29:16  r47354
 * Make all variables unsigned.
 *
 * Revision 1.7  2007/10/12 09:13:55  r47354
 * Simplify and correct CAM_SYNC_ANGLE and CAM_SYNC_LOST thread.
 * CAM_LSR_ANGLE / CAM_LSR_OTHER becomes CAM_LSR.
 *
 * Revision 1.6  2007/10/11 12:56:22  r47354
 * Remove references to CAM_SYNC_EDGE - no longer used.
 * Remove Matches in time- no longer needed.
 * Links serviced before matches in CAM_SEEK, CAM_START_ANGLE and CAM_SYNC_ANGLE and CAM_SYNC_LOST threads.
 * Fix bug with Crank_State. Should have been *Crank_State.
 * Redo CAM_SYNC_ANGLE and CAM_SYNC_LOST thread. Timeout and edge in scceptance window conditions need to jump to different Eng_Pos_Sync_Status update code.
 *
 * Revision 1.5  2007/10/05 09:05:34  r47354
 * CAM_FLAG_ANGLE becomes CAM_FLAG_ANGLE_OR_LOST
 * Removed Eng_Pos_Sync_Status Global reference as this was already a channel parameter.
 * General comment tidy up.
 * Removed Edge_Abngle write in CAM_SEEK thread.
 * Removed unnecessary immediate matches on ActionUnitA; in these cases window is already opened.
 *
 * Revision 1.4  2007/09/07 15:15:28  r47354
 * Eng_Pos_Sync_Status is no longer global.
 * Add *Crank_State as Crank_state is no longer global.
 * General post re-review tidy-up.
 *
 * Revision 1.3  2007/09/06 14:45:33  r47354
 * Change to standard entry table. Add CAM_Start_Angle state so that FULL_SYNC can happen earlier.
 *
 * Revision 1.2  2007/09/05 16:05:20  r47354
 * Post review fixes.
 *
 * Revision 1.1  2007/09/03 15:06:40  r47354
 * Initial revision.
 *
 
 ********************************************************************/

