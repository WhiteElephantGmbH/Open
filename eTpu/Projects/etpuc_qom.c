/****************************************************************************
 * FILE NAME: etpu_qom.c                     COPYRIGHT (c) FREESCALE 2004   *
 * DESCRIPTION:                                     All Rights Reserved     *
 * This function generates complex pulse trains without CPU intervention    *
 * using a sequence of output matches. An output match causes a             *
 * programmable pin response when a user-defined value is matched by the    *
 * value of a free-running counter. QOM generates multiple output matches   *
 * using a queue of offset times and pin responses stored in parameter      *
 * RAM. The queue size is user-programmable. Various modes of queue         *
 * operation are supported. The function is based on the QOM                *
 * (Queued Output Match) TPU function.                                      *
 *==========================================================================*
 * ORIGINAL AUTHOR: Geoff Emerson                                           *
 * Revision 1.5  2006/01/09 13:11:34  r47354
 * Add function name prefix to #defines.
 * Fix auto file name comment.
 * Fix isue with function number when compiling standalone.
 * No compiled code changes.
 *
 * Revision 1.4  2004/11/22 10:26:03  r47354
 * Remove duplicate #defines.
 * Change so that first pulse width in immed. mode is more accurate.
 * Update comments.
 *
 * Revision 1.3  2004/11/03 13:48:27  r47354
 * Fix for first match behaviour when the reference is in the past
 *
 * Revision 1.2  2004/11/02 13:56:30  r12110
 * -Added support for building function stand alone or in a set.
 *   -This includes using the global error function if avaialable.
 * -Updated comments in auto generated file to include version number.
 * -Fixed comments for version 1.0.0.5 compiler.
 *
 * Revision 1.1  2004/11/01 15:57:50  r12110
 * No changes to code, just updated for CVS and checked into CVS.
 *
 *..........................................................................*
 * 0.00  G. Emerson   12/Feb/04    Initial version of file.                 *
 * 0.1   G. Emerson   20/Feb/04    Add ref time handling.                   *
 * 0.2   G. Emerson   25/Mar/04    Code size reduction. Add auto file       *
 *                                 generation                               *
 * 0.3   G. Emerson   14/Apr/04    Fix for interrupt/DTR generation         *
 * 0.4   G. Emerson   14/Apr/04    Remove Link generation capability        *
 *                                 Now resides in TEST  function            *
 *                                 Remove ETPU_QOM_ from local defines      *
 *0.5   G. Emerson   18/May/04     Added DisableMatchesInThread to all      *
 *                                 init threads                             *
 *                                 Use ConfigMatch_AB macro                 *
 *                                 Change to loop handling so get n         *
 *                                 not n+1 iteraions                        *
 *                                 Added INIT_LSR_HIGH, INIT_LSR_LOW,       *
 *                                 INIT_LSR_NC threads to replace           *
 *                                 INIT_LSR                                 *
 *0.6   G. Emerson   31/May/04     Add EnableOutputBuffer to init threads   *
 *                                 to allow correct Puma operation          *
 *0.7   G. Emerson   23/June/04    Changes to #pragma write h statements    *
 *                                 for GCT compatability                    *
 *0.8   G. Emerson  25/June/04     Add FS_ prefix to these Macros           *
 *                                 ETPU_QOM_TABLE_START_PTR_OFFSET          *
 *                                 ETPU_QOM_TABLE_END_PTR_OFFSET            *
 *                                 ETPU_QOM_LAST_MATCH_TIME_OFFSET          *
 *                                 ETPU_QOM_LOOP_COUNT_OFFSET               *
 *                                 ETPU_QOM_OPTION_OFFSET                   *
 *                                 ETPU_QOM_REF_ADDR_PTR_OFFSET             *
 *                                 ETPU_QOM_FUNCTION_NUMBER                 *
 *                                 ETPU_QOM_TABLE_SELECT                    *
 *                                 ETPU_QOM_NUM_PARMS                       *
 *0.9   G. Emerson  16/July/04     Add Disclaimer                           *
 * ToDo:                                                                    *
 *       Error handling code.                                               *
 *       Debug and reduce code size                                         *
 ****************************************************************************/
