/****************************************************************************
 * FILE NAME: etpuc_spi.c                      COPYRIGHT (c) FREESCALE 2004 *
 * DESCRIPTION:                                     All Rights Reserved     *
 * This function uses 3 channels to form a uni or bi directional            *
 * synchronous serial port that can be used to communicate with a wide      *
 * variety of devices.                                                      *
 *==========================================================================*
 * Revision 1.5  2006/01/09 13:09:31  r47354
 * Fix auto file name comment.
 * Fix isue with function number when compiling standalone.
 * No compiled code changes.
 *
 * Revision 1.4  2005/11/04 15:35:43  r12110
 * -Changed int8 bit_count_current;to static so there is no issue with running on 2 eTPU engines at the same time.
 *
 * Revision 1.3  2004/11/02 15:20:48  r47354
 * Add labels to prevent 1.0.0.5 compiler over optimising
 *
 * Revision 1.2  2004/11/02 14:03:46  r12110
 * -Added support for building function stand alone or in a set.
 *   -This includes using the global error function if avaialable.
 * -Updated comments in auto generated file to include version number.
 *
 * Revision 1.1  2004/11/01 15:50:46  r12110
 * No changes to code, just updated for CVS and checked into CVS.
 *
 *..........................................................................*
 * 0.01  J. Scott    25/Mar/04    Initial version of file.                  *
 *       J. Scott    06/Apr/04                                              *
 * 0.03  J. Scott    31/May/04    Updated code to MetroWerks for testing    *
 * 0.04  J. Scott    03/June/04   Updated code to fix a bug with data_reg   *
 * 0.05  G.Emerson   01/July/04   Fix bug with erta init. Write to erta     *
 *                                before switching channels                 *
 * 0.06  G.Emerson   06/July/04   Fix bug with CI/DTR; These are now sent   *
 *                                on even edge.                             *
 *                                Changes for GCT                           *
 *                                Added disablematches to TCR2 init         *
 *                                Changed so that init sends no data        *
 *                                Removed data shifting at the end. This    *
 *                                will now be done by the host.             *
 *                                Add disclaimer                            *
 * 0.07  G.Emerson   19/July/04   Post review changes:                      *
 *                                Code size optimisations                   *
 *                                Update comments etc                       *
 *                                Remove data_out variable                  *
 *                                Add Global_Error_Func call                *
 *                                Add OutputBufferEnable to TX channel      *
 * 0.08  G.Emerson  17/Aug/04     Fix bug with first clk width              *
 * 0.09  G.Emerson  10/Sep/04     Fix comment numbering in SPI_RUN_TCR1     *
 ****************************************************************************/
#include <ETpu_Std.h>

/* SPI Definitions */
/* Host Service Requests */
#define  SPI_INIT_TCR1      7
#define  SPI_INIT_TCR2      5
#define  SPI_RUN            3
/* Function Modes */
#define  SPI_CLK_POL_POS    0
#define  SPI_CLK_POL_NEG    1
#define  SPI_SHIFT_DIR_MSB  0
#define  SPI_SHIFT_DIR_LSB  1

/***********************************/
/* Verify performance requirements */
/***********************************/
#pragma verify_wctl  SPI                 21  steps  4 rams
#pragma exclude_wctl SPI::SPI_init_tcr1
#pragma exclude_wctl SPI::SPI_init_tcr2
#pragma exclude_wctl SPI::SPI_Error

/* provide hint that channel frame base addr same on all chans touched by func */
#pragma same_channel_frame_base SPI

#ifdef SPI_FUNCTION_NUMBER
#pragma ETPU_function SPI, alternate @ SPI_FUNCTION_NUMBER;
#else
#pragma ETPU_function SPI, alternate;
#endif

/*------------------------------------------------------------------------*/
/* CHANNEL PARAMETERS: (host modifiable)                                  */
/* bit_count:    Contains the number of bits to be transferred            */
/*               Range = 0x01 - 0x18 (1 to 24)                            */
/*                                                                        */
/* data_reg:     24-bit register that stores the data transferred in and  */
/*               out                                                      */
/*                                                                        */
/* half_period:   Half Baud rate period.  This is calculated in the API.  */
/*                In the simulator half_period can be changed within the  */
/*                range of 0x01 - 0x7FFFFF                                */
/* LOCAL VARIABLES:                                                       */
/* bit_count_current:   this value will be updated as the no of bits to   */
/*                      be transferred is reduced                         */
/* FLAGS:                                                                 */
/* Flag1: Used to signify if the shift direction is MSB or LSB first      */
/*        Assigned to SPI_SHIFT_DIR_MSB/LSB in init thread                */
/*                                                                        */
/* Odd and even threads                                                   */
/* Threads where m1==1 & m2 ==0 are odd threads                           */
/* Threads where m1==0 & m2 ==1 are even threads                          */
/* in odd threads the next even event is scheduled (ertb is programmed)   */
/* in even threads the next odd event is scheduled (erta is programmed)   */
/* An odd event is programmed by the run thread                           */
/*       ______                                                           */
/*       |     |       |                                                  */
/*       |     |       |   <<<<---CLK                                     */
/* ______|     |_______|                                                  */
/* I     O     E       O                                                  */
/* N     D     V       D    -----ETC ETC                                  */
/* I     D     E       D                                                  */
/* T           N                                                          */
/*                                                                        */
/*------------------------------------------------------------------------*/

