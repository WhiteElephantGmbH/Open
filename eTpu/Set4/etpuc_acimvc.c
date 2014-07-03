/*******************************************************************************
*
*  FREESCALE SEMICONDUCTOR INC. 2006
*  ALL RIGHTS RESERVED
*  COPYRIGHT (c)
*
********************************************************************************
*
*  DESCRIPTION:
*   The ACIMVC eTPU function performs the vector control current loop of the
*   AC Induction Motor (ACIM).
*
********************************************************************************
*
*  REVISION HISTORY:
*
*  REVISION    AUTHOR       DATE         DESCRIPTION OF CHANGE
*  --------    -----------  ---------    ------------------------------------
*  0.1         P. Uhlir     19/Mar/04    Initial version of the file
*  1.0         M. Brejl     10/Dec/05    New implementation.
*  1.1         M. Princ     17/Mar/06    New implementation of ripple elim.
*                                        Circle limitation added.
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
#pragma verify_wctl  ACIMVC                350  steps  70 rams
#endif
#pragma exclude_wctl ACIMVC::ACIMVC_Error
#endif

#ifdef ACIMVC_FUNCTION_NUMBER /* function is being compiled as part of a set?*/
#pragma ETPU_function ACIMVC, standard @ ACIMVC_FUNCTION_NUMBER;
#else
#pragma ETPU_function ACIMVC, standard;
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
#define ACIMVC_HSR_INIT_MASTER          7
#define ACIMVC_HSR_INIT_SLAVE           5
#define ACIMVC_HSR_UPDATE               1

/* FM modes                     */
#define ACIMVC_PID_OFF                 (channel.FM0 == 0)
#define ACIMVC_PID_ON                  (channel.FM0 == 1)
#define ACIMVC_CIRCLE_LIMITATION_OFF   (channel.FM1 == 0)
#define ACIMVC_CIRCLE_LIMITATION_ON    (channel.FM1 == 1)

/* Circle limitation flag */
#define ACIMVC_CIRCLE_LIMIT_ON          1
#define ACIMVC_CIRCLE_LIMIT_OFF         0

/*******************************************************************************
* Channel Flag usage:
* Flag0 is not used.
*******************************************************************************/

/*******************************************************************************
* NAME: ACIMVC
*
* DESCRIPTION: ACIM vector control current loop.
*
* FUNCTION PARAMETERS:
*  period            - Applies in master mode only:
*                      Update period (in TCR1 ticks).
*  start_offset      - Applies in master mode only:
*                      Offset from initialization to first match (in TCR1 ticks)
*  services_per_irq  - Number of updates per one IRQ to CPU.
*  link_chan         - A channel to send link to after update.
*  i_abc             - Phase currents in 3-phase stationary reference frame.
*  i_ab              - Phase currents in 2-phase orthog. stationary ref. frame.
*  i_dq              - Phase currents in 2-phase orthogonal rotating ref. frame.
*  i_dq_desired      - Desired phase currents in 2-phase orthogonal rotating
*                      reference frame.
*  u_dq              - D and Q components of the stator voltages 
*                      in 2-phase orthogonal rotating reference frame.
*  u_ab              - Alpha and beta components of the stator voltages 
*                      in 2-phase orthogonal stationary reference framed
*  KL_T_KT           - Flux Model motor dependent constant 4 (format 3.21).
*  KL_R_KT           - Flux Model motor dependent constant 1 (format 3.21).
*  I_KT              - Flux Model motor dependent constant 2 (format 3.21).
*  TR_KT             - Flux Model motor dependent constant 3 (format 3.21).
*  T                 - Flux Model motor dependent constant 5 (format 3.21).
*  psi_r             - Alpha and beta components of rotor flux.
*  psi_r_pred        - Flux model temporal values.
*  x                 - Alpha and beta components of flux model state variable.
*  dx                - Alpha and beta components of flux model state var. diff.
*  dx_pred           - Flux model temporal values.
*  i_ab_comp         - Flux model temporal values.
*  LM_TR             - DQ Establishment motor dependent constant 1 (format 3.21)
*  psi_r_d           - Rotor flux modulo.
*  psi_r_d_scaled    - Rotor flux modulo in range 0.25-1.0 and shifted >> 11
*                      (format 0.12).
*  psi_r_d_scale     - psi_r_d = (psi_r_d_scaled<<11) / psi_r_d_scale
*  LM_LR_TR          - DQ Decoupling motor dependent constant 1.
*  LM_LR             - DQ Decoupling motor dependent constant 2.
*  KL                - DQ Decoupling motor dependent constant 3 (format 3.21).
*  sin_cos           - Structure of sin(theta) and cos(theta) values.
*  *p_sc_omega_actual- Pointer to SC omega_actual - actual motor speed.
*  omega_actual      - Actual motor rotation speed.
*  omega_field       - Field rotation speed.
*  *p_pid_d          - Pointer to structure of PID parameters for D controller.
*  *p_pid_q          - Pointer to structure of PID parameters for Q controller.
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
*  u_dc_bus_actual   - Actual DC-bus voltage.
*  *p_outputs        - Pointer to structure of PWMMAC inputs.
*******************************************************************************/

struct ACIMVC_channel_params
{
              int24            period;
              int24            start_offset;
     unsigned int24            services_per_irq;
     unsigned int8             link_chan;
              phase_currents_t i_abc;
              alpha_beta_t     i_ab;
              d_q_t            i_dq;
              d_q_t            i_dq_desired;
              d_q_t            u_dq;
              alpha_beta_t     u_ab;
              fract24          KL_T_KT;   /* format 3.21 */
              fract24          KL_R_KT;
              fract24          I_KT;
              fract24          TR_KT;
              fract24          T;
              alpha_beta_t     psi_r;
              alpha_beta_t     psi_r_pred;
              alpha_beta_t     x;
              alpha_beta_t     dx;
              alpha_beta_t     dx_pred;
              alpha_beta_t     i_ab_comp;
              fract24          LM_TR;     /* format 3.21 */
              fract24          psi_r_d;
              fract24          psi_r_d_scaled;
              int24            psi_r_d_scale;
              fract24          LM_LR_TR;
              fract24          LM_LR;
              fract24          KL;        /* format 3.21 */
              sin_cos_t        sin_cos;
              fract24        * p_sc_omega_actual;
              fract24          omega_actual;
              fract24          omega_field;
     unsigned int24          * p_pid_d;   /* mc_ctrl_pid_t *  */
              int8             reserved;
     unsigned int24          * p_pid_q;   /* mc_ctrl_pid_t *  */
              fract24          inv_mod_index;
              fract24          mod_index; /* format 2.22 */
              int8             circle_limitation_flag;
     unsigned fract24          u_dc_bus_actual;
              int32          * p_outputs; /* pwmm_inputs_t *  */
} register_chan_base *this;

