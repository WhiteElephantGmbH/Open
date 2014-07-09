/****************************************************************************
 * FILE NAME: etpuc_ic.c                       COPYRIGHT (c) freescale 2004 *
 * DESCRIPTION:                                     All Rights Reserved     *
 * This function can captures input transitions.                            *
 *==========================================================================*
 * Revision 1.7  2006/01/09 13:09:30  r47354
 * Fix auto file name comment.
 * Fix isue with function number when compiling standalone.
 * No compiled code changes.
 *
 * Revision 1.6  2005/11/07 10:19:13  r12110
 * -Added interrupt request in continuous mode.
 *
 * Revision 1.5  2005/01/12 11:51:18  r47354
 * updated for GCT compliance - only changed comments
 *
 * Revision 1.4  2004/11/18 14:47:25  r12110
 * -Added option for Link4 to use register passing. This require assembler with the current compiler.
 *
 * Revision 1.3  2004/11/02 14:12:16  r12110
 * -Fixed use of  global error function.
 *
 * Revision 1.2  2004/11/02 13:45:27  r12110
 * -Added support for building function stand alone or in a set.
 *   -This includes using the global error function if avaialable.
 * -Updated comments in auto generated file to include version number.
 *
 * Revision 1.1  2004/11/01 10:05:09  r12110
 * No changes to code, just updated for CVS and checked into CVS.
 *
 *..........................................................................*
 * 0.01  J. Loeliger  20/Feb/04  Initial version of file.                   *
 * 0.02  J. Loeliger  23/Sep/04  Updated so function can be standalone or in*
 *                                a set. Added clear of Transcount during   *
 *                                init. Cleaned up S3. Added more comments. *
 * 0.03  J. Loeliger  4/Oct/04   Fixed some comments.                       *
 ****************************************************************************/
#include <ETpu_Std.h>

/***********************************/
/* Verify performance requirements */
/***********************************/
#pragma verify_wctl  IC                  66  steps 12 rams
#pragma exclude_wctl IC::IC_init_tcr1
#pragma exclude_wctl IC::IC_init_tcr2
#pragma exclude_wctl IC::IC_Error

#ifdef IC_FUNCTION_NUMBER    /* function is being compiled as part a set? */
#pragma ETPU_function IC @ IC_FUNCTION_NUMBER;
#else
#pragma ETPU_function IC; /* stand alone */
#endif

/*Macros to make the code easier to understand. */
/*These are specific to this IC function        */
/* Host service requests                        */
#define IC_INIT_TCR1  7         /* Initialize using TCR1 */
#define IC_INIT_TCR2  6         /* Initialize Using TCR2 */
#define IC_INIT_PRAM  5         /* Initialize to use Parameter RAM */

/* Function Modes */
/* FM0 - 0 = continuous mode  */
/*       1 = single shot mode */
/* FM1 - 0 = no links         */
/*       1 = link mode        */
#define IC_CONT_MODE 0
#define IC_SINGLE_MODE 1
#define IC_LINK_MODE 1

/* General Notes:               */
/*                              */
/* Channel Flag usage           */
/* Flag0 - 0 = TCR mode         */
/*         1 = PRAM mode        */
#define IC_TCR   0
#define IC_PRAM  1

