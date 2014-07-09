/*******************************************************************************
*
*  FREESCALE SEMICONDUCTOR INC. 2004
*  ALL RIGHTS RESERVED
*  COPYRIGHT (c)
*
********************************************************************************
*
*  DESCRIPTION:
*   QD (Quadrature Decoder) eTPU function .
*
*******************************************************************************
*
*  REVISION HISTORY:
*
*  REVISION    AUTHOR       DATE        DESCRIPTION OF CHANGE
*  --------    -----------  ---------   ------------------------------------
*  0.01        A. Butok     10/Feb/04   Initial version of file.
*  0.2         M. Princ     02/Nov/04   Automatic switch between 3 modes:
*                                       slow-normal-fast. Commutations removed.
*                                       Generation of interrupts when
*                                       pc=pc_interrupts.
*  0.3         M. Princ     15/Dec/04   Code optimized
*              M. Brejl
*  0.4         M. Princ     05/Jan/05   The Second possible Position Counter
*                                       value at which the interrupt is generated
*                                       was added.
*                                       Last_edge renamed to last_leading_edge.
*                                       Last_edge parameter used for saving
*                                       the last edge time.
*  1.0         M. Princ     21/Feb/05   Formal changes for set3 release 1.0.
*  1.1         M. Brejl     08/Jan/10   Option QD_WINDOWING_DISABLED added.
*
*******************************************************************************/
#include <etpu_std.h>

/***********************************/
/* Verify performance requirements */
/***********************************/
#ifndef NO_OPT
#pragma verify_wctl  QD                155  steps  53 rams
#endif
#pragma exclude_wctl QD::QD_Error

/* provide hint that channel frame base addr same on all chans touched by func */
#pragma same_channel_frame_base QD

#ifdef QD_FUNCTION_NUMBER   /* function is being compiled as part of a set? */
#pragma ETPU_function QD, alternate @ QD_FUNCTION_NUMBER;
  #ifdef QDHOME_FUNCTION_NUMBER   /* function is included? */
  #pragma ETPU_function QDHOME, standard @ QDHOME_FUNCTION_NUMBER;
  #endif
  #ifdef QDINDEX_FUNCTION_NUMBER   /* function is included? */
  #pragma ETPU_function QDINDEX, standard @ QDINDEX_FUNCTION_NUMBER;
  #endif
#else
#pragma ETPU_function QD, alternate;
#pragma ETPU_function QDHOME, standard;
#define QDHOME_FUNCTION_NUMBER
#pragma ETPU_function QDINDEX, standard;
#define QDINDEX_FUNCTION_NUMBER
#endif

/************************************************************************
*  Definitions.
*************************************************************************/
/* HSR values */
#define   QD_HSR_INIT                    1
#define   QD_HOME_HSR_INIT               1
#define   QD_INDEX_HSR_INIT              1

/* Direction values */
#define   QD_DIRECTION_INCREMENT         1
#define   QD_DIRECTION_DECREMENT        -1
#define   QD_DIRECTION_INCREMENT_FAST    4
#define   QD_DIRECTION_DECREMENT_FAST   -4
#define   QD_DIRECTION_BIT7              0x80

/* QD mode_current parameter bits */
#define   QD_MODE_SLOW                   0x01
#define   QD_MODE_NORMAL                 0x02
#define   QD_MODE_FAST                   0x04
#define   QD_LEADING_EDGE_INDICATION     0x08
#define   QD_FAST_TO_NORMAL_SWITCH       0x10

/* QD options parameter bits */
#define   QD_PC_MAX_ENABLED              0x01
#define   QD_PC_INTERRUPT_ENABLED        0x02
#define   QD_WINDOWING_DISABLED          0x04

/* QD pins parameter bits */
#define   QD_PIN_A                       0x01
#define   QD_PIN_B                       0x02
#define   QD_CONFIGURATION               0x04

/* QD Function Modes */
#define   QD_CHANNEL_PRIMARY            (fm0==0)
#define   QD_CHANNEL_SECONDARY          (fm0==1)
#define   QD_TIMER_TCR1                 (fm1==0)
#define   QD_TIMER_TCR2                 (fm1==1)

/* QD_HOME Function Modes */
#define   QD_HOME_DETECT_LOW_HIGH       (fm0==0)
#define   QD_HOME_DETECT_HIGH_LOW       (fm0==1)
#define   QD_HOME_DETECT_ANY            (fm1==1)

