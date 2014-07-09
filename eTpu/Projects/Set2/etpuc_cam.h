/****************************************************************************
 * FILE NAME: etpu_cam.h                     COPYRIGHT (c) FREESCALE 2007   *
 * DESCRIPTION:                                     All Rights Reserved     *
 *==========================================================================*
 * ORIGINAL AUTHOR: Geoff Emerson                                           *

 ****************************************************************************/
#ifndef __ETPUC_CAM_H
#define __ETPUC_CAM_H


/* eTPU CAM Definitions */
/* CAM Sync States */
#define CAM_SYNC_SEEK_OR_START_ANGLE 0
#define CAM_SYNC_ANGLE               1
#define CAM_SYNC_LOST                2

/* Host Service Requests */
#define CAM_INIT            7
#define CAM_UPDATE_WINDOW   4

/* Function Modes */
#define CAM_FM0_RISING_EDGE 1
#define CAM_FM0_FALLING_EDGE 0

/* Cam Flags */
#define CAM_FLAG_ANGLE_OR_LOST    ( flag0 == 1 )
#define CAM_FLAG_OTHER            ( flag0 == 0 )

/* CAM Error codes */
#define CAM_NO_ERROR              0
#define CAM_INVALID_M1            1
#define CAM_INVALID_M2            2

#endif /* __ETPUC_CAM_H */


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
 * Revision 1.8  2008/05/01 15:38:04  r47354
 * Chnages based on output of Global team meeting held in EKB in March 08
 *
 * Revision 1.7  2008/04/03 12:49:09  r47354
 * Fixes for CAM in second half bug.
 *
 * Revision 1.6  2007/10/11 12:09:52  r47354
 * Remove CAM_START_ANGLE.
 *
 * Revision 1.5  2007/10/05 09:00:55  r47354
 * CAM_FLAG_ANGLE becomes CAM_FLAG_ANGLE_OR_LOST
 *
 * Revision 1.4  2007/09/07 15:02:20  r47354
 * Update CAM Sync States #defines
 *
 * Revision 1.3  2007/09/06 14:43:51  r47354
 * Change to standard entry table.
 *
 * Revision 1.2  2007/09/05 16:05:33  r47354
 * Post review fixes.
 *
 * Revision 1.1  2007/09/03 15:06:40  r47354
 * Initial revision.
 *
 ********************************************************************/
