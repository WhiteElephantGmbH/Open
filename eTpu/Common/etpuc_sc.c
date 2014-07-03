/*******************************************************************************
*
*  FREESCALE SEMICONDUCTOR INC. 2004
*  ALL RIGHTS RESERVED
*  COPYRIGHT (c)
*
********************************************************************************
*
*  DESCRIPTION:
*   Speed Controller eTPU function
*
********************************************************************************
*
*  REVISION HISTORY:
*
*  REVISION    AUTHOR       DATE        DESCRIPTION OF CHANGE
*  --------    -----------  ---------   ------------------------------------
*  1.0         M. Princ     12/Oct/04    PID code updated with new version
*                                        of compiler, ready for release.
*  1.1         M. Princ     05/Jan/05    Actual speed calculation based
*              M. Brejl                  on QD parameters corrected.
*  1.2         M. Brejl     21/Feb/05    PID controller called from mc_ctrl.
*  1.3         M. Brejl     07/Dec/06    PID controller call using new macro.
*
*******************************************************************************/
#include <etpu_std.h>

/***********************************/
/* Verify performance requirements */
/***********************************/
#ifndef NO_OPT
#pragma verify_wctl  SC                175  steps  53 rams
#endif
#pragma exclude_wctl SC::SC_Error

#ifdef SC_FUNCTION_NUMBER /* function is being compiled as part of a set? */
#pragma ETPU_function SC, standard @ SC_FUNCTION_NUMBER;
#else
#pragma ETPU_function SC, standard;
#endif

/************************************************************************
*  Includes.
************************************************************************/
#include "etpuc_mc_ctrl.c"
#include "etpuc_mc_ramp.c"

/*******************************************************************************
*  Definitions.
*******************************************************************************/

/* HSR values. */
#define SC_HSR_INIT_HD_MASTER      7
#define SC_HSR_INIT_HD_SLAVE       6
#define SC_HSR_INIT_QD_MASTER      5
#define SC_HSR_INIT_QD_SLAVE       4
#define SC_HSR_CALC                1

/* FM modes. */
#define SC_PID_OFF                 (fm0==0)
#define SC_PID_ON                  (fm0==1)
#define SC_RAMP_OFF                (fm1==0)
#define SC_RAMP_ON                 (fm1==1)

/*******************************************************************************
* Channel Flag usage:
* Flag0 is used to select speed calculation based on HD or QD.
*    0 = Calculate speed from HD parameters
*    1 = Calculate speed from QD parameters
*******************************************************************************/

/* the SC function accesses the mach register
   in order to get the reminder after division       */
     register_mach      mach ;      // 24 bits

