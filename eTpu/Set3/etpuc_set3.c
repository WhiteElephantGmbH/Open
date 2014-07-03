/*******************************************************************************
*
*  FREESCALE SEMICONDUCTOR INC. 2004
*  ALL RIGHTS RESERVED
*  COPYRIGHT (c)
*  
********************************************************************************
*
*  DESCRIPTION:
*   ETPU DC Motor Control Function Set - Set 3
*
********************************************************************************
*
*  REVISION HISTORY:
*                                                         
*  REVISION    AUTHOR       DATE         DESCRIPTION OF CHANGE                  
*  --------    -----------  ---------    ------------------------------------              
*  0.1         P. Uhlir     20/Apr/04    Initial version.
*  1.0         M. Brejl     21/Feb/05    Updated for set3 release 1.0.
*
*******************************************************************************/ 

#include "etpuc_set3.h"

#ifdef __ETEC__  // ASH WARE
#pragma verify_version GE,  "1.20C", "this build requires ETEC version 1.20C or newer"
#ifndef NO_OPT
#pragma verify_code_size	Global_Error_Func	14 words
#pragma verify_code_size	GPIO				36 words
#pragma verify_code_size	PWMMDCReloadPhase	69 words
#pragma verify_code_size	PWMMDC				83 words
#pragma verify_code_size	PWMF				79 words
#pragma verify_code_size	PWMCCommutate_		55 words
#pragma verify_code_size	PWMC				56 words
#pragma verify_code_size	HD					124 words
#pragma verify_code_size	QD					238 words
#pragma verify_code_size	QDHOME				11 words
#pragma verify_code_size	QDINDEX				69 words
#pragma verify_code_size	ASDC				119 words
#pragma verify_code_size	MC_CTRL_PID			53 words
#pragma verify_code_size	CC_FUNC				37 words
#pragma verify_code_size	MC_RAMP_START		12 words
#pragma verify_code_size	SC					138 words
#pragma verify_code_size	BC					90 words
#endif
#include <etpu_std.h>
#else  // Byte Craft
#define _eTPU_fragment void
#include <etpuc.h>          /* Defines eTPU hardware */
#include <eTPUc_common.h>   /* Standard way to use eTPU */
#endif

/*******************************************************************************
  Define memory size
*******************************************************************************/
#pragma memory ROM[MEMORY_SIZE - ((LAST_FUNCTION+1)*0x40) - 4] @ ((LAST_FUNCTION+1)*0x40);
#pragma memory LOCAL[0] @ 0x00;

/*******************************************************************************
  Define entry table location
   - Put entry table at the beginning of memory so that it is not
     dependent on memory size.
*******************************************************************************/
#pragma ENTRYADDR 0x0000;

/*******************************************************************************
  GlobalError routine and global variable Global_Error
*******************************************************************************/
#ifdef GLOBAL_ERROR_FUNC

int24 Global_Error = 0xFF;

_eTPU_fragment Global_Error_Func()
{
	ertb = chan;
	if (LinkServiceRequest == 1) ertb+=0x0100;
	if (MatchALatch == 1)  ertb+=0x0200;
	if (MatchBLatch == 1)  ertb+=0x0400;
	if (TransitionALatch == 1)  ertb+=0x0800;
	if (TransitionBLatch == 1)  ertb+=0x1000;

	Global_Error = ertb;
  ClearAllLatches();
}
#endif

/*******************************************************************************
    SET1 - GENERAL PURPOSE FUNCTIONS
*******************************************************************************/

/* GPIO (General Purpose Input Output) function */
#ifdef GPIO_FUNCTION_NUMBER
    #include "etpuc_gpio.c"
#endif

/* PWM (Pulse Width Modulation) function */
#ifdef PWM_FUNCTION_NUMBER
    #include "etpuc_pwm.c"
#endif

/* IC (Input Capture) function */
#ifdef IC_FUNCTION_NUMBER
    #include "etpuc_ic.c"
#endif

/* OC (Output Compare) function */
#ifdef OC_FUNCTION_NUMBER
    #include "etpuc_oc.c"
#endif

/* PFM (Period and Frequency Measurement) function */
#ifdef PFM_FUNCTION_NUMBER
    #include "etpuc_pfm.c"
#endif

/* PPA (Period / Period Accumulation) function */
#ifdef PPA_FUNCTION_NUMBER
    #include "etpuc_ppa.c"
#endif

/* UART (Universal Asynchronous Recieve / Transmitter) function */
#ifdef UART_FUNCTION_NUMBER
    #include "etpuc_uart.c"
#endif

/* QOM (Queued Output Match) function */
#ifdef QOM_FUNCTION_NUMBER
    #include "etpuc_qom.c"
#endif

/* SM (Stepper Motor) function */
#ifdef SM_FUNCTION_NUMBER
    #include "etpuc_sm.c"
#endif

/* SPI (Synchronous Peripheral Interface) function */
#ifdef SPI_FUNCTION_NUMBER
  #include "etpuc_spi.c"
#endif

/* SPWM (Synchronous Pulse Width Modulation) function */
#ifdef POC_FUNCTION_NUMBER
    #include "etpuc_spwm.c"
