/*******************************************************************************
*
*  FREESCALE SEMICONDUCTOR INC. 2004
*  ALL RIGHTS RESERVED
*  COPYRIGHT (c)
*  
********************************************************************************
*
*  DESCRIPTION:
*   This file defines constands shared by Motor-Control PWM functions
*   (PWMMDC, PWMMAC, PWMF and PWMC).                                           
*
*******************************************************************************
*
*  REVISION HISTORY:
*                                                         
*  REVISION    AUTHOR       DATE        DESCRIPTION OF CHANGE                  
*  --------    -----------  ---------   ------------------------------------                  
*   1.0        M. Brejl     12/Oct/04   PWM modulations not implemented.
*                                       Ready for set3 release 0.5.
*   2.0        M. Brejl     21/Feb/05   Change of pwm_phase_t structure.
*
*******************************************************************************/
#ifndef _ETPUC_PWMM__H_
#define _ETPUC_PWMM__H_

/************************************************************************
*  Definitions.
************************************************************************/
/* PWMF and PWMC options parameter bits */
#define PWMM_DUTY_NEG              0x1
#define PWMM_SWAP                  0x2

/* PWMF and PWMC flags parameter bits */
#define PWMM_HALF_CYCLE            0x1
#define PWMM_ZERO_DUTY             0x2
#define PWMM_FULL_DUTY             0x4


/************************************************************************
* PWMF and PWMC phase parameters structure type definition.   
************************************************************************/
typedef struct {
  unsigned fract24 duty;         /* duty-cycle */
           int8    chan_num;     /* base channel number */
           int24   period_copy;  /* copy of period value */
           int8    options;      /* phase options */
           int24   A_time;       /* time of first edge on base channel */
           int8    dtc;          /* dead-time correction options - not used */
           int24   B_time;       /* time of second edge on base channel */
           int8    flags;        /* duty-extreme limits for PWMF */
           int24   Ac_time;      /* time of first edge on complementary channel */
           int24   Bc_time;      /* time of second edge on complementary channel */
  unsigned int32   comm_cmd;     /* commutation command used by PWMC */
           int24   reserved;     /* the structure size must an even number of longwords */
} pwmm_phase_t;

typedef struct {
  fract24  A;
  fract24  B;
} pwmm_inputs_t;

#endif  /* _ETPUC_PWMM__H_ */
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