/*--------------------------------------------------------------------------+
| FUNCTION PARAMETERS:                                                      |
| IC_Flags: Bit flags used to define edge.                                  |
|  0 = falling edge                                                         |
|  1 = rising edge                                                          |
|  2 = any edge                                                             |
|  3 = any edge                                                             |
| IC_MaxCount: The number of edges to count before generating an interrupt  |
| and DMA request.                                                        |
| IC_Final: The reference value of the final edge detected.                 |
| IC_Last: The reference value of the last edge detected.                   |
| *IC_Address: The address of the value to capture when using Parameter RAM |
| capture mode.                                                           |
| IC_Link1: The first 4 channels to send links to.                          |
| IC_Link2: The second 4 channels to send link to.                          |
| IC_TransCount: The current number of transitions counted.                 |
+--------------------------------------------------------------------------*/
void IC (int8 IC_Flags, int24 IC_MaxCount, int24 IC_TransCount, int24 IC_Final,
    int24 IC_Last, int24 * IC_Address, int32 IC_Link1, int32 IC_Link2)
{
/*--------------------------------------------------------------------------+
| THREAD NAME: Initialize using TCR1 (S0)                                   |
| DESCRIPTION: Initialize a channel to run IC using TCR1 as the reference.  |
|              1. Clear flag0 for TCR reference mode.                       |
|              2. Configure to use TCR1.                                    |
|              3. Set channel mode.                                         |
|              4. Configure edge detection.                                 |
|              5. Disable output buffer for input function.                 |
|              6. Clear TransCount.                                         |
|              7. Enable service events.                                    |
|              8. Clear latches.                                            |
+--------------------------------------------------------------------------*/
    if (HostServiceRequest == IC_INIT_TCR1)
      {
IC_init_tcr1:
          DisableMatchesInThread ();

          Clear (flag0);                                        /* 1. */
        IC_init:
          ActionUnitA (MatchTCR1, CaptureTCR1, GreaterEqual);   /* 2. */
          ActionUnitB (MatchTCR1, CaptureTCR1, GreaterEqual);
        IC_init2:
          SingleMatchSingleTransition ();                       /* 3. */

          DetectAAnyEdge ();                                    /* 4. */
          DetectBAnyEdge ();
          if ((IC_Flags & 0x02) == 0)
            {
                DetectARisingEdge ();
                DetectBRisingEdge ();
                if ((IC_Flags & 0x01) == 0)
                  {
                      DetectAFallingEdge ();
                      DetectBFallingEdge ();
                  }
            }

          DisableOutputBuffer ();                               /* 5. */
          IC_TransCount = 0;                                    /* 6. */
          EnableEventHandling ();                               /* 7. */
          ClearAllLatches ();                                   /* 8. */
      }

/*--------------------------------------------------------------------------+
| THREAD NAME: Initialize using TCR2 (S1)                                   |
| DESCRIPTION: Initialize a channel to run IC using TCR2 as the reference.  |
|              1. Clear flag0 for TCR reference mode.                       |
|              2. Configure to use TCR2.                                    |
|              3. Jump to main initialization routine.                      |
+--------------------------------------------------------------------------*/
    else if (HostServiceRequest == IC_INIT_TCR2)
      {
IC_init_tcr2:
          DisableMatchesInThread ();

          Clear (flag0);                                        /* 1. */

          ActionUnitA (MatchTCR2, CaptureTCR2, GreaterEqual);   /* 2. */
          ActionUnitB (MatchTCR2, CaptureTCR2, GreaterEqual);

          goto IC_init2;                                        /* 3. */
      }

/*--------------------------------------------------------------------------+
| THREAD NAME: Initialize using Parameter RAM (S2)                          |
| DESCRIPTION: Initialize a channel to run IC using TCR2 as the reference.  |
|              1. Set flag0 for PRAM reference mode.                        |
|              2. Jump to main initialization routine.                      |
+--------------------------------------------------------------------------*/
    else if (HostServiceRequest == IC_INIT_PRAM)
      {
IC_init_pram:
          DisableMatchesInThread ();

          Set (flag0);                                          /* 1. */

          goto IC_init;                                         /* 2. */
      }

/*--------------------------------------------------------------------------+
| THREAD NAME: Transition with TCR reference (S3)                           |
| DESCRIPTION: Handle 1 or 2 edges.                                         |
|              1. Increament TransCount                                     |
|              2. If TransCount < MaxCount then just count edge.            |
|              3.     Last = erta and check for 2nd edge                    |
|                 else                                                      |
|              4.     Final = erta, final edge in group.                    |
|              5.         request IRQ and DMA.                              |
|              6.     if link mode then link to other channels.             |
|              7.     if in sngleshot mode then we are done.                |
|              8.         disable transistion detection                     |
|              9.         negate latches and end.                           |
|                     endif                                                 |
|                 endif                                                     |
|             10. If tdlb then 2 edges for this thread                      |
|             11.     If TransCount < MaxCount then just count edge.        |
|             12.         Last = erta and check for 2nd edge                |
|                     else                                                  |
|             13.         Final = erta, final edge in group.                |
|             14.             request IRQ and DMA                           |
|             15.         if link mode then link to other channels.         |
|             16.         if in sngleshot mode then we are done             |
|             17.             disable transistion detection                 |
|                         endif                                             |
|                     endif                                                 |
|                 endif                                                     |
|             18. negate latches and end                                    |
+--------------------------------------------------------------------------*/
    else if ((MatchA_TransB && flag0 == 0) || (MatchB_TransA && flag0 == 0))
      {
IC_Trans:
          IC_TransCount++;                                      /* 1. */

          if (IC_TransCount < IC_MaxCount)                      /* 2. */
            {
                IC_Last = erta;                                 /* 3. */
            }
          else
            {
                IC_Final = erta;                                /* 4. */
                SetChannelInterrupt ();                       /* 5. */
                SetDataTransferInterrupt();
                if (fm1 == IC_LINK_MODE)                        /* 6. */
                  {
#asm
      ram p31_0 <- IC_Link1.
#endasm
          Link4();
#asm
      ram p31_0 <- IC_Link2.
#endasm
          Link4();
                  }
                if (fm0 == IC_SINGLE_MODE)                      /* 7. */
                  {
                      DisableEventHandling ();                  /* 8. */
                      ClearAllLatches ();                       /* 9. */
                      return;
                  }
            }

          if (TransitionBLatch)                                 /* 10. */
            {
                if (IC_TransCount < IC_MaxCount)                /* 11. */
                  {
                      IC_Last = ertb;                           /* 12. */
                  }
                else
                  {
                      IC_Final = ertb;                          /* 13. */
                      SetChannelInterrupt ();                 /* 14. */
                      SetDataTransferInterrupt ();
                      if (fm1 == IC_LINK_MODE)                  /* 15. */
                        {
#asm
      ram p31_0 <- IC_Link1.
#endasm
          Link4();
#asm
      ram p31_0 <- IC_Link2.
#endasm
          Link4();
                        }
                      if (fm0 == IC_SINGLE_MODE)                /* 16. */
                        {
                            DisableEventHandling ();            /* 17. */
                        }
                 }
            }

          ClearAllLatches ();                                   /* 18. */
      }

/*--------------------------------------------------------------------------+
| THREAD NAME: Transition with Parameter RAM location as reference (S4)     |
| DESCRIPTION: Instead of getting the TCR value when an edge happens, this  |
|                routine supports using a parameter RAM location instead. To|
|                make things easier just stuff the parameter RAM value into |
|                the ert registers. It does not matter if there are 1 or 2  |
|                edges.                                                     |
|              1. Get value from parameter RAM and store in ERTa and ERTb.  |
|              2. Then goto TCR tranistion routine.                         |
+--------------------------------------------------------------------------*/
    else if ((MatchA_TransB && flag0 == 1) || (MatchB_TransA && flag0 == 1))
      {
IC_trans_with_ram_ref:
          erta = (int)IC_Address;                                    /* 1. */
          ertb = erta;

          goto IC_Trans;                                        /* 2. */
      }

/*--------------------------------------------------------------------------+
| THREAD NAME: Error (S5)                                                   |
| DESCRIPTION: Something has gone wrong. :-(                                |
|                Call the Global error routine and end.                     |
+--------------------------------------------------------------------------*/
    else
      {
IC_Error:
#ifdef GLOBAL_ERROR_FUNC
    Global_Error_Func();
#else
    ClearAllLatches();
#endif
      }
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
