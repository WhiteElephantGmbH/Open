/****************************************************************************
 * FILE NAME: etpuc_ppa.c                    COPYRIGHT (c) FREESCALE 2004   *
 * DESCRIPTION:                                     All Rights Reserved     *
 *==========================================================================*
 * ORIGINAL AUTHOR: Richard Soja                                            *
 * Revision 1.4  2006/01/12 10:19:16  r47354
 * make function names start with PPA_
 * fix remainig #defines so they start with PPA_
 *
 * Revision 1.3  2006/01/09 13:12:19  r47354
 * Add function name prefix to #defines.
 * Fix auto file name comment.
 * Fix isue with function number when compiling standalone.
 * Add braces to #defines for fm bits.
 * No compiled code changes.
 *
 * Revision 1.2  2004/11/30 15:58:48  r47354
 * Add #defines for FM bits in API.
 *
 * Revision 1.1  2004/11/02 13:48:07  r12110
 * -First version in CVS.
 * -Added support for building function stand alone or in a set.
 *   -This includes using the global error function if avaialable.
 * -Updated comments in auto generated file to include version number.
 *
 *..........................................................................*
 * 0.00  R. Soya         Feb/04    Initial version of file.                 *
 * 0.1   G. Emerson   7/Sep/04     Changes for integration into set1        *
 *                                 Added flags for testing visibility       *
 * 0.2   G. Emerson   21/Oct/04    Post review changes                      *
 *                                 Removed testing instrumentation etc      *
 *                                 Added comments                           *
 ****************************************************************************/
#include <ETpu_Std.h>

/***********************************/
/* Verify performance requirements */
/***********************************/
#pragma verify_wctl  PPA                45  steps  17 rams
#pragma exclude_wctl PPA::PPA_init_tcr1
#pragma exclude_wctl PPA::PPA_init_tcr2
#pragma exclude_wctl PPA::PPA_Error
/* Global 'C' Functions */
#pragma verify_wctl PPA_CheckPin         2  steps   0 rams
#pragma verify_wctl PPA_AccumTime        9  steps   5 rams
#pragma verify_wctl PPA_Read1Retrig      3  steps   2 rams
#pragma verify_wctl PPA_Read2Retrig      3  steps   2 rams
#pragma verify_wctl PPA_CheckCount      14  steps  10 rams

/* provide hint that channel frame base addr same on all chans touched by func */
#pragma same_channel_frame_base PPA

#ifdef PPA_FUNCTION_NUMBER /* function is being compiled as part a set? */
#pragma ETPU_function PPA, alternate @ PPA_FUNCTION_NUMBER;
#else
#pragma ETPU_function PPA, alternate;  /* stand alone */
#endif

/* Some macro functions */
#define PPA_ScheduleTimeoutA(AbsTime) erta = AbsTime; EnableMatchA(); ClearMatchALatch()
#define PPA_Assign(a,b)              (b == 1) ? (a = 1) : (a = 0);

/* Host Service Requests */
#define PPA_INIT_TCR1 7
#define PPA_INIT_TCR2 5

/* Flag definitions */

/*Measurement inactive/active flag*/
#define PPA_Measurement flag1
/* Only for setting flag1 (can't use for testing flag) */
#define PPA_Active TRUE
#define PPA_Inactive FALSE

/* Last pin level */
#define PPA_LastPin flag0
#define PPA_Low 0
#define PPA_High 1

/* Function Mode bits definition */
/* Type of measurement */
#define PPA_PulseMeasurement (fm0 == 0)
#define PPA_LowPulse (fm1 == 0)
#define PPA_HighPulse (fm1 == 1)

#define PPA_PeriodMeasurement (fm0 == 1)
#define PPA_FallingEdge (fm1 == 0)
#define PPA_RisingEdge (fm1 == 1)

#define PPA_PulseLow 0 /*Used by the API only*/
#define PPA_PulseHigh 2 /*Used by the API only*/

#define PPA_PeriodFall 1 /*Used by the API only*/
#define PPA_PeriodRise 3 /*Used by the API only*/

/* Some error values */
#define PPA_LowPulseError 1
#define PPA_HighPulseError 2
#define PPA_Overflow 128

/* Hardware definitions */
#define PPA_EventTime1 erta
#define PPA_EventTime2 ertb
#define PPA_Transition_A tdlA == 1

/****************************************************************************
* Channel Flag usage
* Flag0 is used to store the level of the pin sampled in the prvious thread.
* Flag1 is used to indictae wether measurement is active or not
****************************************************************************/

