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
*  0.0.1       P. Uhlir     09/Mar/04    Initial version of the file
*  0.0.2       P. Uhlir     09/Mar/04    Changed the file name from 
*                                        ramp.c -> etpu_ramp.c
*                                        Changed the included files names
*  0.0.3       M. Princ     16/Jun/05    Inv. Park implementation in assembler.
*  0.0.4       M. Princ     28/Jul/05    Phase currents structure added.
*
*******************************************************************************/


#ifndef __ETPUC_MC_TRANS_H
#define __ETPUC_MC_TRANS_H

typedef struct
{
   fract24 a;
   fract24 b;
   fract24 c;
} phase_currents_t;

typedef struct
{
   fract24 alpha;
   fract24 beta;
} alpha_beta_t;

typedef struct
{
   fract24 d;
   fract24 q;
} d_q_t;



#endif /* __ETPUC_MC_TRANS_H */
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
