/*******************************************************************************
*
*  FREESCALE SEMICONDUCTOR INC. 2005
*  ALL RIGHTS RESERVED
*  COPYRIGHT (c)
*  
********************************************************************************
*
*  DESCRIPTION:
*   This file contains the eTPU implementation of FOC transformations
*
********************************************************************************
*
*  REVISION HISTORY:
*                                                         
*  REVISION    AUTHOR       DATE         DESCRIPTION OF CHANGE                  
*  --------    -----------  ---------    ------------------------------------                  
*  0.1         P. Uhlir     09/Mar/04    Initial version of the file
*  0.2         P. Uhlir     09/Mar/04    Changed the file name from 
*                                        trans.c -> etpu_trans.c
*                                        Changed the included files names
*                                        Included figures in description
*  0.3         M. Princ     16/Jun/05    Inv. Park implementation in assembler.
*  0.3         M. Princ     28/Jul/05    Clark and Park forward transformation
*                                        implemented.
*  0.4         M. Princ     16/Aug/05    Clark transformation corrected.
*  1.0         M. Brejl     10/Nov/05    Fixed for ETPU_C 1.0.7.
*******************************************************************************/

#ifndef __ETPUC_MC_TRANS_C
#define __ETPUC_MC_TRANS_C

#include "etpuc_mc_tran.h"              /* Clarke and Park transformations */
#include "etpuc_mc_sin.h"


#define INV_SQRT3    0x93CD            /* (1/SQRT(3)) * 2^16 */


/*******************************************************************************

  The macro MC_TRAN_CLARK provides call to Forward Clark Transformation routine.
  
  Example of usage:

    MC_TRAN_CLARK(alpha_beta, phase_currents);

*******************************************************************************/
#define MC_TRAN_CLARK(ab,abc)\
#asm(ram p <- abc.)\
#asm(alu a = p;ram p <- abc+4.)\
#asm(call mc_tran_clark,no_flush.)\
#asm(alu b = p,ccs;ram p <- abc+8.)\
#asm(ram p -> ab.)\
#asm(alu p = mach;ram p -> ab+4.)

/*******************************************************************************

  MODULE:    mc_tran_clark() - Forward Clarke Transformation

  DESCRIPTION: 
    Function transforms 3-phase input currents into 2-phase stationary 
    orthogonal reference frame system (alpha-beta coordination system)
       
                      _________
                     |         | 
              a  --->|         | 
                     |         |>--- alpha
              b  --->| CLARKE  |
                     |         |>--- beta
              c  --->|         | 
                     |_________|
          
    Mathematical equation:
   
      alpha = a
      beta  = 1/sqrt(3)*a + 2/sqrt(3)*b =
            = (1/sqrt(3))*(b-c)
 
  ARGUMENTS:
    alpha_beta_t     ab     Alpha-Beta components
    phase_currents_t abc    measured phase currents
    
  RETURNS:
    void

  RANGE ISSUES: 
    None

  SPECIAL ISSUES:
    None

*******************************************************************************/
void mc_tran_clark(/*alpha_beta_t ab, phase_currents_t abc*/)
{
/*
  ab.alpha = abc.a;
  ab.beta  = 1/SQRT(3)*(abc.b - abc.c);
*/
MC_TRAN_CLARK1:
  /* Inputs: */
  /* register a  ...... abc.a */
  /* register b  ...... abc.b */
  /* register p  ...... abc.c */
#asm(  alu b =>> b + 0x0.        )  /* b = b >> 1 */
#ifdef __ETEC__  // ASH WARE
#asm( alu_if n == 1 then b = b + max. ) /* if abc.b<0 then b = b + 0x800000*/
#asm( alu nil = p, ccs. )          /* test p register (abc.c) */
#asm( alu p =>> p + 0x0. )         /* p = p >> 1 */
#asm( alu_if n == 1 then p = p + max. )  /* if abc.c<0 then p = p + 0x800000*/
#else  // Byte Craft
#asm( %hex 3CF33F14. )
#asm( alu nil = p, ccs. ) 
#asm( alu p =>> p + 0x0. ) 
#asm( %hex 3CF87F74. ) 
#endif
#asm(  alu b = b - p.            )  /* b = Is_b - Is_c */
#asm(  alu p = #INV_SQRT3.       )  /* p = 1/SQRT(3) */
#asm(  mdu b fmults p (16).      )  /* signed fractional multiplication (1/SQRT(3))*(Is_b - Is_c) */
#asm(  alu p = a.                )  /* mbsy | p = Is_a = Is_alpha */
#asm(  return, no_flush.         )  /* mbsy | return */
#asm(  alu mach =<< mach + 0x0.  )  /* mach = Is_beta */
  /* Outputs: */
  /* register p    ...... Is_alpha */
  /* register mach ...... Is_beta  */
}

/*******************************************************************************

  The MC_TRAN_PARK macro uses Inverse Park Transformation routine to process 
  Forward Park Transformation.
  
  Example of usage:

    MC_TRAN_PARK(d_q, alpha_beta, sin_cos);
  
*******************************************************************************/
#define MC_TRAN_PARK(dq,ab,sc)\
#asm(ram p <- sc.)\
#asm(alu a = p;ram p <- sc+4.)\
#asm(alu sr = p;ram p <- ab+4.)\
#asm(call mc_tran_park_inv,no_flush.)\
#asm(alu c = p;ram p <- ab.)\
#asm(ram p -> dq+4.)\
#asm(alu p = a;ram p -> dq.)