/*--------------------------------------------------------------------------+
| FUNCTION PARAMETERS:                                                      |
| LastTime : This 24 bit value is used by eTPU only. It contains the time of|
|            the last transition during active measurement of a single pulse|
|            or period.                                                     |
|    Accum : This 24 bit value should be initialised to 0 by CPU and        |
|            updated only by the eTPU. The parameter contains the current   |
|            uncompleted period or pulse measurement while measurement is in|
|            progress                                                       |
|  StatAcc : This 8 bit value contains a single bit flag to indicate that   |
|            the currently active accumulation has overflowed a 24 bit      |
|            value. The parameter is initialized to 0 by the CPU and        |
|            updated by the eTPU. The eTPU copies this value to the Status  |
|            parameter when the measurement completes, then resets StatAcc  |
|            to 0. An overflow is indicated when StatAcc is 0x80.           |
|SampleTime: This 24 bit value defines the rate at which the measurement is |
|            updated in the absence of an edge. This allows the host to make|
|            an interim measurement without waiting for the current pulse or|
|            period to complete. The CPU should initialize this value to the|
|            number of timebase counts desired between each sample; the eTPU|
|            schedules the first sample event when a measurement is         |
|            activated by a valid edge. If the sample rate is greater than  |
|            the maximum width between active pulse or period edges, then no|
|            sampling will occur. Note that excessively high sample rates   |
|            (very small values of SampleTime) may result in performance    |
|            degradation of the eTPU.                                       |
|PeriodCount:This 24 bit value is initialized to 0 by the CPU and updated   |
|            only by the eTPU. It contains the current number of accumulated|
|            pulses or periods since initialization or since the last       |
|            measurement was returned in parameter Result                   |
| MaxCount : This 24 bit value specifies the number of pulses or periods    |
|            that should be measured. Initialized by the CPU and tested by  |
|            the eTPU.                                                      |
|   Result : This 24 bit value is updated only by the eTPU. It contains the |
|            final total accumulation when the measurement completes. The   |
|            parameter Status indicates whether the result has overflowed   |
|   Status : This 8 bit value indicates whether the completed measurement,  |
|            available in parameter Result, has overflowed. At the end of   |
|            the measurement, the eTPU copies StatAcc to Status after it has|
|            copied Accum to Result, and then the eTPU sets the channel     |
|            interrupt status flag and DMA request flag. This ensures the   |
|            measurement result and its status are coherent.                |
+--------------------------------------------------------------------------*/

struct PPA_ChannelParameters
{int24 Accum;
 int8  StatAcc;
 int24 SampleTime,
       LastTime,
       PeriodCount,
       MaxCount,
       Result;
 int8  Status;
} register_chan_base *PPA_this;


void PPA_CheckPin()
{
/*---------------------------------------------------------------------------------------+
| This re-writes the chan value and at the same time clears the transition latch (tdl).  |
| This causes the pin state to be latched.                                               |
| If the pin does not transition after it is latched, tdl will remain clear.             |
| If the pin changes state after it is latched, tdl will be set again, and processed     |
| after this thread quits.| The design of the hardware ensures the pin state and value   |
| of tdl are coherent.                                                                   |
| tdl does not have to be checked in the current thread.                                 |
| It is the current (latched in this sub routine) and last pin levels that determine     |
| the operation of the state machine                                                     |
| The current pin level is obtained from channel.PSS                                     |
+----------------------------------------------------------------------------------------*/

    ClearTransLatch();
    chan = chan;
}

void PPA_AccumTime()
{
    PPA_this->Accum = PPA_this->Accum + (PPA_EventTime1 - PPA_this->LastTime);
    if (CC.C == 1)
    {
       PPA_this->StatAcc = PPA_this->StatAcc | PPA_Overflow;
       SetChannelInterrupt();    /* Generate Interrupt and DMA requests */
       SetDataTransferInterrupt();
    }
}

void PPA_Read1Retrig()
{
PPA_this->LastTime = PPA_EventTime1;
PPA_ScheduleTimeoutA(PPA_EventTime1 + PPA_this->SampleTime);
}

void PPA_Read2Retrig()
{
PPA_this->LastTime = PPA_EventTime2;
PPA_ScheduleTimeoutA(PPA_EventTime2 + PPA_this->SampleTime);
}

