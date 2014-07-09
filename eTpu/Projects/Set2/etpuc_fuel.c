/****************************************************************************
 * FILE NAME: etpu_fuel.c                    COPYRIGHT (c) FREESCALE 2008   *
 * DESCRIPTION:                                     All Rights Reserved     *
 *==========================================================================*
 * ORIGINAL AUTHOR: Michal Princ                                            *
 * This function generates a fuel injection pulse(s) and thus controls      * 
 * the amount of the fuel in the intake manifold.                           *
 ****************************************************************************/
#ifdef __ETEC__  // ASH WARE
#include <ETpu_Std.h>
#else  // Byte Craft
#ifndef __ETPUC_H
#include <etpuc.h>              /* Defines eTPU hardware */
#endif
#include <etpuc_util.h>

#ifndef __ETPUC_COMMON_H
#include <eTPUc_common.h>       /* Standard way to use eTPU */
#endif
#endif

/***********************************/
/* Verify performance requirements */
/***********************************/
#ifdef __ETEC__  // ASH WARE
#pragma verify_wctl  Fuel                72 steps 30 rams
#pragma exclude_wctl Fuel::FUEL_Init
#pragma exclude_wctl Fuel::FUEL_Update1
#pragma exclude_wctl Fuel::FUEL_UPDATE2
#endif

#ifdef FUEL_FUNCTION_NUMBER     /* Function is being compiled as part a set? */
#pragma ETPU_function Fuel, alternate @ FUEL_FUNCTION_NUMBER;
#else
#pragma ETPU_function Fuel, alternate; /* Stand alone */
#endif

/* Host Service Requests */
#define FUEL_HSR_INIT                      7
#define FUEL_HSR_INJECTION_TIME_CHANGE     3

/* Fuel_Flags parameter bits */
#define FUEL_FLAGS_PULSE_GENERATION_DISABLED   0x01
#define FUEL_FLAGS_DOUBLE_RECALC_ANGLE         0x02

/* Function Modes */
#define FUEL_FM0_ACTIVE_LOW                0
#define FUEL_FM0_ACTIVE_HIGH               1
#define FUEL_FM1_PULSE_GENERATION_ALLOWED  0
#define FUEL_FM1_PULSE_GENERATION_DISABLED 1

/*--------------------------------------------------------------------------+
| GLOBAL PARAMETERS:                                                        |
|                                                                           |
| Drop_Dead_Angle        - Closing angle of the intake valve (0-720deg).    |
|                          No additional fuel can be put into the cylinder  |
|                          after that angle.                                |
| Injection_Normal_End_Angle                                                |                        
|                        - Injection normal end angle when the injection    |
|                          should be finished; set by the CPU (0-720deg).   |
| Compensation_Time      - Compensates for the opening and closing time of  |  
|                          the valve; in TCR1 TICKS.                        |           
| Minimum_Injection_Time - Minimum injection pulse width in TCR1 TICKS.     |
| Minimum_Off_Time       - Minimum time between two injection pulses        |
|                          in TCR1 TICKS.                                   |
| Sum_Of_Injection_Time  - Total injection time in TCR1 TICKS.              |
| Recalculation_Offset_Angle                                                |
|                        -(Injection_Start_Angle-Recalculation_Offset_Angle)|
|                          defines the angle when the Re-calc thread is     |
|                          scheduled; set by the CPU (0-720deg).            |           
+--------------------------------------------------------------------------*/
unsigned int24 Drop_Dead_Angle=0;
unsigned int24 Injection_Normal_End_Angle=0; 
         int24 Compensation_Time=0;
         int24 Minimum_Injection_Time=0;
         int24 Minimum_Off_Time=0;
         int24 Sum_Of_Injection_Time=0;
unsigned int24 Recalculation_Offset_Angle=0;

