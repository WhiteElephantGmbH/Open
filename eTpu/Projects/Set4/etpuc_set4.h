/*******************************************************************************
*
*  FREESCALE SEMICONDUCTOR INC. 2006
*  ALL RIGHTS RESERVED
*  COPYRIGHT (c)
*  
********************************************************************************
*                                                                      
*  DESCRIPTION:
*   ETPU AC Motor Control Function Set - Set 4.
*
********************************************************************************
*
*  REVISION HISTORY:
*                                                         
*  REVISION    AUTHOR       DATE         DESCRIPTION OF CHANGE                  
*  --------    -----------  ---------    ------------------------------------              
*  0.0.1       M. Brejl     20/Apr/04    Initial version.
*  0.1         M. Princ     13/Jun/05    Updated following etpuc_set4.h struct.
*  1.0         M. Princ     04/Apr/06    Updated for set4 release 1.0.
*
*******************************************************************************/ 
#ifndef __ETPUC_SET4_H
#define __ETPUC_SET4_H

/*******************************************************************************
    MEMORY SIZE DEFINITION
*******************************************************************************/
#define MEMORY_SIZE           10*1024  /* 10 kbytes */
#define LAST_FUNCTION              11  /* Number of the last assigned function*/

/*******************************************************************************
    GLOBAL ERROR
        Uncomment the definition to call GlobalError routine on any unspecified
        thread condition.
*******************************************************************************/
#define GLOBAL_ERROR_FUNC

/*******************************************************************************
    FUNCTION NUMBERS ASSIGNMENT
        Uncomment the definition of the function set number
        to include the function in function set build
*******************************************************************************/

/*******************************************************************************
    SET1 - GENERAL PURPOSE FUNCTIONS
*******************************************************************************/

#define GPIO_FUNCTION_NUMBER        0
/* #define PWM_FUNCTION_NUMBER         1 */
/* #define IC_FUNCTION_NUMBER          2 */
/* #define OC_FUNCTION_NUMBER          3 */
/* #define PFM_FUNCTION_NUMBER         4 */
/* #define PPA_FUNCTION_NUMBER         5 */
/* #define UART_FUNCTION_NUMBER        6 */
/* #define QOM_FUNCTION_NUMBER         7 */
/* #define SM_FUNCTION_NUMBER          8 */
/* #define SPI_FUNCTION_NUMBER         9 */
/* #define SPWM_FUNCTION_NUMBER       10 */
/* #define POC_FUNCTION_NUMBER        11 */
/* #define TEST_FUNCTION_NUMBER       12 */


/*******************************************************************************
    SET2 - AUTOMOTIVE FUNCTIONS
*******************************************************************************/




/*******************************************************************************
    SET3 - MOTOR CONTROL FUNCTIONS  (DC MOTORS)
*******************************************************************************/

/* #define PWMMDC_FUNCTION_NUMBER      1 */
/* #define PWMF_FUNCTION_NUMBER        2 */
/* #define PWMC_FUNCTION_NUMBER        3 */
/* #define HD_FUNCTION_NUMBER          4 */
/* #define QD_FUNCTION_NUMBER          5 */
/* #define QDHOME_FUNCTION_NUMBER      6 */
/* #define QDINDEX_FUNCTION_NUMBER     7 */
/* #define ASDC_FUNCTION_NUMBER        8 */
/* #define CC_FUNCTION_NUMBER          9 */
/* #define SC_FUNCTION_NUMBER         10 */
/* #define BC_FUNCTION_NUMBER         11 */


/*******************************************************************************
    SET4 - MOTOR CONTROL FUNCTIONS   (AC MOTORS)
*******************************************************************************/

#define PWMMAC_FUNCTION_NUMBER      1
#define PWMF_FUNCTION_NUMBER        2
#define QD_FUNCTION_NUMBER          3
#define QDHOME_FUNCTION_NUMBER      4
#define QDINDEX_FUNCTION_NUMBER     5
#define ASAC_FUNCTION_NUMBER        6
#define ACIMVHZ_FUNCTION_NUMBER     7
#define PMSMVC_FUNCTION_NUMBER      8
#define ACIMVC_FUNCTION_NUMBER      9
#define SC_FUNCTION_NUMBER         10
#define BC_FUNCTION_NUMBER         11


#endif /* __ETPUC_SET4_H */
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