void PPA_CheckCount()
{
   PPA_this->PeriodCount++;
   if (PPA_this->PeriodCount >= PPA_this->MaxCount)
   {

      PPA_this->Result = PPA_this->Accum;
      PPA_this->Status = PPA_this->StatAcc;
      PPA_this->Accum = 0;
      PPA_this->StatAcc = 0;
      PPA_this->PeriodCount = 0;

      SetChannelInterrupt();
      SetDataTransferInterrupt(); /* Generate Interrupt and DMA requests */
    }
}

void PPA_MeasGlitch()
{
PPA_this->Accum = PPA_this->Accum + PPA_EventTime2 - PPA_EventTime1;
}

void PPA(struct PPA_ChannelParameters PPA_this)
{
/*--------------------------------------------------------------------------+
| THREAD NAME: THREAD1                                                      |
| DESCRIPTION:  Initialise channel for PPA using TCR2 as timebase.          |
|Disable matches in thread in case there are any previous pending matches.  |
|This could happen if the channel was running another function before this  |
|one.                                                                       |
|Configure channel to use TCR2.                                             |
|Proceed as per thread THREAD2 (from label init)                            |
|                                                                           |
+--------------------------------------------------------------------------*/
  if ( hsr == PPA_INIT_TCR2 ) /*  Required for API*/
  {
PPA_init_tcr2:
      DisableMatchesInThread();
      /* set up time base for TCR1*/
      ActionUnitA( MatchTCR2, CaptureTCR2, GreaterEqual);
      goto init;

  }
/*--------------------------------------------------------------------------+
| THREAD NAME: THREAD2                                                      |
| DESCRIPTION:  Initialise channel for PPA using TCR1 as timebase.          |
|Disable matches in thread in case there are any previous pending matches.  |
|This could happen if the channel was running another function before this  |
|one.                                                                       |
|Configure channel to use TCR1.                                             |
|Disable the output buffer as this is an input function.                    |
|Prevent the pin from toggling as a result of matches on ActionUnitA/B.     |
|Clear latches. Set PPA_Measurement = PPA_Inactive.                         |
|Configure the channel mode.                                                |
|Enable event handling.                                                     |
|Set IPACA/B dependant upon mode                                            |
|Set  PPA_LastPin dependant upon mode                                       |
|                                                                           |
+--------------------------------------------------------------------------*/
  else if ( hsr == PPA_INIT_TCR1 ) /*  Required for API*/
  {
PPA_init_tcr1:
      DisableMatchesInThread();

      /* set up time base for TCR1*/
      ActionUnitA( MatchTCR1, CaptureTCR1, GreaterEqual);

init:

      DisableOutputBuffer(); /* required for Puma */

      OnMatchA(NoChange);  /* Needed so ouptut pin does not get toggled */
      OnMatchB(NoChange);  /* Needed so ouptut pin does not get toggled */

      ClearAllLatches();
      PPA_Measurement = PPA_Inactive;
      SingleMatchSingleTransition(); /* Enable service request when first edge occurs */

      EnableEventHandling();
      if (PPA_PulseMeasurement)
      {
      /*--------------------------------------------------------------------------+
      | STATE NAME: INIT1                                                         |
      +--------------------------------------------------------------------------*/

          OnTransA(any_trans);   /* Detect on any edge on both input capture registers */
          OnTransB(any_trans);
          PPA_CheckPin();
          PPA_Assign( PPA_LastPin,SampledInputPin); /* channel struct member can't be Assigned directly with var. */
      }
      else                      /* initialize period measurement */
      {
      /*--------------------------------------------------------------------------+
      | STATE NAME: INIT2                                                         |
      +--------------------------------------------------------------------------*/

          PPA_LastPin = 0;          /* Force period measurement to only use states with  PPA_LastPin=0 */
          OnTransB(no_detect);
          OnTransA(high_low);
          if (PPA_RisingEdge) OnTransA(low_high);
      }
  }
/*--------------------------------------------------------------------------+
| THREAD NAME: THREAD3                                                      |
| DESCRIPTION:                                                              |
| Measurement inactive service request, LastPin high                        |
| If entered due to a transition; then:                                     |
|   Latch the pin state and clear transition detect latch                   |
|   Set LastPin to the sample pin state                                     |
|   Execute state TRANS1 or TRANS2 or TRANS3 or TRANS4 dependant upon       |
|     PulseMeasurement/PinSampledState                                      |
| Else must have been entered due to a match; then                          |
|   Execute state MATCH1                                                    |
| NB Can't be period measurement because LastPin must be 0 for Period       |
|    Measurement                                                            |
|                                                                           |
+--------------------------------------------------------------------------*/
  else if (((PPA_Measurement==PPA_Inactive) && (PPA_LastPin==PPA_High) && m1) ||
           ((PPA_Measurement==PPA_Inactive) && (PPA_LastPin==PPA_High) && m2))
  {
PPA_inactive_srv_req_last_pin_hi:
      if (PPA_Transition_A)
      {
         PPA_CheckPin();        /* Also clears transition flag */
         PPA_Assign(PPA_LastPin,SampledInputPin); /* update Last_Pin state */
         if (PPA_LowPulse)
         {
            if (SampledInputPin == 0)       /* Start normal low measurement */
            {
            /*--------------------------------------------------------------------------+
            | STATE NAME: TRANS1                                                        |
            | Conditions under which this state is executed:-                           |
            |   Measurement = Inactive                                                  |
            |   LastPin = High                                                          |
            |   Transition occurred                                                     |
            |   Mode is Low pulse measurement                                           |
            |   Channel.PSS is 0                                                        |
            |Start normal low measurement                                               |
            |Record erta in LastTime                                                    |
            |Clear match flagA                                                          |
            |Schedule a match SampleTime in the future                                  |
            |Set PPA_Measurement to Active                                              |
            |                                                                           |
            +--------------------------------------------------------------------------*/

               PPA_Read1Retrig();
               PPA_Measurement =PPA_Active;
            }
            else                /* a short negative pulse occurred */
            {
            /*--------------------------------------------------------------------------+
            | STATE NAME: TRANS2                                                        |
            | Conditions under which this state is executed:-                           |
            |   Measurement = Inactive                                                  |
            |   LastPin = High                                                          |
            |   Transition occurred                                                     |
            |   Mode is Low pulse measurement                                           |
            |   Channel.PSS is 1                                                        |
            |i.e. a short negative pulse occurred                                       |
            |Add short pulse width to Accum                                             |
            |Clear match flagA                                                          |
            |Schedule a match SampleTime in the future                                  |
            |If sufficient LowPulses have been accumulated update Result with Accum     |
            |  and Status takes the value of StatAcc; StatAcc get set to 0              |
            |Measurement remains Inactive                                               |
            |                                                                           |
            +--------------------------------------------------------------------------*/

               PPA_MeasGlitch();   /* read both capture registers */
               PPA_CheckCount();  /* Retain inactive state */
            }
         }
         else /* High pulse measurement */
         {
            if (SampledInputPin == 1)       /* Glitched start of high measurement */
            {
            /*--------------------------------------------------------------------------+
            | STATE NAME: TRANS3                                                        |
            | Conditions under which this state is executed:-                           |
            |   Measurement = Inactive                                                  |
            |   LastPin = High                                                          |
            |   Transition occurred                                                     |
            |   Mode is High pulse measurement                                          |
            |   Channel.PSS is 1                                                        |
            |i.e. a glitch occurred at the start of a high pulse measurement            |
            |Record ertb in LastTime                                                    |
            |Clear match flagA                                                          |
            |Schedule a match SampleTime in the future                                  |
            |Set PPA_Measurement to PPA_Active                                          |
            |                                                                           |
            +--------------------------------------------------------------------------*/

               PPA_Read2Retrig(); /* Start high measurement on second capture edge */
               PPA_Measurement = PPA_Active;
            }
            else  /* First edge goes low, so wait for next edge */
            /*--------------------------------------------------------------------------+
            | STATE NAME: TRANS4                                                        |
            | Conditions under which this state is executed:-                           |
            |   Measurement = Inactive                                                  |
            |   LastPin = High                                                          |
            |   Transition occurred                                                     |
            |   Mode is High pulse measurement                                          |
            |   Channel.PSS is 0                                                        |
            |i.e. The first edge was falling                                            |
            |Do nothing; wait for next edge                                             |
            +--------------------------------------------------------------------------*/

            {}      /* Do_Nothing */
         }
      }    /* end Transition_A */
      else /* It's an invalid match */
      {
      /*--------------------------------------------------------------------------+
      | STATE NAME: MATCH1                                                        |
      | Conditions under which this state is executed:-                           |
      |   Measurement = Inactive                                                  |
      |   LastPin = High                                                          |
      |   Match occurred                                                          |
      |This is an invalid match condition                                         |
      |Clear match flagA                                                          |
      |                                                                           |
      +--------------------------------------------------------------------------*/

      ClearMatchALatch();
      }
  }        /* end Measurement inactive service request, LastPin high */
/*--------------------------------------------------------------------------+
| THREAD NAME: THREAD4                                                      |
| DESCRIPTION:                                                              |
| Measurement inactive service request, LastPin low                         |
| If entered due to a transition; then:                                     |
|   If doing pulse measurement                                              |
|     Latch the pin state and clear transition detect latch                 |
|     Set LastPin to the sample pin state                                   |
|     Execute state TRANS5 or TRANS6 or TRANS7 or TRANS8 dependant upon     |
|       PulseMeasurement/PinSampledState                                    |
|   Else doing period measurement                                           |
|     Execute state TRANS9                                                  |
| Else must have been entered due to a match; then                          |
|   Execute state MATCH2                                                    |
|                                                                           |
+--------------------------------------------------------------------------*/
  else if (((PPA_Measurement==PPA_Inactive) && (PPA_LastPin==PPA_Low) && m1) ||
           ((PPA_Measurement==PPA_Inactive) && (PPA_LastPin==PPA_Low) && m2))
  {
PPA_inactive_srv_req_last_pin_lo:
      if (PPA_Transition_A)
      {
         if (PPA_PulseMeasurement)
         {
            PPA_CheckPin();       /* Also clears transition flag */
            PPA_Assign(PPA_LastPin,SampledInputPin);  /* update Last_Pin state */
            if (PPA_HighPulse)
            {
               if (SampledInputPin == 1)    /* Start normal high measurement */
               {
               /*--------------------------------------------------------------------------+
               | STATE NAME: TRANS5                                                        |
               | Conditions under which this state is executed:-                           |
               |   Measurement = Inactive                                                  |
               |   LastPin = Low                                                           |
               |   Transition occurred                                                     |
               |   Mode is High  pulse measurement                                         |
               |   Channel.PSS is 1                                                        |
               |Start normal high measurement                                              |
               |Record erta in LastTime                                                    |
               |Clear match flagA                                                          |
               |Schedule a match SampleTime in the future                                  |
               |Set PPA_Measurement to PPA_Active                                          |
               |                                                                           |
               +--------------------------------------------------------------------------*/

                  PPA_Read1Retrig();
                  PPA_Measurement = PPA_Active;
               }
               else /* a glitch occurred */
               {
               /*--------------------------------------------------------------------------+
               | STATE NAME: TRANS6                                                        |
               | Conditions under which this state is executed:-                           |
               |   Measurement = Inactive                                                  |
               |   LastPin = Low                                                           |
               |   Transition occurred                                                     |
               |   Mode is High pulse measurement                                          |
               |   Channel.PSS is 0                                                        |
               |i.e. a short positive pulse occurred                                       |
               |Add short pulse width to Accum                                             |
               |Clear match flagA                                                          |
               |Schedule a match SampleTime in the future                                  |
               |If sufficient HighPulses have been accumulated update Result with Accum    |
               |  and Status takes the value of StatAcc; StatAcc get set to 0              |
               |Measurement remains Inactive                                               |
               |                                                                           |
               +--------------------------------------------------------------------------*/

                  PPA_MeasGlitch(); /* read both capture registers */
                  PPA_CheckCount(); /* Retain inactive state */
               }
            }
            else  /* Low pulse measurement */
            {
               if (SampledInputPin == 0)  /* Glitched start of low measurement */
               {
               /*--------------------------------------------------------------------------+
               | STATE NAME: TRANS7                                                        |
               | Conditions under which this state is executed:-                           |
               |   Measurement = Inactive                                                  |
               |   LastPin = Low                                                           |
               |   Transition occurred                                                     |
               |   Mode is Low pulse measurement                                           |
               |   Channel.PSS is 0                                                        |
               |i.e. a glitch occurred at the start of a low pulse measurement             |
               |Record ertb in LastTime                                                    |
               |Clear match flagA                                                          |
               |Schedule a match SampleTime in the future                                  |
               |Set PPA_Measurement to PPA_Active                                          |
               |                                                                           |
               +--------------------------------------------------------------------------*/
                  PPA_Read2Retrig(); /* Start low measurement on second capture edge */
                  PPA_Measurement = PPA_Active;
               }
               /*--------------------------------------------------------------------------+
               | STATE NAME: TRANS8                                                        |
               | Conditions under which this state is executed:-                           |
               |   Measurement = Inactive                                                  |
               |   LastPin = Low                                                           |
               |   Transition occurred                                                     |
               |   Mode is Low pulse measurement                                           |
               |   Channel.PSS is 1                                                        |
               |i.e. The first edge was rising                                             |
               |Do nothing; wait for next edge                                             |
               +--------------------------------------------------------------------------*/
               else             /* First edge goes high, so wait for next edge */
               {}               /* Do_Nothing */
            }
         }
         else                   /* It's a period measurement */
         {
         /*--------------------------------------------------------------------------+
         | STATE NAME: TRANS9                                                        |
         | Conditions under which this state is executed:-                           |
         |   Measurement = Inactive                                                  |
         |   LastPin = Low                                                           |
         |   Transition occurred                                                     |
         |   Mode is Period measurement                                              |
         |i.e. Start of period measurment                                            |
         |Clear transition detect latch                                              |
         |Record erta in LastTime                                                    |
         |Clear match flagA                                                          |
         |Schedule a match SampleTime in the future                                  |
         |Set PPA_Measurement to PPA_Active                                          |
         |                                                                           |
         +--------------------------------------------------------------------------*/

            ClearTransLatch();
            PPA_Read1Retrig();
            PPA_Measurement = PPA_Active;
         } /* end period measurement */
      }     /* end Transition_A */
      else /* It's an invalid match */
      {
      /*--------------------------------------------------------------------------+
      | STATE NAME: MATCH2                                                        |
      | Conditions under which this state is executed:-                           |
      |   Measurement = Inactive                                                  |
      |   LastPin = Low                                                           |
      |   Match occurred                                                          |
      |This is an invalid match condition                                         |
      |Clear match flag A                                                         |
      |                                                                           |
      +--------------------------------------------------------------------------*/

          ClearMatchALatch();
      }
    }    /* end Measurement inactive service request, LastPin low */
/*--------------------------------------------------------------------------+
| THREAD NAME: THREAD5                                                      |
| DESCRIPTION:                                                              |
| Measurement active service request, LastPin low                           |
| If entered due to a transition; then:                                     |
|   If doing pulse measurement                                              |
|     Latch the pin state and clear transition detect latch                 |
|     Set LastPin to the sample pin state                                   |
|     Execute state TRANS10 or TRANS11 or TRANS12 dependant upon            |
|       PulseMeasurement/PinSampledState                                    |
|   Else doing period measurement                                           |
|     Execute state TRANS13                                                 |
| Else must have been entered due to a match; then                          |
|   Execute state MATCH3                                                    |
|                                                                           |
+--------------------------------------------------------------------------*/
  else if (((PPA_Measurement==PPA_Active) && (PPA_LastPin==PPA_Low) && m1) ||
           ((PPA_Measurement==PPA_Active) && (PPA_LastPin==PPA_Low) && m2))
      {
PPA_active_srv_req_last_pin_lo:
          if (PPA_Transition_A)
          {
              if (PPA_PulseMeasurement)
              {
                 PPA_CheckPin();
                 PPA_Assign(PPA_LastPin,SampledInputPin);    /* update Last_Pin state */
                 if (PPA_LowPulse)
                 {
                    if (SampledInputPin == 1)        /* Stop normal low measurement */
                    {
                    /*--------------------------------------------------------------------------+
                    | STATE NAME: TRANS10                                                       |
                    | Conditions under which this state is executed:-                           |
                    |   Measurement = active                                                    |
                    |   LastPin = Low                                                           |
                    |   Transition occurred                                                     |
                    |   Mode is Low pulse measurement                                           |
                    |   Channel.PSS is 1                                                        |
                    |Stop Normal Low Pulse Measurement                                          |
                    |Add TCRs elapsed between this event and the previous event to Accum        |
                    |If Accum overflows send a Channel Interrupt and DMA Request                |
                    |If sufficient Periods have been accumulated update Result with Accum       |
                    |  and Status takes the value of StatAcc; StatAcc get set to 0              |
                    |PPA_Measurement set to PPA_Inactive                                        |
                    |                                                                           |
                    +--------------------------------------------------------------------------*/

                       PPA_AccumTime();
                       PPA_CheckCount();     /* Update measurement if all done */
                       PPA_Measurement = PPA_Inactive;
                    }
                    else             /* A narrow positive pulse occurred */
                    {
                    /*--------------------------------------------------------------------------+
                    | STATE NAME: TRANS11                                                       |
                    | Conditions under which this state is executed:-                           |
                    |   Measurement = active                                                    |
                    |   LastPin = Low                                                           |
                    |   Transition occurred                                                     |
                    |   Mode is Low pulse measurement                                           |
                    |   Channel.PSS is 0                                                        |
                    |A narrow positive pulse occurred                                           |
                    |Add TCRs elapsed between this event and the previous event to Accum        |
                    |If Accum overflows send a Channel Interrupt and DMA Request                |
                    |Record ertb in LastTime                                                    |
                    |Clear match flagA                                                          |
                    |Schedule a match SampleTime in the future                                  |
                    |If sufficient Periods have been accumulated update Result with Accum       |
                    |  and Status takes the value of StatAcc; StatAcc get set to 0              |
                    |Measurement remains Active                                                 |
                    |                                                                           |
                    +--------------------------------------------------------------------------*/

                       PPA_AccumTime();      /* Accumulate time to rising edge, */
                       PPA_Read2Retrig();    /* start next measurement on second edge (measurement stays active) */
                       PPA_CheckCount();     /* and update measurement if all done */
                    }
                 }
                 else                  /* Illegal state for High pulse measurement - should never happen */
                 {
                    /*--------------------------------------------------------------------------+
                    | STATE NAME: TRANS12                                                       |
                    | Conditions under which this state is executed:-                           |
                    |   Measurement = active                                                    |
                    |   LastPin = Low                                                           |
                    |   Transition occurred                                                     |
                    |   Mode is High pulse measurement                                          |
                    |Illegal state for High pulse measurement                                   |
                    |Set PPA_HighPulseError flag in StatAcc                                     |
                    |Set PPA_Measurement to PPA_Inactive                                        |
                    |                                                                           |
                    +--------------------------------------------------------------------------*/

                    PPA_this.StatAcc = PPA_this.StatAcc | PPA_HighPulseError;
                    PPA_Measurement = PPA_Inactive;    /* Disable measurement */
                 }
              }
              else                       /* it's a period measurement */
              {
              /*--------------------------------------------------------------------------+
              | STATE NAME: TRANS13                                                       |
              | Conditions under which this state is executed:-                           |
              |   Measurement =Active                                                     |
              |   LastPin = Low                                                           |
              |   Transition occurred                                                     |
              |   Mode is Period measurement                                              |
              |Falling edge of rising edge period measurement OR                          |
              |rising edge of falling edge period measurement                             |
              |Clear transition detect latch                                              |
              |Add TCRs elapsed between this event and the previous event to Accum        |
              |If Accum overflows send a Channel Interrupt and DMA Request                |
              |Record erta in LastTime                                                    |
              |Schedule a match SampleTime in the future                                  |
              |If sufficient Periods have been accumulated update Result with Accum       |
              |  and Status takes the value of StatAcc; StatAcc get set to 0              |
              | Measurement remains Active                                                |
              +--------------------------------------------------------------------------*/

                 ClearTransLatch();
                 PPA_AccumTime();
                 PPA_Read1Retrig();
                 PPA_CheckCount();           /* measurement always stays active in period mode, until re-initialized */
              }
          }
          else    /* it is a match */
          {
          /*--------------------------------------------------------------------------+
          | STATE NAME: MATCH3                                                        |
          | Conditions under which this state is executed:-                           |
          |   Measurement = Active                                                    |
          |   LastPin = Low                                                           |
          |   Match occurred                                                          |
          |Add TCRs elapsed between this event and the previous event to Accum        |
          |If Accum overflows send a Channel Interrupt and DMA Request                |
          |Record erta in LastTime                                                    |
          |Clear match flagA                                                          |
          |Schedule a match SampleTime in the future                                  |
          |                                                                           |
          +--------------------------------------------------------------------------*/

              PPA_AccumTime();
              PPA_Read1Retrig();
          }    /* end Transition_A */
      } /* end Measurement active service request, LastPin low */
/*--------------------------------------------------------------------------+
| THREAD NAME: THREAD6                                                      |
| DESCRIPTION:                                                              |
| Measurement active service request, LastPin high                          |
| If entered due to a transition; then:                                     |
|   Latch the pin state and clear transition detect latch                   |
|   Set LastPin to the sample pin state                                     |
|   Execute state TRANS14 or TRANS15 or TRANS16 dependant upon              |
|     PulseMeasurement/PinSampledState                                      |
| Else must have been entered due to a match; then                          |
|   Execute state MATCH4                                                    |
| NB Can't be period measurement because LastPin must be 0 for Period       |
|    Measurement                                                            |
|                                                                           |
+--------------------------------------------------------------------------*/
else if (((PPA_Measurement==PPA_Active) && (PPA_LastPin==PPA_High) && m1) ||
         ((PPA_Measurement==PPA_Active) && (PPA_LastPin==PPA_High) && m2))
      {
PPA_active_srv_req_last_pin_hi:
          if (PPA_Transition_A)
          {
              PPA_CheckPin();
              PPA_Assign(PPA_LastPin,SampledInputPin);  /* update Last_Pin state */
              if (PPA_HighPulse)
              {
                  if (SampledInputPin == 0)        /* Stop normal high measurement */
                  {
                  /*--------------------------------------------------------------------------+
                  | STATE NAME: TRANS14                                                       |
                  | Conditions under which this state is executed:-                           |
                  |   Measurement = active                                                    |
                  |   LastPin = HIgh                                                          |
                  |   Transition occurred                                                     |
                  |   Mode is High pulse measurement                                          |
                  |   Channel.PSS is 0                                                        |
                  |Stop High Pulse Measurement                                                |
                  |Add TCRs elapsed between this event and the previous event to Accum        |
                  |If Accum overflows send a Channel Interrupt and DMA Request                |
                  |If sufficient Periods have been accumulated update Result with Accum       |
                  |  and Status takes the value of StatAcc; StatAcc get set to 0              |
                  |PPA_Measurement set to PPA_Inactive                                        |
                  |                                                                           |
                  +--------------------------------------------------------------------------*/

                      PPA_AccumTime();
                      PPA_CheckCount();    /* Update measurement if all done */
                      PPA_Measurement = PPA_Inactive;
                  }
                  else                 /* A narrow negative pulse occurred */
                  {
                  /*--------------------------------------------------------------------------+
                  | STATE NAME: TRANS15                                                       |
                  | Conditions under which this state is executed:-                           |
                  |   Measurement = active                                                    |
                  |   LastPin = High                                                          |
                  |   Transition occurred                                                     |
                  |   Mode is High pulse measurement                                          |
                  |   Channel.PSS is 1                                                        |
                  |A short negative pulse occurred                                            |
                  |Add TCRs elapsed between this event and the previous event to Accum        |
                  |If Accum overflows send a Channel Interrupt and DMA Request                |
                  |Record ertb in LastTime                                                    |
                  |Clear match flagA                                                          |
                  |Schedule a match SampleTime in the future                                  |
                  |If sufficient Periods have been accumulated update Result with Accum       |
                  |  and Status takes the value of StatAcc; StatAcc get set to 0              |
                  |Measurement remains Active                                                 |
                  |                                                                           |
                  +--------------------------------------------------------------------------*/

                      PPA_AccumTime();     /* Accumulate time to falling edge */
                      PPA_Read2Retrig();   /* start next measurement on second edge (measurement stays active) */
                      PPA_CheckCount();    /* and update measurement if all done */

                  }
              }
              else                 /* Illegal state for Low pulse measurement - should never happen */
              {
              /*--------------------------------------------------------------------------+
              | STATE NAME: TRANS16                                                       |
              | Conditions under which this state is executed:-                           |
              |   Measurement = active                                                    |
              |   LastPin = High                                                          |
              |   Transition occurred                                                     |
              |   Mode is Low pulse measurement                                           |
              |Illegal state for Low pulse measurement                                    |
              |Set PPA_LowPulseError flag in StatAcc                                      |
              |Set PPA_Measurement to PPA_Inactive                                        |
              |                                                                           |
              +--------------------------------------------------------------------------*/

                  PPA_this.StatAcc = PPA_this.StatAcc | PPA_LowPulseError;
                  PPA_Measurement = PPA_Inactive;    /* Disable measurement */
              }
          }
          else    /* it is a match */
          {
          /*--------------------------------------------------------------------------+
          | STATE NAME: MATCH4                                                        |
          | Conditions under which this state is executed:-                           |
          |   Measurement = active                                                    |
          |   LastPin = High                                                          |
          |   Match occurred                                                          |
          |Add TCRs elapsed between this event and the previous event to Accum        |
          |If Accum overflows send a Channel Interrupt and DMA Request                |
          |Record erta in LastTime                                                    |
          |Clear match flagA                                                          |
          |Schedule a match SampleTime in the future                                  |
          |                                                                           |
          +--------------------------------------------------------------------------*/

              PPA_AccumTime();
              PPA_Read1Retrig();
          }    /* end Transition_A */
      } /* end Measurement active service request, LastPin High */

    else
    /*--------------------------------------------------------------------------+
    | THREAD NAME: THREAD7                                                      |
    | DESCRIPTION: Something has gone wrong. :-(                                |
    |                Call the Global error routine if available and end.        |
    +--------------------------------------------------------------------------*/
    {
PPA_Error:
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