/*--------------------------------------------------------------------------+
| CHANNEL PARAMETERS:                                                       |
|                                                                           |
| Cylinder_Offset_Angle  - Offset for each engine cylinder (0-720deg).      |            
| Injection_Start_Angle  - Injection start angle calculated by the eTPU     | 
|                          (0-720deg).                                      |
| Injection_Time         - The length of the injection pulse in TCR1 TICKS. |   
| Real_Injection_Time    - The actual injection time of the current engine  |
|                          cycle in TCR1 TICKS.                             |       
| TCR2_Counts_Per_Engine_Cycle                                              |
|                        - Pointer to the CAM function parameter where the  |
|                          number of TCR2 counts in an engine cycle         |
|                          is stored (updated).                             |
|                          (0-720deg) ~ (0 - TCR2_Counts_Per_Engine_Cycle)  |
| CPU_Real_Injection_Time- The amount of fuel really injected in the last   |
|                          engine cycle; in TCR1 TICKS.                     |
| Fuel_Flags             - Indications/flags.                               |
|                          - bit0=0 … Pulse generation is enabled.          |
|                          - bit0=1 … Pulse generation is disabled.         |
+--------------------------------------------------------------------------*/
void
Fuel(  unsigned int24 Cylinder_Offset_Angle,
       unsigned int24 Injection_Start_Angle,
                int24 Injection_Time,
                int24 Real_Injection_Time,
       unsigned int24* TCR2_Counts_Per_Engine_Cycle,
                int24 CPU_Real_Injection_Time,
                int8  Fuel_Flags
     )
{
/*--------------------------------------------------------------------------+
| LOCAL VARIABLES:                                                          |
|                                                                           |
| Last_Injection_Pulse_Start_Time                                           | 
|                        - Time of the last injection pulse start time.     |
| ECZC                   - Engine cycle zero count (the value of the TCR2   |
|                          on the first tooth after the gap) updated once   |
|                          per engine cycle.                                |
+--------------------------------------------------------------------------*/    
       static          int24 Last_Injection_Pulse_Start_Time;
       static unsigned int24 ECZC;
               register_diob tmp;
                       int24 tmp_signed;

/*--------------------------------------------------------------------------+
| THREAD NAME: UPDATE1 - Update the injection time when the pulse is active |
|                        (either the main pulse or the additional pulse)    |
| State: S2                                                                 |
| DESCRIPTION: CPU injection time update comes within the injection pulse.  |
+--------------------------------------------------------------------------*/
   if((HostServiceRequest == FUEL_HSR_INJECTION_TIME_CHANGE)&& (flag0==1))
   {
FUEL_Update1:
	   DisableMatchesInThread();
     
     /* If HSR is serviced between the injection pulse end edge and the beginning of the "PULSE END TIME" thread -
        this can happen under certain condition */
     if(IsLatchedMatchA())
     {
       /* S7 + S3 */
       /* Update the real injection time */
       if(!(Fuel_Flags & FUEL_FLAGS_PULSE_GENERATION_DISABLED))
       {
         Real_Injection_Time += erta - Last_Injection_Pulse_Start_Time - Compensation_Time;
         if(fm1 == FUEL_FM1_PULSE_GENERATION_DISABLED)
           Fuel_Flags |= FUEL_FLAGS_PULSE_GENERATION_DISABLED;
       }

       flag0=0;
       ClearMatchALatch();
       goto FUEL_UPDATE2;
     }

     /* If the CPU just clears FM1 (pulse generation enabled) and sets the new Injection_Time value
        or if the CPU sets the new Injection_Time value and the Fuel_Flags indicates that the pulse 
        is not on the output because the Injection_Time was lesser than the Minimum_Injection_Time 
        when the injection pulse scheduled */
     if((fm1 == FUEL_FM1_PULSE_GENERATION_ALLOWED) && 
        (Fuel_Flags & FUEL_FLAGS_PULSE_GENERATION_DISABLED) &&
        (Injection_Time >= Minimum_Injection_Time))
     {
       Fuel_Flags &= ~FUEL_FLAGS_PULSE_GENERATION_DISABLED;
       /* Immediately change the pin to the active state */
       if(fm0 == FUEL_FM0_ACTIVE_HIGH )
       {
         SetPinHigh();
         erta = tcr1;
       }
       else
       {
         SetPinLow();
         erta = tcr1;
       }
       Last_Injection_Pulse_Start_Time = erta;
     }
     else
     {
       erta = Last_Injection_Pulse_Start_Time;
     }

     /* Change the injection pulse end time; 
        if it is necessary to stop the injection pulse, we need to avoid the injection pulse 
        being shorter than the Minimum_Injection_Time */
     erta += Compensation_Time;
     tmp_signed = Injection_Time - Real_Injection_Time;
     if(tmp_signed >= Minimum_Injection_Time)
       erta += tmp_signed;
     else
       erta += Minimum_Injection_Time;

     WriteErtAToMatchAAndEnable();
   }
/*--------------------------------------------------------------------------+
| THREAD NAME: UPDATE2 - Update the injection time when the pulse is        |
|                        not active                                         |
| State: S3                                                                 |
| DESCRIPTION: CPU injection time update comes out of the injection pulse.  |
+--------------------------------------------------------------------------*/
   else if((HostServiceRequest == FUEL_HSR_INJECTION_TIME_CHANGE)&& (flag0==0))
   {
FUEL_UPDATE2:
     /* If the update comes after the main (primary) injection pulse */
     if(Real_Injection_Time > 0)
     {
       /* If necessary, schedule the additional pulse */
       if((Injection_Time - Real_Injection_Time) >= Minimum_Injection_Time)
       {
         /* Set the Output Pin Actions for Action Unit A */
         if(fm1 == FUEL_FM1_PULSE_GENERATION_ALLOWED)
         {
           Fuel_Flags &= ~FUEL_FLAGS_PULSE_GENERATION_DISABLED;
           if(fm0 == FUEL_FM0_ACTIVE_HIGH )
           {
             OnMatchA(PinHigh);
           }
           else
           {
             OnMatchA(PinLow);
           }
         }
         else
         {
           Fuel_Flags |= FUEL_FLAGS_PULSE_GENERATION_DISABLED;
           OnMatchA(NoChange);
         }
         
         /* Schedule the additional pulse */
         erta += Minimum_Off_Time;
         WriteErtAToMatchAAndEnable();
       }
     }
     /* If the update comes before the main (primary) injection pulse */
     else
       goto FUEL_RECALC;
   }
/*--------------------------------------------------------------------------+
| THREAD NAME: INIT                                                         |
| State: S0                                                                 |
| DESCRIPTION: Initialise a channel to run the FUEL function.               |
+--------------------------------------------------------------------------*/
   else if ((HostServiceRequest == FUEL_HSR_INIT) || ((lsr == 1) && (m1 == 0) && (m2 == 0)))
   {
FUEL_Init:
     ClearAllLatches();
     DisableMatchesInThread();
     
     DisableMatchDetection(); /* prevent both matches from happening 
                                 until they are re-programmed */

     Clear (flag0);        /* Injection pulse active time */
     Clear (flag1);        /* Drop Dead Angle thread sets this flag */

     /* Reset engine cycle zero count */
     ECZC = 0;
     
     EnableOutputBuffer (); /* Needed for Coldfire products */
     OnTransA(NoDetect);
     OnTransB(NoDetect);
      
     /* channel mode is em_nb_st */
     EitherMatchNonBlockingSingleTransition ();    
     ActionUnitB (MatchTCR2, CaptureTCR1, GreaterEqual);

     /* Set pin to inactive state and set the Output Pin Actions for Action Unit B */
     if(fm0 == FUEL_FM0_ACTIVE_HIGH )
     {
       SetPinLow();              
       OnMatchB(PinLow);
     }
     else
     {
       SetPinHigh();  
       OnMatchB(PinHigh);
     }
     /* Set the FUEL_FLAGS_DOUBLE_RECALC_ANGLE flag and
        double the recalc angle on the first pass only */
     Fuel_Flags |= FUEL_FLAGS_DOUBLE_RECALC_ANGLE;
     Recalculation_Offset_Angle = (Recalculation_Offset_Angle<<1);
     goto FUEL_DROP_DEAD_ANGLE;
   }

/*--------------------------------------------------------------------------+
| THREAD NAME: Drop Dead Angle before the injection pulse end time          |
| State: S4a                                                                |
| DESCRIPTION: If the Drop Dead Angle thread comes before the injection     |
|              pulse end time for some reason, immediately end the          |
|              injection pulse and calculate the real injection time.       |
+--------------------------------------------------------------------------*/
   else if((m2==1)&& (flag0==1) && (flag1==0))
   {
FUEL_DropDeadAngleA:
     DisableMatchesInThread();

     if(!(Fuel_Flags & FUEL_FLAGS_PULSE_GENERATION_DISABLED))
     {
       /* Update the real injection time only if the last injection pulse was longer than the Compensation_Time */
       /* tmp = ertb - Last_Injection_Pulse_Start_Time - Compensation_Time;
          if(tmp > 0)
            Real_Injection_Time += tmp; */
       tmp_signed = Last_Injection_Pulse_Start_Time + Compensation_Time - ertb;
       if(tmp_signed < 0)
         Real_Injection_Time -= tmp_signed;
       if(fm1 == FUEL_FM1_PULSE_GENERATION_DISABLED)
         Fuel_Flags |= FUEL_FLAGS_PULSE_GENERATION_DISABLED;
     }

     flag0=0;
     goto FUEL_DROP_DEAD_ANGLE;
   }

/*--------------------------------------------------------------------------+
| THREAD NAME: DROP DEAD ANGLE                                              |
| State: S4                                                                 |
| DESCRIPTION: Schedule both Re-calc thread and injection pulse start angle.|
+--------------------------------------------------------------------------*/
   else if((m2==1) && (flag0==0) && (flag1==0))
   {
FUEL_DropDeadAngleB:
     DisableMatchesInThread();

FUEL_DROP_DEAD_ANGLE:

     /* Update EC0C */
     ECZC = ECZC + (*TCR2_Counts_Per_Engine_Cycle);
     
     /* Set the Output Pin Actions for Action Unit A,
        Set Fuel_Flags based on the fm1 bit,
        If (Injection_Time < Minimum_Injection_Time)&&(fm1 == FUEL_FM1_PULSE_GENERATION_ALLOWED) then
          set the Fuel_Flags as well, in order to indicate that there is no pulse on the output */
     if((fm1 == FUEL_FM1_PULSE_GENERATION_ALLOWED) &&
        (Injection_Time >= Minimum_Injection_Time))
     {
       Fuel_Flags &= ~FUEL_FLAGS_PULSE_GENERATION_DISABLED;
       if(fm0 == FUEL_FM0_ACTIVE_HIGH )
       {
         OnMatchA(PinHigh);
       }
       else
       {
         OnMatchA(PinLow);
       }
     }
     else
     {
       Fuel_Flags |= FUEL_FLAGS_PULSE_GENERATION_DISABLED;
       OnMatchA(NoChange);
     }

     /* Calculate injection pulse start angle */
     /* Injection_Start_Angle = Injection_Normal_End_Angle + Cylinder_Offset_Angle - 
                               time2angle(Injection_Time + Compensation_Time); */
     /* tmp = (Injection_Time + Compensation_Time)/ (trr>>9) */
#ifdef __ETEC__  // ASH WARE
     tmp = ((unsigned int24)(Injection_Time + Compensation_Time) / (unsigned int24)(trr>>6)) << 3;
#else  // Byte Craft
     tmp = ((Injection_Time + Compensation_Time)/ (trr>>6)) << 3;
#endif
     Injection_Start_Angle = Injection_Normal_End_Angle - tmp + Cylinder_Offset_Angle;
     erta = ECZC + Injection_Start_Angle;                         

     /* Calculate Re-calc angle = ECZC + Injection_Start_Angle - Recalculation_Offset_Angle */
     ertb = erta - Recalculation_Offset_Angle;
     
     /* If the FUEL_FLAGS_DOUBLE_RECALC_ANGLE flag is set (first pass after the init),
        clear this flag and restore the recalc angle value */
     if(Fuel_Flags & FUEL_FLAGS_DOUBLE_RECALC_ANGLE)
     {
       Fuel_Flags &= ~FUEL_FLAGS_DOUBLE_RECALC_ANGLE;
       Recalculation_Offset_Angle = (Recalculation_Offset_Angle>>1);
     }
     /* Schedule Re-calc angle on match B */
     ClearMatchBLatch();
     WriteErtBToMatchBAndEnable();

     /* Schedule injection pulse start angle on match A */
     ActionUnitA (MatchTCR2, CaptureTCR1, GreaterEqual);
     WriteErtAToMatchAAndEnable();
     EnableEventHandling ();
     
     flag1=1;
     
     tmp = Real_Injection_Time;
     CPU_Real_Injection_Time = tmp;
     Real_Injection_Time = 0;

     /* Coherent update of Sum_Of_Injection_Time */
     NOP(); /* Guarantees the next instructions will be coherent */
     Sum_Of_Injection_Time += tmp;
     
     /* Generate Interrupt */
     SetChannelInterrupt();
   }
/*--------------------------------------------------------------------------+
| THREAD NAME: RE-CALC                                                      |
| State: S5                                                                 |
| DESCRIPTION: Re-calculate the injection pulse start angle.                |
+--------------------------------------------------------------------------*/
   else if((m1==0) && (m2==1) && (flag1==1))
   {
FUEL_ReCalc:
     DisableMatchesInThread();
     ClearMatchBLatch();

FUEL_RECALC:
     /* Set the Output Pin Actions for Action Unit A,
        Set Fuel_Flags based on the fm1 bit,
        If (Injection_Time < Minimum_Injection_Time)&&(fm1 == FUEL_FM1_PULSE_GENERATION_ALLOWED) then
          set the Fuel_Flags as well, in order to indicate that there is no pulse on the output */
     if((fm1 == FUEL_FM1_PULSE_GENERATION_ALLOWED) &&
        (Injection_Time >= Minimum_Injection_Time))
     {
       Fuel_Flags &= ~FUEL_FLAGS_PULSE_GENERATION_DISABLED;
       if(fm0 == FUEL_FM0_ACTIVE_HIGH )
       {
         OnMatchA(PinHigh);
       }
       else
       {
         OnMatchA(PinLow);
       }
     }
     else
     {
       Fuel_Flags |= FUEL_FLAGS_PULSE_GENERATION_DISABLED;
       OnMatchA(NoChange);
     }

     /* Calculate injection pulse start angle */
     /* Injection_Start_Angle = Injection_Normal_End_Angle + Cylinder_Offset_Angle - 
                               time2angle(Injection_Time + Compensation_Time); */
     /* tmp = (Injection_Time + Compensation_Time)/ (trr>>9) */
#ifdef __ETEC__  // ASH WARE
     tmp = ((unsigned int24)(Injection_Time + Compensation_Time) / (unsigned int24)(trr>>6))<<3;
#else  // Byte Craft
     tmp = ((Injection_Time + Compensation_Time)/ (trr>>6))<<3;
#endif
     Injection_Start_Angle = Injection_Normal_End_Angle - tmp + Cylinder_Offset_Angle;
     erta = ECZC + Injection_Start_Angle;                         
     /* Re-schedule injection pulse start angle on match A */
     WriteErtAToMatchAAndEnable();
   }
/*--------------------------------------------------------------------------+
| THREAD NAME: PULSE START ANGLE                                            |
| State: S6                                                                 |
| DESCRIPTION: Injection pulse begins. Schedule the end of the injection    |
|              pulse and the drop dead angle.                               |
+--------------------------------------------------------------------------*/
   else if(((m1==1) && (flag1==1)) || ((m1==1) && (m2==1) && (flag1==1)))
   {
FUEL_PulseStartAngle:
     /* Schedule injection pulse end time on match A */
     Last_Injection_Pulse_Start_Time = erta;
     erta += Injection_Time + Compensation_Time;
     ActionUnitA (MatchTCR1, CaptureTCR1, GreaterEqual);
     ClearMatchALatch();
     /* Set the Output Pin Actions for Action Unit A */
     if(fm0 == FUEL_FM0_ACTIVE_HIGH )
     {
       OnMatchA(PinLow);
     }
     else
     {
       OnMatchA(PinHigh);
     }
     WriteErtAToMatchAAndEnable();
      
     flag0=1;
     flag1=0;
     
     /* Schedule Drop Dead Angle on match B */
     ClearMatchBLatch();
     ertb = ECZC + Drop_Dead_Angle + Cylinder_Offset_Angle;
     WriteErtBToMatchBAndEnable();
   }
/*--------------------------------------------------------------------------+
| THREAD NAME: PULSE END TIME                                               |
| State: S7                                                                 |
| DESCRIPTION: Injection pulse finished. Update the real injection time.    |
+--------------------------------------------------------------------------*/
   else if((m1==1)&& (flag0==1) && (flag1==0))
   {
FUEL_PulseEndTime:
     /* Update the real injection time */
     if(!(Fuel_Flags & FUEL_FLAGS_PULSE_GENERATION_DISABLED))
     {
       Real_Injection_Time += erta - Last_Injection_Pulse_Start_Time - Compensation_Time;
       if(fm1 == FUEL_FM1_PULSE_GENERATION_DISABLED)
         Fuel_Flags |= FUEL_FLAGS_PULSE_GENERATION_DISABLED;
     }
     flag0=0;
     ClearMatchALatch();
   }
/*--------------------------------------------------------------------------+
| THREAD NAME: ADDITIONAL PULSE START TIME                                  |
| State: S8                                                                 |
| DESCRIPTION: Additional injection pulse begins. Schedule the end time     |
|              of the additional injection pulse.                           |
+--------------------------------------------------------------------------*/
   else if((m1==1)&& (flag0==0) && (flag1==0))
   {
FUEL_AddlPulseStartTime:
     /* Schedule the additional injection pulse end time on match A */
     Last_Injection_Pulse_Start_Time = erta;
     erta += (Injection_Time - Real_Injection_Time + Compensation_Time);
     flag0=1;
     /* Set the Output Pin Actions for Action Unit A */
     if(fm0 == FUEL_FM0_ACTIVE_HIGH )
     {
       OnMatchA(PinLow);
     }
     else
     {
       OnMatchA(PinHigh);
     }
     ActionUnitA (MatchTCR1, CaptureTCR1, GreaterEqual);
     ClearMatchALatch();
     WriteErtAToMatchAAndEnable();
   }

   else
   {
FUEL_Error:
#ifdef GLOBAL_ERROR_FUNC
     Global_Error_Func ();
#else
     ClearAllLatches ();
#endif
   }
}

