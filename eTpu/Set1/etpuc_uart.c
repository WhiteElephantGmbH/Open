/****************************************************************************
 * FILE NAME: etpuc_uart.c                     COPYRIGHT (c) Freescale 2004 *
 * DESCRIPTION:                                     All Rights Reserved     *
 * This function creates a UART (Universal Asynchronous Recieve/Transmitter)*
 * uses 2 eTPU channels.                                                    *
 *==========================================================================*
 * ORIGINAL AUTHOR: Vernon Goler                                            *
 * Revision 1.3  2006/01/09 13:09:31  r47354
 * Fix auto file name comment.
 * Fix isue with function number when compiling standalone.
 * No compiled code changes.
 *
 * Revision 1.2  2004/11/02 14:05:41  r12110
 * -Added support for building function stand alone or in a set.
 *   -This includes using the global error function if avaialable.
 * -Updated comments in auto generated file to include version number.
 *
 * Revision 1.1  2004/11/01 15:41:24  r12110
 * No changes to code, just updated for CVS and checked into CVS.
 *
 *..........................................................................*
 * 0.3   V. Goler     10/Aug/04  Function updated to common coding style.   *
 * 0.4   V. Goler     9/Sep/04   Added output and input buffer enable for   *
 *         PUMA, added DMA requests, disabled matches in init threads,      *
 *         added prefix UART to parity defines,                             *
 *         included ClearAllLatches function, some slight teaks to code     *
 ****************************************************************************/
#include <ETpu_Std.h>

/***********************************/
/* Verify performance requirements */
/***********************************/
#pragma verify_wctl  UART                30  steps 14 rams
#pragma exclude_wctl UART::UART_TX_init
#pragma exclude_wctl UART::UART_RX_init
#pragma exclude_wctl UART::UART_Error

