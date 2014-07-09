/*******************************************************************************
*
*  FREESCALE SEMICONDUCTOR INC. 2006
*  ALL RIGHTS RESERVED
*  COPYRIGHT (c)
*  
********************************************************************************
*
*  DESCRIPTION:
*   The ACIMVHZ eTPU function performs the simple V/Hz control of the
*   AC induction motor 
*
********************************************************************************
*
*  REVISION HISTORY:
*                                                         
*  REVISION    AUTHOR       DATE         DESCRIPTION OF CHANGE                  
*  --------    -----------  ---------    ------------------------------------                  
*  0.1         M. Brejl     09/Mar/04    Initial version of the file.
*  0.2         P. Uhlir     15/Mar/04    The ACIMVHZ eTPU function interface
*                                        change.
*  0.3         M. Princ     16/Jun/05    SinCos and ParkInv implemented.
*  0.4         M. Brejl     08/Jul/05    Rebuild.
*  1.0         M. Brejl     17/Oct/05    No saturations, outputs in format 3.21.
*  1.2         M. Princ     27/Mar/06    New ripple elim implementation.
*
*******************************************************************************/
#ifdef __ETEC__  // ASH WARE
#include <etpu_std.h>
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
#ifndef NO_OPT
#pragma verify_wctl  ACIMVHZ                165  steps  44 rams
#endif
#pragma exclude_wctl ACIMVHZ::ACIMVHZ_Error
#endif

#ifdef ACIMVHZ_FUNCTION_NUMBER /* function is being compiled as part of a set?*/
#pragma ETPU_function ACIMVHZ, standard @ ACIMVHZ_FUNCTION_NUMBER;
#else
#pragma ETPU_function ACIMVHZ, standard;
#endif

/*******************************************************************************
*  Includes.
*******************************************************************************/
#include "etpuc_mc_ramp.c"
#include "etpuc_mc_util.c"
#include "etpuc_mc_elim.c"
#include "etpuc_mc_sin.c"
#include "etpuc_pwmm.h"

/*******************************************************************************
    Definitions. 
*******************************************************************************/

/* HSR values.                  */
#define ACIMVHZ_HSR_INIT_MASTER_OFF      7
#define ACIMVHZ_HSR_INIT_MASTER_ON       6
#define ACIMVHZ_HSR_INIT_SLAVE_OFF       5
#define ACIMVHZ_HSR_INIT_SLAVE_ON        4
#define ACIMVHZ_HSR_UPDATE               1

/* FM modes                     */
#define ACIMVHZ_MODE_AMPL_ANGLE         (channel.FM0 == 0)
#define ACIMVHZ_MODE_ALPHA_BETA         (channel.FM0 == 1)

/*******************************************************************************
* Channel Flag usage:
* Flag0 is used to select inclusion of speed ramp.
*    0 = Speed Ramp OFF
*    1 = Speed Ramp ON
*******************************************************************************/

