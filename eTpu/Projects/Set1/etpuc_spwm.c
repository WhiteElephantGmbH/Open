/****************************************************************************
 * FILE NAME: etpuc_spwm.c                     COPYRIGHT (c) Freescale 2005 *
 * DESCRIPTION:                                     All Rights Reserved     *
 * This function generals a SPWM (Synchronised Pulse Width Modulated)       *
 *  waveform in which the duty cycle of any synchronised can be changed at  *
 * any time by the CPU. The function can generate 0% and 100% output.       *
 * The function uses both actions  on the channel hardware so it can        *
 * generate small output pulses. The slave channels are synchronised to the *
 * master's Rising Edge using links.                                         *
 *==========================================================================*
 * ORIGINAL AUTHOR: Geoff Emerson [r47354] (geoff.emerson@freescale.com)    *
 * Revision 1.11  2006/01/09 15:37:05  r47354
 * Change variable names for clarity.
 * Add referecne as a function variable.
 * Fix auto file name comment.
 * Fix issue with function number when compiling standalone.
 *
 * Revision 1.10  2005/12/23 13:17:34  r47354
 * Make decision in init threads based on ActiveTime rather than Old_ActiveTime
 *
 * Revision 1.9  2005/12/22 13:59:07  r47354
 * Changes for GCT compliance.
 *
 * Revision 1.8  2005/12/14 14:02:44  r47354
 * Correct a  couple of typos in the comments.
 *
 * Revision 1.7  2005/12/13 15:44:47  r47354
 * Code optimisation and update comments.
 *
 * Revision 1.6  2005/12/13 14:42:25  r47354
 * Post review fixes.
 * Prefix various defines with SPWM_
 * Split out parameter comments for master and slave
 * NextEdge becomes ActiveEdge
 * LastFrame becomes FrameEdge
 * Make MatchA action PinHigh. If ActiveTime=0 then PinLow
 * Reverse order of S4 to allow faster execution on jump from other threads
 * make unused HSR just return (end)
 *
 * Revision 1.5  2005/12/08 14:53:46  r47354
 * Correct/update thread comments.
 *
 * Revision 1.4  2005/12/07 16:10:45  r47354
 * Remove debug comments.
 *
 * Revision 1.3  2005/12/07 15:59:38  r47354
 * Remove coherent update feature.
 *
 * Revision 1.2  2005/12/07 11:58:18  r47354
 * Remove debug features.
 *
 * Revision 1.1  2005/12/07 11:50:12  r47354
 * Initial version.
 *
 ****************************************************************************/
#include <ETpu_Std.h>

/***********************************/
/* Verify performance requirements */
/***********************************/
#pragma verify_wctl  SPWM                31  steps 8 rams
#pragma exclude_wctl SPWM::SPWM_init_master
#pragma exclude_wctl SPWM::SPWM_init_slave
#pragma exclude_wctl SPWM::SPWM_Error
#pragma exclude_wctl SPWM::SPWM_Error_hsr

#ifdef SPWM_FUNCTION_NUMBER    /* function is being compiled as part a set? */
#pragma ETPU_function SPWM, alternate @ SPWM_FUNCTION_NUMBER;
#else
#pragma ETPU_function SPWM, alternate; /* stand alone */
#endif

/* Macros to make the code easier to understand. */
/* These are specific to this SPWM function */
/* Host service requests */
#define SPWM_INIT_MASTER   7
#define SPWM_INIT_SLAVE    5

/* reference mode defintions */
#define SPWM_IMMEDIATE 0
#define SPWM_REF_IN_PRAM 1

/* Flag definitions */
/*NEXT_EDGE RISING_EDGE/FALLING_EDGE flag*/
#define SPWM_NEXT_EDGE flag0
/* Only for setting flag0 (can't use for testing flag) */
#define SPWM_RISING_EDGE 1
#define SPWM_FALLING_EDGE 0

/*CHANNEL_TYPE MASTER/SLAVE flag*/
#define SPWM_CHANNEL_TYPE flag1
/* Only for setting flag1 (can't use for testing flag) */
#define SPWM_MASTER 1
#define SPWM_SLAVE 0

