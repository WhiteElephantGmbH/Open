/*******************************************************************************
*
*  FREESCALE SEMICONDUCTOR INC. 2004
*  ALL RIGHTS RESERVED
*  COPYRIGHT (c)
*  
********************************************************************************
*
*  DESCRIPTION:
*   This file contains the typedefs and prototypes of eTPU implementation 
*   of the various type of the controllers.
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
#ifndef __ETPU_MC_CTRL_H
#define __ETPU_MC_CTRL_H

/************************************************************************
* PID parameters structure type definition.
************************************************************************/
typedef struct {
  int8     r0;
  fract24  I_k1_h;         //integral portion in previous step - high
  int8     r1;
  fract24  I_k1_l;         //integral portion in previous step - low
  int8     r2;
  fract24  I_gain;         //integral gain
  int8     r3;
  fract24  limit_neg;      //negative controller limit (16bit)
  int8     r4;
  fract24  limit_pos;      //positive controller limit (16bit)
  int8     options;        //options
  fract24  P_gain;         //proportional gain
  int8     flags;          //controller limitation flags
  fract24  error_k1;       //error value in previous step
  fract24  D_gain;         //derivative gain
} mc_ctrl_pid_t;

/************************************************************************
* PID options definition.
************************************************************************/
#define MC_CTRL_PID_P_GAIN                  0x01 // not used
#define MC_CTRL_PID_I_GAIN                  0x02 // not used
#define MC_CTRL_PID_D_GAIN                  0x04

/************************************************************************
* PID flags definition.
************************************************************************/
#define MC_CTRL_PID_NO_SATUR_FLAG           0x00
#define MC_CTRL_PID_SATUR_POS_FLAG          0x01
#define MC_CTRL_PID_SATUR_NEG_FLAG          0x02

/************************************************************************
* Function prototype.
*******************************************************************************/
/*
fract24 mc_ctrl_pid( fract24 error,
                     mc_ctrl_pid_t *p_pid);
*/
/* The following macros overcome ETPU_C issues with the above definition
   and includes also calculation of error. */
#define MC_CTRL_PID1(p_out,err,des,act,p_pid)\
#asm(ram p <- des.)\
#asm(alu a = p; ram p <- act.)\
#asm(alu a = a - p, ccs.)\
#asm(call MC_CTRL_PID, no_flush.)\
#asm(ram diob <- p_pid.)\
#asm(alu p = d; ram p -> err.)\
#asm(ram diob <- p_out.)\
#asm(alu p = a+a; ram p -> by diob.)

/* The following one returns the result to a variable "out",
   instead of to an address given by a pointer "p_out" */
#define MC_CTRL_PID2(out,err,des,act,p_pid)\
#asm(ram p <- des.)\
#asm(alu a = p; ram p <- act.)\
#asm(alu a = a - p, ccs.)\
#asm(call MC_CTRL_PID, no_flush.)\
#asm(ram diob <- p_pid.)\
#asm(alu p = d; ram p -> err.)\
#asm(alu p = a + a; ram p -> out.)

/* The following one returns the result to a variable "out",
   does not return the error, 
   and returns half of the output (output/2) */
#define MC_CTRL_PID3(out,des,act,p_pid)\
#asm(ram p <- des.)\
#asm(alu a = p; ram p <- act.)\
#asm(alu a = a - p, ccs.)\
#asm(call MC_CTRL_PID, no_flush.)\
#asm(ram diob <- p_pid.)\
#asm(alu p = a; ram p -> out.)

/* The following one returns the result to a variable "out",
   does not return the error, 
   and returns quarter of the output (output/4) */
#define MC_CTRL_PID4_BC(out,des,act,p_pid)\
#asm(ram p <- des.)\
#asm(alu a = p; ram p <- act.)\
#asm(alu a = a - p, ccs.)\
#asm(call MC_CTRL_PID, no_flush.)\
#asm(ram diob <- p_pid.)\
#asm(alu p =>> a + 0x0.)\
#asm(/*alu_if n == 1 then p = p + max.*/ %hex 3CF87F74.)\
#asm(ram p -> out.)
#define MC_CTRL_PID4(out,des,act,p_pid)\
#asm(ram p <- des.)\
#asm(alu a = p; ram p <- act.)\
#asm(alu a = a - p, ccs.)\
#asm(call MC_CTRL_PID, no_flush.)\
#asm(ram diob <- p_pid.)\
#asm(alu p =>> a + 0x0.)\
#asm(alu_if n == 1 then p = p + max.)\
#asm(ram p -> out.)


#endif /* __ETPU_MC_CTRL_H */
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