#endif

/* POC (Protected Output Compare) function */
#ifdef POC_FUNCTION_NUMBER
    #include "etpuc_icoc.c"
#endif

/* TEST (Test Function) function */
#ifdef POC_FUNCTION_NUMBER
    #include "etpuc_test.c"
#endif


/*******************************************************************************
    SET2 - AUTOMOTIVE FUNCTIONS
*******************************************************************************/




/*******************************************************************************
    SET3 - MOTOR CONTROL FUNCTIONS  (DC MOTORS)
*******************************************************************************/

/* PWMMDC (PWM Master for DC Motors) function */
#ifdef PWMMDC_FUNCTION_NUMBER
    #include "etpuc_pwmmdc.c"

    /* PWMF (PWM - Full Range) function */
    #ifdef PWMF_FUNCTION_NUMBER
        #include "etpuc_pwmf.c"
    #endif

    /* PWMC (PWM - Commutation Capable) function */
    #ifdef PWMC_FUNCTION_NUMBER
        #include "etpuc_pwmc.c"
    #endif
#endif

/* HD (Hall Decoder) function */
#ifdef HD_FUNCTION_NUMBER
    #include "etpuc_hd.c"
#endif

/* QD (Quadrature Decoder) function */
#ifdef QD_FUNCTION_NUMBER
    #include "etpuc_qd.c"
#endif

/* ASDC (Analog Sensing for DC motors) function */
#ifdef ASDC_FUNCTION_NUMBER
    #include "etpuc_asdc.c"
#endif

/* CC (Current Controller) function */
#ifdef CC_FUNCTION_NUMBER
    #include "etpuc_mc_ctrl.c"
    #include "etpuc_cc.c"
#endif

/* SC (Speed Controller) function */
#ifdef SC_FUNCTION_NUMBER
    #include "etpuc_mc_ctrl.c"
    #include "etpuc_sc.c"
#endif

/* BC (Break Controller) function */
#ifdef BC_FUNCTION_NUMBER
    #include "etpuc_bc.c"
#endif

/*******************************************************************************
    SET4 - MOTOR CONTROL FUNCTIONS   (AC MOTORS)
*******************************************************************************/

/* PWMMAC (PWM Master for AC Motors) function */
#ifdef PWMMAC_FUNCTION_NUMBER
    #include "etpuc_pwmmdc.c"
#endif

/* ASAC (Analog Sensing for AC motors) function */
#ifdef ASAC_FUNCTION_NUMBER
    #include "etpuc_asdc.c"
#endif

/* ACIMVHZ (AC Induction Motor Volts per Herts control) function */
#ifdef ACIMVHZ_FUNCTION_NUMBER
    #include "etpuc_acimvhz.c"
#endif

/* PMSMVC (Permanent Magnet Synchronous Motor Vector Control
            - Current Loop ) function  */
#ifdef PMSMVC_FUNCTION_NUMBER
    #include "etpuc_pmsmvc.c"
#endif

/* ACIMVC (AC Induction Motor Vector Control
           Current Loop ) function */
#ifdef ACIMVC_FUNCTION_NUMBER
    #include "etpuc_acimvc.c"
#endif


/************************************************************************
*  Output eTPU code image and information for CPU.
************************************************************************/
#pragma write h, (::ETPUfilename (etpu_set3.h));
#pragma write h, (/****************************************************************);
#pragma write h, ( * WARNING this file is automatically generated DO NOT EDIT IT! *);
#pragma write h, ( *                                                              *);
#pragma write h, ( * FILE NAME: etpu_set3.h          COPYRIGHT (c) Freescale 2005 *);
#pragma write h, ( *                                      All Rights Reserved     *);
#pragma write h, ( *                                                              *);
#pragma write h, ( * DESCRIPTION: eTPU DC Motor Control Functions - image file.   *);
#pragma write h, ( *                                                              *);
#pragma write h, ( * GENERATED BY: etpuc_set3.c, revesion 1.0                     *);
#pragma write h, ( *                                                              *);
#pragma write h, ( ***************************************************************/);
#pragma write h, (#ifndef _ETPU_SET3_H_ );
#pragma write h, (#define _ETPU_SET3_H_ );
#pragma write h, ( );
#pragma write h, (#define FS_ETPU_ENTRY_TABLE ::ETPUentrybase);
#pragma write h, (#define FS_ETPU_MISC         ::ETPUmisc);
#pragma write h, ( );
#pragma write h, (const uint32_t etpu_globals[] = { ::ETPUglobalimage32 }; );
#pragma write h, ( );
#pragma write h, (const uint32_t etpu_code[] = { ::ETPUcode32 }; );
#pragma write h, (/* List of functions: );
#pragma write h, (::ETPUnames);
#pragma write h, (*/);
#pragma write h, ( );
#pragma write h, (/* This function set presumes the following settings:);
#pragma write h, (#define FS_ETPU_TCR1CTL_DIV2);
#pragma write h, (*/);
#pragma write h, ( );
#pragma write h, (#endif /* _ETPU_SET3_H_ */ );
#pragma write h, ( );
                  
                  
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