/*******************************************************************************
* NAME: ACIMVHZ
*
* DESCRIPTION: ACIM V/Hz control loop.
* 
* FUNCTION PARAMETERS:
*  period            - Applies in master mode only:
*                      Update period (in TCR1 ticks).
*  start_offset      - Applies in master mode only:
*                      Offset from initialization to first match (in TCR1 ticks)
*  services_per_irq  - Number of updates per one IRQ to CPU.
*  link_chan         - A channel to send link to after update.
*  *p_output         - Pointer to output value is written to.
*  omega_desired     - Desired value of speed.
*  omega_desired_ramp- Desired value of speed after ramp.
*  ramp_incr_up      - Ramp parameter: increment up.
*  ramp_incr_down    - Ramp parameter: increment down.
*  period_scale      - 0x800000*pole_pairs*speed_range_rpm*2/60/update_freq
*  theta             - Angle position of output voltage vector.
*  voltage           - Amplitude of output voltage vector.
*  v_boost           - V/Hz ramp boost voltage (format 3.21).
*  vhz_slope         - V/Hz ramp slope (format 3.21).
*  u_dc_bus_actual   - Actual DC-bus voltage.
*  sin_cos           - Structure of sin(theta) and cos(theta) values.
*  *p_outputs        - Pointer to structure of PWMMAC inputs.
*  inv_mod_index     - Inverse modulation index, dependent on the type of 
*                      modulation technique being used by PWMMAC.
*                      -------------+------------+---------------
*                      Modulation   | Inverse    | inv_mod_index 
*                      Type         | Mod. Index | (fract 1.23)  
*                      -------------+------------+---------------
*                      Sine Wave    | 1.000000   |  0x7FFFFF     
*                      Sine 3rd harm| 0.866025   |  0x6ED9EC     
*                      Space Vector | 0.866025   |  0x6ED9EC     
*                      -------------+------------+---------------
*******************************************************************************/
void ACIMVHZ( int24         period,
              int24         start_offset,
     unsigned int24         services_per_irq,
     unsigned int8          link_chan,
              fract24       omega_desired,
              fract24       omega_desired_ramp,
              fract24       ramp_incr_up,
              fract24       ramp_incr_down,
              int24         period_scale,
              fract24       theta,
              fract24       voltage,
              fract24       v_boost,
              fract24       vhz_slope,
     unsigned fract24       u_dc_bus_actual,
              sin_cos_t     sin_cos,
              pwmm_inputs_t * p_outputs,
              fract24       inv_mod_index
            )
{
   static int24 edge_time;                /* Time of first edge. Updated each period */
   static unsigned int24 service_counter; /* Counts down from services_per_irq to zero */

/*******************************************************************************
* THREAD NAME: INIT_MASTER_SPEED_RAMP_OFF
* DESCRIPTION: Initialize a channel to run the ACIMVHZ function in master mode,
*              with speed ramp calculation off.
*              1. Disable matches in thread in case there are any previous
*                 pending matches. This could happen if the channel was
*                 running another function before this one.
*              2. Clear flag0 - speed ramp calculation off.
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
   if (hsr == ACIMVHZ_HSR_INIT_MASTER_OFF)
   {
ACIMVHZ_InitMasterOff:
      DisableMatchesInThread();

      Clear(flag0);
ACIMVHZ_HSR_INIT_MASTER_COMMON:
      OnTransA(NoDetect);
      OnTransB(NoDetect );
      ActionUnitA(MatchTCR1, CaptureTCR1, GreaterEqual);
      SingleMatchSingleTransition();
      EnableEventHandling(); 

      erta = tcr1+start_offset;    /* Time of first match. */
      edge_time = erta;            /* Save time of first match to edge_time. */
      EnableMatchA();              /* Schedule the match */
      OnMatchA(NoChange);
      OnMatchB(NoChange);

ACIMVHZ_HSR_INIT_COMMON:
      Pin(SetLow);
      EnableOutputBuffer();
      ClearAllLatches();
      service_counter = services_per_irq;  /* Reset service counter */
   }
/*******************************************************************************
* THREAD NAME: INIT_MASTER_SPEED_RAMP_ON
* DESCRIPTION: Initialize a channel to run the ACIMVHZ function in master mode,
*              with speed ramp calculation on.
*              1. Disable matches in thread in case there are any previous
*                 pending matches. This could happen if the channel was
*                 running another function before this one.
*              2. Set flag0 - speed ramp calculation on.
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
   else if (hsr == ACIMVHZ_HSR_INIT_MASTER_ON)
   {
ACIMVHZ_InitMasterOn:
      DisableMatchesInThread();

      Set(flag0);

      goto ACIMVHZ_HSR_INIT_MASTER_COMMON;
   }
/*******************************************************************************
* THREAD NAME: INIT_SLAVE_SPEED_RAMP_OFF
* DESCRIPTION: Initialize a channel to run the ACMVHZ function in slave mode,
*              with speed ramp calculation off.
*              1. Disable matches in thread in case there are any previous
*                 pending matches. This could happen if the channel was
*                 running another function before this one.
*              2. Clear flag0 - speed ramp calculation off.
*              3. Set pin low.
*              4. Clear latches.
*              5. Reset service counter.
*******************************************************************************/
   else if (hsr == ACIMVHZ_HSR_INIT_SLAVE_OFF)
   {
ACIMVHZ_InitSlaveOff:
      DisableMatchesInThread();

      Clear(flag0);

      goto ACIMVHZ_HSR_INIT_COMMON;
   }