void SPI (int8 bit_count, int24 data_reg, int24 half_period)
{
    static int8 bit_count_current;

    /********************************************************************/
    /* THREAD NAME : SPI_INIT_TCR1                                      */
    /********************************************************************/
    /* 1. Disable Matches during this thread                            */
    /*                                                                  */
    /* 2. Set up to use TCR1                                            */
    /*                                                                  */
    /* 3. Clear flag0                                                   */
    /*                                                                  */
    /* 4. Set channel mode : EM_NB_ST                                   */
    /*                                                                  */
    /* 5. Set Function Mode (Shift Direction) = Flag 1                  */
    /*                                                                  */
    /* 6. Clear match and transition Latches                            */
    /*                                                                  */
    /* 7. Set Pin Hi/Low according to Clock Polarity                    */
    /*                                                                  */
    /* 8. Enable the output buffer on the clk channel                   */
    /*                                                                  */
    /* 9. Set Channel interrupt and Data Transfer request bits          */
    /*                                                                  */
    /* 10. Enable events handling for matches and transitions           */
    /*                                                                  */
    /* 11. Disable the output buffer on the Rx channel                  */
    /********************************************************************/

    if (hsr == SPI_INIT_TCR1)
      {
SPI_init_tcr1:
          DisableMatchesInThread ();
          /* SET UP TO USE TCR1 */
          ActionUnitA (MatchTCR1, CaptureTCR1, GreaterEqual);
          ActionUnitB (MatchTCR1, CaptureTCR1, GreaterEqual);
          flag0 = 0;

       Init_SPI:
          EitherMatchNonBlockingSingleTransition (); /* SET CHANNEL MODE */

          /* SET FUNCTION MODE SHIFT DIRECTION AS FLAG 1 */
          flag1 = 1;      /* SHIFT MSB FIRST : default*/
          if (FunctionMode1 != SPI_SHIFT_DIR_MSB)
            {
                flag1 = 0;      /* SHIFT LSB FIRST */
            }

          Clear (TransLatch);
          ClearMatchAEvent ();
          ClearMatchBEvent ();

          /* SET PIN HIGH OR LOW ON INITIALISATION */
          if (FunctionMode0 == SPI_CLK_POL_POS) /* POLARITY = 0 SO +VE 1ST EDGE */
            {
                SetPinLow ();   /* Ready for 1st -ve edge */
            }
          else                  /* POLARITY = 1 SO -VE 1ST EDGE */
            {
                SetPinHigh ();  /* Ready for first +ve edge */
            }

          /* Enable Output Buffer - for Puma */
          EnableOutputBuffer ();
          SetChannelInterruptRequest ();
          SetDataTransferInterruptRequest ();

          /* ENABLE EVENT HANDLING */
          EnableMatchAndTransitionEventHandling ();
          chan--;
          DisableOutputBuffer ();
      }

    /********************************************************************/
    /* THREAD NAME : SPI_INIT_TCR2                                      */
    /********************************************************************/
    /* 1. Disable Matches during this thread                            */
    /*                                                                  */
    /* 2. Set up to use TCR2                                            */
    /*                                                                  */
    /* 3. Set flag0                                                     */
    /*                                                                  */
    /* 4. Proceed as per Thread SPI_INIT_TCR1 step 4                    */
    /********************************************************************/

    else if (hsr == SPI_INIT_TCR2)
      {
SPI_init_tcr2:
          DisableMatchesInThread ();

          /* SET UP TO USE TCR2 */
          ActionUnitA (MatchTCR2, CaptureTCR2, GreaterEqual);
          ActionUnitB (MatchTCR2, CaptureTCR2, GreaterEqual);
          flag0 = 1;

          goto Init_SPI;

      }
    /****************************************************************/
    /* THREAD NAME : SPI_RUN_TCR2                                   */
    /****************************************************************/
    /* 1. Disable Matches during this thread                        */
    /*                                                              */
    /* 2. Set erta to a half_period from now                        */
    /*                                                              */
    /* 3. proceed as per SPI_RUN_TCR1 step 3.                       */
    /****************************************************************/

    else if (hsr == SPI_RUN && flag0 == 1 )
      {
SPI_run_tcr2:
          DisableMatchesInThread ();
          erta = tcr2 + half_period;
          goto SPI_RUN0;
      }
    /****************************************************************/
    /* THREAD NAME : SPI_RUN_TCR1                                   */
    /****************************************************************/
    /* 1. Disable Matches during this thread                        */
    /*                                                              */
    /* 2. Set erta to a half_period from now                        */
    /*                                                              */
    /* 3. Clear match and transition Latches                        */
    /*                                                              */
    /* 4. Schedule match for half_period from now                   */
    /*                                                              */
    /* 5. Enable the output buffer on the Tx channel                */
    /*                                                              */
    /* 6. Shift data_reg dependant upon shift_dir                   */
    /*                                                              */
    /* 7. Set pin on chan+1 according to carry flag                 */
    /*                                                              */
    /* 8. Make bit_count_current = bit_count                        */
    /*                                                              */
    /* 9. Set Pin Action according to CLK polarity                  */
    /****************************************************************/

    else if (hsr == SPI_RUN && flag0 == 0 )
      {
SPI_run_tcr1:
          DisableMatchesInThread ();

          erta = tcr1 + half_period;
      SPI_RUN0:

          Clear (TransLatch);
          ClearMatchAEvent ();
          ClearMatchBEvent ();

          /* COPY THE ERT TO THE MATCH REG AND SET THE MRLE LATCH */
          WriteErtAToMatchAAndEnable ();
No_optimise0:  /* this label required to prevent the compiler being over zealous */
          chan++;
          /* Enable Output Buffer - for Puma */
          EnableOutputBuffer ();
          if (FunctionMode1 != SPI_SHIFT_DIR_MSB)
            {
                data_reg  >>= 1;       /* SHIFT LSB FIRST */
            }
          else
            {
                data_reg  <<= 1;       /* SHIFT MSB FIRST */
            }

          /* PLACE data_out ON OUTPUT CHANNEL FOR ACCESS ON 1ST CLK EDGE */
          if (CC.C != 0)
            {
                SetPinHigh();
            }
          else
            {
               SetPinLow  ();
            }
          chan--;

          bit_count_current = bit_count;  /* RECORD BIT_COUNT AS BIT_COUNT_CURRENT FOR CALCULATIONS */

          /* SET UP FIRST CLOCK PULSE (EDGE) WITH CORRECT POLARITY */
         if (FunctionMode0 != SPI_CLK_POL_POS)

            {
                OnMatchA (PinLow);     /* POLARITY = 1 SO -VE 1ST EDGE */
            }
          else
            {
                OnMatchA (PinHigh);      /* POLARITY = 0 SO +VE 1ST EDGE */
            }
      }

    /********************************************************************/
    /* THREAD NAME : DATA_ODD_LSB                                       */
    /********************************************************************/
    /* 1. Clear MatchA event Latch                                      */
    /*                                                                  */
    /* 2. Decrement the channel register ( to data in channel)          */
    /*                                                                  */
    /* 3. Sample Data In Pin                                            */
    /*                                                                  */
    /* 4. Add it to data register                                       */
    /*                                                                  */
    /* 5. Proceed as per thread DATA_ODD_MSB step 5                     */
    /********************************************************************/

    else if (m1 == 1 && m2 == 0 && flag1 == 0)
      {
SPI_data_odd_lsb:
          ClearMatchAEvent ();

          /* CODE TO READ INPUT PIN - AND ADD DATA TO DATA_REG */
          /* RECEIVE DATA  CHANNEL IS CHANNEL BELOW CLOCK */
          chan--;
No_optimise1: /* this label required to prevent the compiler being over zealous : added for compiler rev 1.0.0.5*/
          if (IsCurrentInputPinHigh ())
            {
                data_reg = data_reg + 0x800000;
            }

          /* CODE TO TOGGLE THE CLOCK PIN AT THE NEXT EDGE/SET UP THE NEXT MATCH */
          goto Chan_Change_and_Next_Match_B;    /* to change channel back
                                                   up and to set up next match,
                                                   and hence 'Count_Zero' to check for end */

      }
    /********************************************************************/
    /* THREAD NAME : DATA_ODD_MSB                                       */
    /********************************************************************/
    /* 1. Clear MatchA event Latch                                      */
    /*                                                                  */
    /* 2. Decrement the channel register (to data in channel)           */
    /*                                                                  */
    /* 3. Sample Data In Pin                                            */
    /*                                                                  */
    /* 4. Add it to data register                                       */
    /*                                                                  */
    /* 5. Increment the channel register (back to CLK channel)          */
    /*                                                                  */
    /* 6. Schedule match on action unit B for half_period from last     */
    /*    match on action unit A                                        */
    /*                                                                  */
    /* 7. Decrement bit count                                           */
    /********************************************************************/

    else if (m1 == 1 && m2 == 0 && flag1 == 1)
      {
SPI_data_odd_msb:
          /*DisableMatchesInThread(); */
          ClearMatchAEvent ();

          /* CODE TO READ INPUT PIN - AND ADD DATA TO DATA_REG */
          /* DATA IN CHANNEL IS CHANNEL BELOW CLOCK */
          chan--;
No_optimise2: /* this label required to prevent the compiler being over zealous : added for compiler rev 1.0.0.5*/
          if (IsCurrentInputPinHigh ())
            {
                data_reg ++;
            }

        Chan_Change_and_Next_Match_B:
          chan++;

          /* CODE TO TOGGLE THE CLOCK PIN AT THE NEXT EDGE/SET UP THE NEXT MATCH */
          ertb = erta + half_period;    /* update ertb for next match B */
          OnMatchB (PinToggle);
          WriteErtBToMatchBAndEnable ();

          bit_count_current--;
      }
    /********************************************************************/
    /* THREAD NAME : DATA_EVEN_LSB                                      */
    /********************************************************************/
    /* 1. Clear MatchB event Latch                                      */
    /*                                                                  */
    /* 2. If all data has been sent set Channel Interrupt bit and       */
    /*    dataTransferRequest bit and exit thread                       */
    /*                                                                  */
    /* 3. Increment the channel register (to Data out channel)          */
    /*                                                                  */
    /* 4. Shift data reg right 1 bit                                    */
    /*                                                                  */
    /* 5. Set data out pin on according to carry flag                   */
    /*                                                                  */
    /* 6. Decrement the channel register (back to CLK channel)          */
    /*                                                                  */
    /* 7. Schedule match on action unit A for half_period from last     */
    /*    match on action unitB; PinAction is Toggle                    */
    /********************************************************************/

    else if (m1 == 0 && m2 == 1 && flag1 == 0)
      {
SPI_data_even_lsb:
          /* DATA OUT CHANNEL IS CHANNEL ABOVE CLOCK */
          ClearMatchBEvent ();
          if (bit_count_current != 0)
            {
                /* PUT data_out ON DATA OUT PIN */
                chan++;
                data_reg  >>= 1;
Set_Data_Chan_Change_and_Next_Match_A:
                if (CC.C != 0)
                  {
                       SetPinHigh();
                  }
                else
                  {
                      SetPinLow ();
                  }
                chan--;
                erta = ertb + half_period;      /* 2nd clock edge follows 1st */
                OnMatchA (PinToggle);
                WriteErtAToMatchAAndEnable ();
            }
          else
            {
              CI_DTR:
                SetChannelInterruptRequest ();
                SetDataTransferInterruptRequest ();
            }
      }
    /********************************************************************/
    /* THREAD NAME : DATA_EVEN_MSB                                      */
    /********************************************************************/
    /* 1. Clear MatchB event Latch                                      */
    /*                                                                  */
    /* 2. If all data has been sent set Channel Interrupt bit and       */
    /*    dataTransferRequest bit and exit thread                       */
    /*                                                                  */
    /* 3. Increment the channel register (to Data out channel)          */
    /*                                                                  */
    /* 4. Shift data reg left 1 bit                                     */
    /*                                                                  */
    /* 5. Proceed as per thread DATA_EVEN_LSB step 5                    */
    /********************************************************************/

    else if (m1 == 0 && m2 == 1 && flag1 == 1)
      {
SPI_data_even_msb:
          /* DATA OUT CHANNEL IS CHANNEL ABOVE CLOCK */
          ClearMatchBEvent ();
          if (bit_count_current != 0)
            {
                /* PUT data_out ON DATA OUT PIN */

               chan++;
               data_reg  <<= 1;
               goto Set_Data_Chan_Change_and_Next_Match_A;
            }
          else
            {
                goto CI_DTR;
            }
      }
    /********************************************************************/
    /* THREAD NAME : ERROR_CODE                                         */
    /********************************************************************/
    /* 1. Call the Global error routine and end.                        */
    /********************************************************************/
    else
    {
SPI_Error:
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
