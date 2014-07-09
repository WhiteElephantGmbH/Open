/****************************************************************************
 * FILE NAME: etpuc_spark.c                    COPYRIGHT (c) FREESCALE 2008 *
 *                                                      All Rights Reserved *
 *==========================================================================*
 * ORIGINAL AUTHOR: Stan Ostrum (ra5622)       LAST UPDATE: 08/11/11 17:08  *
 *                                                                          *
 * DESCRIPTION: This function generates pulses for a spark ignition system. *
 *                                                                          *
 ****************************************************************************
 * REVISION HISTORY:
 *
 * Revision 1.7  2009/06/30 15:03:24  r54529
 * added EnableOutputBuffer() needed for ColdFires
 *
 * Revision 1.6  2009/01/20 12:48:51  r54529
 * priority options not generated to auto file
 *
 * Revision 1.5  2008/11/11 23:21:51  ra5622
 * Changed LSR state to perform re-initialization instead of shutdown.
 *
 *
 * Revision 1.4  2008/10/22 05:48:46  ra5622
 * Use 2X recalc angle offset for 1st pulse after init.
 * Changed TCR2_Counts_Per_Engine_Cycle to point to CAM parameter.
 * Delay dwell time updates until next cycle to fix issues with enable/disable.
 *
 * Revision 1.3  2008/10/08 06:12:59  ra5622
 * Fixed 2 bugs in SPARK_UPDATE_HSR found during formal testing.
 * Added initialization for global variables.
 *
 * Revision 1.2  2008/10/04 01:29:35  ra5622
 * Initial release.
 *
 ***************************************************************************/
#ifdef __ETEC__  // ASH WARE
#include <ETpu_Std.h>
#else  // Byte Craft
#ifndef __ETPUC_H
#include <etpuc.h>
#endif
#include <etpuc_util.h>

#ifndef __ETPUC_COMMON_H
#include <eTPUc_common.h>
#endif
#endif

/***********************************/
/* Verify performance requirements */
/***********************************/
#ifdef __ETEC__  // ASH WARE
#pragma verify_wctl  Spark                60  steps 23 rams
#pragma exclude_wctl Spark::SPARK_INITIALIZATION
#pragma exclude_wctl Spark::SPARK_Link
#pragma exclude_wctl Spark::SPARK_Update
#endif

#ifdef SPARK_FUNCTION_NUMBER                // function compiled as part of a set
#pragma ETPU_function Spark, alternate @ SPARK_FUNCTION_NUMBER;
#else
#pragma ETPU_function Spark, alternate;     // function compiled stand alone
#endif

// Host Service Request (HSR) definitions
#define SPARK_HSR_INIT              7
#define SPARK_HSR_UPDATE            3

// Function Mode (FM) bit definitions
// (selects the polarity of the spark output)
#define SPARK_FM0_ACTIVE_LOW        0
#define SPARK_FM0_ACTIVE_HIGH       1

// Function Mode (FM) bit tests
#define SPARK_ACTIVE_LOW            (channel.FM0 == 0)
#define SPARK_ACTIVE_HIGH           (channel.FM0 == 1)

// Channel Flag definitions
// (used in entry points for internal state transitions)
#define SPARK_FLG0_PIN_INACTIVE     (ClrFlag0())
#define SPARK_FLG0_PIN_ACTIVE       (SetFlag0())
#define SPARK_FLG1_PHASE_MAIN       (ClrFlag1())
#define SPARK_FLG1_PHASE_MULTI      (SetFlag1())

// Channel Flag bit tests
#define SPARK_PIN_INACTIVE          (channel.FLAG0 == 0)
#define SPARK_PIN_ACTIVE            (channel.FLAG0 == 1)
#define SPARK_PHASE_MAIN            (channel.FLAG1 == 0)
#define SPARK_PHASE_MULTI           (channel.FLAG1 == 1)