/*******************************************************************************
  The following defines are declared in order to enable usage 
  of ACIMVC_channel_params structure members in assembler code.
*******************************************************************************/
#ifdef __ETEC  // ASH WARE
// ETEC allows complex, static, symbolic expressions directly in inline
// assembly.  This prevents nasty issues whereby the channel frame structure
// could get re-ordered and no longer match the defined prmXX references.  This
// solution is mutch cleaner.
#define  asm_period             this.period					/*          int24            period; */
#define  asm_start_offset       this.start_offset			/*          int24            start_offset; */
#define  asm_services_per_irq   this.services_per_irq		/* unsigned int24            services_per_irq; */
#define  asm_link_chan          this.link_chan				/* unsigned int8             link_chan; */
#define  asm_i_abc              this.i_abc					/*          phase_currents_t i_abc; */
#define  asm_i_abc_a            this.i_abc.a
#define  asm_i_abc_b            this.i_abc.b
#define  asm_i_abc_c            this.i_abc.c
#define  asm_i_ab               this.i_ab					/*          alpha_beta_t     i_ab; */
#define  asm_i_ab_alpha         this.i_ab.alpha
#define  asm_i_ab_beta          this.i_ab.beta
#define  asm_i_dq               this.i_dq					/*          d_q_t            i_dq; */
#define  asm_i_dq_d             this.i_dq.q
#define  asm_i_dq_q             this.i_dq.d
#define  asm_i_dq_desired       this.i_dq_desired			/*          d_q_t            i_dq_desired; */
#define  asm_i_dq_desired_d     this.i_dq_desired.q
#define  asm_i_dq_desired_q     this.i_dq_desired.d
#define  asm_u_dq               this.u_dq					/*          d_q_t            u_dq; */
#define  asm_u_dq_d             this.u_dq.q
#define  asm_u_dq_q             this.u_dq.d
#define  asm_u_ab               this.u_ab					/*          alpha_beta_t     u_ab; */
#define  asm_u_ab_alpha         this.u_ab.alpha
#define  asm_u_ab_beta          this.u_ab.beta
#define  asm_KL_T_KT            this.KL_T_KT				/*          fract24          KL_T_KT; */
#define  asm_KL_R_KT            this.KL_R_KT				/*          fract24          KL_R_KT; */
#define  asm_I_KT               this.I_KT					/*          fract24          I_KT; */
#define  asm_TR_KT              this.TR_KT					/*          fract24          TR_KT; */
#define  asm_T                  this.T						/*          fract24          T; */
#define  asm_psi_r              this.psi_r					/*          alpha_beta_t     psi_r; */
#define  asm_psi_r_alpha        this.psi_r.alpha
#define  asm_psi_r_beta         this.psi_r.beta
#define  asm_psi_r_pred         this.psi_r_pred				/*          alpha_beta_t     psi_r_pred; */
#define  asm_psi_r_pred_alpha   this.psi_r_pred.alpha
#define  asm_psi_r_pred_beta    this.psi_r_pred.beta
#define  asm_x                  this.x						/*          alpha_beta_t     x; */
#define  asm_x_alpha            this.x.alpha
#define  asm_x_beta             this.x.beta
#define  asm_dx                 this.dx						/*          alpha_beta_t     dx; */
#define  asm_dx_alpha           this.dx.alpha
#define  asm_dx_beta            this.dx.beta
#define  asm_dx_pred            this.dx_pred				/*          alpha_beta_t     dx_pred; */
#define  asm_dx_pred_alpha      this.dx_pred.alpha
#define  asm_dx_pred_beta       this.dx_pred.beta
#define  asm_i_ab_comp          this.i_ab_comp				/*          alpha_beta_t     i_ab_comp; */
#define  asm_i_ab_comp_alpha    this.i_ab_comp.alpha
#define  asm_i_ab_comp_beta     this.i_ab_comp.beta
#define  asm_LM_TR              this.LM_TR					/*          fract24          LM_TR; */
#define  asm_psi_r_d            this.psi_r_d				/*          fract24          psi_r_d; */
#define  asm_psi_r_d_scaled     this.psi_r_d_scaled			/*          fract24          psi_r_d_scaled; */
#define  asm_psi_r_d_scale      this.psi_r_d_scale			/*          fract24          psi_r_d_scale; */
#define  asm_LM_LR_TR           this.LM_LR_TR				/*          fract24          LM_LR_TR; */
#define  asm_LM_LR              this.LM_LR					/*          fract24          LM_LR; */
#define  asm_KL                 this.KL						/*          fract24          KL; */
#define  asm_sin_cos            this.sin_cos				/*          sin_cos_t        sin_cos; */
#define  asm_p_sc_omega_actual  this.p_sc_omega_actual		/*          fract24        * p_sc_omega_actual; */
#define  asm_omega_actual       this.omega_actual			/*          fract24          omega_actual; */
#define  asm_omega_field        this.omega_field			/*          fract24          omega_field; */
#define  asm_p_pid_d            this.p_pid_d				/*          mc_ctrl_pid_t  * p_pid_d; */
#define  asm_p_pid_q            this.p_pid_q				/*          mc_ctrl_pid_t  * p_pid_q; */
#define  asm_inv_mod_index      this.inv_mod_index			/*          fract24          inv_mod_index; */
#define  asm_mod_index          this.mod_index				/*          fract24          mod_index; */
#define  asm_circle_limit_flag  this.circle_limitation_flag /*          int8             circle_limitation_flag; */
#define  asm_u_dc_bus_actual    this.u_dc_bus_actual		/* unsigned fract24          u_dc_bus_actual; */
#define  asm_p_outputs          this.p_outputs				/*          pwmm_inputs_t  * p_outputs; */
#else  // Byte Craft
#define  asm_period             prm01   /*          int24            period; */
#define  asm_start_offset       prm05   /*          int24            start_offset; */
#define  asm_services_per_irq   prm09   /* unsigned int24            services_per_irq; */
#define  asm_link_chan          prm08   /* unsigned int8             link_chan; */
#define  asm_i_abc              prm13   /*          phase_currents_t i_abc; */
#define  asm_i_abc_a            prm13
#define  asm_i_abc_b            prm17
#define  asm_i_abc_c            prm21
#define  asm_i_ab               prm25   /*          alpha_beta_t     i_ab; */
#define  asm_i_ab_alpha         prm25
#define  asm_i_ab_beta          prm29
#define  asm_i_dq               prm33   /*          d_q_t            i_dq; */
#define  asm_i_dq_d             prm33
#define  asm_i_dq_q             prm37
#define  asm_i_dq_desired       prm41   /*          d_q_t            i_dq_desired; */
#define  asm_i_dq_desired_d     prm41
#define  asm_i_dq_desired_q     prm45
#define  asm_u_dq               prm49   /*          d_q_t            u_dq; */
#define  asm_u_dq_d             prm49
#define  asm_u_dq_q             prm53
#define  asm_u_ab               prm57   /*          alpha_beta_t     u_ab; */
#define  asm_u_ab_alpha         prm57
#define  asm_u_ab_beta          prm61
#define  asm_KL_T_KT            prm65   /*          fract24          KL_T_KT; */
#define  asm_KL_R_KT            prm69   /*          fract24          KL_R_KT; */
#define  asm_I_KT               prm73   /*          fract24          I_KT; */
#define  asm_TR_KT              prm77   /*          fract24          TR_KT; */
#define  asm_T                  prm81   /*          fract24          T; */
#define  asm_psi_r              prm85   /*          alpha_beta_t     psi_r; */
#define  asm_psi_r_alpha        prm85
#define  asm_psi_r_beta         prm89
#define  asm_psi_r_pred         prm93   /*          alpha_beta_t     psi_r_pred; */
#define  asm_psi_r_pred_alpha   prm93
#define  asm_psi_r_pred_beta    prm97
#define  asm_x                  prm101  /*          alpha_beta_t     x; */
#define  asm_x_alpha            prm101
#define  asm_x_beta             prm105
#define  asm_dx                 prm109  /*          alpha_beta_t     dx; */
#define  asm_dx_alpha           prm109
#define  asm_dx_beta            prm113
#define  asm_dx_pred            prm117  /*          alpha_beta_t     dx_pred; */
#define  asm_dx_pred_alpha      prm117
#define  asm_dx_pred_beta       prm121
#define  asm_i_ab_comp          prm125  /*          alpha_beta_t     i_ab_comp; */
#define  asm_i_ab_comp_alpha    prm125
#define  asm_i_ab_comp_beta     prm129
#define  asm_LM_TR              prm133  /*          fract24          LM_TR; */
#define  asm_psi_r_d            prm137  /*          fract24          psi_r_d; */
#define  asm_psi_r_d_scaled     prm141  /*          fract24          psi_r_d_scaled; */
#define  asm_psi_r_d_scale      prm145  /*          fract24          psi_r_d_scale; */
#define  asm_LM_LR_TR           prm149  /*          fract24          LM_LR_TR; */
#define  asm_LM_LR              prm153  /*          fract24          LM_LR; */
#define  asm_KL                 prm157  /*          fract24          KL; */
#define  asm_sin_cos            prm161  /*          sin_cos_t        sin_cos; */
#define  asm_p_sc_omega_actual  prm169  /*          fract24        * p_sc_omega_actual; */
#define  asm_omega_actual       prm173  /*          fract24          omega_actual; */
#define  asm_omega_field        prm177  /*          fract24          omega_field; */
#define  asm_p_pid_d            prm181  /*          mc_ctrl_pid_t  * p_pid_d; */
#define  asm_p_pid_q            prm185  /*          mc_ctrl_pid_t  * p_pid_q; */
#define  asm_inv_mod_index      prm189  /*          fract24          inv_mod_index; */
#define  asm_mod_index          prm193  /*          fract24          mod_index; */
#define  asm_circle_limit_flag  prm192  /*          int8             circle_limitation_flag; */
#define  asm_u_dc_bus_actual    prm197  /* unsigned fract24          u_dc_bus_actual; */
#define  asm_p_outputs          prm201  /*          pwmm_inputs_t  * p_outputs; */
#endif
/******************************************************************************/


