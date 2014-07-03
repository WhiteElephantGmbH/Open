/*******************************************************************************
*
*  FREESCALE SEMICONDUCTOR INC. 2006
*  ALL RIGHTS RESERVED
*  COPYRIGHT (c)
*  
********************************************************************************
*
*  DESCRIPTION:
*   ETPU AC Motor Control Function Set - Set 4
*
********************************************************************************
*
*  REVISION HISTORY:
*                                                         
*  REVISION    AUTHOR       DATE         DESCRIPTION OF CHANGE                  
*  --------    -----------  ---------    ------------------------------------              
*  0.1         P. Uhlir     20/Apr/04    Initial version.
*  1.0         M. Brejl     21/Feb/05    Updated for set4 release 0.2.
*  1.1         M. Princ     04/Apr/06    Updated for set4 release 1.0.
*
*******************************************************************************/ 

#include "etpuc_set4.h"

#ifdef __ETEC__  // ASH WARE
#pragma verify_version GE,  "1.25A", "this build requires ETEC version 1.25A or newer"
#ifndef NO_OPT
#pragma verify_code_size	Global_Error_Func	14 words
#pragma verify_code_size	GPIO				36 words
#pragma verify_code_size	QD					238 words
#pragma verify_code_size	QDHOME				11 words
#pragma verify_code_size	QDINDEX				69 words
#pragma verify_code_size	MC_CTRL_PID			53 words
#pragma verify_code_size	MC_RAMP_START		12 words
#pragma verify_code_size	SC					138 words
#pragma verify_code_size	BC					90 words
#pragma verify_code_size	MC_LUT				22 words
#pragma verify_code_size	mc_abs				5 words
#pragma verify_code_size	mc_saturate			5 words
#pragma verify_code_size	mc_saturate2		6 words
#pragma verify_code_size	mc_sqrt				31 words
#pragma verify_code_size	mc_fdiv				18 words
#pragma verify_code_size	PWMMACReloadPhase	76 words
#pragma verify_code_size	PWMMACShiftLeftBy2AndSat 11 words
#pragma verify_code_size	PWMMAC				309 words
#pragma verify_code_size	PWMF				79 words
#pragma verify_code_size	asac_process		11 words
#pragma verify_code_size	asac_filter			9 words
#pragma verify_code_size	asac_dtc			10 words
#pragma verify_code_size	ASAC				244 words
#pragma verify_code_size	mc_ripple_elim		21 words
#pragma verify_code_size	ACIMVHZ				95 words
#pragma verify_code_size	mc_tran_clark		11 words
#pragma verify_code_size	mc_tran_park_inv	13 words
#pragma verify_code_size	PMSMVC				180 words
#pragma verify_code_size	ACIMVC				352 words
#endif
#include <etpu_std.h>
#else  // Byte Craft
#include <etpuc.h>          /* Defines eTPU hardware */
#include <eTPUc_common.h>   /* Standard way to use eTPU */
#define _eTPU_fragment void
#endif

/*******************************************************************************
  Define memory size
*******************************************************************************/
#pragma memory ROM[MEMORY_SIZE - ((LAST_FUNCTION+1)*0x40)] @ ((LAST_FUNCTION+1)*0x40);
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
    #include "etpuc_pwmmac.c"

    /* PWMF (PWM - Full Range) function */
    #ifdef PWMF_FUNCTION_NUMBER
        #include "etpuc_pwmf.c"
    #endif
#endif

/* ASAC (Analog Sensing for AC motors) function */
#ifdef ASAC_FUNCTION_NUMBER
    #include "etpuc_asac.c"
#endif

/* ACIMVHZ (AC Induction Motor Volts per Hertz Control) function */
#ifdef ACIMVHZ_FUNCTION_NUMBER
    #include "etpuc_acimvhz.c"
#endif

/* PMSMVC (Permanent Magnet Synchronous Motor Vector Control
            - Current Loop ) function  */
#ifdef PMSMVC_FUNCTION_NUMBER
    #include "etpuc_pmsmvc.c"
#endif

/* ACIMVC (AC Induction Motor Vector Control Current Loop ) function */
#ifdef ACIMVC_FUNCTION_NUMBER
    #include "etpuc_acimvc.c"
#endif


/************************************************************************
*  Output eTPU code image and information for CPU.
************************************************************************/
#pragma write h, (::ETPUfilename (etpu_set4.h));
#pragma write h, (/****************************************************************);
#pragma write h, ( * WARNING this file is automatically generated DO NOT EDIT IT! *);
#pragma write h, ( *                                                              *);
#pragma write h, ( * FILE NAME: etpu_set4.h          COPYRIGHT (c) Freescale 2006 *);
#pragma write h, ( *                                      All Rights Reserved     *);
#pragma write h, ( *                                                              *);
#pragma write h, ( * DESCRIPTION: eTPU AC Motor Control Functions - image file.   *);
#pragma write h, ( *                                                              *);
#pragma write h, ( * GENERATED BY: etpuc_set4.c, revision 1.0                     *);
#pragma write h, ( *                                                              *);
#pragma write h, ( ***************************************************************/);
#pragma write h, (#ifndef _ETPU_SET4_H_ );
#pragma write h, (#define _ETPU_SET4_H_ );
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
#pragma write h, (#endif /* _ETPU_SET4_H_ */ );
#pragma write h, ( );

/************************************************************************
*  Output eTPU initialized data macros.
************************************************************************/
#pragma write h, (::ETPUfilename (etpu_set4_init.h));
#pragma write h, (/****************************************************************);
#pragma write h, ( * WARNING this file is automatically generated DO NOT EDIT IT! *);
#pragma write h, ( *                                                              *);
#pragma write h, ( * FILE NAME: etpu_set4_init.h     COPYRIGHT (c) Freescale 2006 *);
#pragma write h, ( *                                      All Rights Reserved     *);
#pragma write h, ( *                                                              *);
#pragma write h, ( * DESCRIPTION: eTPU AC Motor Control Functions - init file.    *);
#pragma write h, ( *                                                              *);
#pragma write h, ( * GENERATED BY: etpuc_set4.c, revision 1.0                     *);
#pragma write h, ( *                                                              *);
#pragma write h, ( ***************************************************************/);
#pragma write h, (#ifndef _ETPU_SET4_INIT_H_ );
#pragma write h, (#define _ETPU_SET4_INIT_H_ );
#pragma write h, ( );
#pragma write h, (::ETPUglobalinit32);
#pragma write h, ( );
#pragma write h, (#endif /* _ETPU_SET4_H_ */ );
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