/* QD_INDEX Function Modes */
#define   QD_INDEX_PULSE_POSITIVE       (fm0==0)
#define   QD_INDEX_PULSE_NEGATIVE       (fm0==1)
#define   QD_INDEX_PC_NO_RESET          (fm1==0)
#define   QD_INDEX_PC_RESET             (fm1==1)

/************************************************************************
* NAME: QD
*
* DESCRIPTION: Quadrature Decoder
*
* FUNCTION PARAMETERS:
*
*  pc                    - Position Counter value.
*  rc                    - Revolution Counter value.
*  period                - Time between two leading edges.
*  pc_max                - Maximum value of Position Counter.
*  pc_interrupt1         - The first possible Position Counter value
*                          at which the interrupt is generated.
*  pc_interrupt2         - The second possible Position Counter value
*                          at which the interrupt is generated.
*  slow_normal_threshold - Threshold for switching from slow mode to normal
*                          mode.
*  normal_slow_threshold - Threshold for switching from normal mode to slow
*                          mode.
*  normal_fast_threshold - Threshold for switching from normal mode to fast
*                          mode.
*  fast_normal_threshold - Threshold for switching from fast mode to normal
*                          mode.
*  last_leading_edge     - The last leading edge time.
*  last_edge             - The last edge time.
*  pc_sc                 - Special position counter used by Speed Controller
*  direction             - Direction.
*                          1 or 4 for incremental, -1 or -4 for decremental.
*  last_direction        - Last direction value on first INDEX transition.
*  pins                  - Actual QD pin states and configuration
*                          - bit0=0 … primary QD channel pin state is low
*                          - bit0=1 … primary QD channel pin state is high
*                          - bit1=0 … secondary QD channel pin state is low
*                          - bit1=1 … secondary QD channel pin state is high
*                          - bit2=0 … both QD pins are 0 when INDEX is reached
*                          - bit2=1 … both QD pins are 1 when INDEX is reached
*  mode_current          - Current QD mode and leading edge indication.
*                          - bit0=1 … SLOW mode
*                          - bit1=1 … NORMAL mode
*                          - bit2=1 … FAST mode
*                          - bit3=0 … the last edge is not a leading edge
*                          - bit3=1 … the last edge is a leading edge
*  options               - QD options
*                          - bit0=0 … reset of pc when pc=pc_max disabled
*                            bit0=1 … reset of pc when pc=pc_max enabled
*                          - bit1=0 … generation of interrupt when pc=pc_interrupt disabled
*                            bit1=1 … generation of interrupt when pc=pc_interrupt enabled
*
*  ratio1                - This parameter applies in the window mode for setting
*                          of the window beginning.
*  ratio2                - This parameter applies in the window mode for setting
*                          of the window end.
*
* CHANNEL FLAG USAGE:
*   Flag0 is used to select the mode.
*     0 = slow or normal mode
*     1 = fast mode
*   Flag1 is used to select the expected edge.
*     0 = the next edge must be rising edge
*     1 = the next edge must be falling edge
*
* NOTES: !!!!! Phase A and B channels must have the same base address. !!!!!!
*************************************************************************/
void QD(int24 pc,
        int24 rc,
        int24 period,
        unsigned int24 pc_max,
        unsigned int24 pc_interrupt1,
        unsigned int24 pc_interrupt2,
        unsigned int24 slow_normal_threshold,
        unsigned int24 normal_slow_threshold,
        unsigned int24 normal_fast_threshold,
        unsigned int24 fast_normal_threshold,
        int24 last_leading_edge,
        int24 last_edge,
        int24 pc_sc,
        int8  direction,
        int8  last_direction,
        int8  pins,
        int8  mode_current,
        int8  options,
        fract24 ratio1,
        fract24 ratio2)
{
   int24 tmp;

   /**********************************************
   * Phase A/B Channel Initialization.
   **********************************************/
   if (hsr==QD_HSR_INIT)
   {
QD_Init:
      if(QD_TIMER_TCR1)                                       // With FM1 select TCR1 or TCR2.
      {
         ActionUnitA( MatchTCR1, CaptureTCR1, GreaterEqual);  // TCR1 clock selected.
         ActionUnitB( MatchTCR1, CaptureTCR1, GreaterEqual);  // TCR1 clock selected.
         BothMatchSingleTransition();                         // Channel mode: Both Match Single Transition.
         ClearAllLatches();                                   // Negate all pending events.
         last_leading_edge=tcr1;                              // Store current TCR1 value.
      }
      else
      {
         ActionUnitA( MatchTCR2, CaptureTCR2, GreaterEqual);  // TCR2 clock selected.
         ActionUnitB( MatchTCR2, CaptureTCR2, GreaterEqual);  // TCR2 clock selected.
         BothMatchSingleTransition();                         // Channel mode: Both Match Single Transition.
         ClearAllLatches();                                   // Negate all pending events.
         last_leading_edge=tcr2;                              // Store current TCR2 value.
      }
      if(CurrentInputPin==1)                                  // Get latest pin state.
      {
        OnTransA(HighLow);                                    // Pin is configured to detect high low transitions.
        if(QD_CHANNEL_PRIMARY)                                // for primary channel
        {
          Set(flag1);                                         // The next edge must be falling edge
          pins |= QD_PIN_A;                                   // Set primary channel pin_A bit of pins parameter
        }
        else                                                  // for secondary channel
        {
          Set(flag1);                                         // The next edge must be falling edge
          pins |= QD_PIN_B;                                   // Set secondary channel pin_B bit of pins parameter
        }
      }
      else
      {
        OnTransA(LowHigh);                                    // Pin is configured to detect low high transitions.
        if(QD_CHANNEL_PRIMARY)                                // for primary channel
        {
          Clear(flag1);                                       // The next edge must be rising edge
          pins &= ~QD_PIN_A;                                  // Clear primary channel pin_A bit of pins parameter
        }
        else                                                  // for secondary channel
        {
          Clear(flag1);                                       // The next edge must be rising edge
          pins &= ~QD_PIN_B;                                  // Clear secondary channel pin_B bit of pins parameter
        }
      }
      pc=0;                                                   // Set Position Counter to 0.
      mode_current=QD_MODE_SLOW;                              // Set mode_current to slow
      flag0=0;                                                // Slow/Normal mode.
      EnableEventHandling();                                  // Enable channel.
   }

   /************************************************************
   * SLOW / NORMAL Mode.
   ************************************************************/
   /************************************************************
   * Falling Edge
   ************************************************************/
   else if((m2==1)&&(flag0==0)&&(flag1==1))
   {
QD_SlowNormalModeFallingEdge:
     OnTransA(LowHigh);                                       // Pin is configured to detect low high transitions.
     if(QD_CHANNEL_PRIMARY)                                   // for primary channel
     {
       Clear(flag1);                                          // The next edge must be rising edge
       pins &= ~QD_PIN_A;                                     // Clear primary channel pin_A bit of pins parameter
     }
     else                                                     // for secondary channel
     {
       Clear(flag1);                                          // The next edge must be rising edge
       pins &= ~QD_PIN_B;                                     // Clear secondary channel pin_B bit of pins parameter
     }
     goto QD_SLOW_LABEL1;
   }
   /************************************************************
   * Rising Edge
   ************************************************************/
   else if((m2==1)&&(flag0==0)&&(flag1==0))
   {
QD_SlowNormalModeRisingEdge:
     OnTransA(HighLow);                                       // Pin is configured to detect high low transitions.
     if(QD_CHANNEL_PRIMARY)                                   // for primary channel
     {
       Set(flag1);                                            // The next edge must be falling edge
       pins |= QD_PIN_A;                                      // Set primary channel pin_A bit of pins parameter
     }
     else                                                     // for secondary channel
     {
       Set(flag1);                                            // The next edge must be falling edge
       pins |= QD_PIN_B;                                      // Set secondary channel pin_B bit of pins parameter
     }

     QD_SLOW_LABEL1:
     if (mode_current & QD_MODE_SLOW)                         // For slow mode
     {
        if((QD_CHANNEL_SECONDARY)^(pins & QD_PIN_A)^((pins & QD_PIN_B)>>1)) // Perform lead/lag test.
          direction=QD_DIRECTION_INCREMENT;                   // Set direction.
        else
          direction=QD_DIRECTION_DECREMENT;                   // Set direction.
     }
     if (!IsTransALatched())                                  // Transition detected or detection window end?
     {
       erta = last_edge + (period>>1);                        // Estimate edge time from previous egde and period
     }
     goto QD_COMMON;
   }

   /************************************************************
   * FAST Mode
   ************************************************************/
   else if((m2==1)&&(flag0==1))
   {
QD_FastMode:
     if (!IsTransALatched())                                 // Transition detected or detection window end?
     {
       erta = last_edge + period;                            // Estimate edge time from previous egde and period
     }

     QD_COMMON:
     last_edge = erta;
     pc+=direction;                                          // Decrement or Increment the PC.
     pc_sc+=direction;                                       // Decrement or Increment the PC_SC.
     if((options & QD_PC_INTERRUPT_ENABLED) &&
       ((pc==pc_interrupt1)||(pc==pc_interrupt2)))
       SetChannelInterrupt();                                // Generate interrupt each time when pc=pc_interrupt1 or pc=pc_interrupt2
     if((pins==(QD_PIN_A+QD_PIN_B+QD_CONFIGURATION))||
        (pins==0x0))                                         // If the current edge is the leading edge
     {
       if(options & QD_PC_MAX_ENABLED)                       // If pc_max is enabled
       {
         if(__abs(pc)>=pc_max)
         {
           pc=0;                                             // Reset PC
         }
       }
       period = (erta - last_leading_edge)>>1;               // Period between two leading edges divided by 2
       last_leading_edge = erta;
       if (mode_current & QD_MODE_SLOW)                      // For slow mode
       {
         if(period < slow_normal_threshold)                  // Exit Slow mode and enter Normal mode.
         {
          mode_current=QD_MODE_NORMAL;                       // Set mode_current to normal.
         }
       }
       else if (mode_current & QD_MODE_NORMAL)               // For normal mode
       {
         if(period < normal_fast_threshold)                  // Exit Normal mode and enter Fast mode
         {
           mode_current=QD_MODE_FAST;                        // Set mode_current to fast.
           if (direction & QD_DIRECTION_BIT7)                // If direction is negative
           {
             direction=QD_DIRECTION_DECREMENT_FAST;          // Direction = -4
           }
           else
           {
             direction=QD_DIRECTION_INCREMENT_FAST;          // Direction = 4
           }
           period=(period<<1);                               // Period = 2* Period
           Set(flag0);                                       // Set Fast mode
           /* According to the configuration detect high_low/low_high edges */
           if(pins & QD_CONFIGURATION)
           {
             OnTransA(LowHigh);                              // Pin is configured to detect low high transitions.
             Clear(flag1);                                   // The next edge must be rising edge
           }
           else
           {
             OnTransA(HighLow);                              // Pin is configured to detect high low transitions.
             Set(flag1);                                     // The next edge must be falling edge
           }
           tmp=chan;
           if(QD_CHANNEL_PRIMARY)                            // for primary channel
           {
             chan++;
           }
           else                                              // for secondary channel
           {
             chan--;
           }
           OnTransA(NoDetect);                               // Pin is configured to detect no transitions.
           DisableMatchDetection();                          // Prevent from end-window match
           chan=tmp;
         }
         else if(period > normal_slow_threshold)             // Exit Normal mode and enter Slow mode
         {
           mode_current = (QD_LEADING_EDGE_INDICATION + QD_MODE_SLOW);   // Set mode_current to slow.
           goto QD_FINAL;
         }
       }
       else if (mode_current & QD_MODE_FAST)                 // For Fast mode
       {
         if(period > fast_normal_threshold)                  // Exit Fast mode and enter Normal mode
         {
           /* Set mode_current to normal and
              set the QD_FAST_TO_NORMAL_SWITCH bit to indicate
              the edge in which the mode swithes from Fast to Normal */
           mode_current= (QD_FAST_TO_NORMAL_SWITCH + QD_MODE_NORMAL);

           if (direction & QD_DIRECTION_BIT7)                // If direction is negative
           {
             direction=QD_DIRECTION_DECREMENT;               // Direction = -1
           }
           else
           {
             direction=QD_DIRECTION_INCREMENT;               // Direction = 1
           }
           period=(period>>1);                               // Period = Period/2
           Clear(flag0);                                          // Set SLOW/NORMAL mode
           /* According to the configuration detect high_low/low_high edges */
           if(pins & QD_CONFIGURATION)
           {
             OnTransA(HighLow);                              // Pin is configured to detect high low transitions.
             Set(flag1);                                     // The next edge must be falling edge
           }
           else
           {
             OnTransA(LowHigh);                              // Pin is configured to detect low high transitions.
             Clear(flag1);                                   // The next edge must be rising edge
           }
           pc += direction;                                  // Decrement or Increment the PC.
           pc_sc += direction;                               // Decrement or Increment the PC_SC.
           tmp=chan;
           if(QD_CHANNEL_PRIMARY)                            // for primary channel
           {
             chan++;                                         // Switch to secondary channel
           }
           else                                              // for secondary channel
           {
             chan--;                                         // Switch to primary channel
           }
           /* According to the configuration detect high_low/low_high edges */
           if(pins & QD_CONFIGURATION)
           {
             OnTransA(LowHigh);                              // Pin is configured to detect low high transitions.
             Clear(flag1);                                   // The next edge must be rising edge
           }
           else
           {
             OnTransA(HighLow);                              // Pin is configured to detect high low transitions.
             Set(flag1);                                     // The next edge must be falling edge
           }
           BothMatchSingleTransition();                      // Channel mode: Both Match Single Transition.
           chan=tmp;
         }
         period=period<<1;                                   // Period = Period * 2
        }
        mode_current |= QD_LEADING_EDGE_INDICATION;          // Set leading edge indication bit

       }
       else
       {
         /* Clear leading edge indication bit and Fast to Normal Switch indication bit */
         mode_current &= (~(QD_LEADING_EDGE_INDICATION | QD_FAST_TO_NORMAL_SWITCH));
       }

       if(((options & QD_WINDOWING_DISABLED)==0) && ((mode_current & QD_MODE_SLOW)==0))  // For Fast or Normal mode
       {
         Match2SingleTransition();                           // Channel mode: Match B Single Transition
         ertb = erta + period;                               // Setup next window end
         ertb += mulir(period, ratio2);
         /* When the transition did not come (Match B is latched)
            let the window opened, else setup next window beginning */
         if(!(IsLatchedMatchB()))
         {
           erta += mulir(period, ratio1);                    // Setup next window beginning
         }
         WriteErtAToMatchAAndEnable();
         WriteErtBToMatchBAndEnable();
       }
       else
       {
         QD_FINAL:
         BothMatchSingleTransition();                        // Channel mode: Both Match Single Transition.
       }
       ClearAllLatches();                                    // Negate all pending events.
   }
   /************************************************************
   * Unhandled events
   ************************************************************/
   else
   {
QD_Error:
#ifdef GLOBAL_ERROR_FUNC
      Global_Error_Func();
#else
      ClearAllLatches();
#endif
   }
}