/*Function Modes */
#define SPWM_USE_TCR1    0
#define SPWM_USE_TCR2    1
#define SPWM_NO_FALLING_EDGE_INT_DMA 0
#define SPWM_FALLING_EDGE_INT_DMA 1

/****************************************************************************
* General Notes:
* 1. This function works with high active times so the edges are
*       called RisingEdge which determines the frequency and FallingEdge
*       which determines the active time of the signal.
*
* Channel Flag usage
* Flag1 inicates if the channel is master or slave. When Flag1=1 the channel
* is master.
* Flag0 is used to define which edge should occur next. The problem is that
*    for very small high or low pulses both matches can get set and they
*    need to be serviced in a particular order.
*    0 = Match2 next and 1 = Match1 next.
****************************************************************************/

/*----------------------------------------------------------------------------+
| FUNCTION PARAMETERS:                                                        |
| A channels can be configured as master or slave. Not all parameters are     |
| relevant to both channel types.                                             |
| For Master Channels:                                                        |
|   Period: Determines the period of the output signal. It is the number of   |
|       selected TCR ticks. The maximum valid value is 0x40 0000 - maximum    |
|       delay used by any of the slave channels and the  minimum useful value |
|       will depend on eTPU loading.                                          |
|   ActiveTime: Determines the high time of the output signal. It is the      |
|       number of TCR ticks. The maximum valid value is equal to the Period   |
|       and the minimum value is 0.                                           |
|   ReferencePtr: Pointer to address of reference time. In the case of        |
|       immediate mode the host will have populated this address with a value |
|       representing the current value of the selected TCR                    |
|   Link1: The first 4 channels to send links to.                             |
|   Link2: The second 4 channels to send link to.                             |
| RisingEdge: The time of the RisingEdge. The address of this is exported so  |
|       that the slave channels can reference it.                             |
|   ref_mode: Populated by host; not used by etpuc but need to signal between |
|             API calls.                                                      |
| For Slave Channels:                                                         |
|   Period: Determines the period of the output signal. It is the number of   |
|       selected TCR ticks. The maximum valid value is 0x40 0000 - maximum    |
|       delay used by any of the slave channels and the  minimum useful value |
|       will depend on eTPU loading.                                          |
|   ActiveTime: Determines the high time of the output signal. It is the      |
|       number of TCR ticks. The maximum valid value is equal to the Period   |
|       and the minimum value is 0.                                           |
|   Delay: Slave RisingEdge offset from the master’s RisingEdge               |
|   *MasterRisingEdgePtr : Pointer to the master channels rising edge time    |
+----------------------------------------------------------------------------*/
void SPWM(int24 Period, int24 ActiveTime,
          int24 *ReferencePtr, int24 Delay,
          int32 Link1, int32 Link2, int24 RisingEdge,
          int24 *MasterRisingEdgePtr,  int8 ref_mode,
          int24 Reference  )
{
  static int24 FallingEdge;
  static int8 Slave_has_been_linked_before;
  static int24 Old_Period;
  static int24 Old_ActiveTime;

/*--------------------------------------------------------------------------+
| THREAD NAME: INIT_MASTER (S0)                                             |
| DESCRIPTION: Initialize a channel to run the SPWM function as master      |
|              1. Disable matches in thread in case there are any previous  |
|                 pending matches. This could happen if the channel was     |
|                 running another function before this one.                 |
|              2. Set the pin low and turn on the output buffer.            |
|              3. Set flag0 to do match1 next (rising edge).                |
|              4. Set flag1 as this is a master channel.                    |
|              5. Calculate times for first 2 edges (ref + 1 period, ref +  |
|                 1 period + duty cycle).                                   |
|              6. Set up matches for first 2 edges.                         |
|              7. Link Slave Channels.                                      |
|              8. Proceed as per S1 step 7.                                 |
+--------------------------------------------------------------------------*/
  if ( HostServiceRequest == SPWM_INIT_MASTER )
  {
SPWM_init_master:
    DisableMatchesInThread();
    SetPinLow(); /*Active high so set pin low to start.*/
    EnableOutputBuffer();
    SPWM_CHANNEL_TYPE = SPWM_MASTER;  /* This is a master channel */
    SPWM_NEXT_EDGE = SPWM_RISING_EDGE; /* Rising Edge next */
    erta = *ReferencePtr + Period;
    Old_Period = Period;
    ertb = erta + ActiveTime;
    FallingEdge = ertb;
    ConfigMatch_AB();

#asm
      ram p31_0 <- Link1.
#endasm
          Link4();
#asm
      ram p31_0 <- Link2.
#endasm
          Link4();

    RisingEdge = erta;
    goto slave_init;
  }


/*--------------------------------------------------------------------------+
| THREAD NAME: INIT_SLAVE (S1)                                              |
| DESCRIPTION: Initialize a channel to run the SPWM function as slave       |
|              1. Disable matches in thread in case there are any previous  |
|                 pending matches. This could happen if the channel was     |
|                 running another function before this one.                 |
|              2. Set the pin low and turn on the output buffer             |
|              3. Set flag0 to do match1 next (Rising edge).                |
|              4. Clear flag1 as this is a slave channel.                   |
|              5. Clear Slave_has_been_linked_before.                       |
|              6. Disable macthes so pre-existing matches aren't serviced.  |
|              7. Turn off input detection and clear all latches.           |
|              8. Set up the channel mode.                                  |
|              9. Configure channel to use TCR1 or TCR2.                    |
|             10. On falling edge go low.                                   |
|             11. On Rising edge go high (unless 0%).                       |
+--------------------------------------------------------------------------*/
  else if (HostServiceRequest == SPWM_INIT_SLAVE )
  {
SPWM_init_slave:
    DisableMatchesInThread();
    SetPinLow(); /*Active high so set pin low to start.*/
    EnableOutputBuffer();
    SPWM_CHANNEL_TYPE = SPWM_SLAVE;  /* This is a slave channel */
    SPWM_NEXT_EDGE = SPWM_RISING_EDGE; /* Rising Edge next */
    Slave_has_been_linked_before = 0;
    DisableMatch(); /* don't want any pre-existing matches to be servcied */
                    /* first link will generate new matches */
slave_init:
    OnTransA( NoDetect );
    OnTransB( NoDetect );
    Clear ( TransLatch );
    Clear ( LSRLatch );
    Clear( MatchALatch );
    Clear( MatchBLatch );

    EitherMatchNonBlockingSingleTransition();
    ActionUnitA( MatchTCR1, CaptureTCR1, GreaterEqual);
    ActionUnitB( MatchTCR1, CaptureTCR1, GreaterEqual);
    if ( FunctionMode1 == SPWM_USE_TCR2 )
    {
        ActionUnitA( MatchTCR2, CaptureTCR2, GreaterEqual);
        ActionUnitB( MatchTCR2, CaptureTCR2, GreaterEqual);
    }
    OnMatchB( PinLow );
    OnMatchA (PinHigh); /*normal*/
    if( ActiveTime ==0 )
    {
      OnMatchA (PinLow);  /*opposite of normal for 0%*/
    }
  }
/*--------------------------------------------------------------------------+
| THREAD NAME: RISING_EDGE_MASTER (S2)                                      |
| DESCRIPTION: All calculations are done on the rising edge to make sure    |
|                everything is coherent.                                    |
|              1. Clear flag 0 to show next match should be match2.         |
|              2. Calculate next rising edge.                               |
|              3. If 0% is requested stop the action on the match.          |
|              4. Schedule the rising edge and store it.                    |
|              5. Store the falling edge.                                   |
|              6. Link slaves                                               |
|              7. Requests interrupt/DMA.                                   |
+--------------------------------------------------------------------------*/
  else if (( m1==1 && m2==0 && SPWM_CHANNEL_TYPE==SPWM_MASTER
             && SPWM_NEXT_EDGE==SPWM_RISING_EDGE)||
           ( m1==1 && m2==1 && SPWM_CHANNEL_TYPE==SPWM_MASTER
             && SPWM_NEXT_EDGE==SPWM_RISING_EDGE))
  {
SPWM_rising_edge_master:
    SPWM_NEXT_EDGE = SPWM_FALLING_EDGE; /* FallingEdge next */
    erta = erta + Old_Period; /* time of the next rising edge */

    OnMatchA (PinHigh); /*normal*/
    if( ActiveTime ==0 )
    {
      OnMatchA (PinLow);  /*opposite of normal for 0%*/
    }
    RisingEdge = erta;
    WriteErtAToMatchAAndEnable();
    Clear( MatchALatch );
    FallingEdge = erta + ActiveTime;
    Old_Period = Period; /* copy Period into Old_Period */
                         /* so Old_period gets used next time around */


#asm
      ram p31_0 <- Link1.
#endasm
          Link4();
#asm
      ram p31_0 <- Link2.
#endasm
          Link4();

    SetChannelInterrupt() ;
    SetChannelDMARequest();

  }
/*--------------------------------------------------------------------------+
| THREAD NAME: FALLING_EDGE_MASTER (S3)                                     |
| DESCRIPTION: Service the falling edge of the master channel               |
|              1. Schedule the next already calculated falling edge.        |
|              2. Set flag 0 to show that match 1 should be next.           |
|              3. Depending on FM0 a channel interrupt/DMA request may be   |
|                 generated.                                                |
+--------------------------------------------------------------------------*/
  else if (( m1==1 && m2==1 && SPWM_CHANNEL_TYPE==SPWM_MASTER
             && SPWM_NEXT_EDGE==SPWM_FALLING_EDGE)||
           ( m1==0 && m2==1 && SPWM_CHANNEL_TYPE==SPWM_MASTER
             && SPWM_NEXT_EDGE==SPWM_FALLING_EDGE))
  {
SPWM_falling_edge_master:
      ertb = FallingEdge;
      SPWM_NEXT_EDGE = SPWM_RISING_EDGE; /* Rising Edge next */
      WriteErtBToMatchBAndEnable();
      Clear( MatchBLatch );
      if ( FunctionMode0 == SPWM_FALLING_EDGE_INT_DMA )
      {
        SetChannelInterrupt() ;
        SetChannelDMARequest();
      }
  }
/*--------------------------------------------------------------------------+
| THREAD NAME: SLAVE_CALC (S4)                                              |
| DESCRIPTION: This thread runs when a link is received by a slave.         |
|                                                                           |
|              If Slave_has_been_linked_before = 0 (first link)             |
|              1. Set Slave_has_been_linked_before = 1.                     |
|              2. Calculate the first rising and falling edges relative to  |
|                 master channel's rising edge.                             |
|              2. Schedule both edges                                       |
|              4. Clear the Link Service Request Latch                      |
|                                                                           |
|              Else if Slave_has_been_linked_before = 1 (not first link)    |
|              1. Calc. rising edge relative to master channel's rising edge|
|              2. Clear the Link Service Request Latch                      |
+--------------------------------------------------------------------------*/

  else if (IsLinkServiceRequestEvent() && m1==0 && m2 ==0 )
    {
SPWM_slave_calc:
      DisableMatchesInThread();
      if ( Slave_has_been_linked_before == 0 ) /* not been linked before; first time */
      {
        Slave_has_been_linked_before = 1;
        erta = *MasterRisingEdgePtr + Delay;
        Old_ActiveTime = ActiveTime; /* init Old_ActiveTime */
        ertb = erta + Old_ActiveTime;
        ConfigMatch_AB();
      }
      else /*  has been linked before */
Link: {
        RisingEdge = *MasterRisingEdgePtr + Delay;
      }
      Clear(LSRLatch);
    }

/*--------------------------------------------------------------------------+
| THREAD NAME: RISING_EDGE_SLAVE (S5)                                       |
| DESCRIPTION: Service Slave rising edge                                    |
|              1. If LSR is set goto S4 i.e. service link first             |
|              2. Clear Flag 0 to show that match 2 should be next          |
|              3. Schedule next slave rising edge (already calculated       |
|                 by SLAVE_CALC).                                           |
|              4. If 0% is requested stop the action on the match.          |
|              5. Calculate next falling edge relative to the Rising edge   |
+--------------------------------------------------------------------------*|
| Services lsr=X                                                            |
+--------------------------------------------------------------------------*/
  else if ((m1==1 && m2==1 && SPWM_CHANNEL_TYPE==SPWM_SLAVE
            && SPWM_NEXT_EDGE==SPWM_RISING_EDGE) ||
           (m1==1 && m2==0 && SPWM_CHANNEL_TYPE==SPWM_SLAVE
            && SPWM_NEXT_EDGE==SPWM_RISING_EDGE))
  {
SPWM_rising_edge_slave:
    if (lsr ==1 )
    {
      goto Link;
    }
    else
    {
      erta = RisingEdge;
      SPWM_NEXT_EDGE = SPWM_FALLING_EDGE; /* Falling Edge next */
      WriteErtAToMatchAAndEnable();
      Clear( MatchALatch );

      OnMatchA (PinHigh); /*normal*/
      if( Old_ActiveTime ==0 )
      {
        OnMatchA (PinLow);  /*opposite of normal for 0%*/
      }
      FallingEdge = RisingEdge + Old_ActiveTime;
      Old_ActiveTime = ActiveTime;
    }
  }
/*--------------------------------------------------------------------------+
| THREAD NAME: FALLING_EDGE_SLAVE (S6)                                      |
| DESCRIPTION: Service Slave falling edge                                   |
|              1. If LSR is set goto S4 i.e. service link first             |
|              2. Schedule next slave falling edge (already calculated      |
|                 by RISING_EDGE_SLAVE).                                    |
|              3. Set Flag 0 to show that match 1 should be next            |
+--------------------------------------------------------------------------*|
| Services lsr=X                                                            |
+--------------------------------------------------------------------------*/
  else if ((m1==0 && m2==1 && SPWM_CHANNEL_TYPE==SPWM_SLAVE
            && SPWM_NEXT_EDGE==SPWM_FALLING_EDGE) ||
           (m1==1 && m2==1 && SPWM_CHANNEL_TYPE==SPWM_SLAVE
            && SPWM_NEXT_EDGE==SPWM_FALLING_EDGE))
  {
SPWM_falling_edge_slave:
    if (lsr ==1 )
    {
      goto Link;
    }
    else
    {
      ertb = FallingEdge ;
      SPWM_NEXT_EDGE = SPWM_RISING_EDGE; /* RisingEdge next */
      WriteErtBToMatchBAndEnable();
      Clear( MatchBLatch );
    }
  }
/*--------------------------------------------------------------------------+
| THREAD NAME: OUT_OF_SYNC_SLAVE (S7)                                       |
| DESCRIPTION: Slave channel has out of sync match.                         |
|               If this happened as a result of a link then clear the match |
|               and service the link; Otherwise call global error and end   |
+--------------------------------------------------------------------------*/
  else if (( m1==1 && m2==0 && SPWM_CHANNEL_TYPE==SPWM_SLAVE
             && SPWM_NEXT_EDGE==SPWM_FALLING_EDGE ) ||
           ( m1==0 && m2==1 && SPWM_CHANNEL_TYPE==SPWM_SLAVE
             && SPWM_NEXT_EDGE==SPWM_RISING_EDGE  ))

  {
SPWM_out_of_synch_slave:
    DisableMatchesInThread();
    if (lsr ==1)
    {
      /* slave channel has been linked */
      /* but either m1 or m2 is set */
      goto Link;
    }
    else /* lsr == 0 */
    {
      /* the slave is out of sync but was not linked */
#ifdef GLOBAL_ERROR_FUNC
      Global_Error_Func();
#else
      ClearAllLatches();
#endif

    }
  }
/*--------------------------------------------------------------------------+
| THREAD NAME: OUT_OF_SYNC_MASTER (S8)                                      |
| DESCRIPTION: master channel has out of sync match.                        |
|                Call the Global error routine and end.                     |
+--------------------------------------------------------------------------*/
  else if (( m1==1 && m2==0 && SPWM_CHANNEL_TYPE==SPWM_MASTER
             && SPWM_NEXT_EDGE==SPWM_FALLING_EDGE ) ||
           ( m1==0 && m2==1 && SPWM_CHANNEL_TYPE==SPWM_MASTER
             && SPWM_NEXT_EDGE==SPWM_RISING_EDGE  ))
  {
SPWM_Error:
#ifdef GLOBAL_ERROR_FUNC
  Global_Error_Func();
#else
  ClearAllLatches();
#endif
  }
/*--------------------------------------------------------------------------+
| THREAD NAME: UNUSED_HSR (S9)                                              |
| DESCRIPTION: Deal with the unused HSR if it should happen.                |
+--------------------------------------------------------------------------*/
  else
  {
SPWM_Error_hsr: ;
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