void ACIMVC( struct ACIMVC_channel_params this )
{
   static          int24 edge_time;       /* Time of first edge. Updated each period */
   static unsigned int24 service_counter; /* Counts down from services_per_irq to zero */
   static unsigned int8  state;           /* State of calculation chain */

/*******************************************************************************
* THREAD NAME: INIT_MASTER
* DESCRIPTION: Initialize a channel to run the ACIMVC function in master mode.
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
   if (hsr == ACIMVC_HSR_INIT_MASTER)
   {
ACIMVC_InitMaster:
      DisableMatchesInThread();
                       
      OnTransA(NoDetect);
      OnTransB(NoDetect );
      ActionUnitA(MatchTCR1, CaptureTCR1, GreaterEqual);
      SingleMatchSingleTransition();
      EnableEventHandling();
                       
      erta = tcr1 + this.start_offset; /* Time of first match. */
      edge_time = erta;                /* Save time of first match to edge_time. */
      EnableMatchA();                  /* Schedule the match. */
      OnMatchA(NoChange);
      OnMatchB(NoChange);

ACIMVC_HSR_INIT_COMMON:
      state = 0;
      Pin(SetLow);
      EnableOutputBuffer();
      ClearAllLatches();
      service_counter = this.services_per_irq;  /* Reset service counter */
   }
/*******************************************************************************
* THREAD NAME: INIT_SLAVE
* DESCRIPTION: Initialize a channel to run the ACIMVC function in slave mode.
*              1. Disable matches in thread in case there are any previous
*                 pending matches. This could happen if the channel was
*                 running another function before this one.
*              2. Reset state parameter.
*              3. Set pin low.
*              4. Enable output buffer.
*              5. Clear latches.
*              6. Reset service counter.
*******************************************************************************/
   else if (hsr == ACIMVC_HSR_INIT_SLAVE)
   {
ACIMVC_InitSlave:
      DisableMatchesInThread();

      goto ACIMVC_HSR_INIT_COMMON;
   }
/*******************************************************************************
* THREAD NAME: UPDATE ON LINK/HSR
* DESCRIPTION: Chain of ACIMVC calculations. The calculations are divided into
*              a chain of threads in order to keep the longest thread time low.
*              1. Set pin high to indicate start of thread.
*              2. Based on the state, perform one of
*                 state == 1:
*                 - Forward Clark Transformation.
*                 - Flux model.
*                 - DQ establishment.
*                   part a) psi_r_d modulo calculation
*                 - Increment state parameter.
*                 - Send link to self. It enables to continue the chain in case
*                   it was not started by a link.
*                 state == 2:
*                 - DQ establishment.
*                   part b) sin(theta_field) & cos(theta_field) calculation
*                   part c) i_d & i_q calculation - Park Transformation
*                   part d) omega_field calculation
*                 - D-coordinate PID Controller.
*                 - Q-coordinate PID Controller.
*                 - Increment state parameter.
*                 state == 3:
*                 - DQ Decoupling.
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
   else if ((lsr==1) || (hsr==ACIMVC_HSR_UPDATE))
   {
   ACIMVC_CALC:
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
         * Forward Clark Transformation.
         **********************************************/
         MC_TRAN_CLARK(asm_i_ab, asm_i_abc);

         /**********************************************
         * Flux model.
         **********************************************/
         /*this.omega_actual = *(this.p_sc_omega_actual);*/
         #asm(  ram diob <- asm_p_sc_omega_actual. )
         #asm(  ram p <- by diob. )
         #asm(  ram p -> asm_omega_actual. )
/*******************************************************************************
  DESCRIPTION: 
    The flux model calculates the two axis components of the rotor magnetic flux
    (psi_r) in alpha, beta stationary reference frame. The flux calculation is 
    based on the AC induction motor mathematical model. 
    The function solves the system of two differential equations:
    
    KT * d(psi_r.alpha)/dt = KL_R * u.alpha - psi_r.alpha 
                             - TR * psi_r.beta * omega_actual
                             - KL_T * d(i_alpha)/dt
    KT * d(psi_r.beta)/dt  = KL_R * u.beta - psi_r.beta 
                             + TR * psi_r.alpha * omega_actual
                             - KL_T * d(i_beta)/dt
 
    The numeric method of integration is based on the trapezoidal method 
    with prediction. The prediction is implemented using the Euler method. 
 
    Motor parameters (floating point values):
      sigma = 1 - (Lm * Lm) / (Ls * Lr);
      KT    = Tr + Ts * (1 - sigma);
      I_KT  = 1 / KT;
      KL_R  = Lm / Rs;
      KL_T  = sigma * Lm * Ts;
      TR    = pole_pairs * Lr / Rr;

    Flux model constant scaling:
      I_KT    = (1    / KT) * psi_r_max / dx_max
      KL_R_KT = (KL_R / KT) * u_max   / dx_max
      TR_KT   = (TR   / KT) * psi_r_max * omega_max / dx_max
      KL_T_KT = (KL_T / KT) * i_max   / psi_r_max
      T       = (T_real * dx_max) / psi_r_max

    dx_max definition:
      dx_max  = pole_pairs * psi_r_max * omega_max

    After substitution:
      d(psi_r.alpha)/dt = KL_R_KT * u.alpha - I_KT * psi_r.alpha 
                          - TR_KT * psi_r.beta * omega_actual
                          - KL_T_KT * d(i_alpha)/dt
      d(psi_r.beta)/dt  = KL_R_KT * u.beta - I_KT * psi_r.beta 
                          + TR_KT * psi_r.alpha * omega_actual
                          - KL_T_KT * d(i_beta)/dt

    There are two steps of the numerical integration:
    Lets define:
      dx.alpha = KL_R_KT * u.alpha - I_KT * psi_r.alpha
                 - TR_KT * psi_r.beta  * omega_actual
      dx.beta  = KL_R_KT * u.beta  - I_KT * psi_r.beta
                 + TR_KT * psi_r.alpha * omega_actual

    First step - prediction:
      psi_r_pred.alpha = x.alpha[k-1] + T * dx_alpha[k-1] - KL_T_KT * i_alpha
      psi_r_pred.beta  = x.beta[k-1]  + T * dx_beta[k-1]  - KL_T_KT * i_beta

    Second step - trapezoidal method:
      dx_pred.alpha = KL_R_KT * u.alpha - I_KT * psi_r_pred.alpha
                      - TR_KT * psi_r_pred.beta  * omega_actual 
      dx_pred.beta  = KL_R_KT * u.beta  - I_KT * psi_r_pred.beta
                      + TR_KT * psi_r_pred.alpha * omega_actual

      x.alpha = x.alpha[k-1] + T * (dx.alpha[k-1] + dx_pred.alpha) / 2
      x.beta  = x.beta[k-1]  + T * (dx.beta[k-1]  + dx_pred.beta ) / 2

    Final step - Flux calculation:
      psi_r.alpha =  x.alpha - KL_T_KT * i.alpha
      psi_r.beta  =  x.beta  - KL_T_KT * i.beta

  ARGUMENTS: (members of ACIMVC_channel_params structure)
  - Inputs:
    alpha_beta_t     u_ab                Alpha-Beta components of stator voltage
    alpha_beta_t     i_ab                Alpha-Beta components of stator current
    fract24          omega_actual        actual rotation speed
    fract24          KL_R_KT, I_KT, TR_KT, T   
                                         motor dependent constants (format 1.23)
    fract24          KL_T_KT             motor dependent constant (format 3.21)
  - Outputs:
    alpha_beta_t     psi_r               Alpha-Beta components of rotor flux
  - States:
    alpha_beta_t     x
    alpha_beta_t     dx
    alpha_beta_t     psi_r_pred
    alpha_beta_t     dx_pred

  RANGE ISSUES: 
    None.

  SPECIAL ISSUES:
    Note, that the stator voltage components (u_ab) are in fractional format
    3.21, while the stator current components (i_ab) are in standard fractional 
    format 1.23. Because of that, the motor dependent constant KL_T_KT is also
    expressed in format 3.21.

*******************************************************************************/
#ifdef __ETEC__  // ASH WARE
         // give the variable 'tmp' the correct type in order to have cleaner
         // source code and better type checking (ETEC supports this)
         fract24 register_diob tmp;