/***********************************/
/* Verify performance requirements */
/***********************************/
#ifndef NO_OPT
#pragma verify_wctl  QDHOME                4  steps  3 rams
#endif
#pragma exclude_wctl QDHOME::QDHOME_Init
#pragma exclude_wctl QDHOME::QDHOME_Error

#ifdef QDHOME_FUNCTION_NUMBER
/************************************************************************
* NAME: QDHOME
*
* DESCRIPTION: Monitors a "HOME position" of the motion system.
*              Resets PC and RC.
* FUNCTION PARAMETERS: same as for all QD functions
*
*************************************************************************/
void QDHOME(int24 pc,
            int24 rc,
            int24 period,
            unsigned int24 pc_max,
            unsigned int24 pc_interrupt1,
            unsigned int24 pc_interrupt2,
            unsigned int24 slow_normal_threshold,
            unsigned int24 normal_slow_threshold,
            unsigned int24 normal_fast_threshold,
            unsigned int24 fast_normal_threshold,
            int24 last_leading_edge,
            int24 last_edge,
            int24 pc_sc,
            int8  direction,
            int8  last_direction,
            int8  pins,
            int8  mode_current,
            int8  options,
            fract24 ratio1,
            fract24 ratio2)
{

   /**********************************************
   * HOME Channel Initialization.
   **********************************************/
   if (hsr==QD_HOME_HSR_INIT)
   {
QDHOME_Init:
      if(QD_HOME_DETECT_ANY)                                 // FM==1x
      {
         OnTransA(AnyTrans);                                 // Pin is configured to detect any transition.
         EitherMatchNonBlockingSingleTransition();           // Channel mode: Non Blocking Single Transition.
         ActionUnitA( MatchTCR1, CaptureTCR1, GreaterEqual); // TCR1 clock selected.
         ClearAllLatches();                                  // Negate all pending events.
      }
      else
      {
                                                             // FM==01
         OnTransA(HighLow);                                  // Pin is configured to detect high-low transition.
         EitherMatchNonBlockingSingleTransition();           // Channel mode: Non Blocking Single Transition.
         ActionUnitA( MatchTCR1, CaptureTCR1, GreaterEqual); // TCR1 clock selected.
         ClearAllLatches();                                  // Negate all pending events.

         if(QD_HOME_DETECT_LOW_HIGH)                         // FM==00
         {
            OnTransA(LowHigh);                               // Pin is configured to detect low-high transition.
         }
      }
      EnableEventHandling();                                 // Enable channel.
   }
   /**********************************************
   * New transition detection.
   **********************************************/
   else if(m2==1)
   {
QDHOME_Transition:
      ClearTransLatch();                                     // Clear the transition latch to enable further transition detection.
      rc=0;                                                  // Reset Revolution Counter to 0.
      pc=0;                                                  // Reset Position Counter to 0.
   }
   /************************************************************
   * Unhandled events
   ************************************************************/
   else
   {
QDHOME_Error:
#ifdef GLOBAL_ERROR_FUNC
      Global_Error_Func();
#else
      ClearAllLatches();
#endif
   }
}
#endif


