/*******************************************************************************
*
*  FREESCALE SEMICONDUCTOR INC. 2006
*  ALL RIGHTS RESERVED
*  COPYRIGHT (c)
*
********************************************************************************
*
*  DESCRIPTION:
*   This file contains the eTPU implementation of the ramp algorithm.
*
********************************************************************************
*
*  REVISION HISTORY:
*
*  REVISION    AUTHOR       DATE        DESCRIPTION OF CHANGE
*  --------    -----------  ---------   ------------------------------------
*  1.0         M. Brejl     09/Jan/06   RAMP implementation in assembler.
*******************************************************************************/
#ifndef __ETPU_MC_RAMP_C
#define __ETPU_MC_RAMP_C

#include "etpuc_mc_ramp.h"

/*******************************************************************************

  MODULE:    mc_ramp()

  DESCRIPTION:
    Function calculates the RAMP algorithm:

    // if there is a space to increment, increment up
    if (ramp <= (desired - incr_up))
    {
       ramp = ramp + incr_up;
    }
    // if there is a space to decrement, decrement down
    else if (ramp > (desired + incr_down))
    {
       ramp = ramp - incr_down;
    }
    else
    {
       ramp = desired;
    }

  ARGUMENTS:
    fract24    ramp         - actual value of the ramp
    fract24    desired      - desired value to reach
    fract24    incr_up      - one step change of ramp value in up-direction
    fract24    incr_down    - one step change of ramp value in down-direction

  RETURNS:
    fract24    ramp         - new value of the ramp

  RANGE ISSUES:
    None

  SPECIAL ISSUES:
    None

*******************************************************************************/
fract24 MC_RAMP_START( /*fract24 ramp, desired, incr_up, incr_down*/ )
{
#asm
  /* Inputs:                                          */
  /* register p ...... ramp */
  /* register d ...... omega */
  /* register diob ... incr_up */
  /* register sr ..... incr_down */

  /* Limit error to range <MIN24, MAX24>              */
  alu a = d - diob.      /* a = desired - incr_up */
  alu nil = a - p, ccs.  /* nil = a - ramp */
  if lt then goto MC_RAMP_ELSE, flush.
  return, no_flush.
  alu p = p + diob.      /* ramp = ramp + incr_up */
MC_RAMP_ELSE:
  alu a = d + sr.        /* a = desired + incr_down */
  alu nil = a - p, ccs.  /* nil = a - ramp */
  if ge then goto MC_RAMP_END, flush.
  return, no_flush.
  alu p = p - sr.        /* ramp = ramp - incr_down */
MC_RAMP_END:
  return, no_flush.
  alu p = d.             /* ramp = desired */
  /* Outputs:                                          */
  /* register p ...... ramp  */
#endasm
}

#endif /* __ETPU_MC_RAMP_C */
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