#else  // Byte Craft
         register_diob tmp;
#endif
         
         /* FIRST STEP - PREDICTION: */
         tmp = this.KL_T_KT;
         this.i_ab_comp.alpha = tmp * this.i_ab.alpha;
         this.i_ab_comp.beta  = tmp * this.i_ab.beta;
         
         /*
         tmp = this.T;
         this.psi_r_pred.alpha = this.x.alpha + tmp * this.dx.alpha 
                               - this.i_ab_comp.alpha;
         this.psi_r_pred.beta  = this.x.beta  + tmp * this.dx.beta
                               - this.i_ab_comp.beta;
         */
         #asm(  ram diob <- asm_T. )
         #asm(  ram p <- asm_dx_alpha. )
         #asm(  mdu p mults diob. )
         #asm(  ram p <- asm_x_alpha. )
         #asm(  alu a = p; ram p <- asm_i_ab_comp_alpha. )
         #asm(  alu a = a - p. )
         #asm(  alu p =<< mach + 0x0. )
         #asm(  alu p = a + p; ram p -> asm_psi_r_pred_alpha. )
         
         #asm(  ram p <- asm_dx_beta. )
         #asm(  mdu p mults diob. )
         #asm(  ram p <- asm_x_beta. )
         #asm(  alu a = p; ram p <- asm_i_ab_comp_beta. )
         #asm(  alu a = a - p. )
         #asm(  alu p =<< mach + 0x0. )
         #asm(  alu p = a + p; ram p -> asm_psi_r_pred_beta. )
         
         /* SECOND STEP - TRAPEZOIDAL METHOD: */
         /*
         this.dx_pred.alpha = (int24)this.KL_R_KT * this.u_ab.alpha
                            - (int24)this.I_KT * this.psi_r_pred.alpha
                            - (int24)this.TR_KT * this.psi_r_pred.beta * this.omega_actual;
         this.dx_pred.beta  = (int24)this.KL_R_KT * this.u_ab.beta
                            - (int24)this.I_KT * this.psi_r_pred.beta
                            + (int24)this.TR_KT * this.psi_r_pred.alpha * this.omega_actual;
         */
         #asm(  ram p <- asm_TR_KT. )
         #asm(  alu b = p; ram diob <- asm_psi_r_pred_beta. )        /* b    = TR_KT */
         #asm(  mdu b mults diob. )                                  /* diob = psi_r_pred.beta */
         ACIMVC_WAIT_21:
         #asm(  if mb == 1 then goto ACIMVC_WAIT_21, flush. )
#ifdef __ETEC__  // ASH WARE
         #asm( alu a =<< mach; ram p <- asm_omega_actual. )
         #asm( mdu a mults -p. )
#else  // Byte Craft
         #asm( %hex B3C70BAB. )
         #asm( %hex 3C19FFE8. )
#endif
         #asm(  ram p <- asm_I_KT. )
         #asm(  alu erta = 0 - p; ram p <- asm_psi_r_pred_alpha. )   /* ert1 = -I_KT */
         #asm(  alu sr = p. )                                        /* sr   = psi_r_pred.alpha */
         #asm(  mdu erta macs p. )
         #asm(  ram p <- asm_u_ab_beta. )
         #asm(  alu a = p; ram p <- asm_KL_R_KT. )                   /* a    = u_ab.beta */
         #asm(  alu c = p; ram p <- asm_u_ab_alpha. )                /* c    = KL_R_KT */
         #asm(  mdu c macs p. )
         ACIMVC_WAIT_22:
         #asm(  if mb == 1 then goto ACIMVC_WAIT_22, flush. )
#ifdef __ETEC__  // ASH WARE
         #asm( alu p =<< mach; ram p -> asm_dx_pred_alpha. )
#else  // Byte Craft
         #asm( %hex B3D77B9D. )
#endif
         #asm(  mdu b mults sr. )                                    /* TR_KT * psi_r_pred.alpha */
         ACIMVC_WAIT_23:
         #asm(  if mb == 1 then goto ACIMVC_WAIT_23, flush. )
#ifdef __ETEC__  // ASH WARE
         #asm( alu d =<< mach; ram p <- asm_omega_actual. )
#else  // Byte Craft
         #asm( %hex B3875BAB. )
#endif
         #asm(  mdu d mults p. )
         ACIMVC_WAIT_24:
         #asm(  if mb == 1 then goto ACIMVC_WAIT_24, flush. )
         #asm(  mdu erta macs diob. )                                /* -I_KT * psi_r_pred.beta */
         ACIMVC_WAIT_25:
         #asm(  if mb == 1 then goto ACIMVC_WAIT_25, flush. )
         #asm(  mdu c macs a. )                                      /* KL_R_KT * u_ab.beta */
         ACIMVC_WAIT_26:
         #asm(  if mb == 1 then goto ACIMVC_WAIT_26, flush. )
#ifdef __ETEC__  // ASH WARE
         #asm( alu p =<< mach; ram p -> asm_dx_pred_beta. )
#else  // Byte Craft
         #asm( %hex B3D77B9E. )
#endif
         
         /* 
         this.x.alpha += tmp * (this.dx.alpha + this.dx_pred.alpha)/2;
         this.x.beta  += tmp * (this.dx.beta  + this.dx_pred.beta )/2;
         
         this.dx.alpha = this.dx_pred.alpha;
         this.dx.beta  = this.dx_pred.beta;
         */
         #asm(  alu macl = 0 + 0; ram p <- asm_x_alpha. )
         #asm(  alu mach = p; ram p <- asm_dx_alpha. )
         #asm(  alu a = p; ram p <- asm_dx_pred_alpha. )
         #asm(  alu a = a + p; ram p -> asm_dx_alpha. )
         #asm(  ram diob <- asm_T. )
         #asm(  mdu a macs diob. )
         ACIMVC_WAIT_31:
         #asm(  if mb == 1 then goto ACIMVC_WAIT_31, flush. )
         #asm(  alu p = mach; ram p -> asm_x_alpha. )
         
         #asm(  alu macl = 0 + 0; ram p <- asm_x_beta. )
         #asm(  alu mach = p; ram p <- asm_dx_beta. )
         #asm(  alu a = p; ram p <- asm_dx_pred_beta. )
         #asm(  alu a = a + p; ram p -> asm_dx_beta. )
         #asm(  mdu a macs diob. )
         ACIMVC_WAIT_32:
         #asm(  if mb == 1 then goto ACIMVC_WAIT_32, flush. )
         #asm(  alu p = mach; ram p -> asm_x_beta. )
         
         /* FINAL STEP - FLUX CALCULATION */
         this.psi_r.alpha = this.x.alpha - this.i_ab_comp.alpha;
         this.psi_r.beta  = this.x.beta  - this.i_ab_comp.beta;


         /**********************************************
         * DQ establishment.
         **********************************************/