/***********************************/
/* Verify performance requirements */
/***********************************/
#ifndef NO_OPT
#pragma verify_wctl  QDINDEX                36  steps  13 rams
#endif
#pragma exclude_wctl QDINDEX::QDINDEX_Error

#ifdef QDINDEX_FUNCTION_NUMBER
/************************************************************************
* NAME: QDINDEX
*
* DESCRIPTION: Monitors an input signal that indicates each revolution
*              of the motion system.
* FUNCTION PARAMETERS: same as for all QD functions
*
* CHANNEL FLAG USAGE:
*   Flag0 is used to select the expected edge.
*     0 = the next edge must be rising edge
*     1 = the next edge must be falling edge
*************************************************************************/
void QDINDEX(int24 pc,
             int24 rc,
             int24 period,
             unsigned int24 pc_max,
             unsigned int24 pc_interrupt1,
             unsigned int24 pc_interrupt2,
             unsigned int24 slow_normal_threshold,
             unsigned int24 normal_slow_threshold,
             unsigned int24 normal_fast_threshold,
             unsigned int24 fast_normal_threshold,
             int24 last_leading_edge,
             int24 last_edge,
             int24 pc_sc,
             int8  direction,
             int8  last_direction,
             int8  pins,
             int8  mode_current,
             int8  options,
             fract24 ratio1,
             fract24 ratio2)

