/*******************************************************************************
*
*  FREESCALE SEMICONDUCTOR INC. 2006
*  ALL RIGHTS RESERVED
*  COPYRIGHT (c)
*  
********************************************************************************
*
*  DESCRIPTION:
*   This file contains the eTPU implementation of several math utilities.
*
********************************************************************************
*
*  REVISION HISTORY:
*                                                         
*  REVISION    AUTHOR       DATE        DESCRIPTION OF CHANGE                  
*  --------    -----------  ---------   ------------------------------------                  
*  0.1         M. Brejl     08/Jul/05   Initial version: mc_abs, mc_saturate.
*  0.2         M. Brejl     12/Aug/05   Added mc_sqrt.
*  0.3         M. Brejl     04/Nov/05   New implementation of mc_sqrt.
*  1.0         M. Brejl     10/Nov/05   Fixed for ETPU_C 1.0.7.
*
*******************************************************************************/

#ifndef __ETPUC_MC_UTIL_C
#define __ETPUC_MC_UTIL_C

/*******************************************************************************

  MODULE:    mc_abs()

  DESCRIPTION: 
   The function mc_abs calculates the absolute value of signed argument

  ARGUMENTS:
   fract24/int24 x          Signed 24-bit value, passed through register a.

  RETURNS:   
   fract24/int24            Absolute value of x.

  RANGE ISSUES: 
    None

  SPECIAL ISSUES:
    Function call is sometimes not compiled correctly:
    
    voltage = mc_abs(voltage);
    
0384 FFE0101F   call 0200,noflush.            voltage = mc_abs(voltage);
0388 00900428   alu a = #0x000025.            <<--- ERROR!
038C BFF97A89   alu p = a ,ccs;
                    ram PRAM37 = p23_0.
    
     Try the following trick:
     
     voltage = mc_abs(voltage+0);
     
0384 BFEFFB89   ram p23_0 = PRAM37.           voltage = mc_abs(voltage+0);
0388 FFE0101F   call 0200,noflush.
038C 3BF80FF4   alu a = p ,ccs.               <<--- CORRECT
0390 BFF97A89   alu p = a ,ccs;
                    ram PRAM37 = p23_0.

*******************************************************************************/
fract24 mc_abs(registera x)
{
  /* Inputs: */
  /* register a  ...... x */
#asm(  alu nil = a + max, ccs. )
#asm(  if Z == 1 then goto MC_ABS_L0, flush. )
#asm(  return, no_flush. )
#asm(  alu a = abs(a).   )  
MC_ABS_L0:
#ifdef __ETEC__  // ASH WARE
  // this instruction combination only supports "flush".  Note that using the "flush"
  // keyword works fine with BC version 1.0.7.55, but fails in 1.0.7.30.
  // Note 2: #ifdef does not work inside #asm/#endasm under Byte Craft
#asm(  alu a = #0x7FFFFF; return, flush. )
#else  // Byte Craft
#asm(  alu a = #0x7FFFFF; return. )
#endif
  /* Outputs: */
  /* register a  ...... |x| */
}


/*******************************************************************************

  MODULE:    mc_saturate()

  DESCRIPTION: 
   The function mc_saturate saturates the result of last addition/subtraction
   into the fractional range (-1.0, 1.0), resp. (0x800000, 0x7FFFFF).
   This function can be used only after arithmetic operations which update
   overflow (V) flag - addition and subtraction.
   
   The algorithm is:
   if (V) then if (N) then return(0x7FFFFF)
                      else return(0x800000)
          else             return(x)

  ARGUMENTS:
   fract24/int24 x          Signed 24-bit value, passed through register a,
                            result of last arithmetic operation.

  RETURNS:   
   fract24/int24            Saturated value.

  RANGE ISSUES: 
    None

  SPECIAL ISSUES:
    Always check in .lst file. The following example is correct:
    
     voltage = mc_saturate(v_boost + voltage);
     
0384 BFEFFB8A   ram p23_0 = PRAM41.           voltage = mc_saturate(v_boost + voltage);
0388 BFE80A89   alu a = p ,ccs;
                    ram p23_0 = PRAM37.
038C FFE0109F   call 0210,noflush.
0390 3B190FF4   alu a = a + p ,ccs.           <<--- result of this operation is saturated
0394 BFF97A89   alu p = a ,ccs;
                    ram PRAM37 = p23_0.

*******************************************************************************/
fract24 mc_saturate(registera x)
{
  /* Inputs: */
  /* register a  ...... x */
#asm(  if V == 0 then goto MC_SATUR_END, flush. )
       /*---------*/
#asm(  alu a = max. )
#asm(  return, no_flush. )
#asm(  alu_if N == 1 then a = a - 1. )
       /*---------*/
#ifdef __ETEC__  // ASH WARE
#asm(  MC_SATUR_END: ) // work-around an ETEC V1.20C bug (# V1.20C-1) by putting label in assembly
#else  // Byte Craft
MC_SATUR_END: ;
#endif
  /* Outputs: */
  /* register a  ...... saturate(x) */
}


