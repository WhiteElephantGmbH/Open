/*******************************************************************************
*
*  FREESCALE SEMICONDUCTOR INC. 2004
*  ALL RIGHTS RESERVED
*  COPYRIGHT (c)
*  
********************************************************************************
*
*  DESCRIPTION:
*   This file contains the eTPU implementation look-up table function
*   with linear interpolation. 
*
********************************************************************************
*
*  REVISION HISTORY:
*                                                         
*  REVISION    AUTHOR       DATE         DESCRIPTION OF CHANGE                  
*  --------    -----------  ---------    ------------------------------------                  
*  0.1         P. Uhlir     09/Mar/04    Initial version of the file
*  0.2         M. Princ     22/Jun/05    SinCos calculation implemented 
*                                        in assembler.
*  0.3         M. Brejl     01/Jul/05    Generalized LUT function.
*  1.0         M. Brejl     10/Nov/05    Fixed for ETPU_C 1.0.7.
*******************************************************************************/
#ifndef __ETPUC_MC_SIN_C
#define __ETPUC_MC_SIN_C


#include "etpuc_mc_sin.h"

/* 1st quadrant of sin wave - look up table */
unsigned int16 mc_sin_lut[] = {
    0x0000, 0x0324, 0x0648, 0x096C, 0x0C8F, 0x0FB2, 0x12D5, 0x15F6,
    0x1917, 0x1C37, 0x1F56, 0x2273, 0x2590, 0x28AB, 0x2BC4, 0x2EDB,
    0x31F1, 0x3505, 0x3817, 0x3B26, 0x3E34, 0x413F, 0x4447, 0x474D,
    0x4A50, 0x4D50, 0x504D, 0x5347, 0x563E, 0x5932, 0x5C22, 0x5F0E,
    0x61F7, 0x64DC, 0x67BE, 0x6A9B, 0x6D74, 0x7049, 0x731A, 0x75E6, 
    0x78AD, 0x7B70, 0x7E2E, 0x80E8, 0x839C, 0x864B, 0x88F5, 0x8B9A, 
    0x8E3A, 0x90D4, 0x9368, 0x95F7, 0x9880, 0x9B03, 0x9D80, 0x9FF7, 
    0xA267, 0xA4D2, 0xA736, 0xA994, 0xABEB, 0xAE3C, 0xB086, 0xB2C9, 
    0xB505, 0xB73A, 0xB968, 0xBB8F, 0xBDAF, 0xBFC7, 0xC1D8, 0xC3E2,
    0xC5E4, 0xC7DE, 0xC9D1, 0xCBBC, 0xCD9F, 0xCF7A, 0xD14D, 0xD318,
    0xD4DB, 0xD696, 0xD848, 0xD9F2, 0xDB94, 0xDD2D, 0xDEBE, 0xE046, 
    0xE1C6, 0xE33C, 0xE4AA, 0xE610, 0xE76C, 0xE8BF, 0xEA0A, 0xEB4B,
    0xEC83, 0xEDB3, 0xEED9, 0xEFF6, 0xF109, 0xF213, 0xF314, 0xF40C, 
    0xF4FA, 0xF5DF, 0xF6BA, 0xF78C, 0xF854, 0xF913, 0xF9C8, 0xFA73, 
    0xFB15, 0xFBAD, 0xFC3B, 0xFCC0, 0xFD3B, 0xFDAC, 0xFE13, 0xFE71, 
    0xFEC5, 0xFF0E, 0xFF4F, 0xFF85, 0xFFB1, 0xFFD4, 0xFFEC, 0xFFFC,
    0xFFFF
};

unsigned int16 * p_mc_sin_lt = mc_sin_lut;

#ifdef __ETEC__  // ASH WARE

// ASH WARE - macro to calculate y = sin( pi * x )
// 
#define mc_sin_pix(x, y) \
#asm(  ram p <- x. ) \
#asm(  call MC_LUT, no_flush. ) \
#asm(  alu d = p; ram diob <- p_mc_sin_lt. ) \
#asm(  alu p = a; ram p -> y. )

