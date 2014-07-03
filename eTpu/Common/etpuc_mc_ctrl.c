/*******************************************************************************
*
*  FREESCALE SEMICONDUCTOR INC. 2004
*  ALL RIGHTS RESERVED
*  COPYRIGHT (c)
*
********************************************************************************
*
*  DESCRIPTION:
*   This file contains the eTPU implementation of the various type of the
*   controllers.
*
********************************************************************************
*
*  REVISION HISTORY:
*
*  REVISION    AUTHOR       DATE        DESCRIPTION OF CHANGE
*  --------    -----------  ---------   ------------------------------------
*  0.1         P. Uhlir     09/Mar/04   Initial version of the file
*  1.0         M. Brejl     22/Feb/05   PID implementation in assembler.
*  1.1         M. Brejl     17/Oct/05   PID controller function returns half
*                                       of the output value. It is corrected by
*                                       macros mc_ctrl_pid and mc_ctrl_pid2.
*                                       The mc_ctrl_pid3 returns the half value.
*                                       The mc_ctrl_pid4 returns a quarter value.
*  1.2         M. Brejl     10/Nov/05   Fixed for ETPU_C 1.0.7.
*******************************************************************************/
#ifndef __ETPU_MC_CTRL_C
#define __ETPU_MC_CTRL_C

#include "etpuc_mc_ctrl.h"