// Spark Update Status definitions
// (used internally for processing updates to parameter values)
#define SPARK_INIT                  0
#define SPARK_MIN_DWELL             1
#define SPARK_MAIN_PULSE            2
#define SPARK_MULTI_PULSE           3
#define SPARK_PRE_RECALC            4
#define SPARK_PRE_START             5

/*--------------------------------------------------------------------------+
| GLOBAL PARAMETERS:                                                        |
|                                                                           |
| Minimum_Dwell       - minimum spark pulse width in TCR1 ticks             |
|                                                                           |
| Maximum_Dwell       - maximum spark pulse width in TCR1 ticks             |
|                                                                           |
| Multi_On_Time       - active time of multi spark pulses in TCR1 ticks     |
|                                                                           |
| Multi_Off_Time      - inactive time of multi spark pulses in TCR1 ticks   |
|                                                                           |
| Multi_Num_Pulses    - number of multi spark pulses                        |
|                                                                           |
| Recalc_Offset_Angle - angle before estimated main pulse start angle at    |
|                       which to recalculate the start angle                |
|                                                                           |
| TCR2_Counts_Per_Engine_Cycle - pointer to the CAM channel parameter which |
|                                holds the number of EAC ticks per 720 deg. |
|                                                                           |
+--------------------------------------------------------------------------*/
unsigned int24 Min_Dwell                     = 0;
unsigned int24 Max_Dwell                     = 0;
unsigned int24 Multi_On_Time                 = 0;
unsigned int24 Multi_Off_Time                = 0;
unsigned int8  Multi_Num_Pulses              = 0;
unsigned int24 Recalc_Offset_Angle           = 0;
unsigned int24 *TCR2_Counts_Per_Engine_Cycle = 0;