/*******************************************************************************
* THREAD NAME: INIT_SLAVE_SPEED_RAMP_ON
* DESCRIPTION: Initialize a channel to run the ACIMVHZ function in slave mode,
*              with speed ramp calculation on.
*              1. Disable matches in thread in case there are any previous
*                 pending matches. This could happen if the channel was
*                 running another function before this one.
*              2. Set flag0 - speed ramp calculation on.
*              3. Set pin low.
*              4. Clear latches.
*              5. Reset service counter.
*******************************************************************************/
   else if (hsr == ACIMVHZ_HSR_INIT_SLAVE_ON)
   {
ACIMVHZ_InitSlaveOn:
      DisableMatchesInThread();

      Set(flag0);

      goto ACIMVHZ_HSR_INIT_COMMON;
   }
/*******************************************************************************
* THREAD NAME: UPDATE ON LINK/HSR RAMP_OFF
* DESCRIPTION: Perform all ACIMVHZ calculations. The speed ramp is off.
*              1. Set pin high.
*              2. Set omega_desired_ramp = omega_desired.
*              3. Update applied voltage using V/Hz ramp..
*              4. Eliminate DC-bus ripple.
*              5. Update angle theta.
*              6. Optionally transform amplitude (voltage) and angle (theta)
*                 to orthogonal coordinates (alpha, beta) using sin_cos and
*                 Inverse Park Transformation.
*              7. Write outputs to PWMMAC inputs.
*              8. Generate interrupt each services_per_irq period.
*              9. Send link to link_chan.
*             10. Clear link service latch.
*             11. Set pin low.
*******************************************************************************/
   else if (((lsr==1) && (flag0==0)) || 
            ((hsr==ACIMVHZ_HSR_UPDATE) && (flag0==0)))
   {
ACIMVHZ_UpdateRampOff:
      /* set pin high to indicate start of thread */
      Pin(SetHigh);
      
      omega_desired_ramp = omega_desired;
    
      goto ACIMVHZ_CALC_COMMON;
   }
/*******************************************************************************
* THREAD NAME: UPDATE ON LINK/HSR SPEED_RAMP_ON
* DESCRIPTION: Perform all ACIMVHZ calculations. The speed ramp is on.
*              1. Set pin high.
*              2. Update omega_desired_ramp using speed ramp.
*              3. Update applied voltage using V/Hz ramp..
*              4. Eliminate DC-bus ripple.
*              5. Update angle theta.
*              6. Optionally transform amplitude (voltage) and angle (theta)
*                 to orthogonal coordinates (alpha, beta) using sin_cos and
*                 Inverse Park Transformation.
*              7. Write outputs to PWMMAC inputs.
*              8. Generate interrupt each services_per_irq period.
*              9. Send link to link_chan.
*             10. Clear link service latch.
*             11. Set pin low.
*******************************************************************************/
   else if (((lsr==1) && (flag0==1)) || 
            ((hsr==ACIMVHZ_HSR_UPDATE) && (flag0==1)))
   {
ACIMVHZ_CALC_ON:
      /* set pin high to indicate start of thread */
      Pin(SetHigh);
    
      /**********************************************
      * Speed Ramp Calculation.
      **********************************************/
      MC_RAMP(omega_desired_ramp, omega_desired, ramp_incr_up, ramp_incr_down);

ACIMVHZ_CALC_COMMON:
      /**********************************************
      * Update applied voltage amplitude using V/Hz ramp.
      **********************************************/
      voltage = v_boost + vhz_slope * mc_abs(omega_desired_ramp+0);

      /* volatage is in format 3.21, because vhz_slope and v_boost are 3.21. */

      /**********************************************
      * Eliminate DC-bus ripple.
      **********************************************/
      MC_RIPPLE_ELIM(voltage, u_dc_bus_actual, inv_mod_index);

      /**********************************************
      * Update angle of the output vector.
      **********************************************/
#ifdef __ETEC__  // ASH WARE
	  theta += mulir(period_scale, omega_desired_ramp);
#else  // Byte Craft
      theta += omega_desired_ramp * period_scale;
#endif

      if (ACIMVHZ_MODE_ALPHA_BETA)
      {
         /**********************************************
         * Calculate sin(theta) and cos(theta).
         **********************************************/
         MC_SINCOS_PIX_I(theta, sin_cos);
         MC_SINCOS_PIX_II(theta, sin_cos);

         /**********************************************
         * Calculate alpha and beta components and write to PWMMAC.
         * (Inverse Park Transformation)         
         **********************************************/
#ifdef __ETEC__  // ASH WARE
         p_outputs->A = voltage * sin_cos.cos;
         p_outputs->B = voltage * sin_cos.sin;
#else  // Byte Craft
         register_p    p;

         #asm( ram diob <- p_outputs. )
         p = (int24)voltage * sin_cos.cos;
         #asm( ram p -> by diob++. )
         p = (int24)voltage * sin_cos.sin;
         #asm( ram p -> by diob. )
#endif
      }
      else
      {
         /**********************************************
         * Write angle and amplitude to PWMMAC.
         **********************************************/
         /*
         p_outputs->A = theta;
         p_outputs->B = voltage;
         */
         #asm( ram diob <- p_outputs. )
         #asm( ram p <- theta. )
         #asm( ram p -> by diob++. )
         #asm( ram p <- voltage. )
         #asm( ram p -> by diob. )
      }

      /**********************************************
      * Interrupt each services_per_irq period.
      **********************************************/
      if ( --service_counter == 0 )
      {
         SetChannelInterrupt();
         service_counter = services_per_irq;  /* Reset service counter. */
      }

      /* send link to link_chan */
      LinkTo(link_chan);
      /* clear link service request */
      ClearLSRLatch();
      /* set pin low to indicate end of thread */
      Pin(SetLow);
   }