/*******************************************************************************

  MODULE:    mc_ctrl_pid()

  DESCRIPTION:
    Function calculates the PID controller.

    Proportional action: Responds quickly to changes in error deviation.
    Integral action    : Removes the offsets between the plants output
                         and reference. The action is slower.
    Derivative action  : Speeds up the system response by adding in control
                         action proportional to the rate of change of the
                         feedback error. This is susceptible to noise in
                         error signal, which limits the derivative gain.
                         When present it allows larger values of Kp and Ki
                         to be used than possible in pure PI controllers,
                         but large values of derivative gain Kd causes
                         instability.


                                     p_mc_ctrl_pid (controller parameters
                                                    & state variables)
                                           |
                                       ____o____
                           ---        |         |
   desired_value w(k) --->| + |  e(k) |         |
                          |   |------>|         |  u(k)
    actual_value y(k) -o->| - |       |  P I D  |>--------------  controller
                       |   ---        |         |                 output
                       |         y(k) |         |
                        ------------->|         |
                                      |_________|


    Symbolic description:

      w(t) - desired_value                     (continuous time domain)
      y(t) - actual_value (feedback)           (continuous time domain)
      e(t) - input error                       (continuous time domain)
      u(t) - controller output                 (continuous time domain)

      w(k) - desired_value in step k             (discrete time domain)
      y(k) - actual_value (feedback) in step k   (discrete time domain)
      e(k) - input error in step k               (discrete time domain)
      u(k) - controller output in step k         (discrete time domain)

      u_max - maximal range of u(k)
      w_max - maximal range of w(k)
      y_max - maximal range of y(k)
      e_max - maximal range of e(k)


      The PID controller algorithm in continuous time domain is given by:

                              /t               de(t)
      u(t) = K[ e(t) + 1/Ti * | e(t)dt + Td * ----- ]                      (1)
                              /0                dt

      Where:
         K.................PID controller gain
         Ti................integral time constant
         Td................derivative time constant

      Lets transform the equation:

         Kp =  K...........proportional gain

                    T
         Ki =  K * ---.....integral gain
                    Ti

                    Td
         Kd =  K * ---.....derivative gain
                    T


                              /t              de(t)
      u(t) = Kp * e(t) + Ki * | e(t)dt + Kd * -----                        (2)
                              /0               dt

      e(t) = w(t) - y(t)                                                   (3)

      PID controller expressed in fractional arithmetic:

       u_f(k) =   Kp_sc *  e_f(k)
                + Ki_sc *  e_f(k) + u_f(k - 1)
                + Kd_sc * (e_f(k) - e_f(k1))                               (4)

      e(k) = w(k) - y(k)                                                   (5)

      when:
             w_max = y_max = e_max                                         (6)

      equation (5) can be expressed in fractional
      arithmetic as follows:

      e_f(k) = w_f(k) - y_f(k)                                             (7)

      u_f(k) = u(k)/u_max
      w_f(k) = w(k)/w_max
      y_f(k) = y(k)/y_max
      e_f(k) = e(k)/e_max

                   e_max       e_max
      Kp_sc = Kp * ----- = K * -----         (proportional scaled gain)    (8)
                   u_max       u_max

                   e_max        T    e_max
      Ki_sc = Ki * ----- = K * --- * -----   (integral scaled gain)        (9)
                   u_max        Ti   u_max

                   e_max        Td   e_max
      Kd_sc = Kd * ----- = K * --- * -----   (derivative scaled gain)      (10)
                   u_max        T    u_max

    The dynamic range of the proportional, integral and derivative
    gains can be from range <0..256>.

  ARGUMENTS:
    fract24         error           - controller input error value
    mc_ctrl_pid_t * p_pid           - controller parameters & state variables

  RETURNS:
    fract24    controller output

  RANGE ISSUES:
    None

  SPECIAL ISSUES:
    None

*******************************************************************************/
fract24 MC_CTRL_PID( /*fract24 error,
                     mc_ctrl_pid_t *p_pid*/)
{
#asm
  /* Inputs:                                          */
  /* register a ...... error */
  /* register diob ... p_pid */

  /* Limit error to range <MIN24, MAX24>              */
  if V == 0 then goto MC_CTRL_PID_I, flush.
  if N == 0 then goto MC_CTRL_PID_I, no_flush.
  alu a = 0x800000.
  /*--------*/
  alu a = 0x7FFFFF.
MC_CTRL_PID_I:
  /* Calculate the integral portion                   */
  /* put I_k1 to mac */
  alu c = diob;        // c = p_pid
  ram p <- by diob++.  // p = p_pid->I_k1_h
  alu mach = p;        // mach = p_pid->I_k1_h
  ram p <- by diob++.  // p = p_pid->I_k1_l
  alu macl = p;        // mach = p_pid->I_k1_l
  ram p <- by diob++.  // p = p_pid->I_gain
  /* accumulate integral portion */
  mdu a macs p.        // error * p_pid->I_gain
  /* limit the integral portion                       */
  alu d = a;
  ram p <- by diob++.  // p = p_pid->limit_negative
  alu b = p;           // b = p_pid->limit_negative
  ram p <- by diob++.  // p = p_pid->limit_positive
  alu sr = p.          // sr = p_pid->limit_positive
  /* if (mach >= p_pid->limit_positive)       */
  alu nil = mach - sr, ccs.
  if lt == 0 then goto MC_CTRL_PID_I_LIM_POS, no_flush.
  alu diob = c.        // diob = p_pid
  /*------------*/
  /* if (mach <= p_pid->limit_negative)       */
  alu a = mach.
  alu nil = b - a, ccs.
  if lt == 1 then goto MC_CTRL_PID_I_LIM_NO, flush.
  /*------------*/
  alu p = b.           // a = p_pid->limit_negative
MC_CTRL_PID_I_LIM_POS:
  alu mach = p.        // mach = p_pid->limit_negative
  alu macl = #0.       // macl = 0
MC_CTRL_PID_I_LIM_NO:
  /* save the integral portion for next calculation               */
  alu p = mach;        // p = mach
  ram p -> by diob++.  // p_pid->I_k1_h = mach
  alu p = macl;        // p = macl
  ram p -> by diob.    // p_pid->I_k1_l = macl

  /* Calculate the proportional portion                           */
  alu diob = c + 0x14.
  ram p31_0 <- by diob++. // p = p_pid->P_gain
  mdu d macs p.        // error * p_pid->P_gain

  /* Optionally calculate the derivative portion                 */
  if p_26 == 0 then goto MC_CTRL_PID_LIMIT, flush.
  /*------------*/
  ram p <- by diob++.  // p = p_pid->error_k1
  alu a = d - p, ccs.  // a = (error - p_pid->error_k1)
  if v == 0 then goto MC_CTRL_PID_D1, no_flush.
  ram p <- by diob.    // p = p_pid->D_gain
  /*------------*/
  if n == 0 then goto MC_CTRL_PID_D1, no_flush.
  alu a = #0x800000.   // a = MIN24 = (-2^23)
  /*------------*/
  alu a = #0x7FFFFF.   // a = MAX24 = (+2^23-1)
MC_CTRL_PID_D1:
  mdu a macs p.        // a * p_pid->D_gain
  /* save error for next calculation during the macs operation */
  alu p = d;           // p = error
  ram p -> by --diob.  // p_pid->error_k1 = error

MC_CTRL_PID_LIMIT:
  /* Limit the controller output                      */
  /* if (mach >= p_pid->limit_positive)       */
  alu a = sr.          // a = p_pid->limit_positive
  alu p31_24 = #MC_CTRL_PID_SATUR_POS_FLAG.
  alu nil = mach - sr, ccs.
  if lt == 0 then goto MC_CTRL_PID_LIMIT_POS, flush.
  /*------------*/
  /* if (mach <= p_pid->limit_negative)       */
  alu a = mach.
  alu nil = b - a, ccs.
  if lt == 1 then goto MC_CTRL_PID_LIMIT_NO, no_flush.
  alu p31_24 = #MC_CTRL_PID_NO_SATUR_FLAG.
  /*------------*/
  alu a = b.           // a = p_pid->limit_negative
  alu p31_24 = #MC_CTRL_PID_SATUR_NEG_FLAG.
MC_CTRL_PID_LIMIT_POS:
  alu mach = a.        // mach = p_pid->limit_negative
  alu macl = #0.       // macl = 0
MC_CTRL_PID_LIMIT_NO:
  ram p31_24 -> by diob. // p_pid->flags

  /* Get 24-bit output */
  alu a = mach.
  alu a =<<8 a.
  alu p = macl.
  return, no_flush.
  alu a = p23_16 + a, ccs.
  /* Outputs:                                          */
  /* register d ...... error  */
  /* register a ...... output/2 */
#endasm

#endif /* __ETPU_MC_CTRL_C */
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