/************************************************************************
*  Information exported to Host CPU program.
************************************************************************/
#pragma write h, (::ETPUfilename (cpu/etpu_fuel_auto.h));
#pragma write h, (/****************************************************************/);
#pragma write h, (/* WARNING this file is automatically generated DO NOT EDIT IT! */);
#pragma write h, (/*                                                              */);
#pragma write h, (/* This file provides an interface between eTPU code and CPU    */);
#pragma write h, (/* code. All references to the FUEL function should be made     */);
#pragma write h, (/* with information in this file. This allows only symbolic     */);
#pragma write h, (/* information to be referenced which allows the eTPU code to be*/);
#pragma write h, (/* optimized without effecting the CPU code.                    */);
#pragma write h, (/****************************************************************/);
#pragma write h, (#ifndef _ETPU_FUEL_AUTO_H_ );
#pragma write h, (#define _ETPU_FUEL_AUTO_H_ );
#pragma write h, ( );
#pragma write h, (/****************************************************************);
#pragma write h, (* Function Configuration Information. );
#pragma write h, (****************************************************************/);
#pragma write h, (::ETPUliteral(#define FS_ETPU_FUEL_FUNCTION_NUMBER) ::ETPUfunctionnumber(Fuel) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_FUEL_TABLE_SELECT)    ::ETPUentrytype(Fuel) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_FUEL_NUM_PARMS)       ::ETPUram(Fuel) );
#pragma write h, ( );
#pragma write h, (/****************************************************************);
#pragma write h, (* Host Service Request Definitions. );
#pragma write h, (****************************************************************/);
#pragma write h, (::ETPUliteral(#define FS_ETPU_FUEL_INIT                 ) FUEL_HSR_INIT );
#pragma write h, (::ETPUliteral(#define FS_ETPU_FUEL_INJECTION_TIME_CHANGE) FUEL_HSR_INJECTION_TIME_CHANGE);
#pragma write h, ( );
#pragma write h, (/****************************************************************);
#pragma write h, (* Global Parameter Definitions. );
#pragma write h, (****************************************************************/);
#pragma write h, (::ETPUliteral(#define FS_ETPU_FUEL_DROP_DEAD_ANGLE_OFFSET             )  ::ETPUlocation (Drop_Dead_Angle ));
#pragma write h, (::ETPUliteral(#define FS_ETPU_FUEL_INJECTION_NORMAL_END_ANGLE_OFFSET  )  ::ETPUlocation (Injection_Normal_End_Angle ));
#pragma write h, (::ETPUliteral(#define FS_ETPU_FUEL_COMPENSATION_TIME_OFFSET           )  ::ETPUlocation (Compensation_Time ));
#pragma write h, (::ETPUliteral(#define FS_ETPU_FUEL_MINIMUM_INJECTION_TIME_OFFSET      )  ::ETPUlocation (Minimum_Injection_Time ));
#pragma write h, (::ETPUliteral(#define FS_ETPU_FUEL_MINIMUM_OFF_TIME_OFFSET            )  ::ETPUlocation (Minimum_Off_Time ));
#pragma write h, (::ETPUliteral(#define FS_ETPU_FUEL_SUM_OF_INJECTION_TIME_OFFSET       )  ::ETPUlocation (Sum_Of_Injection_Time ));
#pragma write h, (::ETPUliteral(#define FS_ETPU_FUEL_RECALCULATION_OFFSET_ANGLE_OFFSET  )  ::ETPUlocation (Recalculation_Offset_Angle ));
#pragma write h, ( );
#pragma write h, (/****************************************************************);
#pragma write h, (* Channel Parameter Definitions. );
#pragma write h, (****************************************************************/);
#pragma write h, (::ETPUliteral(#define FS_ETPU_FUEL_CYLINDER_OFFSET_ANGLE_OFFSET       )  ::ETPUlocation (Fuel, Cylinder_Offset_Angle ));
#pragma write h, (::ETPUliteral(#define FS_ETPU_FUEL_INJECTION_START_ANGLE_OFFSET       )  ::ETPUlocation (Fuel, Injection_Start_Angle ));
#pragma write h, (::ETPUliteral(#define FS_ETPU_FUEL_INJECTION_TIME_OFFSET              )  ::ETPUlocation (Fuel, Injection_Time ));
#pragma write h, (::ETPUliteral(#define FS_ETPU_FUEL_REAL_INJECTION_TIME_OFFSET         )  ::ETPUlocation (Fuel, Real_Injection_Time ));
#pragma write h, (::ETPUliteral(#define FS_ETPU_FUEL_TCR2_COUNTS_PER_ENGINE_CYCLE_OFFSET)  ::ETPUlocation (Fuel, TCR2_Counts_Per_Engine_Cycle ));
#pragma write h, (::ETPUliteral(#define FS_ETPU_FUEL_CPU_REAL_INJECTION_TIME_OFFSET     )  ::ETPUlocation (Fuel, CPU_Real_Injection_Time ));
#pragma write h, ( );
#pragma write h, (/* fuel polarity options */);
#pragma write h, (::ETPUliteral(#define FS_ETPU_FUEL_FM0_ACTIVE_HIGH)  FUEL_FM0_ACTIVE_HIGH );
#pragma write h, (::ETPUliteral(#define FS_ETPU_FUEL_FM0_ACTIVE_LOW )  FUEL_FM0_ACTIVE_LOW  );
#pragma write h, ( );
#pragma write h, (/* switching off options */);
#pragma write h, (::ETPUliteral(#define FS_ETPU_FUEL_FM1_PULSE_GENERATION_ALLOWED)  FUEL_FM1_PULSE_GENERATION_ALLOWED );
#pragma write h, (::ETPUliteral(#define FS_ETPU_FUEL_FM1_PULSE_GENERATION_DISABLED) FUEL_FM1_PULSE_GENERATION_DISABLED );
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