/*******************************************************************************
* THREAD NAME: UPDATE ON MATCH SPEED_RAMP_OFF
* DESCRIPTION: Schedule next periodic match and perform all ACIMVHZ 
*              calculations.  The speed ramp is off.
*              1. Set pin high.
*              2. Schedule next match.
*              3. omega_desired_ramp = omega_desired
*              4. Goto ACIMVHZ_CALC_COMMON
*******************************************************************************/
   else if ((m1==1) && (flag0==0))
   {
ACIMVHZ_UpdateOnMatchRampOff:
      /* set pin high to indicate start of thread */
      Pin(SetHigh);

      /* schedule next match */
      erta = edge_time + period;
      edge_time = erta;
      ClearMatchALatch();
      EnableMatchA();

      omega_desired_ramp = omega_desired;

      goto ACIMVHZ_CALC_COMMON;
   }
/*******************************************************************************
* THREAD NAME: UPDATE ON MATCH SPEED_RAMP_ON
* DESCRIPTION: Schedule next periodic match and perform all ACIMVHZ 
*              calculations.  The speed ramp is on.
*              1. Set pin high.
*              2. Schedule next match.
*              3. Goto ACIMVHZ_CALC_ON
*******************************************************************************/
   else if ((m1==1) && (flag0==1))
   {
ACIMVHZ_UpdateOnMatchRampOn:
      /* set pin high to indicate start of thread */
      Pin(SetHigh);

      /* schedule next match */
      erta = edge_time+period;
      edge_time = erta;
      ClearMatchALatch();
      EnableMatchA();

      goto ACIMVHZ_CALC_ON;
   }