// ASH WARE - macro to calculate y = cos( pi * x )
// 
#define mc_cos_pix(x, y) \
#asm(  ram p <- x. ) \
#asm(  alu a = 0x400000. ) \
#asm(  call MC_LUT, no_flush. ) \
#asm(  alu d = a + p; ram diob <- p_mc_sin_lt. ) \
#asm(  alu p = a; ram p -> y. )

#else  // Byte Craft

/*******************************************************************************
  The function mc_sin_pix(x) returns sine value of pi*x.
*******************************************************************************/
fract24 mc_sin_pix(registera x)
{
#asm(  goto MC_LUT, no_flush. )
#asm(  alu d = a; ram diob <- p_mc_sin_lt. )
}

/*******************************************************************************
  The function mc_cos_pix(x) returns cosine value of pi*x.
*******************************************************************************/
fract24 mc_cos_pix(registera x)
{
#asm(  alu p = 0x400000. )
#asm(  alu d = a + p. )
#asm(  goto MC_LUT, no_flush. )
#asm(  ram diob <- p_mc_sin_lt. )
}

#endif

/*******************************************************************************

  The macro MC_LUT_PIX provides call to Look-Up Table routine.
  
  Example of usage:

    MC_LUT_PIX(x, p_mc_sin_lt, y);     //  y = sin(pi*x);
  
*******************************************************************************/
#define MC_LUT_PIX(x, p_lut, y) \
#asm(ram p <- x.) \
#asm(call MC_LUT, no_flush.) \
#asm(alu d = p; ram diob <- p_lut.) \
#asm(alu p = a; ram p -> y.)

/*******************************************************************************

  The marco MC_SINCOS_PIX provides two calls to Look-Up Table routine, with
  p_mc_sin_lt table used, in order to get sine and cosine function values 
  of the given angle.
  The macro is divided to two part to overcome the limnit of 255 character
  per macro (Byte Craft limit, not ETEC).
  
  Example of usage:

    MC_SINCOS_PIX_I(x, sin_cos);
    MC_SINCOS_PIX_II(x, sin_cos);
    //  sin_cos.sin = sin(pi*x);
    //  sin_cos.cos = cos(pi*x);
  
*******************************************************************************/
#define MC_SINCOS_PIX_I(x,sc)\
#asm(ram p <- x.)\
#asm(call MC_LUT,no_flush.)\
#asm(alu d = p;ram diob <- p_mc_sin_lt.)\
#asm(alu c = a.)

#define MC_SINCOS_PIX_II(x,sc)\
#asm(alu a = 0x400000.)\
#asm(alu d = d + a.)\
#asm(call MC_LUT,no_flush.)\
#asm(ram diob <- p_mc_sin_lt.)\
#asm(alu p = c;ram p -> sc.)\
#asm(alu p = a;ram p -> sc+4.)


