/****************************************************************************
 * ETPU standard function set 1                COPYRIGHT (c) Freescale 2005 *
 * FILE NAME: $RCSfile: etpuc_set1.c,v $            All Rights Reserved     *
 * DESCRIPTION:                                                             *
 * This file builds the standard set1 eTPU functions and exports the data   *
 * to a file for the host CPU to use. eTPU function set 1 provides a        *
 * general set of functions.                                                *
 *==========================================================================*
 * Abbreviated History:                                                     *
 * Original Author: Jeff Loeliger [r12110] (jeff.loeliger@freescale.com)    *
 * Revision 1.13  2006/01/11 10:18:26  r47354
 * Add spwm.
 *
 * Revision 1.12  2005/06/21 07:49:28  r12110
 * -Updated and fixed comments.
 *
 * Revision 1.11  2005/06/20 16:12:06  r12110
 *  -Fixed definition of 6k RAM.
 *  -Updated comments and removed old entries in comments.
 *  -changed test function to number 14 and SPWM to 10.
 *
 * Revision 1.10  2005/03/29 12:42:29  r47354 Changed RAM size to 6K.
 *
 * Revision 1.9  2005/03/21 14:59:00  r12110
 * Fixed problem with Global error not putting value into data memory.
 ****************************************************************************/

unsigned int32 Version = 0; // keep old host etpu code happy

#include <ETpu_Std.h>
// Global Functions

int24 Global_Error = 0xFF;

union Link_t {
  int32 Chans;
  int8  Chan[3];
};

#define GLOBAL_ERROR_FUNC
_eTPU_fragment Global_Error_Func();

void Link4( );

register_p7_0 p7_0;
register_p15_8 p15_8;
register_p23_16 p23_16;
register_p31_24 p31_24;

/*************************/
/* Include the functions */
/*************************/

/* GPIO function */
#define GPIO_FUNCTION_NUMBER 0
#include "etpuc_gpio.c"

/* PWM (Pulse Width Modulation) function */
#define PWM_FUNCTION_NUMBER 1
#include "etpuc_pwm.c"

/* IC Input Capture function */
#define IC_FUNCTION_NUMBER 2
#include "etpuc_ic.c"

/* OC Output Compare function */
#define OC_FUNCTION_NUMBER 3
#include "etpuc_oc.c"

/* PFM (Frequency and Period Measurement) function */
#define FPM_FUNCTION_NUMBER 4
#include "etpuc_fpm.c"

/* PPA (Period / Period Accumulation) function */
#define PPA_FUNCTION_NUMBER 5
#include "etpuc_ppa.c"

/* UART (Universal Asynchronous Recieve / Transmitter) function */
#define UART_FUNCTION_NUMBER 6
#include "etpuc_uart.c"

/* QOM (Queued Output Match) function */
#define QOM_FUNCTION_NUMBER 7
#include "etpuc_qom.c"

/* SM (Stepper Motor) function */
#define SM_FUNCTION_NUMBER 8
#include "etpuc_sm.c"

/* SPI (Synchronous Peripheral Interface) function */
#define SPI_FUNCTION_NUMBER 9
#include "etpuc_spi.c"

/* SPWM (Synchronous Pulse Width Modulation) function */
#define SPWM_FUNCTION_NUMBER 0xA
#include "etpuc_spwm.c"

/* POC (Protected Output Compare) function */
#define POC_FUNCTION_NUMBER 0xB
//#include "etpuc_poc.c"

/* test function */
#define TEST_FUNCTION_NUMBER 0xE
#include "etpuc_test.c"

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

void Link4( ){

  link = p7_0;
  link = p15_8;
  link = p23_16;
  link = p31_24;
}

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
 *
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