{

   /**********************************************
   * INDEX Channel Initialization.
   **********************************************/
   if (hsr==QD_INDEX_HSR_INIT)
   {
QDINDEX_Init:
      OnTransA(AnyTrans);                                    // Pin is configured to detect any transition.
      EitherMatchNonBlockingSingleTransition();              // Channel mode: Non Blocking Single Transition.
      ActionUnitA( MatchTCR1, CaptureTCR1, GreaterEqual);    // TCR1 clock selected.
      ClearAllLatches();                                     // Negate all pending events.

      if(QD_INDEX_PULSE_POSITIVE)                            // Detection of low-high transition.
      {
         Clear(flag0);                                       // Detect Low High transition as 1st transition.
         if(CurrentInputPin==1)
            last_direction=0;                                // To indicate the position inside the pulse.
      }
      else                                                   // Detection of high-low transition.
      {
         Set(flag0);                                         // Detect High Low transition as 1st transition.
         if(CurrentInputPin==0)
            last_direction=0;                                // To indicate the position inside the pulse.
      }

      rc=0;                                                  // Reset Revolution Counter to 0.

      EnableEventHandling();                                 // Enable channel.
   }

   /**********************************************
   ///////////// First Transition ////////////////
   ***********************************************
   * Low High transition and flag0=0.
   * High Low transition and flag0=1.
   **********************************************/
   else if(((m2==1)&&(pin==1)&&(flag0==0))||((m2==1)&&(flag0==1)&&(pin==0)))
   {
QDINDEX_FirstTransition:
      ClearTransLatch();                                     // Clear the transition latch to enable further transition detection.
      QD_LINK_TRANSITION_1:
      /* The first transition could not come before leading edge,
         wait till the leading edge is reached */
      if (!(mode_current & QD_LEADING_EDGE_INDICATION))
      {
         link=chan;                                          // Send link to self - wait for state after leading edge
      }
      else
      {
         if(QD_INDEX_PC_RESET)                               // FM==1x
         {
             if(mode_current & QD_FAST_TO_NORMAL_SWITCH)
             {
                 pc=direction;                    // In case the first index transition come at the same time as the leading edge in which the mode swithes from Fast to Normal
                                                  // (the next QD edge after this is not scheduled so the pc could not be reset to 0)
             }
             else
             {
                 pc=0;                            // Reset Position Counter to 0.
             }
         }

         /* Decrement revolution counter when direction < 0,
            increment revolution counter when direction > 0 */
         if(direction & QD_DIRECTION_BIT7)
         {
            rc--;
         }
         else
         {
            rc++;
         }

         last_direction=direction;                           // Save direction.

         /* Clear leading edge indication bit in fast mode */
         if (mode_current & QD_MODE_FAST)
         {
           mode_current &= ~QD_LEADING_EDGE_INDICATION;
         }

         /* Do not detect both edges but only the first one in Normal and Fast mode */
         if (mode_current & QD_MODE_SLOW)
         {
           OnTransA(AnyTrans);
         }
         else
         {
           if(QD_INDEX_PULSE_POSITIVE)
           {
             OnTransA(LowHigh);
           }
           else
           {
             OnTransA(HighLow);
           }
           ClearAllLatches();
         }
      }
   }
   /**********************************************
   * Link detection, Pin is High and flag0=0.
   * Link detection, Pin is Low and flag0=1.
   **********************************************/
   else if(((lsr==1)&&(pin==1)&&(flag0==0))||((lsr==1)&&(pin==0)&&(flag0==1)))
   {
QDINDEX_LinkA:
      ClearLinkServiceRequestEvent();
      goto QD_LINK_TRANSITION_1;                             // First transition Link.
   }

   /**********************************************
   ///////////// Second Transition ///////////////
   ***********************************************
   * High Low transition and flag0=0.
   * Low High transition and flag0=1.
   **********************************************/
   else if(((m2==1)&&(flag0==0)&&(pin==0))||((m2==1)&&(flag0==1)&&(pin==1)))
   {
QDINDEX_SecondTransition:
      ClearTransLatch();                                     // Clear the transition latch to enable further transition detection.

      /* If transition is first after init(last_direction==0)=> skip the event.
         Othewise => normal processing. */
      if(last_direction!=0)
      {
         QD_LINK_TRANSITION_2:
         /* The second INDEX transition could not come before the first
            QD transition after leading edge, wait till the leading edge
            indication is cleared. */
         if (!(mode_current & QD_LEADING_EDGE_INDICATION))
         {
            if(last_direction-direction!=0) // In case when the direction was changed during the INDEX active state.
            {
               /* Decrement revolution counter when direction < 0,
                  increment revolution counter when direction > 0 */
               if(direction & QD_DIRECTION_BIT7)
               {
                  rc--;
               }
               else
               {
                  rc++;
               }
            }
         }
         else
         {
            link=chan;                                       // Send link to self - wait for state when the leading edge bit is cleared
         }
     }
   }

   /**********************************************
   * Link detection, Pin is High and flag0=0.
   * Link detection, Pin is Low and flag0=1.
   **********************************************/
   else if(((lsr==1)&&(pin==1)&&(flag0==1))||((lsr==1)&&(pin==0)&&(flag0==0)))
   {
QDINDEX_LinkB:
      ClearLinkServiceRequestEvent();
      goto QD_LINK_TRANSITION_2;                             // First transition Link.
   }
   /************************************************************
   * Unhandled events
   ************************************************************/
   else
   {
QDINDEX_Error:
#ifdef GLOBAL_ERROR_FUNC
      Global_Error_Func();
#else
      ClearAllLatches();
#endif
   }
}
#endif

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
