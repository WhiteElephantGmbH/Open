/*******************************************************************************
*
*  FREESCALE SEMICONDUCTOR INC. 2006
*  ALL RIGHTS RESERVED
*  COPYRIGHT (c)
*  
********************************************************************************
*
*  DESCRIPTION:
*   This file contains the eTPU implementation of DC-bus ripple elimination
*   function.
*
********************************************************************************
*
*  REVISION HISTORY:
*                                                         
*  REVISION    AUTHOR       DATE        DESCRIPTION OF CHANGE                  
*  --------    -----------  ---------   ------------------------------------                  
*  0.1         P. Uhlir     09/Mar/04   Initial version of the file.
*  0.2         M. Brejl     04/Jul/05   Implementation in assembler.
*  1.0         M. Brejl     10/Nov/05   Fixed for ETPU_C 1.0.7.
*  1.1         M. Princ     01/Mar/06   New implementation of ripple elim.
*
*******************************************************************************/

#ifndef __ETPUC_MC_ELIM_C
#define __ETPUC_MC_ELIM_C

/*******************************************************************************

  The macro MC_RIPPLE_ELIM provides call to DC-Bus Ripple Elimination routine.
  
  Example of usage:
    MC_RIPPLE_ELIM(u_ab+1, u_dc_bus_actual, inv_mod_index);     
    MC_RIPPLE_ELIM(u_ab+5, u_dc_bus_actual, inv_mod_index);     
  
*******************************************************************************/
#define MC_RIPPLE_ELIM(u_ab, u_dc_bus, inv_mod_idx) \
#asm(ram p <- u_ab.) \
#asm(alu d = p; ram p <- inv_mod_idx.) \
#asm(call mc_ripple_elim, no_flush.) \
#asm(alu a = p; ram p <- u_dc_bus.) \
#asm(alu p = a; ram p -> u_ab.)
/*******************************************************************************

  MODULE:    mc_ripple_elim()

  DESCRIPTION: 
   The function mc_ripple_elim compensates amplitude of the alpha & beta
   component of the stator reference voltage vector for imperfections in the 
   DC Bus voltage. These imperfections are eliminated as follows:
   
   if (|inversion modulation index * alpha| < (u_dc_bus_actual/2))
      alpha = (inversion modulation index * alpha)/(u_dc_bus_actual/2)
   else
      alpha = sign(alpha)

   if (|inversion modulation index * beta| < (u_dc_bus_actual/2))
      beta = (inversion modulation index * beta)/(u_dc_bus_actual/2)
   else
      beta = sign(beta)

   To compensate the amplitude of both alpha and beta component, this routine 
   must be called twice.
   
  ARGUMENTS:
   fract24  u_ab            Alpha and beta components of the stator voltages 
                            in 2-phase orthogonal stationary reference frame,
                            u_ab values contain quarters of the actual values 
                            (format 3.21, range 0x200000 - 0x1FFFFF)

   ufract24 u_dc_bus_actual Actual value of the dc-bus voltage.
                            Format unsigned fract 0.24, range 0x000000-0xFFFFFF

   fract24  inv_mod_index   Inverse modulation index, dependent on the type of 
                            modulation technique being used by PWMMAC.
                            Format unsigned fract 1.23, range 0x800000-0x7FFFFF

  RETURNS:   
   fract24  u_ab            Alpha and beta components of the stator voltages 
                            in 2-phase orthogonal stationary reference frame,
                            u_ab values contain quarters of the actual values 
                            (format 3.21, range 0x200000 - 0x1FFFFF)

  RANGE ISSUES: 
    None

  SPECIAL ISSUES:
    None

*******************************************************************************/
fract24 mc_ripple_elim(/*fract24 u_ab,
                       unsigned fract24 u_dc_bus_actual, 
                       fract24 inv_mod_index*/)
{
  /* Inputs: */
  /* register d  ...... u_ab in 3.21 format */
  /* register a  ...... inversion modulation index in 1.23 format */
  /* register p  ...... u_dc_bus_actual in 0.24 format */
#ifdef __ETEC__  // ASH WARE
  // ccs is meaningless on an MDU instruction... ETEC thus does not accept
  // it as an option
  #asm(  mdu d mults a. )        /* u_ab * inv_mod_index */
#else  // Byte Craft
  #asm(  mdu d mults a, ccs. )
#endif
#asm(  alu p = p >> 4.               ) /* mbsy | p = u_dc_bus_actual>>4 (u_dc_bus_actual/2 in 3.21 format) */
#asm(  nop.                          ) /* mbsy */
#asm(  nop.                          ) /* mbsy */
#asm(  alu d =<< mach + #0.          ) /* d = u_ab * inv_mod_index */
#asm(  alu a = abs(d).               ) /* a = |u_ab * inv_mod_index| */
#asm(  alu nil = a - p ,ccs.         ) /* p = |u_ab * inv_mod_index| - (u_dc_bus_actual/2) */
#asm(  if N == 0 then goto MC_ELIM_2, no_flush.)
#asm(  alu nil = d, ccs.             ) /* set alu flags on (u_ab * inv_mod_index) */
/*-----------------------*/
#asm(  alu p = p >> 8.               ) /* p = u_dc_bus_actual>>9 */
#asm(  alu p = p >> 4.               ) /* p = u_dc_bus_actual>>13 */
#asm(  mdu a div p.                  ) /* |u_ab * inv_mod_index|/u_dc_bus_actual>>13 */
MC_ELIM_1:
#asm(  if mbsy then goto MC_ELIM_1, flush. ) /* wait till division is complete */
#asm(  alu a =<< macl + #0.          ) /* a = division result << 1*/
#asm(  alu a = a << 8.               ) /* a = division result << 9, signed fract 3.21 */
#asm(  return, no_flush.              ) /* return */
#ifdef __ETEC__  // ASH WARE
  #asm( alu_if N == 1 then a = 0 - a. ) /* if (u_ab * inv_mod_index)<0 return -a */
#else  // Byte Craft
  #asm( %hex 3C3F0F74. ) 
#endif
MC_ELIM_2:
#asm(  alu a = 0x1FFFFF.             ) /* result =  1 */
#asm(  alu p = 0xE00000.             ) /* result = -1 */
#asm(  return, no_flush.              ) /* return */
#asm(  alu_if N == 1 then a = p.     ) /* if (u_ab * inv_mod_index)<0 return -1 */
}

#endif /* __ETPUC_MC_ELIM_C */

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