/*******************************************************************************

  MODULE:    mc_saturate2()

  DESCRIPTION: 
   The function mc_saturate saturates the result of last arithmetic operation
   into the fractional range (-1.0, 1.0), resp. (0x800000, 0x7FFFFF).
   This function can be used after arithmetic operations which do not update
   overflow (V) flag - shift left, etc.
   
   The algorithm is:
   if      (~C & N) then return(0x7FFFFF)
   else if (C & ~N) then return(0x800000)
   else                  return(x)

  ARGUMENTS:
   fract24/int24 x          Signed 24-bit value, passed through register a,
                            result of last arithmetic operation.

  RETURNS:   
   fract24/int24            Saturated value.

  RANGE ISSUES: 
    None

  SPECIAL ISSUES:
    Always check in .lst file.

*******************************************************************************/
fract24 mc_saturate2(registera x)
{
  /* Inputs: */
  /* register a  ...... x */
#asm(  if N == 0 then goto MC_SATUR2_NEG, flush. )
       /*---------*/
#asm(  if C == 1 then goto MC_SATUR2_END, flush. )
       /*---------*/
#ifdef __ETEC__  // ASH WARE
  // this instruction combination only supports "flush".  Note that using the "flush"
  // keyword works fine with BC version 1.0.7.55, but fails in 1.0.7.30.
  // Note 2: #ifdef does not work inside #asm/#endasm under Byte Craft
#asm(  alu a = #0x7FFFFF; return, flush. )
#else  // Byte Craft
#asm(  alu a = #0x7FFFFF; return. )
#endif
       /*---------*/
MC_SATUR2_NEG:
#asm(  return, no_flush. )
#ifdef __ETEC__  // ASH WARE
#asm(  alu_if C == 1 then a = max. )
#else  // Byte Craft
#asm(  %hex 3CFF0D74. )
#endif
       /*---------*/
#ifdef __ETEC__  // ASH WARE
#asm(  MC_SATUR2_END: ) // work-around an ETEC V1.20C (# V1.20C-1) bug by putting label in assembly
#else  // Byte Craft
MC_SATUR2_END: ;
#endif
  /* Outputs: */
  /* register a  ...... saturate2(x) */
}


/*******************************************************************************

  The macro MC_SQRT_MACRO provides call to mc_sqrt routine.
  
  Example of usage:
    MC_SQRT_MACRO(tmp, asm_psi_r_d, asm_psi_r_d_scaled, asm_psi_r_d_scale);     
  
*******************************************************************************/
#define MC_SQRT_MACRO(x,psi,psi_scaled,psi_scale) \
#asm(ram p <- x.) \
#asm(call mc_sqrt, no_flush.) \
#asm(alu a = p, ccs.) \
#asm(alu p = a; ram p -> psi.) \
#asm(alu p = b; ram p -> psi_scaled.) \
#asm(alu p = d; ram p -> psi_scale.)
/*******************************************************************************

  MODULE:    mc_sqrt()

  DESCRIPTION: 
   The function mc_sqrt computes the square root of positive fractional value x,
   using iterations. The precision is at least 19-bits.
   The algorithm is as follows:
   
   p = -11.5;
   sr = 1.0;
   // scale argument a to range (0.25, 1.00)
   while(a & 0xE00000 == 0)
   {
      a = a << 2;
      p = p + 2/3;
      sr = sr >> 1;
   }
   // set initial value
   diob = 0.656*a + 0.34;
   // max 11 iterations to get the sqrt
   do
      diob = diob + (a - diob*diob)/2;
      p = p + 1;
   while (p < 0)
   // scale back
   a = diob * sr;
   return(a);

  ARGUMENTS:
   fract24 a                Signed 24-bit fractional value, passed 
                            through register a.

  RETURNS:
   fract24                  Square root of a.

  RANGE ISSUES:
    The input data value must be a positive in the range of [0,1).

  SPECIAL ISSUES:
    Function call is sometimes not compiled correctly. Check the .lst file.

  PERFORMANCE:
    Minimum precision is 20 bits. Bits 0:3 may not be correct. In most cases
    the precision is 23 bits.
    Maximum computation time is 82 cycles.
    
      argument range      scaling loops     iterations    cycles
    ------------------------------------------------------------  
    0x7FFFFF-0x200000           0               11          80
    0x1FFFFF-0x080000           1               10          78
    0x07FFFF-0x020000           2               10          82
    0x01FFFF-0x008000           3               9           80
    0x007FFF-0x002000           4               8           78
    0x001FFF-0x000800           5               8           82
    0x0007FF-0x000200           6               7           80
    0x0001FF-0x000080           7               6           78
    0x00007F-0x000020           8               6           82
    0x00001F-0x000008           9               5           80
    0x000007-0x000002          10               4           78
    0x000001                   11               4           82
    ------------------------------------------------------------  
    The number of cycles = 14 + 4*<scaling loops> + 6*<iterations>
                   
*******************************************************************************/
#ifdef __ETEC__  // ASH WARE
#pragma force_wctl mc_sqrt 82 steps 0 rams
#endif
fract24 mc_sqrt(registera x)
{                  
  /* Inputs: */    
  /* register a  ...... a */
MC_SQRT:
#asm(  if Z == 1 then goto MC_SQRT_END, no_flush. )
#asm(  alu d = 0x1000. )
       /*-----------*/
#asm(  alu d = 0x1. )
#asm(  alu p = 0xFFFA30. )
#asm(  alu nil = a & 0xE00000, ccs. )
#asm(  if Z == 0 then goto MC_SQRT_SET_INIT, no_flush. )
#asm(  alu sr = 0x008000. )
       /*-----------*/
MC_SQRT_SCALE:
#asm(  alu d =<< d + 0x0. )
#asm(  alu a =<<2 a. )
#asm(  alu nil = a & 0xE00000, ccs. )
#asm(  if Z == 1 then goto MC_SQRT_SCALE, no_flush. )
#asm(  alu p = p + 0x58, shift. )
       /*-----------*/
MC_SQRT_SET_INIT:
#ifdef __ETEC__  // ASH WARE
#asm(  mdu a fmultu 0xA8. )
#else  // Byte Craft
#asm(  %hex 0EA9F39A. )
#endif
#asm(  alu diob = 0x2B8000. )
#asm(  alu diob = mach + diob. )
#asm(  alu b =>> a + #0. )
#asm(  alu a = 0. )
MC_SQRT_ITERATE:
#asm(  alu diob = diob - a. )
#asm(  mdu diob multu diob. )
#asm(  alu diob = b + diob. )
#asm(  alu p = p + 0x80, ccs. )
#asm(  if N == 1 then goto MC_SQRT_ITERATE, no_flush. )
#asm(  alu a = mach. )
       /*-----------*/
#asm(  alu p = diob - a. )
MC_SQRT_SCALE_BACK:
#asm(  mdu p fmultu sr(16). )
#asm(  alu p = p >> 8. )
#asm(  alu p = p >> 2. )
#asm(  alu b =>> p + #0.    )
#asm(  return, no_flush. )
#asm(  alu a =<< mach + #0. )
#ifdef __ETEC__  // ASH WARE
#asm(  MC_SQRT_END: ) // work-around an ETEC V1.20C bug (# V1.20C-1) by putting label in assembly
#else  // Byte Craft
MC_SQRT_END: ;
#endif
  /* Outputs: */
  /* register a  ...... sqrt(x) */
}