#include <ETpu_Std.h>

/* eTPU QOM Definitions */
#define  QOM_IMMEDIATE                0
#define  QOM_USE_LAST_EVENT           1
#define  QOM_USE_REF_ADDRESS          3

#define  QOM_INIT_PIN_LOW_LINK      2
#define  QOM_INIT_PIN_HIGH_LINK     3
#define  QOM_INIT_PIN_NO_CHANGE_LINK   4
#define  QOM_INIT_PIN_LOW          5
#define  QOM_INIT_PIN_HIGH         6
#define  QOM_INIT_PIN_NO_CHANGE    7

#define  QOM_SINGLE_SHOT           0
#define  QOM_LOOP                  1
#define  QOM_CONTINUOUS            2
#define  QOM_CONTINUOUS_A          3

/***********************************/
/* Verify performance requirements */
/***********************************/
#pragma verify_wctl  QOM                 43  steps 17 rams
#pragma exclude_wctl QOM::QOM_init_hi
#pragma exclude_wctl QOM::QOM_init_lo
#pragma exclude_wctl QOM::QOM_Error

#ifdef QOM_FUNCTION_NUMBER    /* function is being compiled as part a set? */
#pragma ETPU_function QOM, standard @ QOM_FUNCTION_NUMBER;
#else
#pragma ETPU_function QOM, standard; /* stand alone */
#endif

