/****************************************************************************
 * FILE NAME: etpu_crank.h                   COPYRIGHT (c) FREESCALE 2007   *
 * DESCRIPTION:                                     All Rights Reserved     *
 *==========================================================================*
 * ORIGINAL AUTHOR: Geoff Emerson                                           *
 

 ****************************************************************************/
#ifndef __ETPUC_CRANK_H
#define __ETPUC_CRANK_H

/* CRANK Error codes */
#define CRANK_NO_ERROR               0
#define CRANK_INVALID_M1             1
#define CRANK_INVALID_M2             2
#define CRANK_TIMEOUT                4
#define CRANK_STALL                  8
#define CRANK_INTERNAL_ERROR         16

/* masks for IPH and HOLD*/
#define CRANK_IPH_MASK               (1<<12)
#define CRANK_HOLD_MASK              (1<<11)

/* Crank Flags */
#define CRANK_FLAGS_OTHER            ( flag0 == 0 && flag1 == 0 )
#define CRANK_FLAGS_COUNTING         ( flag0 == 0 && flag1 == 1 )
#define CRANK_FLAGS_TOOTH_AFTER_GAP  ( flag0 == 1 && flag1 == 0 )
#define CRANK_FLAGS_TOOTH_BEFORE_GAP ( flag0 == 1 && flag1 == 1 )

enum CrankStates
{
   CRANK_SEEK,       
   CRANK_BLANK_TIME,       
   CRANK_BLANK_TEETH,      
   CRANK_FIRST_EDGE,       
   CRANK_SECOND_EDGE,      
   CRANK_TEST_POSSIBLE_GAP,
   CRANK_VERIFY_GAP,       
   CRANK_GAP_VERIFIED,     
   CRANK_COUNTING,         
   CRANK_TOOTH_BEFORE_GAP,
   CRANK_TOOTH_AFTER_GAP,
   CRANK_TOOTH_AFTER_GAP_NOT_HRM
};



/* Host Service Requests */
#define CRANK_INIT            7
#define CRANK_IPH             3
#define CRANK_ANGLE_ADJUST    1

/* Function Modes */
#define CRANK_FM0_ACTIVE_RISING_EDGE 1
#define CRANK_FM0_ACTIVE_FALLING_EDGE 0

/* ENG_POS Sync States */
#define ENG_POS_SEEK                0
#define ENG_POS_FIRST_HALF_SYNC     1
#define ENG_POS_PRE_FULL_SYNC       2
#define ENG_POS_FULL_SYNC           3
#define ENG_POS_HALF_SYNC           4

#endif /* __ETPUC_CRANK_H */

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
 
/*********************************************************************
 * Revision 1.8  2009/09/04 09:08:36  r47354
 * Removed superfluous, commented #define NO_ERRATTA_2477.
 *
 * Revision 1.7  2008/05/01 15:38:38  r47354
 * Chnages based on output of Global team meeting held in EKB in March 08
 *
 * Revision 1.6  2008/02/22 10:34:45  r47354
 * Add support for errata 2477
 *
 * Revision 1.5  2007/11/28 09:03:35  r47354
 * Add CrankState of CRANK_SEEK. Add "," between enummerations.
 *
 * Revision 1.4  2007/10/05 09:00:02  r47354
 * Add defines etc for IPH and HOLD
 *
 * Revision 1.3  2007/09/07 15:01:04  r47354
 * Make Crank_State non global
 *
 * Revision 1.2  2007/09/05 15:00:29  r47354
 * Post review fixes.
 *
 * Revision 1.1  2007/09/03 15:06:40  r47354
 * Initial revision.
 *
 
 ********************************************************************/