/*--------------------------------------------------------------------------+
| CHANNEL PARAMETERS:                                                       |
|                                                                           |
| Spark1_Angle - end angle for 1st spark pulse in TCR2 angle ticks          |
|                                                                           |
| Spark1_Dwell - duration of 1st spark pulse in TCR1 ticks                  |
|                                                                           |
| Spark2_Angle - end angle for 2nd spark pulse in TCR2 angle ticks          |
|                                                                           |
| Spark2_Dwell - duration of 2nd spark pulse in TCR1 ticks                  |
|                                                                           |
| Cylinder_Offset_Angle - offset for each engine cylinder (0 - 720 deg) in  |
|                          TCR2 angle ticks                                 |
|                                                                           |
+--------------------------------------------------------------------------*/
void Spark ( unsigned int24 Spark1_Angle,
             unsigned int24 Spark1_Dwell,
             unsigned int24 Spark2_Angle,
             unsigned int24 Spark2_Dwell,
             unsigned int24 Cylinder_Offset_Angle
           )
{
/*--------------------------------------------------------------------------+
| LOCAL VARIABLES:                                                          |
|                                                                           |
| ECZC - Engine Cycle Zero Count, the EAC value at the first tooth after    |
|        the missing tooth gap                                              |
|                                                                           |
| Current_Spark_Angle - end angle of the current spark main pulse           |
|                                                                           |
| Current_Spark_Dwell - dwell time of the current spark main pulse          |
|                                                                           |
| Current_Spark_Pulse - flag indicating the active spark pulse,             |
|                       0 = Spark1, 1 = Spark2                              |
|                                                                           |
| Multi_Pulse_Count   - counter indicating the number of multi pulses       |
|                       remaining                                           |
|                                                                           |
| Spark_Update_Status - tracks status of spark pulse generation, used to    |
|                       determine how to process updates to spark end angle |
|                       and / or dwell time                                 |
|                                                                           |
+--------------------------------------------------------------------------*/
    static unsigned int24 ECZC;
    static unsigned int24 Current_Spark_Angle;
    static unsigned int24 Current_Spark_Dwell;
    static unsigned int8  Current_Spark_Pulse;
    static unsigned int8  Multi_Pulse_Count;
    static unsigned int8  Spark_Update_Status;
    static unsigned int24 temp;

/*--------------------------------------------------------------------------+
| THREAD NAME: SPARK_INIT_HSR                                               |
| STATE:       S0                                                           |
| DESCRIPTION: Initialize a channel to run the SPARK function.              |
|                                                                           |
+--------------------------------------------------------------------------*/
    if (HostServiceRequest == SPARK_HSR_INIT)
    {

SPARK_INITIALIZATION:       // also enter here from SPARK_LSR (S2)

        DisableMatchesInThread();
        DisableMatchDetection();
        EnableOutputBuffer(); /* Needed for Coldfire products */
        ClearAllLatches();

        SPARK_FLG0_PIN_INACTIVE;            // clear flag0
        SPARK_FLG1_PHASE_MULTI;             // set flag1
        ECZC = 0;                           // initialize engine cycle zero count

        // set current pulse = 1 (spark2),
        // will be updated to 0 (spark1) before 1st recalc match is scheduled
        Current_Spark_Pulse = 1;
        Spark_Update_Status = SPARK_INIT;

        // channel mode is em_nb_st,
        // use action unit A for time matches, action unit B for angle matches
        EitherMatchNonBlockingSingleTransition();
        ActionUnitA (MatchTCR1, CaptureTCR1, GreaterEqual);
        ActionUnitB (MatchTCR2, CaptureTCR1, GreaterEqual);

        // set pin inactive, configure both action units
        if (SPARK_ACTIVE_HIGH )
        {
            SetPinLow();
            OnMatchA(PinHigh);
            OnMatchB(PinLow);
        }
        else
        {
            SetPinHigh();
            OnMatchA(PinLow);
            OnMatchB(PinHigh);
        }

        // schedule first recalc match for main pulse start angle
        goto SPARK_SCHEDULE_RECALC_MATCH;
    }

/*--------------------------------------------------------------------------+
| THREAD NAME: SPARK_UPDATE_HSR                                             |
| STATE:       S1                                                           |
| DESCRIPTION: Process update to spark main pulse end angle.                |
|                                                                           |
+--------------------------------------------------------------------------*/
    else if (HostServiceRequest == SPARK_HSR_UPDATE)
    {
SPARK_Update:
		DisableMatchesInThread();

        if (Current_Spark_Pulse == 0)
        {
            Current_Spark_Angle = Spark1_Angle;
        }
        else    // Current_Spark_Pulse == 1
        {
            Current_Spark_Angle = Spark2_Angle;
        }

        // If the update HSR gets serviced before a match that has already
        // occurred, quit the HSR and service the match instead.
        if (IsLatchedMatchA() || IsLatchedMatchB())
        {
            return;
        }
        else
        {
            // perform proper rescheduling of pulse based on current update status
            if (Spark_Update_Status == SPARK_MAIN_PULSE)
            {
                // reschedule spark end angle match
                ertb = Current_Spark_Angle + Cylinder_Offset_Angle + ECZC;
                WriteErtBToMatchBAndEnable();
            }
            else if (Spark_Update_Status == SPARK_PRE_RECALC)
            {
                goto SPARK_SCHEDULE_RECALC_MATCH2;
            }
            else if (Spark_Update_Status == SPARK_PRE_START)
            {
                goto SPARK_SCHEDULE_START_MATCH;
            }
            else if ((Spark_Update_Status == SPARK_MIN_DWELL) || (Spark_Update_Status == SPARK_MULTI_PULSE))
            {
                return;
            }
        }
    }

/*--------------------------------------------------------------------------+
| THREAD NAME: SPARK_MIN_DWELL_MATCH                                        |
| STATE:       S3                                                           |
| DESCRIPTION: Min dwell timeout has occurred, schedule spark end angle.    |
|                                                                           |
+--------------------------------------------------------------------------*/
    else if ((m1 == 1) && (m2 == 0) && (flag0 == 0) && (flag1 == 0))
    {
SPARK_MinDwellMatch:
        DisableMatchesInThread();
        ClearMatchALatch();
        SPARK_FLG0_PIN_ACTIVE;              // set flag0
        Spark_Update_Status = SPARK_MAIN_PULSE;

        if (SPARK_ACTIVE_HIGH)
        {
            OnMatchA(PinLow);
            OnMatchB(PinLow);
        }
        else
        {
            OnMatchA(PinHigh);
            OnMatchB(PinHigh);
        }

        // schedule spark max dwell match
        erta = erta + Max_Dwell - Min_Dwell;
        WriteErtAToMatchAAndEnable();

        // schedule spark end angle match
        ertb = Current_Spark_Angle + Cylinder_Offset_Angle + ECZC;
        WriteErtBToMatchBAndEnable();
    }

/*--------------------------------------------------------------------------+
| THREAD NAME: SPARK_MAX_DWELL_MATCH                                        |
| STATE:       S4                                                           |
| DESCRIPTION: Max dwell timeout has occurred, spark pulse has been         |
|              terminated.  Process end of main spark pulse.                |
|                                                                           |
+--------------------------------------------------------------------------*/
    else if ((m1 == 1) && (m2 == 0) && (flag0 == 1) && (flag1 == 0))
    {
SPARK_MaxDwellMatch:
        DisableMatchesInThread();
        DisableMatch();
        ClearMatchALatch();

        // store current match time in ertb for scheduling next match in S7
        ertb = erta;

        goto SPARK_MAIN_PULSE_END;
    }

/*--------------------------------------------------------------------------+
| THREAD NAME: SPARK_RECALC_MATCH                                           |
| STATE:       S5                                                           |
| DESCRIPTION: Recalculate the spark main pulse start time.                 |
|                                                                           |
+--------------------------------------------------------------------------*/
    else if ((m1 == 0) && (m2 == 1) && (flag0 == 0) && (flag1 == 1))
    {
SPARK_RecalcMatch:
        DisableMatchesInThread();
        SPARK_FLG1_PHASE_MAIN;              // clear flag1

SPARK_SCHEDULE_START_MATCH:   // also enter here from UPDATE_HSR (S1)

        Spark_Update_Status = SPARK_PRE_START;

        // configure action unit B
        if (SPARK_ACTIVE_HIGH)
        {
            OnMatchB(PinHigh);
        }
        else
        {
            OnMatchB(PinLow);
        }

        if (Current_Spark_Dwell == 0)
        {
            // skip spark pulse generation and schedule end angle match instead
            SPARK_FLG0_PIN_ACTIVE;      // set flag0
            SPARK_FLG1_PHASE_MAIN;      // clear flag1
            Spark_Update_Status = SPARK_MAIN_PULSE;
            OnMatchB(NoChange);

            // calculate main pulse end angle
            ertb = Current_Spark_Angle + Cylinder_Offset_Angle + ECZC;
        }
        else    // schedule main pulse start angle
        {
            // calculate main pulse start angle =
            // Spark_Angle - time2angle(Spark_Dwell) + Cylinder_Offset_Angle + ECZC
            temp = (Current_Spark_Dwell / (trr >> 6)) << 3;
            ertb = Current_Spark_Angle - temp + Cylinder_Offset_Angle + ECZC;
        }

        // schedule main pulse start or end angle on match B
        ClearMatchBLatch();
        WriteErtBToMatchBAndEnable();
   }

/*--------------------------------------------------------------------------+
| THREAD NAME: SPARK_MAIN_PULSE_START_MATCH                                 |
| STATE:       S6                                                           |
| DESCRIPTION: Start of main spark pulse, schedule pulse end angle and max  |
|              dwell time matches.                                          |
|                                                                           |
+--------------------------------------------------------------------------*/
    else if ((m2 == 1) && (flag0 == 0) && (flag1 == 0))
    {
SPARK_MainPulseStartMatch:
        DisableMatchesInThread();
        ClearMatchBLatch();
        Spark_Update_Status = SPARK_MIN_DWELL;

        // schedule spark min dwell time on match A
        ClearMatchALatch();
        OnMatchA(NoChange);
        erta = ertb + Min_Dwell;
        WriteErtAToMatchAAndEnable();
    }

/*--------------------------------------------------------------------------+
| THREAD NAME: SPARK_MAIN_PULSE_END_MATCH                                   |
| STATE:       S7                                                           |
| DESCRIPTION: End of main spark pulse, schedule multi spark pulse start    |
|              time or recalc match for next main spark pulse.              |
|                                                                           |
+--------------------------------------------------------------------------*/
    else if ((m2 == 1) && (flag0 == 1) && (flag1 == 0))
    {
SPARK_MainPulseEndMatch:
        DisableMatchesInThread();
        DisableMatch();
        ClearMatchBLatch();

SPARK_MAIN_PULSE_END:   // also enter here from MAX_DWELL_MATCH (S4)

        SPARK_FLG0_PIN_INACTIVE;            // clear flag0
        SPARK_FLG1_PHASE_MULTI;             // set flag1

        // schedule start time for 1st multi spark pulse or recalc match for next main pulse
        if ((Multi_Num_Pulses != 0) && (Current_Spark_Dwell != 0))
        {
            Spark_Update_Status = SPARK_MULTI_PULSE;

            // configure action unit A
            if (SPARK_ACTIVE_HIGH)
            {
                OnMatchA(PinHigh);
            }
            else
            {
                OnMatchA(PinLow);
            }

            // initialize multi pulse counter
            Multi_Pulse_Count = Multi_Num_Pulses;

            //  schedule multi pulse start time on match A
            erta = ertb + Multi_Off_Time;
            ClearMatchALatch();
            WriteErtAToMatchAAndEnable();
        }
        else    // no multi pulses needed, schedule recalc match for next main pulse
        {
            goto SPARK_SCHEDULE_RECALC_MATCH;
        }
    }

/*--------------------------------------------------------------------------+
| THREAD NAME: SPARK_MULTI_PULSE_START_MATCH                                |
| STATE:       S8                                                           |
| DESCRIPTION: Start of multi spark pulse, schedule multi pulse end time.   |
|                                                                           |
+--------------------------------------------------------------------------*/
    else if ((m1 == 1) && (flag0 == 0) && (flag1 == 1))
    {
SPARK_MultiPulseStartMatch:
        DisableMatchesInThread();
        ClearMatchALatch();
        SPARK_FLG0_PIN_ACTIVE;              // set flag0

        // schedule multi pulse end time on match A
        OnMatchA(PinToggle);
        erta = erta + Multi_On_Time;
        WriteErtAToMatchAAndEnable();
    }

/*--------------------------------------------------------------------------+
| THREAD NAME: SPARK_MULTI_PULSE_END_MATCH                                  |
| STATE:       S9                                                           |
| DESCRIPTION: End of multi spark pulse, schedule next multi pulse start    |
|              time or recalc match for next main spark pulse.              |
|                                                                           |
+--------------------------------------------------------------------------*/
    else if ((m1 == 1) && (flag0 == 1) && (flag1 == 1))
    {
SPARK_MultiPulseEndMatch:
        DisableMatchesInThread();
        ClearMatchALatch();
        SPARK_FLG0_PIN_INACTIVE;            // clear flag0
        Multi_Pulse_Count--;                // decrement multi pulse counter

        if (Multi_Pulse_Count != 0)
        {
            // schedule multi pulse start time on match A
            OnMatchA(PinToggle);
            erta = erta + Multi_Off_Time;
            WriteErtAToMatchAAndEnable();
        }
        else    // schedule recalc match for next spark main pulse
        {

SPARK_SCHEDULE_RECALC_MATCH:    // also enter here from INIT_HSR (S0) and
                                // MAIN_PULSE_END_MATCH (S7) if no multi pulses are needed

            if (Current_Spark_Pulse == 0)
            {
                Current_Spark_Pulse = 1;
                Current_Spark_Angle = Spark2_Angle;
                Current_Spark_Dwell = Spark2_Dwell;
            }
            else    // Current_Spark_Pulse == 1
            {
                Current_Spark_Pulse = 0;
                Current_Spark_Angle = Spark1_Angle;
                Current_Spark_Dwell = Spark1_Dwell;
                ECZC = ECZC + (*TCR2_Counts_Per_Engine_Cycle);      // Update ECZC for next cycle
            }

SPARK_SCHEDULE_RECALC_MATCH2:   // also enter here from UPDATE_HSR (S1)

            // calculate main pulse start angle =
            // Spark_Angle - time2angle(Spark_Dwell) + Cylinder_Offset_Angle + ECZC
            temp = (Current_Spark_Dwell / (trr >> 6)) << 3;
            temp = Current_Spark_Angle - temp + Cylinder_Offset_Angle + ECZC;

            // calculate recalc angle = start angle - Recalc_Offset_Angle
            ertb = temp - Recalc_Offset_Angle;

            // use 2X Recalc_Offset_Angle for first pulse after initialization
            if (Spark_Update_Status == SPARK_INIT)
            {
                ertb = ertb - Recalc_Offset_Angle;
            }

            // schedule recalc angle on match B
            ClearMatchBLatch();
            OnMatchB(NoChange);
            WriteErtBToMatchBAndEnable();
            EnableEventHandling();

            Spark_Update_Status = SPARK_PRE_RECALC;
        }
    }

/*--------------------------------------------------------------------------+
| THREAD NAME: SPARK_LSR                                                    |
| STATE:       S2                                                           |
| DESCRIPTION: Link from the CRANK function indicating that a stall         |
|              condition has occurred, shutdown spark immediately and       |
|              re-initialize.                                               |
|                                                                           |
+--------------------------------------------------------------------------*/
    else if (LinkServiceRequest == 1)
    {
SPARK_Link:
        goto SPARK_INITIALIZATION;
    }

/*--------------------------------------------------------------------------+
| THREAD NAME: UNUSED                                                       |
| STATE:       N/A                                                          |
| DESCRIPTION: Unused entry point conditions.                               |
|                                                                           |
+--------------------------------------------------------------------------*/
    else
    {
SPARK_Error:
#ifdef GLOBAL_ERROR_FUNC
        Global_Error_Func();
#else
        ClearAllLatches();
#endif
    }
}