/*******************************************************************************
  DESCRIPTION:
   This code establishes d-q coordinate system (defined by vector of rotor
   magnetic flux) and calculates the rotation speed of the field.

   The code performs the calculations according to the following equations:

   a) psi_r_d modulo calculation

      psi_r_d = sqrt(psi_r.alpha^2 + psi_r.beta^2)

   b) sin(theta_field) & cos(theta_field) calculation

      sin_cos.sin = psi_r.beta  / psi_r_d
      sin_cos.cos = psi_r.alpha / psi_r_d

   c) i_d & i_q calculation - Park Transformation

      i_d =   i_ab.alpha * cos(theta_field) 
            + i_ab.beta  * sin(theta_field)
      i_q =   i_ab.beta  * cos(theta_field) 
            - i_ab.alpha * sin(theta_field)

   d) omega_field calculation

      omega_field = LM_TR * i_q / psi_r_d + omega_actual

      where:   LM_TR is the constant derived from motor parameters:
               mutual_inductance / rotor_time_constant

   DQ Establishment constant scaling:
      LM_TR = LM / (Tr * pole_pairs) * i_max / (u_max * psi_r_max) 

  ARGUMENTS: (members of ACIMVC_channel_params structure)
  - Inputs:
    alpha_beta_t     psi_r               Alpha-Beta components of rotor flux
    alpha_beta_t     i_ab                Alpha-Beta components of stator current
    fract24          omega_actual        actual rotation speed
    fract24          LM_TR               motor dependent constants (format 3.21)
  - Outputs:
    fract24          psi_r_d             rotor flux modulo
    sin_cos_t        sin_cos             sine and cosine of theta_field
    d_q_t            i_dq                D-Q components of stator current
    fract24          omega_field         field rotation speed

  RANGE ISSUES: 
    None.

  SPECIAL ISSUES:
    Note, that the rotor flux components (psi_r) are in fractional format
    3.21, while the stator current components (i_ab) are in standard fractional 
    format 1.23. Because of that, the motor dependent constant LM_TR is also
    expressed in format 3.21.
*******************************************************************************/
         /**********************************************
         * DQ establishment - part a).
         **********************************************/
         /* Calculate psi_r_d */
         /* psi_r_d = sqrt(psi_r.alpha * psi_r.alpha + 
                           psi_r.beta  * psi_r.beta); */
         #asm(  ram p <- asm_psi_r_alpha. )
         #asm(  mdu p mults p. )
         #asm(  ram p <- asm_psi_r_beta. )
         #asm(  goto ACIMVC_WAIT_40, flush. )
         ACIMVC_WAIT_40:
         #asm(  mdu p macs p. )
         ACIMVC_WAIT_41:
         #asm(  if mb == 1 then goto ACIMVC_WAIT_41, flush. )
#ifdef __ETEC__  // ASH WARE
         #asm( alu p =<< mach; ram p -> asm_psi_r_d. )
#else  // Byte Craft
         #asm( %hex B3D77BA2. )
