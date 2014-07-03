/*******************************************************************************
*
*  FREESCALE SEMICONDUCTOR INC. 2004
*  ALL RIGHTS RESERVED
*  COPYRIGHT (c)
*  
********************************************************************************
*
*  DESCRIPTION:
*   The Motor-Control PWM - Commutation Capable (PWMC) function drives
*   a PWM phase with the feature to commutate (switch ON/OFF, change  
*   polarity, swap-channels).                                         
*   This function is not functional standalone. The PWMMDC or PWMMAC
*   (PWM Master) function must update the PWMC edge times.                         
*
********************************************************************************
*
*  REVISION HISTORY:
*                                                         
*  REVISION    AUTHOR       DATE        DESCRIPTION OF CHANGE                  
*  --------    -----------  ---------   ------------------------------------                  
*   1.0        M. Brejl     20/Sep/04   Ready for set3 release 0.5.
*   1.1        M. Brejl     21/Feb/05   Implementation of Commutation routine
*                                       improved.
*
*******************************************************************************/
#ifndef _ETPUC_PWMC__H_
#define _ETPUC_PWMC__H_

/************************************************************************
*  Definitions.
************************************************************************/
/* commutation byte options */
#define PWMC_COMM_DO_NOTHING       0x0
#define PWMC_COMM_OFF_LOW          0x1
#define PWMC_COMM_OFF_HIGH         0x2
#define PWMC_COMM_ON_ACTIVE_HIGH   0x3
#define PWMC_COMM_ON_ACTIVE_LOW    0x4

/************************************************************************
*  Commutation Command structure.
************************************************************************/
typedef union {
  int32 cmd;
  struct {
    int8  base_ch_num:8;         // bits  7:0
    int8  base_ch_comm_byte:8;   // bits 15:8
    int8  compl_ch_comm_byte:8;  // bits 23:16
    int8  phase_options:8;       // bits 31:24
  } b;
} comm_cmd_t;

/************************************************************************
*  Commutation routine function prorotype.
************************************************************************/
/* void Commutate( comm_cmd_t comm_cmd ); */
void PWMCCommutate_( void );
/************************************************************************
* Macro replacing the Commutate(...) function call.
*  - ETPU_C does not support 32-bit function arguments.
*  - To overcome this issue the commutation command is passed by p register.
************************************************************************/
#define PWMCCommutate(comm_cmd) \
#asm( seq call PWMCCommutate_, no_flush. ) \
#asm( ram p31_0 <- comm_cmd. )


#endif  /* _ETPUC_PWMC__H_ */
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