/* General Notes: */
/*--------------------------------------------------------------------------+
| CHANNEL PARAMETERS: (host modifiable)                                     |
| Table_Start_ptr: Contains the address of the start of the table containing|
|                  match counts to be scheduled.                            |
| Table_End_Ptr: Contains the address of the end of the table containing    |
|                  match counts to be scheduled.                            |
| Last_Match_Time: The value in TCR ticks of the last match which occurred  |
|                  This parameter is only updated when the queue is         |
|                  completed in single shot mode or when all loops have been|
|                  completed in loop shot                                   |
| Ref_Addr_ptr:    Pointer to adddress of referene time if using ref mode   |
| Loop:            For loop mode the current iteration counter              |
| Option:          Reference mode: The LSB and (LSB+1) define               |
|                  mode for first match as follows:                         |
|                  0b00 : Schedule immediate match                          |
|                  0b01 : Schedule match relative to time of last match     |
|                  event (Last_Match_Time)                                  |
|                  0b11 : Schedule match relative in address pointed to by  |
|                  Ref_Addr_Ptr                                             |
|                  TimeBase: The MSB selects timebase as follows            |
|                  0b0 : use TCR1                                           |
|                  0b1 : use TCR2                                           |
|                  Link service flag: The MSB-1 determines whether a link   |
|                  will be serviced as follows:                             |
|                  0b0 : Link will not be serviced                          |
|                  0b1 : Link will be serviced                              |
+--------------------------------------------------------------------------*/
/*--------------------------------------------------------------------------+
| LOCAL VARIABLES: (currently implemented as channel paramaters)            |
| Current_Match_Ptr: Contains the address in the match table of the match   |
|                    being serviced.                                        |
| Offset:          The offset (in TCR counts)*2 for next match. Currently   |
|                  the LS Bit contains the next pin state indicator.        |
|                  (i.e. not as per design document).                       |
|Overrun:          Determines whether all matches in the queue have been    |
|                  serviced. If allmatches have been serviced then a channel|
|                  interrupt and data transfer request is sent.             |
+--------------------------------------------------------------------------*/
void QOM(int24 *Table_Start_Ptr, int24 *Table_End_Ptr, int24 Last_Match_Time,
         int8 Loop, int8 Option, int24 *Ref_Addr_ptr  )
{
    static int24 *Current_Match_Ptr;
    static int24 Offset;
    static int8 Overrun;

/*--------------------------------------------------------------------------+
| THREAD NAME: INIT_HI                                                      |
| DESCRIPTION: Initialise a channel to run the QOM function.The HSR bits    |
|              dictate the pin should be initialised high.                  |
|              1. Set the pin action so the pin drives high on match B, then|
|                 go to INIT_NC thread for further config.                  |
+--------------------------------------------------------------------------*/
    if ( HostServiceRequest == QOM_INIT_PIN_HIGH )
    {
QOM_init_hi:
  EnableMatchesInThread();
Init_Hi_QOM:
  OnMatchB(PinHigh);
  goto Initialise_QOM;
    }
/*--------------------------------------------------------------------------+
| THREAD NAME: INIT_LO                                                      |
| DESCRIPTION: Initialise a channel to run the QOM function.The HSR bits    |
|              dictate the pin should be initialised low.                   |
|              1. Set the pin action so the pin drives low on match B, then |
|                 go to INIT_NC thread for further config.                  |
+--------------------------------------------------------------------------*/
    else if ( HostServiceRequest == QOM_INIT_PIN_LOW )
    {
QOM_init_lo:
  EnableMatchesInThread();
Init_Lo_QOM:
  OnMatchB(PinLow);
  goto Initialise_QOM;
    }
/*--------------------------------------------------------------------------+
| THREAD NAME: INIT_LSR_NC                                                  |
| DESCRIPTION: Initialise a channel to run the QOM function when a Link     |
|              Service Request is recieved.                                 |
|              1. Disable matches in the thread.                            |
|              2. Set the LSR_flag to indicate that a link has been recieved|
+--------------------------------------------------------------------------*/
    else if( HostServiceRequest == QOM_INIT_PIN_NO_CHANGE_LINK )
    {

Init_QOM_LNK_NC:
  DisableMatchesInThread();
  Option = Option | 0x40; /*arm the LSR_flag*/
  EnableOutputBuffer();
    }
/*--------------------------------------------------------------------------+
| THREAD NAME: INIT_LSR_LOW                                                 |
| DESCRIPTION: Initialise a channel to run the QOM function when a Link     |
|              Service Request is recieved. Pin state to be un-changed      |
|              1. Disable matches in the thread.                            |
|              2. Set Pin Low and proceed as per INIT_LSR_NC                |
+--------------------------------------------------------------------------*/
    else if( HostServiceRequest == QOM_INIT_PIN_LOW_LINK )
    {
QOM_init_lsr_low:
  DisableMatchesInThread();
  SetPinLow();
  goto Init_QOM_LNK_NC;
    }
/*--------------------------------------------------------------------------+
| THREAD NAME: INIT_LSR_HIGH                                                |
| DESCRIPTION: Initialise a channel to run the QOM function when a Link     |
|              Service Request is recieved. Pin state to be un-changed      |
|              1. Disable matches in the thread.                            |
|              2. Set Pin High and proceed as per INIT_LSR_NC               |
+--------------------------------------------------------------------------*/
    else if( HostServiceRequest == QOM_INIT_PIN_HIGH_LINK )
    {
QOM_init_lsr_high:
  DisableMatchesInThread();
  SetPinHigh();
  goto Init_QOM_LNK_NC;
    }
/*--------------------------------------------------------------------------+
| THREAD NAME: INIT_NC                                                      |
| DESCRIPTION: Initialise a channel to run the QOM function.The HSR bits    |
|              dictate the pin should be initialised with no change         |
|              1. Disable matches in thread in case there are any previous  |
|                  pending matches. This could happen if the channel was    |
|                  running another function before this one.                |
|              2. Configure channel mode , PDCM = em_nb_st                  |
|              3. Enable the output buffer.                                 |
|              4. Configure channel to use TCR1/2 as per Option register    |
|              5. Generate time reference variable as follows               |
|                  If immediate mode ertb takes value of selected           |
|                  timebase. This generates an immediate pin action.        |
|                  If last event mode ertb takes value of last recorded     |
|                  match event                                              |
|                  If reference address mode ertb takes value of contents   |
|                  of reference address pointer                             |
|              6.Initialise Overrun variable to 0.                          |
|              7. Get offsets and future pin states for first and second    |
|                 matches from table                                        |
|              8. Program ertb/erta and future pins action accordingly      |
|              9. Update Current_Match_Ptr.                                 |
|              10. Schedule 1st and 2nd matches.                            |
|              11. Enable match and transition event handling               |
|              12. Disable transition detection and clear the transition    |
|                 latch.                                                    |
|              13. Clear link service request latch                         |
|              14. Set channel flag0                                        |
+--------------------------------------------------------------------------*/
    else if( HostServiceRequest == QOM_INIT_PIN_NO_CHANGE )
    {
QOM_init_nc:
  DisableMatchesInThread();

Initialise_QOM:
  EitherMatchNonBlockingSingleTransition();
  EnableOutputBuffer();

  if ((Option & 0x80 ) != FALSE ) /*use tcr2*/
  {
      ActionUnitB( MatchTCR2, CaptureTCR2, GreaterEqual);
      ertb = tcr2; /*default immed.*/
      ActionUnitA( MatchTCR2, CaptureTCR2, GreaterEqual);
  }
  else /*use TCR1 */
  {
      ActionUnitB( MatchTCR1, CaptureTCR1, GreaterEqual);
      ertb = tcr1; /*default immed.*/
      ActionUnitA( MatchTCR1, CaptureTCR1, GreaterEqual);
  }
  WriteErtBToMatchBAndEnable();
  EnableMatchB();

  if ((Option & 0x1) != FALSE) /*mode other than immed.?*/
  {
      if ((Option & 0x2) != FALSE )
      {
    ertb  = *Ref_Addr_ptr; /*over write default (immed.)*/
      }
      else
      {
    ertb  = Last_Match_Time; /*over write default (immed.)*/
      }
  }
  Overrun=0;
  Offset = *Table_Start_Ptr; /*get first offset plus next pin state*/
  Offset = Offset >>1;
  if (CC.C ==1)
  {
      OnMatchB(PinHigh);
  }
  else
  {
      OnMatchB(PinLow);
  }
  ertb = ertb  + Offset; /*update ertb with first value*/

  // ETEC correctly does the pointer arithmetic.  We want Current_Match_Ptr to be
  // 4 bytes (1 int24 + gap == stride size of 4 bytes) higher than Table_Start_Ptr.
  Current_Match_Ptr = Table_Start_Ptr + 1;
  Offset = *Current_Match_Ptr; /*get 2nd offset*/
  Offset = Offset >>1;
  if (CC.C ==1)
  {
      OnMatchA(PinHigh);
  }
  else
  {
      OnMatchA(PinLow);
  }
  erta = ertb + Offset; /*update erta with second value*/

  ConfigMatch_AB();

  OnTransA(NoDetect);
  OnTransB(NoDetect);
  Clear(TransLatch);
  Clear(LSRLatch);
  Set(flag0);
    }
/*--------------------------------------------------------------------------+
| THREAD NAME: SERVICE_LINK                                                 |
| DESCRIPTION: Run queue when a link service request is received            |
|              1. Matches are disabled in this thread                       |
|              2. If LSR_flag is set (i.e. link has been initialised) then  |
|                 proceed as per INIT_NC                                    |
|              3. Otherwise ignore LSR (clear link service latch and exit)  |
*----------------------------------------=----------------------------------*/
    else if (IsLinkServiceRequestEvent())
    {
QOM_service_link:
  DisableMatchesInThread();
  if ((Option & 0x40) != FALSE) /*only service if LSR_flag is armed*/
  {

     goto Initialise_QOM;

  }
  else
  {
      Clear(LSRLatch);
  }
    }
/*--------------------------------------------------------------------------+
| THREAD NAME: DOUBLE_MATCH_0                                               |
| DESCRIPTION: This thread occurrs when a match exists on both Action unit A|
|              and action unit B.  and channel flag0 is 0. A match will be  |
|              scheduled for action unit A leaving MatchB unserviced        |
|              1. erta or B already contains the match time which caused    |
|                 this thread                                               |
|              3. If continuous mode and Current_Match_Ptr has overflowed   |
|                 point it to start of table                                |
|              4. If looping and loop iterations are complete then:         |
|                    Set channel flag0                                      |
|                    Record last match event time (in Last_Match_Time)      |
|                    Clear match on action unit A                           |
|                    If Overrun =1                                          |
|                      (i.e. the last match in the queue ahs been serviced) |
|                         Set Interrupt and DMA request bits                |
|                         Clear Link Service Request Event register.        |
|                         Clear LSR_flag.                                   |
|                    Increment Overrun                                      |
|                    Schedule no more matches and exit thread               |
|              5. If loop mode and Current_Match_Ptr has overflowed         |
|                 point it to start of table and decrement loop counter     |
|              6. If in single shot mode and Current_Match_Ptr has          |
|                 overflowed                                                |
|                    Set channel flag0                                      |
|                    Record last match event time (in Last_Match_Time)      |
|                    Clear match on action unit A                           |
|                    If Overrun =1                                          |
|                      (i.e. the last match in the queue ahs been serviced) |
|                         Set Interrupt and DMA request bits                |
|                         Clear Link Service Request Event register.        |
|                         Clear LSR_flag.                                   |
|                    Increment Overrun                                      |
|                    Schedule no more matches and exit thread               |
|              7. Clear exisitng match and schedule future match according  |
|                 to next queue entry                                       |
|              8. Set channel flag0                                         |
+--------------------------------------------------------------------------*/
    else if( m1==1 && m2==1  && (flag0==0) )
    {
Service_single_match0 :
  /*read_match() not required as Thread entered because of double match; so erta & ertb already hold value of last matches.*/
  Current_Match_Ptr++ ; /*increment pointer*/
  if ( IsLatchedFuncMode1() ) /*continuous mode FM=10|11 */
  {
      if (Current_Match_Ptr > Table_End_Ptr)
      {
    Current_Match_Ptr = Table_Start_Ptr;
      }
  }
  else /* FM = 0x*/
  {
      if (IsLatchedFuncMode0()) /*loop mode FM=01*/
      {
    if (Loop ==1 )
    {
Done0:
        if (Current_Match_Ptr > Table_End_Ptr)
        {
      Set(flag0);
      ClearMatchAEvent();
      Last_Match_Time = erta;
      goto Clear_Matches0;
        }
    }
    else
    {
        if (Current_Match_Ptr > Table_End_Ptr)
        {
      Current_Match_Ptr = Table_Start_Ptr;
      Loop--;
        }
    }
      }
      else /*  single shot FM=00*/
      {
    goto Done0;
      }
  }
  Offset= *Current_Match_Ptr;
  Offset = Offset >>1;
  if (CC.C ==1)
  {
      OnMatchA(PinHigh);
  }
  else
  {
      OnMatchA(PinLow);
  }
  erta = ertb + Offset ; /*update ertb with next value*/
  ClearMatchAEvent();
  WriteErtAToMatchAAndEnable();
  Set(flag0);
    }
/*--------------------------------------------------------------------------+
| THREAD NAME: DOUBLE_MATCH_1                                               |
| DESCRIPTION: This thread occurrs when a match exists on both Action unit A|
|              and action unit B.  and channel flag0 is 1. A match will be  |
|              scheduled for action unit B leaving MatchA unserviced        |
|              1. erta or B already contains the match time which caused    |
|                 this thread                                               |
|              3. If continuous mode and Current_Match_Ptr has overflowed   |
|                 point it to start of table                                |
|              4. If looping and loop iterations are complete then:         |
|                    Clear channel flag0                                    |
|                    Record last match event time (in Last_Match_Time)      |
|                    Clear match on action unit B                           |
|                    Set Interrupt and DMA request bits                     |
|                    Clear Link Service Request Event register.             |
|                    Clear LSR_flag.                                        |
|                    Schedule no more matches and exit thread               |
|              5. If loop mode and Current_Match_Ptr has overflowed         |
|                 point it to start of table and decrement loop counter     |
|              6. If in single shot mode and Current_Match_Ptr has          |
|                 overflowed                                                |
|                    Clear channel flag0                                    |
|                    Record last match event time (in Last_Match_Time)      |
|                    Clear match on action unit B                           |
|                    Set Interrupt and DMA request bits                     |
|                    Clear Link Service Request Event register.             |
|                    Clear LSR_flag.                                        |
|                    Schedule no more matches and exit thread               |
|              7. Clear exisitng match and schedule future match according  |
|                 to next queue entry                                       |
|              8. Clear channel flag0                                       |
+--------------------------------------------------------------------------*/
    else if( m1==1 && m2==1  && (flag0==1) )
    {
Service_single_match1:
  /*read_match() not required as Thread entered because of double match; so erta & ertb already hold value of last matches.*/
  Current_Match_Ptr++; /*increment pointer*/
  if ( IsLatchedFuncMode1() ) /*continuous mode FM=10|11 */
  {
      if (Current_Match_Ptr > Table_End_Ptr)
      {
    Current_Match_Ptr = Table_Start_Ptr;
      }
  }
  else /* FM = 0x*/
  {
      if (IsLatchedFuncMode0()) /*Loop mode FM=01*/
      {
    if (Loop ==1 )
    {
Done1:
        if (Current_Match_Ptr > Table_End_Ptr)
        {
Clear_Matches1:
      Clear(flag0);
      Last_Match_Time = ertb;
      ClearMatchBEvent();
Clear_Matches0:
      if (Overrun ==1)
      {
        SetChannelInterruptRequest();
        SetDataTransferInterruptRequest();
        Clear(LSRLatch) ;
        Option = (Option & 0xBF); /* Clear LSR flag */
      }
      Overrun++;
      return; /*schedule no more matches*/
        }
    }
    else
    {
        if (Current_Match_Ptr > Table_End_Ptr)
        {
      Current_Match_Ptr = Table_Start_Ptr;
      Loop--;
        }
    }
      }
      else /*  single shot FM=00*/
      {
    goto Done1;
      }
  }
  Offset= *Current_Match_Ptr;
  Offset = Offset >>1;
  if (CC.C ==1)
  {
      OnMatchB(PinHigh);
  }
  else
  {
      OnMatchB(PinLow);
  }
  ertb = erta + Offset ; /*update ertb with next value*/
  ClearMatchBEvent();
  WriteErtBToMatchBAndEnable();
  Clear(flag0);
    }
/*--------------------------------------------------------------------------+
| THREAD NAME: MATCH_0                                                      |
| DESCRIPTION: This thread occurrs when there is either a MatchA event or a |
|              MatchB event and the channel flag is 0. A future match will  |
|              be scheduled for Action unit A.                              |
|              1. update erta and ertb with MatchA and MatchB values        |
|              2. Proceed as per DOUBLE_MATCH_0                             |
+--------------------------------------------------------------------------*/
    else if( ( m1==1 && m2==0 && flag0==0 ) || \
      ( m1==0 && m2==1 && flag0==0 ) )
    {
QOM_match_0:

  /*NOP; not currently required*/
  read_match(); /* get erta and ertb from match registers. For this thread one of the matches is in the future.*/
  goto Service_single_match0;

    }
/*--------------------------------------------------------------------------+
| THREAD NAME: MATCH_1                                                      |
| DESCRIPTION: This thread occurrs when there is either a MatchA event or a |
|              MatchB event and the channel flag is 1. A future match will  |
|              be scheduled for Action unit B.                              |
|              1. update erta and ertb with MatchA and MatchB values        |
|              2. Proceed as per DOUBLE_MATCH_1                             |
+--------------------------------------------------------------------------*/
    else if( ( m1==1 && m2==0 && flag0==1 ) || \
      ( m1==0 && m2==1 && flag0==1 ) )
    {
QOM_match_1:

  /*NOP; not currently required*/
  read_match(); /* get erta and ertb from match registers. For this thread one of the matches is in the future.*/
  goto Service_single_match1;
    }
/*--------------------------------------------------------------------------+
| THREAD NAME: Error                                                        |
| DESCRIPTION: Something has gone wrong. :-(                                |
|                Call the Global error routine and end.                     |
+--------------------------------------------------------------------------*/
    else
    {
QOM_Error:
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