/*******************************************************************************

  MODULE:  fract24 mc_lut_pix(fract24 x, int16 * p_lut[129])
  
  DESCRIPTION: 
    The routine performs a table look-up function. 
    The table must include 129 equidistant values from the first quadrant - 
    range 0 to 0.5, inclusive. The other qudrant values or obtained by 
    mirroring and negation of the first quadrant values. The table funtion
    is supposed to be an odd, sinus-like, function.
    The table look-up is a two stage process:
    first the two values of the nearest angles, from the desired one, are 
    fetched from the look-up table and then the linear interpolation of 
    these two values is calculated.
  
                            int16 lut[129]
                              |                          
                          ____o____
                         |         | 
                         |         |
                  x  --->|  L U T  |>--- y
                         |         |
                         |_________|
             
 
    In general the linear interpolation between two points 
    is done following way:

                           |               .
                     Y[k+1]|            .
                      Y -> |         .
                      Y[k] |      .
                           |   .
                           |
                           -------,-----,------
                               X[k]  ^  X[k+1]
                                     X

                      Y[k+1] - Y[k]
                 Y = --------------- (X - X[k]) + Y[k]
                      X[k+1] - X[k]
     
     Where:
         Y                is the desired value, corresponding to sample X
         Y[k]             is the value corresponding to sample X[k]
         Y[k+1]           is the value corresponding to sample X[k+1]
         X[k+1] - X[k]    is the difference between the samples stored in table
         X - X[k]         is the displacement from the sample
 
  ARGUMENTS:
   fract24   x            angle from the range <-pi,pi> 
                          scaled into <0x800000, 0x7FFFFF>
  RETURNS:   
   fract24   mc_sin_pix   sine of the argument angle x
 
  RANGE ISSUES: 
    None

  SPECIAL ISSUES:
    None

*******************************************************************************/
#ifdef __ETEC__  // ASH WARE
void MC_LUT()
{
#else  // Byte Craft
void mc_lut_pix(void)
{
MC_LUT:
#endif
  /* Inputs: */
  /* register d  ...... x (angle in range <-1,1>) */
  /* register diob .... pointer to look-up table (e.g. p_mc_sin_lt) */
  #asm( alu p = d <<1, ccs. )            /* remove bit 23 */
#ifdef __ETEC__  // ASH WARE
  #asm( alu_if n == 1 then p = 0 - p. ) /* if x(22) == 1 then negate address */
#else  // Byte Craft
  #asm( %hex 3C1F7F74. )
#endif
#asm(  alu sr =<< p23_16 + 0x00.      ) /* sr = address offset (8:2) */
#asm(  alu a = p15_0.                 ) /* a = interpolation argument */
#asm(  alu nil = p & 0x010000, ccs.   ) /* test bit 15 */
#asm(  alu diob = diob + sr.          ) /* diob = table ptr + address offset */
#asm(  ram p31_0 <- by diob++.        ) /* read table record */
#asm(  if Z == 1 then goto MC_LUT_HIGHER, flush. ) /* if bit 15 == 0 take higher */
       /*---------*/                               /* 16-bit word from table record */
#asm(  alu sr = p15_0.                ) /* sr = table value*/
#asm(  ram p31_0 <- by diob.          ) /* read next table record */
#asm(  goto MC_LUT_INTERP, no_flush.  )
#asm(  alu p = p31_16 - sr.           ) /* p = table step */
       /*---------*/
MC_LUT_HIGHER:
#asm(  alu sr = p31_16.               ) /* sr = table value*/
#asm(  alu p = p15_0 - sr.            ) /* p = table step */
MC_LUT_INTERP:
#asm(  alu p =<<8 p.                  ) /* p = table step as signed 24-bit */
#asm(  mdu p fmults a(16).            ) /* table step * interpolation argument */
#asm(  alu nil = d, ccs.              ) /* mbsy | test x */
#asm(  alu sr =<<8 sr.                ) /* mbsy | sr = table value as unsigned fract 0.24 */
#asm(  alu a = mach + sr.             ) /* a = interpolation part + table value */
#asm(  alu a =>> a + 0x00.            ) /* a as signed fract 1.23 */
#asm(  return, no_flush.              )
#ifdef __ETEC__  // ASH WARE
  #asm( alu_if n == 1 then a = 0 - a. ) /* if x(23) == 1 then negate result */
#else  // Byte Craft
  #asm( %hex 3C3F0F74. )
#endif
  /* Outputs: */
  /* register a  ...... y = lut(x) in fractional format 1.23 */
}




/*******************************************************************************
*  Information exported to Host CPU program.
*******************************************************************************/
#pragma write h, (::ETPUfilename (cpu/etpu_mc_sin_auto.h));
#pragma write h, (/* WARNING this file is automatically generated DO NOT EDIT IT! */);
#pragma write h, (/*                                                              */);
#pragma write h, (/* This file provides an interface between eTPU code and CPU    */);
#pragma write h, (/* code. All references to sin-wave table should be made        */);
#pragma write h, (/* with information in this file. This allows only symbolic     */);
#pragma write h, (/* information to be referenced which allows the eTPU code to be*/);
#pragma write h, (/* optimized without effecting the CPU code.                    */);
#pragma write h, (/****************************************************************/);
#pragma write h, (#ifndef _ETPU_MC_SIN_AUTO_H_ );
#pragma write h, (#define _ETPU_MC_SIN_AUTO_H_ );
#pragma write h, ( );
#pragma write h, (::ETPUliteral(#define FS_ETPU_MC_SIN_MCSINLUT_OFFSET) ::ETPUlocation (mc_sin_lut) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_P_MC_SIN_MCSINLUT_OFFSET) ::ETPUlocation (p_mc_sin_lt) );
#pragma write h, ( );
#pragma write h, (#endif );

#endif /* __ETPUC_MC_SIN_C */

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
