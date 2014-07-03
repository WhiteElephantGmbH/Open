/*******************************************************************************
*
*  FREESCALE SEMICONDUCTOR INC. 2006
*  ALL RIGHTS RESERVED
*  COPYRIGHT (c)
*
********************************************************************************
*
*  DESCRIPTION:
*   The PMSMVC eTPU function performs the vector control current loop of the
*   Permanent Magnet Synchronous Motor (PMSM).
*
********************************************************************************
*
*  REVISION HISTORY:
*
*  REVISION    AUTHOR       DATE         DESCRIPTION OF CHANGE
*  --------    -----------  ---------    ------------------------------------
*  0.1         M. Brejl     09/Aug/05    Initial version of the file.
*  0.2         M. Brejl     07/Oct/05    PID Off option added.
*  1.0         M. Brejl     14/Oct/05    Outputs in format 3.21.
*  1.1         M. Brejl     07/Dec/06    PID controller call using new macro.
*  1.2         M. Princ     27/Mar/06    New ripple elim implementation + circle
*                                        limitation.
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
#pragma verify_wctl  PMSMVC                300  steps  80 rams
#endif
#pragma exclude_wctl PMSMVC::PMSMVC_Error
#endif

#ifdef PMSMVC_FUNCTION_NUMBER /* function is being compiled as part of a set?*/
#pragma ETPU_function PMSMVC, standard @ PMSMVC_FUNCTION_NUMBER;
#else
#pragma ETPU_function PMSMVC, standard;
#endif

/*******************************************************************************
*  Includes.
*******************************************************************************/
#include "etpuc_mc_sin.c"
#include "etpuc_mc_tran.c"
#include "etpuc_mc_ctrl.c"
#include "etpuc_mc_elim.c"
#include "etpuc_mc_util.c"
#include "etpuc_pwmm.h"

/*******************************************************************************
    Definitions.
*******************************************************************************/

/* HSR values.                  */
#define PMSMVC_HSR_INIT_MASTER          7
#define PMSMVC_HSR_INIT_SLAVE           5
#define PMSMVC_HSR_UPDATE               1

/* FM modes                     */
#define PMSMVC_PID_OFF                 (channel.FM0 == 0)
#define PMSMVC_PID_ON                  (channel.FM0 == 1)
#define PMSMVC_CIRCLE_LIMITATION_OFF   (channel.FM1 == 0)
#define PMSMVC_CIRCLE_LIMITATION_ON    (channel.FM1 == 1)

/* Circle limitation flag */
#define PMSMVC_CIRCLE_LIMIT_ON          1
#define PMSMVC_CIRCLE_LIMIT_OFF         0

/*******************************************************************************
* Channel Flag usage:
* Flag0 is not used.
*******************************************************************************/