/*******************************************************************************
* NAME: SC
*
* DESCRIPTION: Speed Controller.
*
* FUNCTION PARAMETERS:
*  period            - Applies in master mode only:
*                      Update period (in TCR1 ticks).
*  start_offset      - Applies in master mode only:
*                      Offset from initialization to first match (in TCR1 ticks)
*  services_per_irq  - Number of updates per one IRQ to CPU
*  link_chan         - A channel to send link to after update.
*  *p_pid            - Pointer to PID controller parameters & state variables
*                      structure.
*  *p_output         - Pointer to output value is written to.
*  omega_desired     - Desired value of speed.
*  omega_desired_ramp- Desired value of speed after ramp.
*  ramp_incr_up      - Ramp parameter: increment up
*  ramp_incr_down    - Ramp parameter: increment down
*  error             - PID input error.
*  omega_actual      - Actual value of speed.
*  *p_hd_period      - Pointer to HD parameter sector_period or
*                      revolution_period.
*  *p_hd_direction   - Pointer to HD parameter direction.
*  max_hd_period     - Maximum value of HD period.
*  scale             - Scaling factor for speed calculation.
*  *p_qd_pc_sc       - Pointer to QD parameter pc_sc.
*  *p_qd_tcr_value   - Pointer to QD parameter last_edge - time of last transition.
*  qd_last_tcr       - Last TCR time of last QD transition
*******************************************************************************/
void SC(  int24     period,
          int24     start_offset,
 unsigned int24     services_per_irq,
 unsigned int8      link_chan,
 unsigned int24   * p_pid,   /* mc_ctrl_pid_t *  */
          fract24 * p_output,
          fract24   omega_desired,
          fract24   omega_desired_ramp,
          fract24   ramp_incr_up,
          fract24   ramp_incr_down,
          fract24   error,
          fract24   omega_actual,
          int24   * p_hd_period,
          int8    * p_hd_direction,
          int24     max_hd_period,
          int24     scale,
          int24   * p_qd_pc_sc,
          int24   * p_qd_tcr_value,
          int24     qd_last_tcr,
          int24     qd_position_difference,
 unsigned int24     qd_time_difference)
{
   static int24 edge_time;                /* Time of first edge. Updated each period */
   static unsigned int24 service_counter; /* Counts down from services_per_irq to zero */

          int24 portion;
          int24 tmp;

/*******************************************************************************
* THREAD NAME: INIT_HD_MASTER
* DESCRIPTION: Initialize a channel to run the SC function in master mode,
*              with speed calculation based on HD parameters.
*              1. Disable matches in thread in case there are any previous
*                 pending matches. This could happen if the channel was
*                 running another function before this one.
*              2. Clear flag0 - speed calculation based on HD parameters.
*              3. Configure pin actions to no_detect on transition and
*                 no_change on match.
*              4. Configure channel to use TCR1 clock.
*              5. Select SingleMatch-SingleTransition channel mode.
*              6. Enable match and transition event handling.
*              7. Schedule first match after start_offset.
*              8. Set pin low.
*              9. Clear latches.
*             10. Reset service counter.
*******************************************************************************/
   if (hsr==SC_HSR_INIT_HD_MASTER)
   {
SC_InitHdMaster:
      DisableMatchesInThread();

      Clear(flag0);
SC_HSR_INIT_MASTER_COMMON:
      OnTransA(NoDetect);
      OnTransB(NoDetect );
      ActionUnitA(MatchTCR1, CaptureTCR1, GreaterEqual);
      SingleMatchSingleTransition();
      EnableEventHandling();

      erta = tcr1+start_offset;      // Time of first match.
      edge_time = erta;              // Save time of first match to edge_time.
      EnableMatchA();                // Schedule the match
      OnMatchA(NoChange);
      OnMatchB(NoChange);

SC_HSR_INIT_COMMON:
      Pin(SetLow);
      EnableOutputBuffer();
      ClearAllLatches();
      service_counter = services_per_irq;  /* Reset service counter */
   }
/*******************************************************************************
* THREAD NAME: INIT_HD_SLAVE
* DESCRIPTION: Initialize a channel to run the SC function in slave mode,
*              with speed calculation based on HD parameters.
*              1. Disable matches in thread in case there are any previous
*                 pending matches. This could happen if the channel was
*                 running another function before this one.
*              2. Clear flag0 - speed calculation based on HD parameters.
*              3. Set pin low.
*              4. Clear latches.
*              5. Reset service counter.
*******************************************************************************/
   else if (hsr==SC_HSR_INIT_HD_SLAVE)
   {
SC_InitHdSlave:
      DisableMatchesInThread();

      Clear(flag0);

      goto SC_HSR_INIT_COMMON;
   }
/*******************************************************************************
* THREAD NAME: INIT_QD_MASTER
* DESCRIPTION: Initialize a channel to run the SC function in master mode,
*              with speed calculation based on HD parameters.
*              1. Disable matches in thread in case there are any previous
*                 pending matches. This could happen if the channel was
*                 running another function before this one.
*              2. Set flag0 - speed calculation based on QD parameters.
*              3. Initialize last_pc and last_tcr.
*              4. Configure pin actions to no_detect on transition and
*                 no_change on match.
*              5. Configure channel to use TCR1 clock.
*              6. Select SingleMatch-SingleTransition channel mode.
*              7. Enable match and transition event handling.
*              8. Schedule first match after start_offset.
*              9. Set pin low.
*             10. Clear latches.
*             11. Reset service counter.
*******************************************************************************/
   else if (hsr==SC_HSR_INIT_QD_MASTER)
   {
SC_InitQdMaster:
      DisableMatchesInThread();

      Set(flag0);

      *p_qd_pc_sc = 0;
      qd_last_tcr = *p_qd_tcr_value;

      goto SC_HSR_INIT_MASTER_COMMON;
   }
/*******************************************************************************
* THREAD NAME: INIT_QD_SLAVE
* DESCRIPTION: Initialize a channel to run the SC function in slave mode,
*              with speed calculation based on QD parameters.
*              1. Disable matches in thread in case there are any previous
*                 pending matches. This could happen if the channel was
*                 running another function before this one.
*              2. Set flag0 - speed calculation based on QD parameters.
*              3. Initialize last_pc and last_tcr.
*              4. Set pin low.
*              5. Clear latches.
*              6. Reset service counter.
*******************************************************************************/
   else if (hsr==SC_HSR_INIT_QD_SLAVE)
   {
SC_InitQdSlave:
      DisableMatchesInThread();

      Set(flag0);

      *p_qd_pc_sc = 0;
      qd_last_tcr = *p_qd_tcr_value;

      goto SC_HSR_INIT_COMMON;
   }
/*******************************************************************************
* THREAD NAME: CALC_HD
* DESCRIPTION: Perform all SC calculations. The speed calculation is based on
*              HD parameters.
*              1. Set pin high.
*              2. Actual speed calculation based on HD parameters.
*              3. Adjustment of desired speed to speed from defined ramp.
*              4. PID Controller calculations.
*              5. Generate Interrupt each services_per_irq period.
*              6. Send link to link_chan.
*              7. Clear link service latch.
*              8. Set pin low.
*******************************************************************************/
   else if (((lsr==1) && (flag0==0)) ||
            ((hsr==SC_HSR_CALC) && (flag0==0)))
   {
SC_CALC_HD:
      Pin(SetHigh);

      /**********************************************
      * Speed Calculation.
      * omega_actual=(0x7FFFFF/(*p_hd_period))*scale
      **********************************************/
      portion = *p_hd_period;
      if (portion > max_hd_period)
      {
         omega_actual = 0;
      }
      else
      {
         portion = 0x7FFFFF/(unsigned int24)portion;
         tmp = scale;
         /* if (*p_hd_direction != 0) */
         #asm( ram diob <- p_hd_direction. )
         #asm( ram p31_24 <- by diob. )
         #asm( alu nil = p31_24, ccs. )
         if (!CC.Z) tmp = -tmp;
         omega_actual = portion * tmp;
      }
SC_CALC_COMMON:
      /**********************************************
      * RAMP.
      **********************************************/
      if (SC_RAMP_ON)
      {
         MC_RAMP(omega_desired_ramp, omega_desired, ramp_incr_up, ramp_incr_down);
      }
      else
      {
         omega_desired_ramp = omega_desired;
      }

      /**********************************************
      * PID Controller.
      **********************************************/
      if(SC_PID_ON)
      {
         MC_CTRL_PID1( p_output, error, omega_desired_ramp, omega_actual, p_pid);
      }
      else
      {
         *p_output = omega_desired_ramp;
      }

      /**********************************************
      * Interrupt each services_per_irq period.
      **********************************************/
      if ( --service_counter == 0 )
      {
         SetChannelInterrupt();
         service_counter = services_per_irq;  // Reset service counter.
      }

      LinkTo(link_chan);
      ClearLSRLatch();
      Pin(SetLow);
   }
/*******************************************************************************
* THREAD NAME: CALC_QD
* DESCRIPTION: Perform all SC calculations. The speed calculation is based on
*              QD parameters.
*              1. Set pin high.
*              2. Actual speed calculation based on QD parameters.
*              3. Adjustment of desired speed to speed from defined ramp.
*              4. PID Controller calculations.
*              5. Generate Interrupt each services_per_irq period.
*              6. Send link to link_chan.
*              7. Clear link service latch.
*              8. Set pin low.
*******************************************************************************/
   else if (((lsr==1) && (flag0==1)) ||
            ((hsr==SC_HSR_CALC) && (flag0==1)))
   {
SC_CALC_QD:
      Pin(SetHigh);

      /**********************************************
      * Speed Calculation.
      **********************************************/
      qd_position_difference = *p_qd_pc_sc;
      *p_qd_pc_sc = 0;

      qd_time_difference = *p_qd_tcr_value - qd_last_tcr;
      qd_last_tcr = *p_qd_tcr_value;

      /* omega_actual=(scale*qd_position_difference)/qd_time_difference */
      if (qd_position_difference == 0)
      {
         omega_actual = 0;
      }
      else
      {
         tmp = scale;
         if (qd_position_difference < 0)
         {
            tmp = -tmp;
         }
         portion = ((qd_position_difference * tmp)/qd_time_difference)<<16;
         /* to raise the accuracy, divide the 8 bits left shifted reminder in mach
            by qd_time_difference; the result must be shifted 8 bits left and
            added to previous rough result */
         portion += ((mach<<8)/qd_time_difference)<<8;

         if (qd_position_difference < 0)
         {
            portion = -portion;
         }
         omega_actual = portion;
      }

      goto SC_CALC_COMMON;
   }
/*******************************************************************************
* THREAD NAME: MATCH_HD
* DESCRIPTION: Schedule next periodic match and perform all SC calculations.
*              The speed calculation is based on HD parameters.
*              1. Schedule next match.
*              2. Goto SC_CALC_HD
*******************************************************************************/
   else if ((m1==1) && (flag0==0))
   {
SC_MatchHd:
      erta = edge_time+period;
      edge_time = erta;
      ClearMatchALatch();
      EnableMatchA();

      goto SC_CALC_HD;
   }
/*******************************************************************************
* THREAD NAME: MATCH_QD
* DESCRIPTION: Schedule next periodic match and perform all SC calculations.
*              The speed calculation is based on QD parameters.
*              1. Schedule next match.
*              2. Goto SC_CALC_QD
*******************************************************************************/
   else if ((m1==1) && (flag0==1))
   {
SC_MatchQd:
      erta = edge_time+period;
      edge_time = erta;
      ClearMatchALatch();
      EnableMatchA();

      goto SC_CALC_QD;
   }
/*******************************************************************************
* THREAD NAME: UNHANDLED_EVENTS
*******************************************************************************/
   else
   {
SC_Error:
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
