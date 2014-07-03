/****************************************************************************
 * FILE NAME: etpu_test.c                    COPYRIGHT (c) FREESCALE 2004   *
 * DESCRIPTION:                                     All Rights Reserved     *
 * This function is uded to generate eTPU channel signals which cann be     *
 * used to help test other eTPU functions                                   *
 *==========================================================================*
 * ORIGINAL AUTHOR: Geoff Emerson                                           *
 * Revision 1.3  2006/01/09 13:11:34  r47354
 * Add function name prefix to #defines.
 * Fix auto file name comment.
 * Fix isue with function number when compiling standalone.
 * No compiled code changes.
 *
 * Revision 1.2  2004/11/02 14:04:56  r12110
 * -Added support for building function stand alone or in a set.
 * -Updated comments in auto generated file to include version number.
 *
 * Revision 1.1  2004/11/01 15:46:10  r12110
 * No changes to code, just updated for CVS and checked into CVS.
 *
 *..........................................................................*
 * 0.00  G. Emerson   27/Apr/04  Initial version of file.                   *
 * 0.01  G. Emerson   12/Jul/04  Change Channel to int24 to work around     *
 *                               #pragma issue and added disclaimer         *
 * 0.02  J. Loeliger  03/Aug/04  Added ability to recieve link and cleaned  *
 *                                up some of the comments.                  *
 ****************************************************************************/
#include <ETpu_Std.h>

/***********************************/
/* Verify performance requirements */
/***********************************/
#pragma verify_wctl  TEST                 4  steps  0 rams
#pragma exclude_wctl TEST::TEST_undefined

#ifdef TEST_FUNCTION_NUMBER    /* function is being compiled as part a set? */
#pragma ETPU_function TEST, standard @ TEST_FUNCTION_NUMBER;
#else
#pragma ETPU_function TEST, standard; /* stand alone */
#endif

/* TEST Function Definitions */
#define  TEST_GENERATE_INTERRUPT 7
#define  TEST_GENERATE_DTR       6
#define  TEST_GENERATE_LINK      5
#define  TEST_GLOBAL_EXCEPTION   4

/*--------------------------------------------------------------------------+
| CHANNEL PARAMETERS: (host modifiable)                                     |
| Channel: Contains channel which will generate the intterrupt or DTR or the|
|          channel which will receive the link                              |
+--------------------------------------------------------------------------*/
void TEST(int24 Channel  )
{

/*--------------------------------------------------------------------------+
| THREAD NAME: GENERATE_INTERRUPT                                           |
| DESCRIPTION:                                                              |
+--------------------------------------------------------------------------*/
    if ( HostServiceRequest == TEST_GENERATE_INTERRUPT )
    {
TEST_generate_interrupt:
    DisableMatchesInThread();

test_irq:
  OnTransA(NoDetect);
  OnTransB(NoDetect);

  Clear(TransLatch);
  Clear(LSRLatch );

    SetChannelInterruptRequest();
    }
/*--------------------------------------------------------------------------+
| THREAD NAME: GENERATE_DTR                                                 |
| DESCRIPTION:                                                              |
+--------------------------------------------------------------------------*/
    else if ( HostServiceRequest == TEST_GENERATE_DTR )
    {
TEST_generate_dtr:
    DisableMatchesInThread();

  OnTransA(NoDetect);
  OnTransB(NoDetect);

  Clear(TransLatch);
  Clear(LSRLatch );

  SetDataTransferInterruptRequest();
    }

/*--------------------------------------------------------------------------+
| THREAD NAME: GENERATE_LINK                                                |
| DESCRIPTION:                                                              |
+--------------------------------------------------------------------------*/
    else if ( HostServiceRequest == TEST_GENERATE_LINK )
    {
TEST_generate_link:
    DisableMatchesInThread();

  OnTransA(NoDetect);
  OnTransB(NoDetect);

  Clear(TransLatch);
  Clear(LSRLatch );

  LinkTo(Channel);
    }

/*--------------------------------------------------------------------------+
| THREAD NAME: GENERATE_LINK                                                |
| DESCRIPTION:                                                              |
+--------------------------------------------------------------------------*/
    else if ( HostServiceRequest == TEST_GLOBAL_EXCEPTION )
    {
TEST_global_exception:
    DisableMatchesInThread();

  OnTransA(NoDetect);
  OnTransB(NoDetect);

  Clear(TransLatch);
  Clear(LSRLatch );

    SetGlobalException();
    }

/*--------------------------------------------------------------------------+
| THREAD NAME: GET_LINK                                                     |
| DESCRIPTION:                                                              |
+--------------------------------------------------------------------------*/
    else if ( linkRequest )
    {
TEST_link_request:
    DisableMatchesInThread();

  goto test_irq;

  }
/*--------------------------------------------------------------------------+
| THREAD NAME: UNDEFINED                                                    |
| DESCRIPTION:                                                              |
+--------------------------------------------------------------------------*/
  else  { TEST_undefined: ; }  /* Do nothing, no defined action */
}

/*********************************************************************
 *
 * Copyright:
 *  FREESCALE, INC. All Rights Reserved.
 *  You are hereby granted a copyright license to use, modify, and
 *  distribute the SOFTWARE so long as this entire notice is
 *  retained without alteration in any modified and/or redistributed
 *  versions, and that such modified versions are clearly identified
 *  as such. No licenses are granted by implication, estoppel or
 *  otherwise under any patents or trademarks of Motorola, Inc. This
 *  software is provided on an "AS IS" basis and without warranty.
 *
 *  To the maximum extent permitted by applicable law, FREESCALE
 *  DISCLAIMS ALL WARRANTIES WHETHER EXPRESS OR IMPLIED, INCLUDING
 *  IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR
 *  PURPOSE AND ANY WARRANTY AGAINST INFRINGEMENT WITH REGARD TO THE
 *  SOFTWARE (INCLUDING ANY MODIFIED VERSIONS THEREOF) AND ANY
 *  ACCOMPANYING WRITTEN MATERIALS.
 *
 *  To the maximum extent permitted by applicable law, IN NO EVENT
 *  SHALL FREESCALE BE LIABLE FOR ANY DAMAGES WHATSOEVER (INCLUDING
 *  WITHOUT LIMITATION, DAMAGES FOR LOSS OF BUSINESS PROFITS, BUSINESS
 *  INTERRUPTION, LOSS OF BUSINESS INFORMATION, OR OTHER PECUNIARY
 *  LOSS) ARISING OF THE USE OR INABILITY TO USE THE SOFTWARE.
 *
 *  Freescale assumes no responsibility for the maintenance and support
 *  of this software
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