/*******************************************************************************

  MODULE:    mc_fdiv( x, y>>8 )

  DESCRIPTION: 
   The function mc_fdiv computes the fractioanal division of fractional value x,
   and positive non-zero fractional value y, without saturation.
   The algorithm is as follows:
   
   if (x == -1)
      return(-1);
   tmp = ((|x|<<1) / (y>>8)) << 8;
   tmp = (tmp + (mach<<8) / (y>>8)) << 8;
   if (x < 0)
   {
      tmp = -tmp;
   }
   return(tmp);

  ARGUMENTS:
   fract24 x                Signed 24-bit fractional value, passed 
                            through register a.
   fract24 y>>8             Positive signed 24-bit fractional value, 
                            shifted right 8, passed through register p.

  RETURNS:
   fract24                  Division result x/y.

  RANGE ISSUES:
    The input value y must be a non-zero positive fract24 in the range of (0,1).
    The absolute value of x must be lower or equal to y: |x| < y.

  SPECIAL ISSUES:
    If x = -1 (0x800000) then the result is automatically set to -1.

  PERFORMANCE:
    Precision is 16 bits.
    Computation time is 37 cycles.
                   
*******************************************************************************/
fract24 mc_fdiv(registera x /*, register_diob y*/)
{ 
  /* Inputs: */    
  /* register a    ...... x    */
  /* register diob ...... y>>8 */
#asm(  alu nil = a + max, ccs. )
#asm(  if Z == 1 then goto MC_FDIV_END, flush. )
#asm(  alu sr = abs(a). )
#asm(  alu sr =<< sr + 0x0. )
#asm(  mdu sr div diob. )
MC_FDIV_L1:
#asm(  if mb == 1 then goto MC_FDIV_L1, flush. )  
#asm(  alu sr = macl. )
#asm(  alu sr = sr << 8. )
#asm(  alu d = mach. )
#asm(  mdu sr div diob. )
#asm(  alu nil = a, ccs. )
#asm(  alu a = d << 8. )
MC_FDIV_L2:
#asm(  if mb == 1 then goto MC_FDIV_L2, flush. )  
#asm(  alu a = macl + a. )
#asm(  alu a = a << 8. )
#asm(  return, no_flush. )
#ifdef __ETEC__  // ASH WARE
#asm(  alu_if N == 1 then a = 0 - a. )
#else  // Byte Craft
#asm(  %hex 3C3F0F74. )
#endif
  /* Outputs: */
  /* register a  ...... x/y */
#ifdef __ETEC__  // ASH WARE
#asm(  MC_FDIV_END: ) // work-around an ETEC V1.20C bug (# V1.20C-1) by putting label in assembly
#else  // Byte Craft
MC_FDIV_END: ;
#endif
}


#endif /* __ETPUC_MC_UTIL_C */

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