/*******************************************************************************
* NAME: PMSMVC
*
* DESCRIPTION: PMSM vector control current loop.
*
* FUNCTION PARAMETERS:
*  period            - Applies in master mode only:
*                      Update period (in TCR1 ticks).
*  start_offset      - Applies in master mode only:
*                      Offset from initialization to first match (in TCR1 ticks)
*  services_per_irq  - Number of updates per one IRQ to CPU.
*  link_chan         - A channel to send link to after update.
*  K_Ld              - Motor induction in d-coordinates (format 3.21).
*  K_Lq              - Motor induction in q-coordinates (format 3.21).
*  K_e               - Motor electrical constant (format 3.21).
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
*  mod_index         - Modulation index, dependent on the type of 
*                      modulation technique being used by PWMMAC.
*                      -------------+------------+---------------
*                      Modulation   | Mod. Index |  mod_index 
*                      Type         |            | (format 2.22)  
*                      -------------+------------+---------------
*                      Sine Wave    | 1.000000   |  0x400000     
*                      Sine 3rd harm| 1.154701   |  0x49E69F     
*                      Space Vector | 1.154701   |  0x49E69F     
*                      -------------+------------+---------------
*  circle_limitation_flag - This flag is set when u_d & u_q vector components 
*                      are limited to the circle.
*  i_abc             - Phase currents in 3-phase stationary reference frame.
*  i_ab              - Phase currents in 2-phase orthog. stationary ref. frame.
*  i_dq              - Phase currents in 2-phase orthogonal rotating ref. frame.
*  i_dq_desired      - Desired phase currents in 2-phase orthogonal rotating
*                      reference frame.
*  u_dq              - D and Q components of the stator voltages 
*                      in 2-phase orthogonal rotating reference frame.
*  u_ab              - Alpha and beta components of the stator voltages 
*                      in 2-phase orthogonal stationary reference frame.
*  *p_outputs        - Pointer to structure of PWMMAC inputs.
*  *p_qd_pc,         - Pointer to QD position counter (PC).
*  encoder_scale     - Constant equal to 
*                      pole_pairs * 0x1000000/(4*encoder_pulses)
*  theta             - Angle position of output voltage vector.
*  sin_cos           - Structure of sin(theta) and cos(theta) values.
*  *p_sc_omega_actual- Pointer to SC omega_actual - actual motor speed.
*  *p_pid_d          - Pointer to structure of PID parameters for D controller.
*  *p_pid_q          - Pointer to structure of PID parameters for Q controller.
*  u_dc_bus_actual   - Actual DC-bus voltage.
*******************************************************************************/
void PMSMVC(  int24            period,
              int24            start_offset,
     unsigned int24            services_per_irq,
     unsigned int8             link_chan,
              fract24          K_Ld,    /* format 3.21 */
              fract24          K_Lq,    /* format 3.21 */
              fract24          K_e,     /* format 3.21 */
              fract24          inv_mod_index,
              fract24          mod_index, /* format 2.22 */
              int8             circle_limitation_flag,
              phase_currents_t i_abc,
              alpha_beta_t     i_ab,
              d_q_t            i_dq,
              d_q_t            i_dq_desired,
              d_q_t            u_dq,
              alpha_beta_t     u_ab,
              pwmm_inputs_t  * p_outputs,
              int24          * p_qd_pc,
              int24            encoder_scale,
              fract24          theta,
              sin_cos_t        sin_cos,
              fract24        * p_sc_omega_actual,
     unsigned int24          * p_pid_d,   /* mc_ctrl_pid_t *  */
     unsigned int24          * p_pid_q,   /* mc_ctrl_pid_t *  */
     unsigned fract24          u_dc_bus_actual
            )
{
   static          int24 edge_time;       /* Time of first edge. Updated each period */
   static unsigned int24 service_counter; /* Counts down from services_per_irq to zero */
   static unsigned int8  state;           /* State of calculation chain */

   fract24 omega_actual;

/*******************************************************************************
* THREAD NAME: INIT_MASTER
* DESCRIPTION: Initialize a channel to run the PMSMVC function in master mode.
*              1. Disable matches in thread in case there are any previous
*                 pending matches. This could happen if the channel was
*                 running another function before this one.
*              2. Configure pin actions to no_detect on transition and
*                 no_change on match.
*              3. Configure channel to use TCR1 clock.
*              4. Select SingleMatch-SingleTransition channel mode.
*              5. Enable match and transition event handling.
*              6. Schedule first match after start_offset.
*              7. Reset state parameter.
*              8. Set pin low.
*              9. Enable output buffer.
*              9. Clear latches.
*              10.Reset service counter.
*******************************************************************************/
   if (hsr == PMSMVC_HSR_INIT_MASTER)
   {
PMSMVC_InitMaster:
      DisableMatchesInThread();

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

PMSMVC_HSR_INIT_COMMON:
      state = 0;
      Pin(SetLow);
      EnableOutputBuffer();
      ClearAllLatches();
      service_counter = services_per_irq;  /* Reset service counter */
   }
/*******************************************************************************
* THREAD NAME: INIT_SLAVE
* DESCRIPTION: Initialize a channel to run the PMSMVC function in slave mode.
*              1. Disable matches in thread in case there are any previous
*                 pending matches. This could happen if the channel was
*                 running another function before this one.
*              2. Reset state parameter
*              3. Set pin low.
*              4. Enable output buffer.
*              5. Clear latches.
*              6. Reset service counter.
*******************************************************************************/
   else if (hsr == PMSMVC_HSR_INIT_SLAVE)
   {
PMSMVC_InitSlave:
      DisableMatchesInThread();

      goto PMSMVC_HSR_INIT_COMMON;
   }
/*******************************************************************************
* THREAD NAME: UPDATE ON LINK/HSR
* DESCRIPTION: Chain of PMSMVC calculations. The calculations are divided into
*              a chain of threads in order to keep the longest thread time low.
*              1. Set pin high to indicate start of thread.
*              2. Based on the state, perform one of
*                 state == 1:
*                 - Send link to self. It enables to continue the chain in case
*                   it was not started by a link.
*                 - Calculate actual rotor position theta (-1,1).
*                 - Calculate sin(theta) and cos(theta).
*                 - Forward Clark Transformation.
*                 - Forward Park Transformation.
*                 - D-coordinate PID Controller.
*                 - Q-coordinate PID Controller.
*                 - DQ Decoupling.
*                 - Q Feed Forward.
*                 - Increment state parameter.
*                 state == 2:
*                 - Circle limitation.
*                 - Inverse Park Transformation.
*                 - Eliminate DC-bus ripple.
*                 - Write outputs to PWMMAC inputs.
*                 - Generate interrupt each services_per_irq period.
*                 - Send link to link_chan.
*                 - Clear link service latch.
*                 - Reset state parameter.
*              3. Set pin low to indicate end of thread.
*******************************************************************************/
   else if ((lsr==1) || (hsr==PMSMVC_HSR_UPDATE))
   {
   PMSMVC_CALC:
      /**********************************************
      * Set pin high to indicate start of thread.
      **********************************************/
      Pin(SetHigh);

      /**********************************************
      * Chain of vector control loop calculations.
      **********************************************/
      if (state == 0)
      {
         /**********************************************
         * Calculate actual rotor position theta (-1,1).
         **********************************************/
         theta = *p_qd_pc * encoder_scale;

         /**********************************************
         * Calculate sin(theta) and cos(theta).
         **********************************************/
         MC_SINCOS_PIX_I(theta, sin_cos);
         MC_SINCOS_PIX_II(theta, sin_cos);
         
         /**********************************************
         * If PID is off - opened loop - pass required values to the output.
         **********************************************/
         if (PMSMVC_PID_OFF)
         {
            /* u_dq.d = i_dq_desired.d / 4; */
            #asm(  ram p <- i_dq_desired. )
            #asm(  alu nil = p, ccs; ram diob <- i_dq_desired+4. )
            #asm(  alu p = p >> 2. )
            #asm(  alu_if n == 1 then p = p high| #0xC0. )
            #asm(  alu a = diob, ccs; ram p -> u_dq. )
            /* u_dq.q = i_dq_desired.q / 4; */
            #asm(  alu p = a, ccs. )
            #asm(  alu p = p >> 2. )
            #asm(  alu_if n == 1 then p = p high| #0xC0. )
            #asm(  ram p -> u_dq+4. )
            goto PMSMVC_INV_PARK_TRANSFORMATION;
         }

         /**********************************************
         * Forward Clark Transformation.
         **********************************************/
         MC_TRAN_CLARK(i_ab, i_abc);

         /**********************************************
         * Forward Park Transformation.
         **********************************************/
         MC_TRAN_PARK(i_dq, i_ab, sin_cos);

         /**********************************************
         * D-coordinate PID Controller.
         **********************************************/
#ifdef __ETEC__  // ASH WARE
         MC_CTRL_PID4( u_dq, i_dq_desired, i_dq, p_pid_d);
#else  // Byte Craft
         MC_CTRL_PID4_BC( u_dq, i_dq_desired, i_dq, p_pid_d);
#endif

         /**********************************************
         * Q-coordinate PID Controller.
         **********************************************/
#ifdef __ETEC__  // ASH WARE
         MC_CTRL_PID4( u_dq+4, i_dq_desired+4, i_dq+4, p_pid_q);
#else  // Byte Craft
         MC_CTRL_PID4_BC( u_dq+4, i_dq_desired+4, i_dq+4, p_pid_q);
#endif

         /* u_dq values contain quarters of the actual values (format 3.21) */

         /**********************************************
         * DQ Decoupling.
         **********************************************/
		 omega_actual = *p_sc_omega_actual;
#ifdef __ETEC__  // ASH WARE
		 // NOTE: AW handles fract-fract multiplies correctly...
         u_dq.d -= omega_actual * K_Lq * i_dq.q;
         u_dq.q += omega_actual * K_Ld * i_dq.d;
#else  // Byte Craft
         u_dq.d -= omega_actual * (int24)K_Lq * i_dq.q;
         u_dq.q += omega_actual * (int24)K_Ld * i_dq.d;
#endif

         /**********************************************
         * Q Feed Forward.
         **********************************************/
#ifdef __ETEC__  // ASH WARE
		 // NOTE: AW handles fract-fract multiplies correctly...
         u_dq.q += omega_actual * K_e;
#else  // Byte Craft
         u_dq.q += omega_actual * (int24)K_e;
#endif

         /**********************************************
         * Send link to self, set state = 1 
         **********************************************/
         LinkTo(GetCurrentChanNum());
         Pin(SetLow);
         state = 1;
      }
      else
      {
         register_ac tmp;
         /**********************************************
         * Circle limitation.
         **********************************************/
         if(PMSMVC_CIRCLE_LIMITATION_ON)
         {
            /*
            vLim = mod_index * u_dc_bus_actual/2;
            if(u_dq.d > vLim) u_dq.d = vLim;
            else if (u_dq.d < -vLim) u_dq.d = -vLim;
            */
            #asm(  ram p <- u_dq.                            )
            #asm(  alu a = p; ram p <- mod_index.            )
            #asm(  alu sr = p; ram diob <- u_dc_bus_actual.  )
            #asm(  alu diob = diob >> 2.                     )
            #asm(  mdu diob mults sr.                        )
            PMSMVC_LIMIT0:
            #asm(  if mbsy then goto PMSMVC_LIMIT0, flush.   )
            #asm(  alu diob = mach.                          )
            #asm(  alu nil = a - diob ,ccs.                  )
            #asm(  if N == 1 then goto PMSMVC_LIMIT1, flush. )
            #asm(  ram diob -> u_dq.                         )
            goto PMSMVC_LIMIT2;
            PMSMVC_LIMIT1:
            #asm(  alu sr = 0 - diob ,ccs.                   )
            #asm(  alu nil = a - sr ,ccs.                    )
            #asm(  if N == 0 then goto PMSMVC_LIMIT2, flush. )
            #asm(  alu diob = sr; ram diob -> u_dq.          )
            PMSMVC_LIMIT2:
            
            /* register a = (vLim)^2 - (u_dq.d)^2 */
            #asm(  alu diob =<<2 diob.                       )
            #asm(  mdu diob mults diob.                      )
            #asm(  alu a =<<2 a.                             )
            PMSMVC_LIMIT3:
            #asm(  if mbsy then goto PMSMVC_LIMIT3, flush.   )
            #asm(  alu b =<< mach + #0.                      )
            #asm(  mdu a mults a.                            )
            PMSMVC_LIMIT4:
            #asm(  if mbsy then goto PMSMVC_LIMIT4, flush.   )
            #asm(  alu a =<< mach + #0.                      )
            #asm(  alu a = b - a, ccs.                       )
#ifdef __ETEC__  // ASH WARE
            #asm( alu_if N == 1 then a = 0. )
#else  // Byte Craft
            #asm( %hex 3FFF0F74. )
#endif
            #asm(  if N == 1 then goto PMSMVC_LIMIT5, flush. )
            
            /* Calculate sqrt(a) = sqrt((vLim)^2 - (u_dq.d)^2) */
            tmp = mc_sqrt(tmp);
            
            /*
            u_q_max = sqrt((vLim)^2 - (u_dq.d)^2);
            if(u_dq.q > u_q_max) u_dq.q = u_q_max;
            else if (u_dq.q < -u_q_max) u_dq.q = -u_q_max;
            */
            #asm(  alu a = a >> 2.                           )
            PMSMVC_LIMIT5:
            #asm(  ram diob <- u_dq+4.                       )
            #asm(  alu nil = diob - a ,ccs.                  )
            #asm(  if N == 1 then goto PMSMVC_LIMIT6, flush. )
            #asm(  alu p = a; ram p -> u_dq+4.               )
            circle_limitation_flag = PMSMVC_CIRCLE_LIMIT_ON;
            goto PMSMVC_LIMIT8;
            PMSMVC_LIMIT6:
            #asm(  alu sr = 0 - a ,ccs.                      )
            #asm(  alu nil = diob - sr ,ccs.                 )
            #asm(  if N == 0 then goto PMSMVC_LIMIT7, flush. )
            #asm(  alu p = sr; ram p -> u_dq+4.              )
            circle_limitation_flag = PMSMVC_CIRCLE_LIMIT_ON;
            goto PMSMVC_LIMIT8;
            PMSMVC_LIMIT7:
            circle_limitation_flag = PMSMVC_CIRCLE_LIMIT_OFF;
            PMSMVC_LIMIT8: ;
         }

         /**********************************************
         * Inverse Park Transformation.
         **********************************************/
PMSMVC_INV_PARK_TRANSFORMATION:
         MC_TRAN_PARK_INV(u_ab, u_dq, sin_cos);

         /* u_ab values contain quarters of the actual values (format 3.21) */

         /**********************************************
         * Eliminate DC-bus ripple.
         **********************************************/
         MC_RIPPLE_ELIM(u_ab, u_dc_bus_actual, inv_mod_index);
         MC_RIPPLE_ELIM(u_ab+4, u_dc_bus_actual, inv_mod_index);

         /**********************************************
         * Write alpha and beta components to PWMMAC.
         **********************************************/
         /*
         p_outputs->A = u_ab.alpha;
         p_outputs->B = u_ab.beta;
         */
         register_p    p;
         #asm( ram diob <- p_outputs. )
         p = u_ab.alpha;
         #asm( ram p -> by diob++. )
         p = u_ab.beta;
         #asm( ram p -> by diob. )

         /**********************************************
         * Interrupt each services_per_irq period.
         **********************************************/
         if ( --service_counter == 0 )
         {
            SetChannelInterrupt();
            service_counter = services_per_irq;
         }
PMSMVC_LINK:
         /* send link to link_chan */
         LinkTo(link_chan);
         /* clear link service request */
         ClearLSRLatch();
         /* reset state */
         state = 0;
      }

      /**********************************************
      * Set pin low to indicate end of thread.
      **********************************************/
      Pin(SetLow);
   }
/*******************************************************************************
* THREAD NAME: UPDATE ON MATCH
* DESCRIPTION: Schedule next periodic match and start the chain of PMSMVC
*              calculations.
*              1. Set pin high.
*              2. Schedule next match.
*              3. Goto PMSMVC_CALC
*******************************************************************************/
   else if (m1==1)
   {
PMSMVC_UpdateOnMatch:
      /* set pin high to indicate start of thread */
      Pin(SetHigh);

      /* schedule next match */
      erta = edge_time + period;
      edge_time = erta;
      ClearMatchALatch();
      EnableMatchA();

      goto PMSMVC_CALC;
   }
/*******************************************************************************
* THREAD NAME: UNHANDLED_EVENTS
*******************************************************************************/
   else
   {
PMSMVC_Error:
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
#pragma write h, (::ETPUfilename (cpu/etpu_pmsmvc_auto.h));
#pragma write h, (/* WARNING this file is automatically generated DO NOT EDIT IT! */);
#pragma write h, (/*                                                              */);
#pragma write h, (/* This file provides an interface between eTPU code and CPU    */);
#pragma write h, (/* code. All references to the PMSMVC function should be made  */);
#pragma write h, (/* with information in this file. This allows only symbolic     */);
#pragma write h, (/* information to be referenced which allows the eTPU code to be*/);
#pragma write h, (/* optimized without effecting the CPU code.                    */);
#pragma write h, (/****************************************************************/);
#pragma write h, (#ifndef _ETPU_PMSMVC_AUTO_H_ );
#pragma write h, (#define _ETPU_PMSMVC_AUTO_H_ );
#pragma write h, ( );
#pragma write h, (/****************************************************************);
#pragma write h, (* Function Configuration Information. );
#pragma write h, (****************************************************************/);
#pragma write h, (::ETPUliteral(#define FS_ETPU_PMSMVC_FUNCTION_NUMBER        )  ::ETPUfunctionnumber(PMSMVC) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PMSMVC_TABLE_SELECT           )  ::ETPUentrytype(PMSMVC) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PMSMVC_NUM_PARMS              )  ::ETPUram(PMSMVC) );
#pragma write h, ( );
#pragma write h, (/****************************************************************);
#pragma write h, (* Host Service Request Definitions. );
#pragma write h, (****************************************************************/);
#pragma write h, (::ETPUliteral(#define FS_ETPU_PMSMVC_HSR_INIT_MASTER        )  PMSMVC_HSR_INIT_MASTER     );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PMSMVC_HSR_INIT_SLAVE         )  PMSMVC_HSR_INIT_SLAVE      );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PMSMVC_HSR_UPDATE             )  PMSMVC_HSR_UPDATE );
#pragma write h, ( );
#pragma write h, (/****************************************************************);
#pragma write h, (* PMSMVC eTPU Function Parameter Definitions. );
#pragma write h, (****************************************************************/);
#pragma write h, (::ETPUliteral(#define FS_ETPU_PMSMVC_PERIOD_OFFSET         ) ::ETPUlocation (PMSMVC, period           ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PMSMVC_STARTOFFSET_OFFSET    ) ::ETPUlocation (PMSMVC, start_offset     ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PMSMVC_SERVICESPERIRQ_OFFSET ) ::ETPUlocation (PMSMVC, services_per_irq ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PMSMVC_LINKCHAN_OFFSET       ) ::ETPUlocation (PMSMVC, link_chan        ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PMSMVC_KLD_OFFSET            ) ::ETPUlocation (PMSMVC, K_Ld             ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PMSMVC_KLQ_OFFSET            ) ::ETPUlocation (PMSMVC, K_Lq             ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PMSMVC_KE_OFFSET             ) ::ETPUlocation (PMSMVC, K_e              ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PMSMVC_INVMODINDEX_OFFSET    ) ::ETPUlocation (PMSMVC, inv_mod_index    ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PMSMVC_MODINDEX_OFFSET       ) ::ETPUlocation (PMSMVC, mod_index        ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PMSMVC_CIRCLELIMIT_OFFSET    ) ::ETPUlocation (PMSMVC, circle_limitation_flag) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PMSMVC_IABC_OFFSET           ) ::ETPUlocation (PMSMVC, i_abc            ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PMSMVC_IAB_OFFSET            ) ::ETPUlocation (PMSMVC, i_ab             ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PMSMVC_IDQ_OFFSET            ) ::ETPUlocation (PMSMVC, i_dq             ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PMSMVC_IDQDESIRED_OFFSET     ) ::ETPUlocation (PMSMVC, i_dq_desired     ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PMSMVC_UDQ_OFFSET            ) ::ETPUlocation (PMSMVC, u_dq             ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PMSMVC_UAB_OFFSET            ) ::ETPUlocation (PMSMVC, u_ab             ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PMSMVC_POUTPUTS_OFFSET       ) ::ETPUlocation (PMSMVC, p_outputs        ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PMSMVC_PQDPC_OFFSET          ) ::ETPUlocation (PMSMVC, p_qd_pc          ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PMSMVC_ENCODERSCALE_OFFSET   ) ::ETPUlocation (PMSMVC, encoder_scale    ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PMSMVC_THETA_OFFSET          ) ::ETPUlocation (PMSMVC, theta            ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PMSMVC_SINCOS_OFFSET         ) ::ETPUlocation (PMSMVC, sin_cos          ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PMSMVC_PSCOMEGAACTUAL_OFFSET ) ::ETPUlocation (PMSMVC, p_sc_omega_actual) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PMSMVC_PPIDD_OFFSET          ) ::ETPUlocation (PMSMVC, p_pid_d          ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PMSMVC_PPIDQ_OFFSET          ) ::ETPUlocation (PMSMVC, p_pid_q          ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PMSMVC_UDCBUSACTUAL_OFFSET   ) ::ETPUlocation (PMSMVC, u_dc_bus_actual  ) );
#pragma write h, ( );
#pragma write h, (/****************************************************************);
#pragma write h, (* Value Definitions. );
#pragma write h, (****************************************************************/);
#pragma write h, (::ETPUliteral(#define FS_ETPU_PMSMVC_PID_OFF                 ) 0 );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PMSMVC_PID_ON                  ) 1 );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PMSMVC_FM_CIRCLE_LIMITATION_OFF) 0 );
#pragma write h, (::ETPUliteral(#define FS_ETPU_PMSMVC_FM_CIRCLE_LIMITATION_ON ) 2 );
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