#endif
         /* Calculate square root of psi_r_d */
         MC_SQRT_MACRO(asm_psi_r_d, asm_psi_r_d, asm_psi_r_d_scaled, asm_psi_r_d_scale);

         /**********************************************
         * Send link to self, set state = 1 
         **********************************************/
         state = 1;
         LinkTo(GetCurrentChanNum());
      }
      else if (state == 1)
      {
         /**********************************************
         * DQ establishment - part b).
         **********************************************/
         /* Calculate sin_cos */
         /* sin_cos.cos = psi_r.alpha/psi_r_d; */
         /* sin_cos.sin = psi_r.beta /psi_r_d; */
         register_sr tmp;

         if (this.psi_r_d_scale & 0xFF80)
         {
            this.sin_cos.cos = 0;
            this.sin_cos.sin = 0x800000 - 1;
         }
         else
         {
            tmp = mc_abs((int24)this.psi_r.alpha*this.psi_r_d_scale);
#ifdef __ETEC__  // ASH WARE
            tmp = ((unsigned int24)tmp/(unsigned int24)this.psi_r_d_scaled)<<12;
#else  // Byte Craft
            tmp = (tmp/this.psi_r_d_scaled)<<12;
#endif
            if (CC.N || CC.C) tmp = 0x7FFFFF;
            /*if (this.psi_r.alpha < 0) tmp = -tmp;*/
            #asm(  ram p <- asm_psi_r_alpha. )
            #asm(  alu nil = p, ccs. )
            #asm(  if N == 0 then goto ACIMVC_COS_1, flush. )
            #asm(  alu sr = 0 - sr. )
ACIMVC_COS_1:
            this.sin_cos.cos = tmp;
            
            tmp = mc_abs((int24)this.psi_r.beta*this.psi_r_d_scale);
#ifdef __ETEC__  // ASH WARE
            tmp = ((unsigned int24)tmp/(unsigned int24)this.psi_r_d_scaled)<<12;
#else  // Byte Craft
            tmp = (tmp/this.psi_r_d_scaled)<<12;
#endif
            if (CC.N || CC.C) tmp = 0x7FFFFF;
            /*if (this.psi_r.beta < 0) tmp = -tmp;*/
            #asm(  ram p <- asm_psi_r_beta. )
            #asm(  alu nil = p, ccs. )
            #asm(  if N == 0 then goto ACIMVC_SIN_1, flush. )
            #asm(  alu sr = 0 - sr. )
ACIMVC_SIN_1:
            this.sin_cos.sin = tmp;
         }
         
         /**********************************************
         * If PID is off - opened loop - pass required values to the output.
         **********************************************/
         if (ACIMVC_PID_OFF)
         {
            /* u_dq.d = i_dq_desired.d / 4; */
            #asm(  ram p <- asm_i_dq_desired_d. )
            #asm(  alu nil = p, ccs; ram diob <- asm_i_dq_desired_q. )
            #asm(  alu p = p >> 2. )
            #asm(  alu_if n == 1 then p = p high| #0xC0. )
            #asm(  alu a = diob, ccs; ram p -> asm_u_dq_d. )
            /* u_dq.q = i_dq_desired.q / 4; */
            #asm(  alu p = a, ccs. )
            #asm(  alu p = p >> 2. )
            #asm(  alu_if n == 1 then p = p high| #0xC0. )
            #asm(  ram p -> asm_u_dq_q. )
            goto ACIMVC_INV_PARK_TRANSFORMATION;
         }
         
         /**********************************************
         * DQ establishment - part c).
         **********************************************/
         /* Forward Park Transformation */
#ifdef __ETEC__  // ASH WARE
		 // NOTE: ETEC properly supports fract-fract multiplies
         this.i_dq.d = mc_saturate(this.i_ab.alpha * this.sin_cos.cos 
                                 + this.i_ab.beta  * this.sin_cos.sin);
         this.i_dq.q = mc_saturate(this.i_ab.beta  * this.sin_cos.cos
                                 - this.i_ab.alpha * this.sin_cos.sin);
#else  // Byte Craft
         this.i_dq.d = mc_saturate((int24)this.i_ab.alpha * this.sin_cos.cos 
                                 + (int24)this.i_ab.beta  * this.sin_cos.sin);
         this.i_dq.q = mc_saturate((int24)this.i_ab.beta  * this.sin_cos.cos
                                 - (int24)this.i_ab.alpha * this.sin_cos.sin);
#endif
         
         /**********************************************
         * DQ establishment - part d).
         **********************************************/
         /* Calculate omega_field */
         /* omega_field = LM_TR*i_dq.q/psi_r_d + omega_actual; */
         if (this.psi_r_d_scale & 0x1C00)
         {
            this.omega_field = this.omega_actual;
         }
         else
         {
#ifdef __ETEC__  // ASH WARE
            tmp = mc_abs((int24)(this.i_dq.q*this.LM_TR)*this.psi_r_d_scale);
            tmp = ((unsigned int24)tmp/(unsigned int24)this.psi_r_d_scaled)<<12;
#else  // Byte Craft
            tmp = mc_abs((int24)this.i_dq.q*this.LM_TR*this.psi_r_d_scale);
            tmp = (tmp/this.psi_r_d_scaled)<<12;
#endif
            if (CC.N || CC.C) tmp = 0x7FFFFF;
            /*if (this.psi_r.beta < 0) tmp = -tmp;*/
            #asm(  ram p <- asm_i_dq_q. )
            #asm(  alu nil = p, ccs. )
            #asm(  if N == 0 then goto ACIMVC_OMEGAFIELD_1, flush. )
            #asm(  alu sr = 0 - sr. )
ACIMVC_OMEGAFIELD_1:
            this.omega_field = mc_saturate(tmp + this.omega_actual);
         }

         /**********************************************
         * D-coordinate PID Controller.
         **********************************************/
#ifdef __ETEC__  // ASH WARE
         MC_CTRL_PID4( asm_u_dq_d, asm_i_dq_desired_d, asm_i_dq_d, asm_p_pid_d);
#else  // Byte Craft
         MC_CTRL_PID4_BC( asm_u_dq_d, asm_i_dq_desired_d, asm_i_dq_d, asm_p_pid_d);
#endif

         /**********************************************
         * Q-coordinate PID Controller.
         **********************************************/
#ifdef __ETEC__  // ASH WARE
         MC_CTRL_PID4( asm_u_dq_q, asm_i_dq_desired_q, asm_i_dq_q, asm_p_pid_q);
#else  // Byte Craft
         MC_CTRL_PID4_BC( asm_u_dq_q, asm_i_dq_desired_q, asm_i_dq_q, asm_p_pid_q);
#endif

         /* u_dq values contain quarters of the actual values (format 3.21) */

         /**********************************************
         * Do not clear link, set state = 2 
         **********************************************/
         state = 2;
      }
      else /* if (state == 2) */
      {
         /**********************************************
         * DQ Decoupling.
         **********************************************/
/*******************************************************************************
  DESCRIPTION: 
    Decoupling technique is used to transform the nonlinear system into linear
    one. Such transformation enables to use the linear controllers (PI, PID ...)
    and, hence, easy the control task.
       
    Mathematical equation:
   
    u_dq.d = u_dq.d - KL * omega_field * i_dq.q - LM_LR_TR * psi_r_d
    u_dq.q = u_dq.q + KL * omega_field * i_dq.d + LM_LR * psi_r_d * omega_actual
    
    DQ Decoupling constant scaling:
      LM_LR_TR = Lm / (Lr*Tr) * psi_r_max / (2 * u_max)
      LM_LR    = pole_pairs * Lm / Lr * psi_r_max * omega_max / (2 * u_max)
      KL       = pole_pairs * (Ls - Lm*Lm / Lr) * i_max * omega_max / (2 * u_max)
 
  ARGUMENTS: (members of ACIMVC_channel_params structure)
  - Inputs:
    d_q_t     i_dq                D-Q components of stator current
    fract24   omega_field         field speed
    fract24   omega_actual        actual rotation speed
    fract24   psi_r_d             rotor flux
    fract24   LM_LR_TR,LM_LR      motor dependent constants (format 1.23)
    fract24   KL                  motor dependent constant (format 3.21)
  - Inputs/Outputs:
    d_q_t     u_dq                D-Q components of stator voltage (format 3.21)
    
  RETURNS:
    void

  RANGE ISSUES: 
    None.

  SPECIAL ISSUES:
    Note, that the stator voltage D-Q components (u_dq) are in fractional format
    3.21 (outputs from PID controllers), while the stator current D-Q components
    (i_dq) are in standard fractional format 1.23. Because of that, the motor
    dependent constant KL is also expressed in format 3.21.
*******************************************************************************/
         /*
         register_diob tmp;
         
         tmp = (int24)this.KL * this.omega_field;
         this.u_dq.d = this.u_dq.d - tmp * this.i_dq.q
                     - (int24)this.LM_LR_TR * this.psi_r_d;
         this.u_dq.q = this.u_dq.q + tmp * this.i_dq.d
                     + (int24)this.LM_LR * this.psi_r_d * this.omega_actual;
         */         
   
         /*tmp = (int24)this.KL * this.omega_field;*/
         #asm(  ram p <- asm_KL. )
         #asm(  alu a = p; ram p <- asm_omega_field. )
         #asm(  mdu a mults p. )
         ACIMVC_WAIT_01:
         #asm(  if mb == 1 then goto ACIMVC_WAIT_01, flush. )
#ifdef __ETEC__  // ASH WARE
#asm
         #asm(  alu diob =<< mach; ram p <- asm_u_dq_d. )
         /*this.u_dq.d = this.u_dq.d - tmp * this.i_dq.q
                       - this.LM_LR_TR * this.psi_r_d;*/
         #asm(  alu mach =>> p; ram p <- asm_i_dq_q. )
         #asm(  mdu diob macs -p. )
#endasm
#else  // Byte Craft
         #asm(  %hex B3C74B8C. )
         #asm(  %hex B7A87B89. )
         #asm(  %hex 3C1BFFEA. )
#endif
         #asm(  ram p <- asm_LM_LR_TR. )
         #asm(  alu a = p; ram p <- asm_psi_r_d. )
         #asm(  alu sr = 0 - p. )
         #asm(  mdu a macs sr. )
         ACIMVC_WAIT_02:
         #asm(  if mb == 1 then goto ACIMVC_WAIT_02, flush. )
#ifdef __ETEC__  // ASH WARE
         #asm( alu p =<< mach; ram p -> asm_u_dq_d. )
#else  // Byte Craft
         #asm( %hex B3D77B8C. )
#endif
         
         /*this.u_dq.q = this.u_dq.q + tmp * this.i_dq.d
                       + this.LM_LR * this.psi_r_d * this.omega_actual;*/
         #asm(  alu sr = 0 - sr; ram p <- asm_LM_LR. )
         #asm(  mdu p mults sr. )
         ACIMVC_WAIT_03:
         #asm(  if mb == 1 then goto ACIMVC_WAIT_03, flush. )
#ifdef __ETEC__  // ASH WARE
         #asm(  alu a =<< mach; ram p <- asm_omega_actual. )
#else  // Byte Craft
         #asm(  %hex B3C70BAB. )
#endif
         #asm(  mdu a mults p. )
         #asm(  ram p <- asm_u_dq_q. )
         #asm(  alu a =>> p + 0x0. )
         #asm(  ram p <- asm_i_dq_d. )
         #asm(  alu mach = mach + a. )
         #asm(  mdu diob macs p. )
         ACIMVC_WAIT_04:
         #asm(  if mb == 1 then goto ACIMVC_WAIT_04, flush. )
#ifdef __ETEC__  // ASH WARE
         #asm(  alu p =<< mach; ram p -> asm_u_dq_q. )
#else  // Byte Craft
         #asm(  %hex B3D77B8D. )
#endif

         register_ac tmp;
         /**********************************************
         * Circle limitation.
         **********************************************/
         if(ACIMVC_CIRCLE_LIMITATION_ON)
         {
            /*
            vLim = mod_index * u_dc_bus_actual/2;
            if(u_dq.d > vLim) u_dq.d = vLim;
            else if (u_dq.d < -vLim) u_dq.d = -vLim;
            */
            #asm(  ram p <- asm_u_dq_d.                        )
            #asm(  alu a = p; ram p <- asm_mod_index.          )
            #asm(  alu sr = p; ram diob <- asm_u_dc_bus_actual.)
            #asm(  alu diob = diob >> 2.                       )
            #asm(  mdu diob mults sr.                          )
            ACIMVC_LIMIT0:
            #asm(  if mbsy then goto ACIMVC_LIMIT0, flush.     )
            #asm(  alu diob = mach.                            )
            #asm(  alu nil = a - diob ,ccs.                    )
            #asm(  if N == 1 then goto ACIMVC_LIMIT1, flush.   )
            #asm(  ram diob -> asm_u_dq_d.                     )
            goto ACIMVC_LIMIT2;
            ACIMVC_LIMIT1:
            #asm(  alu sr = 0 - diob ,ccs.                     )
            #asm(  alu nil = a - sr ,ccs.                      )
            #asm(  if N == 0 then goto ACIMVC_LIMIT2, flush.   )
            #asm(  alu diob = sr; ram diob -> asm_u_dq_d.      )
            ACIMVC_LIMIT2:
            
            /* register a = (vLim)^2 - (u_dq.d)^2 */
            #asm(  alu diob =<<2 diob.                         )
            #asm(  mdu diob mults diob.                        )
            #asm(  alu a =<<2 a.                               )
            ACIMVC_LIMIT3:
            #asm(  if mbsy then goto ACIMVC_LIMIT3, flush.     )
            #asm(  alu b =<< mach + #0.                        )
            #asm(  mdu a mults a.                              )
            ACIMVC_LIMIT4:
            #asm(  if mbsy then goto ACIMVC_LIMIT4, flush.     )
            #asm(  alu a =<< mach + #0.                        )
            #asm(  alu a = b - a, ccs.                         )
#ifdef __ETEC__  // ASH WARE
            #asm(  alu_if N == 1 then a = 0. )
#else  // Byte Craft
            #asm(  %hex 3FFF0F74.  )
#endif
            #asm(  if N == 1 then goto ACIMVC_LIMIT5, flush.   )
            
            /* Calculate sqrt(a) = sqrt((vLim)^2 - (u_dq.d)^2) */
            tmp = mc_sqrt(tmp);
            
            /*
            u_q_max = sqrt((vLim)^2 - (u_dq.d)^2);
            if(u_dq.q > u_q_max) u_dq.q = u_q_max;
            else if (u_dq.q < -u_q_max) u_dq.q = -u_q_max;
            */
            #asm(  alu a = a >> 2.                             )
            ACIMVC_LIMIT5:
            #asm(  ram diob <- asm_u_dq_q.                     )
            #asm(  alu nil = diob - a ,ccs.                    )
            #asm(  if N == 1 then goto ACIMVC_LIMIT6, flush.   )
            #asm(  alu p = a; ram p -> asm_u_dq_q.             )
            this.circle_limitation_flag = ACIMVC_CIRCLE_LIMIT_ON;
            goto ACIMVC_LIMIT8;
            ACIMVC_LIMIT6:
            #asm(  alu sr = 0 - a ,ccs.                        )
            #asm(  alu nil = diob - sr ,ccs.                   )
            #asm(  if N == 0 then goto ACIMVC_LIMIT7, flush.   )
            #asm(  alu p = sr; ram p -> asm_u_dq_q.            )
            this.circle_limitation_flag = ACIMVC_CIRCLE_LIMIT_ON;
            goto ACIMVC_LIMIT8;
            ACIMVC_LIMIT7:
            this.circle_limitation_flag = ACIMVC_CIRCLE_LIMIT_OFF;
            ACIMVC_LIMIT8: ;
         }

         /**********************************************
         * Inverse Park Transformation.
         **********************************************/
ACIMVC_INV_PARK_TRANSFORMATION:
         MC_TRAN_PARK_INV(asm_u_ab, asm_u_dq, asm_sin_cos);

         /* u_ab values contain quarters of the actual values (format 3.21) */

         /**********************************************
         * Eliminate DC-bus ripple.
         **********************************************/
         MC_RIPPLE_ELIM(asm_u_ab_alpha, asm_u_dc_bus_actual, asm_inv_mod_index);
         MC_RIPPLE_ELIM(asm_u_ab_beta, asm_u_dc_bus_actual, asm_inv_mod_index);

         /**********************************************
         * Write alpha and beta components to PWMMAC.
         **********************************************/
         /*
         p_outputs->A = u_ab.alpha;
         p_outputs->B = u_ab.beta;
         */
         #asm( ram diob <- asm_p_outputs. )
         #asm( ram p <- asm_u_ab_alpha. )
         #asm( ram p -> by diob++. )
         #asm( ram p <- asm_u_ab_beta. )
         #asm( ram p -> by diob. )

         /**********************************************
         * Interrupt each services_per_irq period.
         **********************************************/
         if ( --service_counter == 0 )
         {
            SetChannelInterrupt();
            service_counter = this.services_per_irq;
         }
ACIMVC_LINK:
         /* send link to link_chan */
         LinkTo(this.link_chan);
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
* DESCRIPTION: Schedule next periodic match and start the chain of ACIMVC
*              calculations.
*              1. Schedule next match.
*              2. Goto ACIMVC_CALC
*******************************************************************************/
   else if (m1==1)
   {
ACIMVC_UpdateOnMatch:
      /* set pin high to indicate start of thread */
      Pin(SetHigh);

      /* schedule next match */
      erta = edge_time + this.period;
      edge_time = erta;
      ClearMatchALatch();
      EnableMatchA();

      goto ACIMVC_CALC;
   }
/*******************************************************************************
* THREAD NAME: UNHANDLED_EVENTS
*******************************************************************************/
   else
   {
ACIMVC_Error:
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
#pragma write h, (::ETPUfilename (cpu/etpu_acimvc_auto.h));
#pragma write h, (/* WARNING this file is automatically generated DO NOT EDIT IT! */);
#pragma write h, (/*                                                              */);
#pragma write h, (/* This file provides an interface between eTPU code and CPU    */);
#pragma write h, (/* code. All references to the ACIMVC function should be made  */);
#pragma write h, (/* with information in this file. This allows only symbolic     */);
#pragma write h, (/* information to be referenced which allows the eTPU code to be*/);
#pragma write h, (/* optimized without effecting the CPU code.                    */);
#pragma write h, (/****************************************************************/);
#pragma write h, (#ifndef _ETPU_ACIMVC_AUTO_H_ );
#pragma write h, (#define _ETPU_ACIMVC_AUTO_H_ );
#pragma write h, ( );
#pragma write h, (/****************************************************************);
#pragma write h, (* Function Configuration Information. );
#pragma write h, (****************************************************************/);
#pragma write h, (::ETPUliteral(#define FS_ETPU_ACIMVC_FUNCTION_NUMBER        )  ::ETPUfunctionnumber(ACIMVC) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ACIMVC_TABLE_SELECT           )  ::ETPUentrytype(ACIMVC) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ACIMVC_NUM_PARMS              )  ::ETPUram(ACIMVC) );
#pragma write h, ( );
#pragma write h, (/****************************************************************);
#pragma write h, (* Host Service Request Definitions. );
#pragma write h, (****************************************************************/);
#pragma write h, (::ETPUliteral(#define FS_ETPU_ACIMVC_HSR_INIT_MASTER        )  ACIMVC_HSR_INIT_MASTER     );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ACIMVC_HSR_INIT_SLAVE         )  ACIMVC_HSR_INIT_SLAVE      );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ACIMVC_HSR_UPDATE             )  ACIMVC_HSR_UPDATE );
#pragma write h, ( );
#pragma write h, (/****************************************************************);
#pragma write h, (* ACIMVC eTPU Function Parameter Definitions. );
#pragma write h, (****************************************************************/);
#pragma write h, (::ETPUliteral(#define FS_ETPU_ACIMVC_PERIOD_OFFSET         ) (::ETPUlocation (ACIMVC, this.period           ) ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ACIMVC_STARTOFFSET_OFFSET    ) (::ETPUlocation (ACIMVC, this.start_offset     ) ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ACIMVC_SERVICESPERIRQ_OFFSET ) (::ETPUlocation (ACIMVC, this.services_per_irq ) ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ACIMVC_LINKCHAN_OFFSET       ) (::ETPUlocation (ACIMVC, this.link_chan        ) ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ACIMVC_IABC_OFFSET           ) (::ETPUlocation (ACIMVC, this.i_abc.a          )-1));
#pragma write h, (::ETPUliteral(#define FS_ETPU_ACIMVC_IAB_OFFSET            ) (::ETPUlocation (ACIMVC, this.i_ab.alpha       )-1));
#pragma write h, (::ETPUliteral(#define FS_ETPU_ACIMVC_IDQ_OFFSET            ) (::ETPUlocation (ACIMVC, this.i_dq.d           )-1));
#pragma write h, (::ETPUliteral(#define FS_ETPU_ACIMVC_IDQDESIRED_OFFSET     ) (::ETPUlocation (ACIMVC, this.i_dq_desired.d   )-1));
#pragma write h, (::ETPUliteral(#define FS_ETPU_ACIMVC_UDQ_OFFSET            ) (::ETPUlocation (ACIMVC, this.u_dq.d           )-1));
#pragma write h, (::ETPUliteral(#define FS_ETPU_ACIMVC_UAB_OFFSET            ) (::ETPUlocation (ACIMVC, this.u_ab.alpha       )-1));
#pragma write h, (::ETPUliteral(#define FS_ETPU_ACIMVC_KLTKT_OFFSET          ) (::ETPUlocation (ACIMVC, this.KL_T_KT          ) ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ACIMVC_KLRKT_OFFSET          ) (::ETPUlocation (ACIMVC, this.KL_R_KT          ) ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ACIMVC_IKT_OFFSET            ) (::ETPUlocation (ACIMVC, this.I_KT             ) ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ACIMVC_TRKT_OFFSET           ) (::ETPUlocation (ACIMVC, this.TR_KT            ) ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ACIMVC_T_OFFSET              ) (::ETPUlocation (ACIMVC, this.T                ) ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ACIMVC_PSIR_OFFSET           ) (::ETPUlocation (ACIMVC, this.psi_r.alpha      )-1));
#pragma write h, (::ETPUliteral(#define FS_ETPU_ACIMVC_PSIRPRED_OFFSET       ) (::ETPUlocation (ACIMVC, this.psi_r_pred.alpha )-1));
#pragma write h, (::ETPUliteral(#define FS_ETPU_ACIMVC_X_OFFSET              ) (::ETPUlocation (ACIMVC, this.x.alpha          )-1));
#pragma write h, (::ETPUliteral(#define FS_ETPU_ACIMVC_DX_OFFSET             ) (::ETPUlocation (ACIMVC, this.dx.alpha         )-1));
#pragma write h, (::ETPUliteral(#define FS_ETPU_ACIMVC_DXPRED_OFFSET         ) (::ETPUlocation (ACIMVC, this.dx_pred.alpha    )-1));
#pragma write h, (::ETPUliteral(#define FS_ETPU_ACIMVC_IABCOMP_OFFSET        ) (::ETPUlocation (ACIMVC, this.i_ab_comp.alpha  )-1));
#pragma write h, (::ETPUliteral(#define FS_ETPU_ACIMVC_LMTR_OFFSET           ) (::ETPUlocation (ACIMVC, this.LM_TR            ) ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ACIMVC_PSIRD_OFFSET          ) (::ETPUlocation (ACIMVC, this.psi_r_d          ) ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ACIMVC_PSIRDSCALED_OFFSET    ) (::ETPUlocation (ACIMVC, this.psi_r_d_scaled   ) ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ACIMVC_PSIRDSCALE_OFFSET     ) (::ETPUlocation (ACIMVC, this.psi_r_d_scale    ) ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ACIMVC_LMLRTR_OFFSET         ) (::ETPUlocation (ACIMVC, this.LM_LR_TR         ) ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ACIMVC_LMLR_OFFSET           ) (::ETPUlocation (ACIMVC, this.LM_LR            ) ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ACIMVC_KL_OFFSET             ) (::ETPUlocation (ACIMVC, this.KL               ) ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ACIMVC_SINCOS_OFFSET         ) (::ETPUlocation (ACIMVC, this.sin_cos.sin      )-1));
#ifdef __ETEC__  // ASH WARE
#pragma write h, (::ETPUliteral(#define FS_ETPU_ACIMVC_PSCOMEGAACTUAL_OFFSET ) (::ETPUlocation (ACIMVC, this.p_sc_omega_actual) ) );
#else  // Byte Craft
#pragma write h, (::ETPUliteral(#define FS_ETPU_ACIMVC_PSCOMEGAACTUAL_OFFSET ) ( 0x00A9 ) );
#endif
#pragma write h, (::ETPUliteral(#define FS_ETPU_ACIMVC_OMEGAACTUAL_OFFSET    ) (::ETPUlocation (ACIMVC, this.omega_actual     ) ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ACIMVC_OMEGAFIELD_OFFSET     ) (::ETPUlocation (ACIMVC, this.omega_field      ) ) );
#ifdef __ETEC__  // ASH WARE
#pragma write h, (::ETPUliteral(#define FS_ETPU_ACIMVC_PPIDD_OFFSET          ) (::ETPUlocation (ACIMVC, this.p_pid_d          ) ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ACIMVC_PPIDQ_OFFSET          ) (::ETPUlocation (ACIMVC, this.p_pid_q          ) ) );
#else  // Byte Craft
#pragma write h, (::ETPUliteral(#define FS_ETPU_ACIMVC_PPIDD_OFFSET          ) ( 0x00B5 ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ACIMVC_PPIDQ_OFFSET          ) ( 0x00B9 ) );
#endif
#pragma write h, (::ETPUliteral(#define FS_ETPU_ACIMVC_INVMODINDEX_OFFSET    ) (::ETPUlocation (ACIMVC, this.inv_mod_index    ) ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ACIMVC_MODINDEX_OFFSET       ) (::ETPUlocation (ACIMVC, this.mod_index        ) ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ACIMVC_CIRCLELIMIT_OFFSET    ) (::ETPUlocation (ACIMVC, this.circle_limitation_flag) ) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ACIMVC_UDCBUSACTUAL_OFFSET   ) (::ETPUlocation (ACIMVC, this.u_dc_bus_actual  ) ) );
#ifdef __ETEC__  // ASH WARE
#pragma write h, (::ETPUliteral(#define FS_ETPU_ACIMVC_POUTPUTS_OFFSET       ) (::ETPUlocation (ACIMVC, this.p_outputs        ) ) );
#else  // Byte Craft
#pragma write h, (::ETPUliteral(#define FS_ETPU_ACIMVC_POUTPUTS_OFFSET       ) ( 0x00C9 ) );
#endif
#pragma write h, ( );
#pragma write h, (/****************************************************************);
#pragma write h, (* Value Definitions. );
#pragma write h, (****************************************************************/);
#pragma write h, (::ETPUliteral(#define FS_ETPU_ACIMVC_FM_CIRCLE_LIMITATION_OFF) 0 );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ACIMVC_FM_CIRCLE_LIMITATION_ON ) 2 );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ACIMVC_PID_OFF                 ) 0 );
#pragma write h, (::ETPUliteral(#define FS_ETPU_ACIMVC_PID_ON                  ) 1 );
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