/*******************************************************************************

  MODULE:    Park() - Forward Park Transformation

  DESCRIPTION: 
    Function transforms 2-phase input currents from 2-phase stationary 
    orthogonal reference frame system (alpha-beta coordination system)
    to 2-phase orthogonal rotating reference frame system 
    (D-Q coordination system)
 
                      _________
                     |         | 
          alpha  --->|         | 
          beta   --->|         |>--- d (direct axis)
                     | P A R K |
          sin    --->|         |>--- q (quadrature axis)
          cos    --->|         | 
                     |_________|
 
    Mathematical equation:
      
        d =  alpha * cos(theta) + beta * sin(theta);
        q = -alpha * sin(theta) + beta * cos(theta);
    or
        q = beta * cos(theta) - alpha * sin(theta);
        d = beta * sin(theta) + alpha * cos(theta);

  ARGUMENTS:
    alpha_beta_t  ab     Alpha-Beta components
    d_q_t         dq     D-Q components
    sin_cos_t     sc     Sine and Cosine value 

  RETURNS:
    void

  RANGE ISSUES: 
    None

  SPECIAL ISSUES:
    None

*******************************************************************************/

/*******************************************************************************

  The macro MC_TRAN_PARK_INV provides call to Inverse Park Transformation
  routine.
  
  Example of usage:

    MC_TRAN_PARK_INV(alpha_beta, d_q, sin_cos);
  
*******************************************************************************/
#define MC_TRAN_PARK_INV(ab,dq,sc)\
#asm(ram p <- sc.)\
#asm(alu a = p;ram p <- sc+4.)\
#asm(alu sr = p;ram p <- dq.)\
#asm(call mc_tran_park_inv,no_flush.)\
#asm(alu c = p;ram p <- dq+4.)\
#asm(ram p -> ab.)\
#asm(alu p = a;ram p -> ab+4.)

/*******************************************************************************

  MODULE:    mc_tran_park_inv() - Inverse Park Transformation

  DESCRIPTION: 
    Function transforms decoupled stator space voltage vector from 
    2-phase orthogonal rotating reference frame system
   (D-Q coordination system) into 2-phase stationary orthogonal
    reference frame system (alpha-beta coordination system)

                      _________
                     |         | 
              d  --->|         | 
              q  --->| P A R K |>--- alpha (alpha axis)
                     |         |
            sin  --->|  I N V  |>--- beta  (beta axis)
            cos  --->|         | 
                     |_________|
 
    Mathematical equation:
        
        alpha = d * cos(theta) - q * sin(theta);
        beta  = d * sin(theta) + q * cos(theta);

  ARGUMENTS:
    alpha_beta_t  ab     Alpha-Beta components
    d_q_t         dq     D-Q components
    sin_cos_t     sc     Sine and Cosine value 

  RETURNS:
    void

  RANGE ISSUES: 
    None

  SPECIAL ISSUES:
    None

*******************************************************************************/
void mc_tran_park_inv(/*alpha_beta_t ab, d_q_t dq, sin_cos_t sc*/)
{
/*
  ab.alpha = dq.d * sc.cos - dq.q * sc.sin;
  ab.beta  = dq.d * sc.sin + dq.q * sc.cos;
*/
MC_TRAN_INVPARK:
  /* Inputs: */
  /* register c  ...... dq.d */
  /* register p  ...... dq.q */
  /* register a  ...... sc.sin */
  /* register sr ...... sc.cos */
#asm(  mdu c mults sr.           )   /* signed multiplication Us_d*cos(Theta_actual_el) */
#asm(  alu b = p.                )   /* mbsy | b = Us_q */
#asm(  alu p = 0 - p.            )   /* mbsy | p = - Us_q */
#asm(  nop.                      )   /* mbsy */
#asm(  mdu p macs a.             )   /* mbsy | signed multiplication with accumulation -Us_q*sin(Theta_actual_el) */
MC_TRAN_INVPARK_W1:
#asm(  if mbsy then goto MC_TRAN_INVPARK_W1, flush. ) /* wait till multiplication is complete */
#asm(  alu p =<< mach + #0x00.   )   /* p = Us_alpha */
#asm(  mdu c mults a.            )   /* signed multiplication Us_d*sin(Theta_actual_el) */
MC_TRAN_INVPARK_W2:
#asm(  if mbsy then goto MC_TRAN_INVPARK_W2, flush. ) /* wait till multiplication is complete */
#asm(  mdu b macs sr.            )   /* mbsy | signed multiplication with accumulation Us_q*cos(Theta_actual_el) */
#asm(  goto MC_TRAN_INVPARK_W3,flush.) /* 2x mbsy */
MC_TRAN_INVPARK_W3:
#asm(  return, no_flush.         )   /* mbsy | return  */
#asm(  alu a =<< mach + #0x00.   )   /* a = Us_beta */
  /* Outputs: */
  /* register p ...... ab.alpha   */
  /* register a ...... ab.beta    */
}


#endif /* __ETPUC_MC_TRANS_C */

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