/*******************************************************************************
* THREAD NAME: UNHANDLED_EVENTS
*******************************************************************************/
   else 
   {
ACIMVHZ_Error:
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
#pragma write h, (::ETPUfilename (cpu/etpu_acimvhz_auto.h));
#pragma write h, (/* WARNING this file is automatically generated DO NOT EDIT IT! */);
#pragma write h, (/*                                                              */);
#pragma write h, (/* This file provides an interface between eTPU code and CPU    */);
#pragma write h, (/* code. All references to the ACIMVHZ function should be made  */);
#pragma write h, (/* with information in this file. This allows only symbolic     */);
#pragma write h, (/* information to be referenced which allows the eTPU code to be*/);
#pragma write h, (/* optimized without effecting the CPU code.                    */);
#pragma write h, (/****************************************************************/);
#pragma write h, (#ifndef _ETPU_ACIMVHZ_AUTO_H_ );
#pragma write h, (#define _ETPU_ACIMVHZ_AUTO_H_ );
#pragma write h, ( );
#pragma write h, (/****************************************************************);
#pragma write h, (* Function Configuration Information. );
#pragma write h, (****************************************************************/);
#pragma write h, (::ETPUliteral(#define FS_ETPU_ACIMVHZ_FUNCTION_NUMBER        )  ::ETPUfunctionnumber(ACIMVHZ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ACIMVHZ_TABLE_SELECT           )  ::ETPUentrytype(ACIMVHZ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ACIMVHZ_NUM_PARMS              )  ::ETPUram(ACIMVHZ) );
#pragma write h, ( );
#pragma write h, (/****************************************************************);
#pragma write h, (* Host Service Request Definitions. );
#pragma write h, (****************************************************************/);
#pragma write h, (::ETPUliteral(#define FS_ETPU_ACIMVHZ_HSR_INIT_MASTER_OFF    )  ACIMVHZ_HSR_INIT_MASTER_OFF );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ACIMVHZ_HSR_INIT_MASTER_ON     )  ACIMVHZ_HSR_INIT_MASTER_ON  );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ACIMVHZ_HSR_INIT_SLAVE_OFF     )  ACIMVHZ_HSR_INIT_SLAVE_OFF  );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ACIMVHZ_HSR_INIT_SLAVE_ON      )  ACIMVHZ_HSR_INIT_SLAVE_ON   );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ACIMVHZ_HSR_UPDATE             )  ACIMVHZ_HSR_UPDATE );
#pragma write h, ( );
#pragma write h, (/****************************************************************);
#pragma write h, (* ACIMVHZ eTPU Function Parameter Definitions. );
#pragma write h, (****************************************************************/);
#pragma write h, (::ETPUliteral(#define FS_ETPU_ACIMVHZ_PERIOD_OFFSET          ) ::ETPUlocation (ACIMVHZ, period) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ACIMVHZ_STARTOFFSET_OFFSET     ) ::ETPUlocation (ACIMVHZ, start_offset) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ACIMVHZ_SERVICESPERIRQ_OFFSET  ) ::ETPUlocation (ACIMVHZ, services_per_irq) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ACIMVHZ_LINKCHAN_OFFSET        ) ::ETPUlocation (ACIMVHZ, link_chan) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ACIMVHZ_OMEGADESIRED_OFFSET    ) ::ETPUlocation (ACIMVHZ, omega_desired) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ACIMVHZ_OMEGADESIREDRAMP_OFFSET) ::ETPUlocation (ACIMVHZ, omega_desired_ramp) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ACIMVHZ_RAMPINCRUP_OFFSET      ) ::ETPUlocation (ACIMVHZ, ramp_incr_up) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ACIMVHZ_RAMPINCRDOWN_OFFSET    ) ::ETPUlocation (ACIMVHZ, ramp_incr_down) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ACIMVHZ_PERIODSCALE_OFFSET     ) ::ETPUlocation (ACIMVHZ, period_scale) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ACIMVHZ_THETA_OFFSET           ) ::ETPUlocation (ACIMVHZ, theta) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ACIMVHZ_VOLTAGE_OFFSET         ) ::ETPUlocation (ACIMVHZ, voltage) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ACIMVHZ_VBOOST_OFFSET          ) ::ETPUlocation (ACIMVHZ, v_boost) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ACIMVHZ_VHZSLOPE_OFFSET        ) ::ETPUlocation (ACIMVHZ, vhz_slope) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ACIMVHZ_UDCBUSACTUAL_OFFSET    ) ::ETPUlocation (ACIMVHZ, u_dc_bus_actual) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ACIMVHZ_SINCOS_OFFSET          ) ::ETPUlocation (ACIMVHZ, sin_cos) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ACIMVHZ_POUTPUTS_OFFSET        ) ::ETPUlocation (ACIMVHZ, p_outputs) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ACIMVHZ_INVMODINDEX_OFFSET     ) ::ETPUlocation (ACIMVHZ, inv_mod_index) );
#pragma write h, ( );
#pragma write h, (/****************************************************************);
#pragma write h, (* Value Definitions. );
#pragma write h, (****************************************************************/);
#pragma write h, (::ETPUliteral(#define FS_ETPU_ACIMVHZ_FM_ANGLE_AMPL   ) 0 );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ACIMVHZ_FM_ALPHA_BETA   ) 1 );
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