/*********************************************************************
 * Revision 1.10  2009/01/14 13:56:44  prnm001
 * fuel priority options are not generated for fuel auto file any more
 *
 * Revision 1.9  2008/11/10 14:36:50  prnm001
 * LSR (STALL event) changed: FUEL attempts to re-sync (re-run INIT) and if successful FUEL function continues as before
 *
 * Revision 1.8  2008/10/13 09:11:39  prnm001
 * once the injection time is equal to the min. inj. time the pulse is still generated (> replaced by >=)
 * double the recalc angle on the first pass only
 *
 * Revision 1.7  2008/09/10 10:49:59  prnm001
 * -Fuel_Flags - SW flag added
 * -UPDATE1 thr: DisableMatchesInThread() included
 * -testing of fm1 bit and Fuel_Flags introduced in many places
 *
 * Revision 1.6  2008/09/03 07:49:23  prnm001
 * corrections after the first test cycle
 * - UPDATE1 thr: we need to avoid the injection pulse being shorter than the Minimum_Injection_Time instead of the Compensation_Time
 * - FUEL LSR thr: clear all latches for sure
 * - PULSE START ANGLE thr: clear matchB in case START ANGLE comes before RECALC
 * - ensure the Real_Injection_Time is not updated when the pulse generation is disabled
 *
 * Revision 1.5  2008/08/29 07:43:40  prnm001
 * Correction_Time -> Compensation_Time
 * time-related parameters changed to signed int24
 * testing if (Injection_Time > Minimum_Injection_Time) performed where necessary
 *
 * Revision 1.4  2008/06/19 14:44:10  prnm001
 * Generation of the interrupt to the CPU at the end of the drop dead angle thread.
 *
 * Revision 1.3  2008/06/17 11:36:43  prnm001
 * Recalculation_Offset_Angle moved to globals;
 * to allocate space for global variables in pram, global variables must be initialized
 *
 * Revision 1.2  2008/06/13 13:22:34  prnm001
 * First version, ready for testing
 *
 *
 * Revision 0.1  2008/05/20 15:06:40  prnm001
 * Initial version.
 *
 
 ********************************************************************/