/************************************************************************
*  Information exported to Host CPU
************************************************************************/
#pragma write h, (::ETPUfilename (cpu/etpu_spark_auto.h));
#pragma write h, (/****************************************************************/);
#pragma write h, (/* WARNING this file is automatically generated DO NOT EDIT IT! */);
#pragma write h, (/*                                                              */);
#pragma write h, (/* This file provides an interface between eTPU code and CPU    */);
#pragma write h, (/* code.  All references to the SPARK function should be made   */);
#pragma write h, (/* with information in this file.  This allows only symbolic    */);
#pragma write h, (/* information to be referenced which allows the eTPU code to   */);
#pragma write h, (/* be optimized without affecting the CPU code.                 */);
#pragma write h, (/****************************************************************/);
#pragma write h, (#ifndef _ETPU_SPARK_AUTO_H_ );
#pragma write h, (#define _ETPU_SPARK_AUTO_H_ );
#pragma write h, ( );
#pragma write h, (/****************************************************************);
#pragma write h, (* Function Configuration Information. );
#pragma write h, (****************************************************************/);
#pragma write h, (::ETPUliteral(#define FS_ETPU_SPARK_FUNCTION_NUMBER) ::ETPUfunctionnumber(Spark) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_SPARK_TABLE_SELECT)     ::ETPUentrytype(Spark) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_SPARK_NUM_PARMS)        ::ETPUram(Spark) );
#pragma write h, ( );
#pragma write h, (/****************************************************************);
#pragma write h, (* Host Service Request Definitions. );
#pragma write h, (****************************************************************/);
#pragma write h, (::ETPUliteral(#define FS_ETPU_SPARK_INIT)    SPARK_HSR_INIT );
#pragma write h, (::ETPUliteral(#define FS_ETPU_SPARK_UPDATE)  SPARK_HSR_UPDATE);
#pragma write h, ( );
#pragma write h, (/****************************************************************);
#pragma write h, (* Global Parameter Definitions. );
#pragma write h, (****************************************************************/);
#pragma write h, (::ETPUliteral(#define FS_ETPU_SPARK_MIN_DWELL_OFFSET                   ) ::ETPUlocation (Min_Dwell ));
#pragma write h, (::ETPUliteral(#define FS_ETPU_SPARK_MAX_DWELL_OFFSET                   ) ::ETPUlocation (Max_Dwell ));
#pragma write h, (::ETPUliteral(#define FS_ETPU_SPARK_MULTI_ON_TIME_OFFSET               ) ::ETPUlocation (Multi_On_Time ));
#pragma write h, (::ETPUliteral(#define FS_ETPU_SPARK_MULTI_OFF_TIME_OFFSET              ) ::ETPUlocation (Multi_Off_Time ));
#pragma write h, (::ETPUliteral(#define FS_ETPU_SPARK_MULTI_NUM_PULSES_OFFSET            ) ::ETPUlocation (Multi_Num_Pulses ));
#pragma write h, (::ETPUliteral(#define FS_ETPU_SPARK_RECALC_OFFSET_ANGLE_OFFSET         ) ::ETPUlocation (Recalc_Offset_Angle ));
#pragma write h, (::ETPUliteral(#define FS_ETPU_SPARK_TCR2_COUNTS_PER_ENGINE_CYCLE_OFFSET) ::ETPUlocation (TCR2_Counts_Per_Engine_Cycle ));
#pragma write h, ( );
#pragma write h, (/****************************************************************);
#pragma write h, (* Channel Parameter Definitions. );
#pragma write h, (****************************************************************/);
#pragma write h, (::ETPUliteral(#define FS_ETPU_SPARK_SPARK1_ANGLE_OFFSET                ) ::ETPUlocation (Spark, Spark1_Angle ));
#pragma write h, (::ETPUliteral(#define FS_ETPU_SPARK_SPARK1_DWELL_OFFSET                ) ::ETPUlocation (Spark, Spark1_Dwell ));
#pragma write h, (::ETPUliteral(#define FS_ETPU_SPARK_SPARK2_ANGLE_OFFSET                ) ::ETPUlocation (Spark, Spark2_Angle ));
#pragma write h, (::ETPUliteral(#define FS_ETPU_SPARK_SPARK2_DWELL_OFFSET                ) ::ETPUlocation (Spark, Spark2_Dwell ));
#pragma write h, (::ETPUliteral(#define FS_ETPU_SPARK_CYLINDER_OFFSET_ANGLE_OFFSET       ) ::ETPUlocation (Spark, Cylinder_Offset_Angle ));
#pragma write h, ( );
#pragma write h, (/* SPARK output polarity options */);
#pragma write h, (::ETPUliteral(#define FS_ETPU_SPARK_FM0_ACTIVE_LOW )  SPARK_FM0_ACTIVE_LOW  );
#pragma write h, (::ETPUliteral(#define FS_ETPU_SPARK_FM0_ACTIVE_HIGH)  SPARK_FM0_ACTIVE_HIGH );
#pragma write h, ( );
#pragma write h, (#endif );

/*********************************************************************
 *
 * Copyright:
 *	Freescale Semiconductor, INC. All Rights Reserved.
 *  You are hereby granted a copyright license to use, modify, and
 *  distribute the SOFTWARE so long as this entire notice is retained
 *  without alteration in any modified and/or redistributed versions,
 *  and that such modified versions are clearly identified as such. No
 *  licenses are granted by implication, estoppel or otherwise under
 *  any patents or trademarks of Freescale Semiconductor, Inc. This
 *  software is provided on an "AS IS" basis and without warranty.
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