#ifdef UART_FUNCTION_NUMBER
#pragma ETPU_function UART, alternate @ UART_FUNCTION_NUMBER;
#else
#pragma ETPU_function UART, alternate;
#endif
/* Macros to make the code easier to understand. */
/* These are specific to this UART function */
/* Host service requests */
#define UART_TX_INIT   4
#define UART_RX_INIT   7
/*Function Modes */
#define UART_NO_PARITY     0   /* used with FM1 */
#define UART_USE_PARITY    2   /* used when parity is passed to CPU */
#define UART_EVEN_PARITY   0   /* used with FM0 */
#define UART_ODD_PARITY    1   /* used with FM0 */
/****************************************************************************
* General Notes:
* 1. When the ETPU functions as a transmitter, bit 23 of FS_ETPU_UART_TX_RX_DATA
*     must be written by the host as zero to tell the ETPU new data is present.
*     When the ETPU copies data from FS_ETPU_UART_TX_RX_DATA to
*     FS_ETPU_UART_SHIFT_REG, the ETPU will set the MSB of
*     FS_ETPU_UART_TX_RX_DATA to a one. This will tell the ETPU that
*     FS_ETPU_UART_TX_RX_DATA is available to receive new data.
* 2. Received data always has the following
*     form = blank[23]:data[22:0]
*     The API will right adjust the data.
*
* Channel Flag usage
* Flag0 = 0  - wait for start bit.
* Flag0 = 1  - start bit detected, transmit data
* Flag1 = 0  - Transmit thread
* Flag1 = 1  - Receive thread
*
* Function mode bits
*  FM1   FM0    Action
* ----- -----  ----------
*   0     0    No Parity
*   0     1    No Parity
*   1     0    Even Parity
*   1     1    Odd Parity
****************************************************************************/
/*--------------------------------------------------------------------------+
| FUNCTION PARAMETERS:                                                      |
| FS_ETPU_UART_ACTUAL_BIT_COUNT: used by etpu to count the number of bits   |
| FS_ETPU_UART_MATCH_RATE:       baud period in tcr1 clocks                 |
| FS_ETPU_UART_PARITY_TEMP:      used by etpu to calculate parity           |
| FS_ETPU_UART_SHIFT_REG:        used by etpu for shifting in/out data      |
| FS_ETPU_UART_RX_ERROR:         used by etpu to hold calculated error code |
| FS_ETPU_UART_TX_RX_DATA:       Tx or Rx data                              |
| FS_ETPU_UART_BITS_PER_DATA_WORD: holds the number of bits in a data word  |
|                                  including parity                         |
+--------------------------------------------------------------------------*/
void UART (int8 FS_ETPU_UART_ACTUAL_BIT_COUNT,
           int24 FS_ETPU_UART_MATCH_RATE,
           int8 FS_ETPU_UART_PARITY_TEMP,
           int24 FS_ETPU_UART_SHIFT_REG,
           int8 FS_ETPU_UART_RX_ERROR,
           int24 FS_ETPU_UART_TX_RX_DATA,
           int8 FS_ETPU_UART_BITS_PER_DATA_WORD)
{

/*--------------------------------------------------------------------------+
| THREAD NAME: UART_TX_INIT (S0)                                            |
| DESCRIPTION: Initialize a channel to function as a transmitter (TX).      |
|              1. Match TRC1, Capture TCR1, >= compare, enable output buffer|
|              2. PDCM = sm_st, single match, single transition             |
|              3. Set OPACs for do not change on match                      |
|              4. PIN = high, set channel high                              |
|              5. Flag0 = 0, Flag1 = 0                                      |
|              6. Enable channel                                            |
|              7. ERT = TCR1 + match_rate - set up match                    |
|              8. Clear link, transition, match A, and match B event latch  |
|             10. Set channel interrupt, and data transfer request          |
+--------------------------------------------------------------------------*/
    if ( hsr== UART_TX_INIT )  {
UART_TX_init:
/* TRANSMITTER_INITIALIZATION                                       */
          DisableMatchesInThread ();

          /* Enable Output Buffer - for Puma                        */
          EnableOutputBuffer();

        TimeBaseAMatchTcr1CaptureTcr1GreaterEqual();              /* use tcr1 >= compare               */
        SingleMatchSingleTransition();                            /* single match                      */
        OnMatchAPinNoChange();                                    /* no change on match                */
        SetPinHigh();                                             /* pin high                          */
        ClrFlag0();
        ClrFlag1();
        EnableMatchAndTransitionEventHandling();                  /* enable channel                    */
          erta = tcr1 + FS_ETPU_UART_MATCH_RATE;
        ClearAllLatches();                                        /* clear sll service request sources */
        WriteErtAToMatchAAndEnable();
        SetChannelInterruptRequest();
        SetDataTransferInterruptRequest();
    }

/*--------------------------------------------------------------------------+
| THREAD NAME: UART_RX_INIT (S1)                                            |
| DESCRIPTION: Initialize a channel to function as a receiver (RX).         |
|              1. Match TRC1, Capture TCR1,>= compare, disable output buffer|
|              2. PDCM = sm_st, single match, single transition             |
|              3. Set channel to detect a falling edge, high-to-low trans.  |
|              4. PIN = high, set channel high                              |
|              5. Flag1=1                                                   |
|              6. Clear link, transition, match A, and match B event latch  |
|              7. Write ERT to Match register & Enable channel              |
+--------------------------------------------------------------------------*/
  else if ( hsr==UART_RX_INIT )  {
 UART_RX_init:
/* RECEIVER_INITIALIZATION                                          */
          DisableMatchesInThread();

          /* Disable Output Buffer - for Puma                       */
          DisableOutputBuffer();

          TimeBaseAMatchTcr1CaptureTcr1GreaterEqual();             /* use tcr1 >= compare                 */
        SingleMatchSingleTransition();
        DetectAFallingEdge();                                    /* look for falling edge - start-bit   */
        SetFlag1();
        ClearAllLatches();                                       /* clear sll service request sources   */
        EnableMatchAndTransitionEventHandling();                 /* enable the channel                  */
    }


/*--------------------------------------------------------------------------+
| THREAD NAME: UART_Test_New_Data_Tx (S2)                                   |
| DESCRIPTION: Check for new data to transmit                               |
|              1. Clear parity_temp variable                                |
|              2. erta = erta + match_rate, setup new match                 |
|              3. Clear link, transition, match A, and match B event latch  |
|              4. Write ert A to match reg A and enable                     |
|              5. Check for new valid data - MS bit of data_word low        |
|              6.     OPAC = low on match, send start bit                   |
|              7.     Set flag0 = 1                                         |
|              8.     actual_bit_count = data_size                          |
|              9.     shift_reg = tx_rx_data                                |
|              9.     Set MS bit of tx_rx_data to 1 to allow for new data   |
|              10.    Set channel interrupt, and data transfer request      |
+--------------------------------------------------------------------------*/


        // If TDRE set; set up for next match to test TDRE again
        // else set cflag0 to indicate transmission and send start bit

    else if( IsMatchAOrTransitionBEvent() && (flag0==0) && (flag1==0) ) {
UART_Test_New_Data_Tx:
/* TEST_NEW_DATA_TX                                              */
        FS_ETPU_UART_PARITY_TEMP = 0;                            /* clear parity variable               */
        erta = erta + FS_ETPU_UART_MATCH_RATE;
        ClearAllLatches();                                       /* clear sll service request sources   */
        WriteErtAToMatchAAndEnable();
        if((FS_ETPU_UART_TX_RX_DATA & 0x800000) == 0x0) {        /* Test TDRE - look for new data       */
            OnMatchAPinLow();                                    /* output start bit                    */
            SetFlag0();
            FS_ETPU_UART_ACTUAL_BIT_COUNT = FS_ETPU_UART_BITS_PER_DATA_WORD;
            FS_ETPU_UART_SHIFT_REG = FS_ETPU_UART_TX_RX_DATA;    /* copy data to shift register          */
            FS_ETPU_UART_TX_RX_DATA = 0x800000;                  /* set TDRE to allow new data           */
            SetChannelInterruptRequest();
            SetDataTransferInterruptRequest();
        }
    }

/*--------------------------------------------------------------------------+
| THREAD NAME: UART_Send_Serial_Data_TX (S3)                                |
| DESCRIPTION: Output serial data on pin at specified bit rate              |
|              1. if actual bit count = 0                                   |
|              2.     if parity not enabled                                 |
|              3.         OPAC = high on match - send stop bit              |
|              4.         flag0 = 0                                         |
|              5.     else                                                  |
|              6.         if odd parity                                     |
|              7.             parity_temp = parity_temp + 1                 |
|              8.         if parity_temp even                               |
|              9.             OPAC  = low on match - even parity found      |
|              10.        else                                              |
|              11.            OPAC = high on match - odd parity found       |
|              12. else if bit count negative                               |
|              13.     OPAC = high on match, setup for STOP bit             |
|              14.     flag0 = 0                                            |
|              15. else                                                     |
|              16.     if LSB of shift_reg = 1                              |
|              17.         OPAC = high on match                             |
|              18.         count "ones" and add to parity_temp              |
|              19.     else                                                 |
|              20.         OPAC = low on match                              |
|              21. decrement actual_bit_count                               |
|              22. shift shift_reg data right by one bit                    |
|              23. Clear link, transition, match A, and match B event latch |
|              24. ERTA = ERTA + match_rate - set up match                  |
|              25. Write ert A to match reg A and enable                    |
+--------------------------------------------------------------------------*/

    else if( IsMatchAOrTransitionBEvent() && (flag0==1) && (flag1==0) ) {
UART_Send_Serial_Data_TX:
/* SEND_SERIAL_DATA_TX                                           */
        if(FS_ETPU_UART_ACTUAL_BIT_COUNT == 0x0) {               /* check for parity enabled        */
            if(FunctionMode1 == 0) {                             /* no parity enabled               */
                OnMatchAPinHigh();                               /* set up for stop bit             */
                ClrFlag0();                                      /* look to Tx new data             */
            }
            else {                                               /* parity enabled                  */
                if (FunctionMode0 == 1) {                        /* check for odd parity            */
                    FS_ETPU_UART_PARITY_TEMP += 1;               /* if odd parity make even         */
                }
                OnMatchAPinHigh();
                if((FS_ETPU_UART_PARITY_TEMP & 0x01) == 0x0) {   /* even parity                     */
                    OnMatchAPinLow();
                }
            }
        }

        else if((FS_ETPU_UART_ACTUAL_BIT_COUNT & 0x80) != 0x0) {
            OnMatchAPinHigh();                                       /* set up for stop bit         */
            ClrFlag0();                                              /* set up to look for new data */
        }

        else {
            if((FS_ETPU_UART_SHIFT_REG & 0x000001) != 0x0) {
                OnMatchAPinHigh();
                FS_ETPU_UART_PARITY_TEMP += 1;                       /* count bit that are "1"       */
            }
            else {
                OnMatchAPinLow();
            }
        }
        FS_ETPU_UART_ACTUAL_BIT_COUNT -= 1;                          /* decrerement number of bits          */
        FS_ETPU_UART_SHIFT_REG >>= 1;                                /* shift the data                      */
        ClearAllLatches();                                           /* clear sll service request sources   */
        erta = erta + FS_ETPU_UART_MATCH_RATE;                       /* set up for next match               */
        WriteErtAToMatchAAndEnable();
    }


/*--------------------------------------------------------------------------+
| THREAD NAME: UART_Detect_new_data_RX (S4)                                 |
| DESCRIPTION: Detect start of new data frame - look for high-to-low trans  |
|              1. Clear parity_temp variable                                |
|              2. actual_bit_count = bits_per_data_word                     |
|              3. Set channel to detect a falling edge, high-to-low trans.  |
|              4. if parity enabled                                         |
|              5.     add 1 to  actual_bit_count                            |
|              6. Set up for new match, ertA += match_rate + 1/2 match_rate |
|              7. Disable further transtition detection                     |
|              8. Clear link service request event latch                    |
|              9. Clear link, transition, match A, and match B event latch  |
|             10. Write ert A to match reg A and enable                     |
+--------------------------------------------------------------------------*/

/* Falling edge detected                                                       */
/* Start-bit detected, start sampling in the middle of data bit (not start bit) */
/* This is 1.5 bit times to account for the start bit                           */
    else if( IsMatchBOrTransitionAEvent()&& (flag1==1) )  {
UART_Detect_new_data_RX:
/* DETECT_NEW_DATA_RX */
        FS_ETPU_UART_PARITY_TEMP = 0;                               /* clear parity variable                        */
        FS_ETPU_UART_ACTUAL_BIT_COUNT = FS_ETPU_UART_BITS_PER_DATA_WORD;  /* update number of bits to detect      */
        if(FunctionMode1 == 1) {                                            /* check for parity enabled*/
            FS_ETPU_UART_ACTUAL_BIT_COUNT += 1;                     /* parity enabled, increase count by one        */
        }
        erta += (FS_ETPU_UART_MATCH_RATE + (FS_ETPU_UART_MATCH_RATE >> 1)); /* look for bit in the middle of new data after start bit */
        DetectADisable();                                          /* do not detect any transitions from this point */
        ClearAllLatches();                                         /* clear sll service request sources             */
        WriteErtAToMatchAAndEnable();
    }
/*--------------------------------------------------------------------------+
| THREAD NAME: UART_Receive_Serial_Data_RX (S5)                             |
| DESCRIPTION: Receive serial data frame until bit count exhuasted          |
|              1. if actual bit count = 0                                   |
|              2.     rx_error = 0; clear error parameter                   |
|              3.     if pin state not high - stop bit not detected record error|
|              4.         rx_error += 0x40                                  |
|              5.     if parity enabled                                     |
|              6.         if odd parity                                     |
|              7.             add one to parity_temp parameter              |
|              8.         if lsb of parity_temp not 0 then parity error     |
|              9.             rx_error += 0x80                              |
|             10.     else                                                  |
|             11.        shift data in shift_reg right 1 bit                |
|             12.                                                           |
|             13.    update tx_rx_data with shift_reg                       |
|             14.    Set channel interrupt, and data transfer request       |
|             15. else                                                      |
|             16.     shift data in shift_reg right by 1 bit                |
|             17.     if pin state = 1                                      |
|             18.         received data = 1                                 |
|             19.         parity_temp += 1                                  |
|             20.     else                                                  |
|             21.         received data = 0                                 |
|             22.     Set up for new match, ertA += match_rate              |
|             23.     Write ert A to match reg A and enable                 |
|             24. Clear link, transition, match A, and match B event latch  |
|             25. increment actual_bit_count parameter                      |
+--------------------------------------------------------------------------*/


    else if( IsMatchAOrTransitionBEvent() && (flag1==1) ) {
UART_Receive_Serial_Data_RX:
/* RECEIVE_SERIAL_DATA_RX */

        if(FS_ETPU_UART_ACTUAL_BIT_COUNT == 0)  {                   /* stop bit check                          */
            FS_ETPU_UART_RX_ERROR = 0;
            if(pss == 0) {                                          /* stop bit should be detected high, if not FE */
                FS_ETPU_UART_RX_ERROR |= 0x40;                      /* FE - Framing Error detected             */
            }
            if(FunctionMode1 == 1)  {                               /* check for parity enabled                */
                FS_ETPU_UART_SHIFT_REG &= 0x7fffff;                 /* clear received parity bit               */
                if(FunctionMode0 == 1) {                            /* parity enabled, check odd or even       */
                    FS_ETPU_UART_PARITY_TEMP += 1;                  /* odd parity found, need to negate it     */
                }
                if((FS_ETPU_UART_PARITY_TEMP & 0x01) != 0x0) {  // check for parity error
                    FS_ETPU_UART_RX_ERROR |= 0x80;                  /* parity error detected, add to error flag */
                }
            }
            else  {
                FS_ETPU_UART_SHIFT_REG >>= 1;                       /* shift right one bit to account for no parity */
            }
            FS_ETPU_UART_TX_RX_DATA = FS_ETPU_UART_SHIFT_REG;       /* combine error flags with data and store  */
            DetectAFallingEdge();                                   /* look for falling edge - start-bit        */
            SetChannelInterruptRequest();                           /* generate RDRF - interrupt                */
            SetDataTransferInterruptRequest();                      /* Send DMA request if enabled              */
        }
        else {
            FS_ETPU_UART_SHIFT_REG >>= 1;                           /* shift data one bit position right         */
        if(pss == 1) {                                          /* Is pin sampled state, data bit high       */
                FS_ETPU_UART_SHIFT_REG += 0x800000;                 /* Received bit is high, place one in msb    */
                FS_ETPU_UART_PARITY_TEMP += 1;                      /* count high bit in parity calculation      */
            }
            erta = erta + FS_ETPU_UART_MATCH_RATE;                  /* set up for next match in middle of window */
            WriteErtAToMatchAAndEnable();                           /* setup match for 1.5 bit times             */
      }
      FS_ETPU_UART_ACTUAL_BIT_COUNT -= 1;                         /* decrerement count of bits received        */
      ClearAllLatches();                                          /* clear sll service request sources         */
    }

/*--------------------------------------------------------------------------+
| THREAD NAME: Default State (S6)                                           |
| DESCRIPTION: Enter this state if no other entry condition matches.        |
|               1.        clear link                                        |
|               2.        clear match A event latch, and match B event latc |
|               3.        clear transition event latch                      |
+--------------------------------------------------------------------------*/

    else {                                                          /* UNDEFINED_ENTRY_CONDITIONS          */
UART_Error:
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
