/****************************************************************************
 * FILE NAME: etpu_crank.c                   COPYRIGHT (c) FREESCALE 2008   *
 * DESCRIPTION:                                     All Rights Reserved     *
 *==========================================================================*
 * ORIGINAL AUTHOR: Geoff Emerson                                           *
 * This function generates an Angle Timebase using the Angle Clock hardware * 
 * on the eTPU. The Angle Timebase is maintained in TCR2. It keeps track of *
 * the overall synchronisation status. It reports via interrupt to the CPU  *
 * when the overall synchronisation status changes.                         * 
 ****************************************************************************/
#ifdef __ETEC__  // ASH WARE
#include <ETpu_Std.h>
#else  // Byte Craft
#ifndef __ETPUC_H
#include <etpuc.h>              /*Defines eTPU hardware */
#endif
#include <etpuc_util.h>

#ifndef __ETPUC_COMMON_H
#include <eTPUc_common.h>       /*Standard way to use eTPU */
#endif
#endif

#ifndef __ETPUC_CRANK_H
#include <etpuc_crank.h>
#endif

/***********************************/
/* Verify performance requirements */
/***********************************/
#ifdef __ETEC__  // ASH WARE
#pragma verify_wctl  Crank                94 steps 30 rams
#pragma exclude_wctl Crank::CRANK_Init 
#endif

#ifdef CRANK_FUNCTION_NUMBER    /* function is being compiled as part a set? */
#pragma ETPU_function Crank, alternate @ CRANK_FUNCTION_NUMBER;
#else
#pragma ETPU_function Crank, alternate; /* stand alone */
#endif

#ifndef __ETEC__
struct tpr_struct tpr_reg @ tpr;
#endif

/* General Notes: */
/*--------------------------------------------------------------------------+
| CHANNEL PARAMETERS: (host modifiable)                                     |
|                                                                           |
| Tooth_Count - the number of teeth since the Gap. Tooth after the Gap = 1. |            
| Tooth_Time - the TCR1 count at which the last tooth happened.             |           
| Physical_Crank_Teeth - The number of physical teeth on the Crank wheel.   |
| Ticks_Per_Tooth - The number of TCR2 counts per Crank Tooth.              |
| Error_Status - Possible values are:                                       |
|                            NO_ERROR - indicates no error.                 |
|                            INVALID_M1 - indicates an invalid MatchA_TransB|
|                            INVALID_M2 - indicates an invalid MatchB_TransA|
|                            TIMEOUT - A timeout has occurred.              |   
|                            STALL - 2 consecutive timeouts have occurred.  |   
|                            INTERNAL ERROR - An invalid state in the state |   
|                               machine has been called.                    |
| Windowing_Ratio_Normal -  Fraction used to derive the acceptance window   |
|                           for the next normal tooth.                      |      
| Missing_Tooth_Count - The number of teeth missing on the Crank wheel.     |    
| Windowing_Ratio_Across_Gap - Fraction used to derive the acceptance       |
|                              window for the first tooth after the gap.    |      
| Blank_Tooth_Count - The number of teeth ignored after initialisation.     |
| Windowing_Ratio_After_Gap - Fraction used to derive the acceptance window |
|                               for the second tooth after the gap.         |      
| Host_Asserted_Tooth_Count - Tooth count written by the host when a tooth  |
|                             is being removed                              |
| Windowing_Ratio_Timeout - Fraction used to derive the acceptance window   |
|                               for the tooth following a timeout condition.|      
| Blank_Time_Expired_Flag - Flag to indicate if a timeout is expected or    |
|                           unexpected.                                     |
| Gap_Ratio - Fraction used to perform the ABA Gap test.                    |
| Blank_Time - The number of TCR1 counts during which teeth are ignored     |
|              after initialisation.                                        |
| *CAM_State - pointer to the CAM State variable stored in the CAM function.|
| First_Tooth_Timeout - The number of TCR1 counts after the first tooth     |
|                       (after Blank_Tooth_Count) when a timeout will be    |
|                       deemed to have happened.                            |
| Angle_Start_Count - the value to write to TCR2 when the Angle Clock is    |
|                     started.                                              |
| Signed_Angle_Adjust - A signed number by which TCR2 can be adjusted.      |
| Missing_tooth_count_mask - A mask used to quickly write TPR.MISSCNT.      |
| Link_1- The first set of 4 channels to send links to. This is a packed    |
|         32-bit parameter with 4 x 8-bit channel fields in it              |
| Link_2- The second set of 4 channels to send links to. This is a packed   |
|         32-bit parameter with 4 x 8-bit channel fields in it              |
| Link_3- The third set of 4 channels to send links to. This is a packed    |
|         32-bit parameter with 4 x 8-bit channel fields in it              |
| Link_4- The fourth set of 4 channels to send links to. This is a packed   |
|         32-bit parameter with 4 x 8-bit channel fields in it              |
| Tooth_Period_A - The number of TCR1 counts between the last 2 teeth.      |
| Crank_State - Variable used to keep track of the state of the Crank       |
|               function. See header file for possible values.              |
| Tooth_Angle_Target - used to keep track of when the Angle Counter is not  |
|                      in high rate mode for errata 2477 workaround.        |
+--------------------------------------------------------------------------*/

void
Crank (  unsigned  int8 Tooth_Count,           
         unsigned int24 Tooth_Time,
         unsigned  int8 Physical_Crank_Teeth,
         unsigned int24 Ticks_Per_Tooth,
         unsigned  int8 Error_Status,
       unsigned fract24 Windowing_Ratio_Normal,
         unsigned  int8 Missing_Tooth_Count,
       unsigned fract24 Windowing_Ratio_Across_Gap,
         unsigned  int8 Blank_Tooth_Count,
       unsigned fract24 Windowing_Ratio_After_Gap,
         unsigned  int8 Host_Asserted_Tooth_Count,
       unsigned fract24 Windowing_Ratio_Timeout,        
         unsigned  int8 Blank_Time_Expired_Flag,
       unsigned fract24 Gap_Ratio, 
         unsigned int24 Blank_Time,
         unsigned int8  *CAM_State,
         unsigned int24 First_Tooth_Timeout,
         unsigned int24 Angle_Start_Count,
           signed int24 Signed_Angle_Adjust,
         unsigned int24 Missing_tooth_count_mask,
         unsigned int32 Link_1,
         unsigned int32 Link_2,
         unsigned int32 Link_3,
         unsigned int32 Link_4,
         unsigned int24 Tooth_Period_A,
#ifndef NO_ERRATTA_2477         
         unsigned int24 Tooth_Angle_Target,
#endif         
                   enum CrankStates Crank_State
                  )
{

/*--------------------------------------------------------------------------+
| LOCAL VARIABLES: (currently implemented as channel paramaters)            |
|                                                                           |
| Tooth_Period_B - The number of TCR1 counts between the last 2 teeth. Used |
|                  for gap verification/checking.Used in the GAP test.      |
| Tooth_Period_B_norm - used in the AB and BA tests; a normalised Tooth     |
|                   period across the Gap.                                  |
| First_Run      - Flag used to ensure code is ran only once.               |                                                      |   
| Last_Tooth_Time - the TCR1 count at which the previous tooth happened.    |   
| Half_Window_Width - The number of TCR1 counts in half of the acceptance   |
|                     window.                                               |
| Timeout_flag - used to determine if there have been 2 consecutive timeouts|
+--------------------------------------------------------------------------*/    
    static unsigned  int8 First_Run;
    static unsigned int24 Tooth_Period_B;    
    static unsigned int24 Tooth_Period_B_norm;
    static unsigned int24 Last_Tooth_Time;
    static unsigned int24 Half_Window_Width;
    static unsigned  int8 Timeout_flag;

/*--------------------------------------------------------------------------+
| THREAD NAME: INIT                                                         |
| State: S1                                                                 |
| DESCRIPTION: Initialise a channel to run the CRANK function.              |
+--------------------------------------------------------------------------*/
    if (HostServiceRequest == CRANK_INIT)
      {
CRANK_Init:
		  DisableMatchesInThread ();

          DisableMatchDetection(); /* prevent both matches from happening 
                                      until they are re-programmed */

          DisableOutputBuffer (); /* needed for Coldfire products */
           /* channel mode is m2_o_st */
          Match2OrderedSingleBlockingTransition ();    
          
          Clear (flag0);        /*                   */
          Clear (flag1);        /* CRANK_FLAGS_OTHER */

          ActionUnitA (MatchTCR1, CaptureTCR1, GreaterEqual);
          ActionUnitB (MatchTCR1, CaptureTCR2, GreaterEqual);

          /*default  tcr1 ticks per tcr2 count */
          /* this value avoids a potential race condition with writing 
          tpr_reg.TICKS in state 9 */
          trr= 0xffffff; 
          tpr = 0;
          Timeout_flag = 0;  
          Eng_Pos_Sync_Status_g = ENG_POS_SEEK;
          
          OnTransA (high_low); /* default */
          if (IsLatchedFuncMode0 ())    /*Detect Rising Edge */
            {
                OnTransA (low_high);
            }


          OnTransB (NoDetect);
          Clear (TransLatch);
          Clear (LSRLatch);

          erta = tcr1+1;          /* schedule an immediate match to open the window 
                                   the +1 means that the window won't open until the
                                   timebase has been started */
          ClearMatchALatch ();
          ClearMatchBLatch ();  /* clear MatchB & don't set new match value so it always enabled window is fully open */
          WriteErtAToMatchAAndEnable ();
          tcr2=0; /* write tcr2 to zero */
          EnableEventHandling ();
      }
/*--------------------------------------------------------------------------+
| THREAD NAME:ANGLE_ADJUST                                                  |
| State: S19                                                                |
| DESCRIPTION: Update tcr2 value.                                           |
+--------------------------------------------------------------------------*/
    else if (HostServiceRequest == CRANK_ANGLE_ADJUST)
      {
CRANK_AngleAdjust:
          DisableMatchesInThread ();
          tcr2 = tcr2 + Signed_Angle_Adjust;    /* adjust tcr2 */
#ifndef NO_ERRATTA_2477         
          Tooth_Angle_Target = Tooth_Angle_Target + Signed_Angle_Adjust;
#endif   
     }
/*--------------------------------------------------------------------------+
| THREAD NAME:IPH                                                           |
| State: S20                                                                |
| DESCRIPTION: Assert TPR.IPH. Allows for the addition of  a tooth.         |
+--------------------------------------------------------------------------*/
    else if (HostServiceRequest == CRANK_IPH)
      {
CRANK_Iph:
          DisableMatchesInThread ();
          /*--------------------------------------------------------+
          | State: S20                                              |
          | DESCRIPTION: Assert TPR.IPH.                            |
          | A tooth worth of TCR2 counts will be added.             |
          | Tooth_Count is set to that provided by Host.            |
          +--------------------------------------------------------*/
            tpr = tpr | CRANK_IPH_MASK;
            Tooth_Count = Host_Asserted_Tooth_Count; 
#ifndef NO_ERRATTA_2477         
            Tooth_Angle_Target = Tooth_Angle_Target + Ticks_Per_Tooth;
#endif       
      }
/*--------------------------------------------------------------------------+
| THREAD NAME: Counting                                                     |
| State: S12 and s12a                                                       |
| DESCRIPTION: Count edge or timeout.                                       |
| If not timeout window next tooth edge. Calculate trr based on most recent |
| measurements.                                                             |
+--------------------------------------------------------------------------*/
    else if (MatchA_TransB && MatchB_TransA && CRANK_FLAGS_COUNTING)
      {
CRANK_Counting:
          DisableMatchesInThread ();
          Tooth_Count++;
          if (channel.TDLA==0)       /*timeout */
            {
            /*--------------------------------------------------------+
            | State: S12a                                             |
            | DESCRIPTION: Counting timeout.                          |
            | A tooth edge did not happen in the acceptance window.   |
            +--------------------------------------------------------*/
                if (Tooth_Count == Physical_Crank_Teeth - 1)
                  {
                      Crank_State = CRANK_TOOTH_BEFORE_GAP;
                      Set (flag0); /*                              */
                      Set (flag1); /* CRANK_FLAGS_TOOTH_BEFORE_GAP */
                  }                  
                if ( Timeout_flag == 0) /* there hasn't been a Timeout immediately before now */
                  {
                    Tooth_Time = erta + Half_Window_Width;      
                    /* when the missed Tooth should have happened */
                    Error_Status = Error_Status | CRANK_TIMEOUT ;
                    Timeout_flag = 1; /* signal to next thread that a timeout occurred */
                    tpr = tpr | CRANK_IPH_MASK; /* insert a tooth because one was missing */
                    SetChannelInterruptRequest (); /* signal the host */
#ifndef NO_ERRATTA_2477         
                    Tooth_Angle_Target = Tooth_Angle_Target + Ticks_Per_Tooth;
#endif               
               
                    /* make a window around where the next tooth should be */
                    /* based on the presnt window */
#ifdef __ETEC__
					// for ASH WARE, per the TR18037 specification, in order to get the integer
					// portion of an int*fract multiply, the library function mulir/muliur must
					// be used
                    Half_Window_Width = muliur(Tooth_Period_A, Windowing_Ratio_Timeout);
#else
                    Half_Window_Width = Tooth_Period_A * Windowing_Ratio_Timeout;
#endif
                    /* Windowing_Ratio_Timeout is used here */
                    erta = Tooth_Time + Tooth_Period_A - Half_Window_Width;
                    ertb = erta + (Half_Window_Width<<1);
                    ClearMatchALatch();  /* set up window for next tooth */   
                    ClearMatchBLatch();
                    WriteErtAToMatchAAndEnable();
                    WriteErtBToMatchBAndEnable();
                  }
                else /* a Stall condition has been detected */
                     /* because Timeout_flag  == 1          */                
                  {
Stall:              Timeout_flag = 0;
                    Error_Status = Error_Status | CRANK_STALL ;
                    SetChannelInterruptRequest (); /* signal the host */                   
                    /* back to first edge state */
                    Crank_State = CRANK_FIRST_EDGE;
                    
                    Clear(flag0); /*                   */
                    Clear(flag1); /* CRANK_FLAGS_OTHER */
                    Eng_Pos_Sync_Status_g = ENG_POS_SEEK;
                    SetChannelInterruptRequest(); 
                    /* Tell host that Eng_Pos_Sync_Status_g has changed */
                    trr = 0xffffff; /* set "start up" parameters */
                    tpr = 0 ;
                    tcr2 = 0;
                    
                    /* now signal other functions that Crank has stalled */
#ifdef REGISTER_PASSING
#asm
      ram p31_0 <- Link_1.
#endasm
					Link4();
#asm
      ram p31_0 <- Link_2.
#endasm
					Link4();
#asm
      ram p31_0 <- Link_3.
#endasm
					Link4();
#asm
      ram p31_0 <- Link_4.
#endasm
					Link4();
#else
                    Link4 (Link_1);
                    Link4 (Link_2);
                    Link4 (Link_3);
                    Link4 (Link_4);
#endif                    
                    /* open the accepatnc window completely */
                    erta = tcr1;      /* schedule an immediate match to open the window */
                    ClearMatchALatch ();
                    /* clear MatchB & don't set new match value so 
                    it always enabled  - window is fully open */
                    ClearMatchBLatch ();      
                    WriteErtAToMatchAAndEnable ();
                 }
            }
          else                  /* edge in acceptance window */
            {
            /*---------------------------------------------------------------+
            | State: S12                                                     |
            | DESCRIPTION: Count teeth in the window. Calculate new trr.     |
            | Set up window for next tooth. If this is 2 teeth before the Gap|
            | advance to TOOTH_BEFORE_GAP.                                   |
            +---------------------------------------------------------------*/
                Clear (TransLatch);     /* Clear transitions */
                Last_Tooth_Time = Tooth_Time;   /*backup Tooth_Time */
                Timeout_flag = 0; /* signal to next thread that a timeout has not occurred */
                Tooth_Time = erta;      /* record Tooth_Time */
                Tooth_Period_A = Tooth_Time - Last_Tooth_Time;  /* calculate A */
                
                /* calculate trr based on last measured period */
                trr = ((Tooth_Period_A << 3) / (Ticks_Per_Tooth)) << 6;
                
#ifndef NO_ERRATTA_2477         
                Tooth_Angle_Target = Tooth_Angle_Target + Ticks_Per_Tooth;
#endif
                if (Tooth_Count == Physical_Crank_Teeth - 1)
                  {
                      Crank_State = CRANK_TOOTH_BEFORE_GAP;
                      Set (flag0); /*                              */
                      Set (flag1); /* CRANK_FLAGS_TOOTH_BEFORE_GAP */
                  }

Calc_window:    
#ifdef __ETEC__
				// for ASH WARE, per the TR18037 specification, in order to get the integer
				// portion of an int*fract multiply, the library function mulir/muliur must
				// be used
				Half_Window_Width = muliur(Tooth_Period_A, Windowing_Ratio_Normal);
#else
				Half_Window_Width = Tooth_Period_A * Windowing_Ratio_Normal;
#endif
                erta = Tooth_Time + Tooth_Period_A - Half_Window_Width;
                ertb = erta + (Half_Window_Width<<1);
                ClearMatchALatch();  /* set up window for next tooth */   
                ClearMatchBLatch();
                WriteErtAToMatchAAndEnable();
                WriteErtBToMatchBAndEnable();
            }
      }
/*--------------------------------------------------------------------------+
| THREAD NAME: Tooth_before_gap                                             |
| State: S13 and S13a                                                       |
| DESCRIPTION: Edge before gap or timeout.                                  |
| If not timeout window next tooth edge (the one after the gap).            | 
| Calculate trr based on most recent measurements.                          |
+--------------------------------------------------------------------------*/
    else if (MatchA_TransB  && MatchB_TransA  && CRANK_FLAGS_TOOTH_BEFORE_GAP)
      {
CRANK_ToothBeforeGap:
          DisableMatchesInThread ();
#ifndef NO_ERRATTA_2477                   
          Tooth_Angle_Target = Tooth_Angle_Target + Ticks_Per_Tooth;
#endif          
          if (channel.TDLA==0)       /*timeout */
            {
            /*--------------------------------------------------------+
            | State: S13a                                             |
            | DESCRIPTION: Tooth before gap timeout.                  |
            | A tooth edge did not happen in the acceptance window.   |
            | Write TIMEOUT bit in the error word.                    |
            | Proceed as if a stall happened. This is an AB test fail |
            | and the function needs to re-sync.                      |
            +--------------------------------------------------------*/
                Error_Status = Error_Status | CRANK_TIMEOUT ;
                goto Stall;

             }
          else                  /* edge in acceptance window */
            {
            /*---------------------------------------------------------------+
            | State: S13                                                     |
            | DESCRIPTION: Tooth before Gap in the window. Calculate new trr.|
            | Set up window for tooth after the Gap. Write TPR.MISSCNT.      |
            +---------------------------------------------------------------*/
                Tooth_Count++;
                Clear (TransLatch);     /* Clear transitions */
                Last_Tooth_Time = Tooth_Time;   /*backup Tooth_Time */
                Timeout_flag = 0; /* signal to next thread that a timeout has not occurred */
                Tooth_Time = erta;      /* record Tooth_Time */
                Tooth_Period_A = Tooth_Time - Last_Tooth_Time;  /* calculate A */

                /* calculate trr based on last measured period */
                trr = ((Tooth_Period_A << 3) / (Ticks_Per_Tooth)) << 6;                
                
#ifndef NO_ERRATTA_2477
                /* workaround for errata 2477 */
                /* a "TIMEOUT" is created in Angle so that the Angle Clock */
                /* hardware is not in High Rate Mode */         
                ActionUnitB (MatchTCR2, CaptureTCR2, GreaterEqual);
                
                erta = tcr1;      /* schedule an immediate match to open the window */
                ertb = Tooth_Angle_Target; 
                /* schedule a match for when the EAC will be out of HRM */
                
                ClearMatchALatch();  /* set up window for next tooth angle*/   
                ClearMatchBLatch();
                WriteErtAToMatchAAndEnable();
                WriteErtBToMatchBAndEnable();
                Crank_State = CRANK_TOOTH_AFTER_GAP_NOT_HRM;

                Clear(flag0); /*                   */
                Clear(flag1); /* CRANK_FLAGS_OTHER */
#else
                Half_Window_Width = Tooth_Period_A * Windowing_Ratio_Across_Gap;
                erta = Tooth_Time +  (Tooth_Period_A>>1); 
                /* window open half a tooth period after last tooth */
                ertb = Tooth_Time + Tooth_Period_A * ( Missing_Tooth_Count +1 ) + Half_Window_Width;
                /* window close time */
                
                ClearMatchALatch();  /* set up window for next tooth */   
                ClearMatchBLatch();
                WriteErtAToMatchAAndEnable();
                WriteErtBToMatchBAndEnable();

                Crank_State = CRANK_TOOTH_AFTER_GAP;
                Set (flag0);
                Clear (flag1); /* CRANK_FLAGS_TOOTH_AFTER_GAP */
                tpr = tpr | Missing_tooth_count_mask;
                /* write MISSCNT in tpr */
#endif

            }
      }
/*--------------------------------------------------------------------------+
| THREAD NAME: Tooth_after_gap                                              |
| State: S14  and S14a                                                      |
| DESCRIPTION: Edge after gap or timeout.                                   |
| If not timeout window next tooth edge (the one after the gap).            | 
| Calculate trr based on most recent measurements.                          |
+--------------------------------------------------------------------------*/
    else if (MatchA_TransB  && MatchB_TransA  && CRANK_FLAGS_TOOTH_AFTER_GAP)
      {
CRANK_ToothAfterGap:
          DisableMatchesInThread ();
          Tooth_Count=1;
#ifndef NO_ERRATTA_2477         
          Tooth_Angle_Target = Tooth_Angle_Target + ((Missing_Tooth_Count+1) * Ticks_Per_Tooth);
#endif          
          if (channel.TDLA==0)       /*timeout */
            {
            /*--------------------------------------------------------+
            | State: S14a                                             |
            | DESCRIPTION: Tooth after gap timeout.                   |
            | A tooth edge did not happen in the acceptance window.   |
            | This is considered a BA test failure and loss of sync.  |
            | Revert to First_edge state to re-sync.                  
            +--------------------------------------------------------*/
                goto Stall;
            }
          else                  /* edge in acceptance window */
            /*---------------------------------------------------------------+
            | State: S14                                                     |
            | DESCRIPTION: Tooth after Gap in the window. Calculate new trr. |
            | Set up window for next tooth.                                  |
            +---------------------------------------------------------------*/
            {
                if ( First_Run == 1)
                  {
                    if ( Eng_Pos_Sync_Status_g == ENG_POS_FIRST_HALF_SYNC)
                    {
                  	  tcr2 = 0; /* keep EAC <= 360 degrees until CAM has been found */
#ifndef NO_ERRATTA_2477
                  	  Tooth_Angle_Target = 0;
#endif
                  	  /* in order to escape this CAM must have happened */
                    }
                  	else if ( Eng_Pos_Sync_Status_g == ENG_POS_PRE_FULL_SYNC)
                  	{
                  		tcr2 = Angle_Start_Count;
                  		First_Run =0; /* this won't run again until after re-init */
#ifndef NO_ERRATTA_2477
                  		Tooth_Angle_Target = Angle_Start_Count;
#endif
                  		/* update Eng_Pos_Sync_State_g */
                  		Eng_Pos_Sync_Status_g = ENG_POS_FULL_SYNC;  
                      SetChannelInterruptRequest(); 
                      /* Tell host that Eng_Pos_Sync_Status_g has changed */
                  	}
                  }
          
                Clear (TransLatch);     /* Clear transitions */
                Last_Tooth_Time = Tooth_Time;   /*backup Tooth_Time */
                Timeout_flag = 1; 
                /* assert that a first timeout has already happened        */
                /* this means that if the tooth after the Gap +1 times out */
                /* then the state machine will revert to First_Edge        */
                Tooth_Time = erta;      /* record Tooth_Time */
                
                Tooth_Period_B = Tooth_Time - Last_Tooth_Time;

#ifdef __ETEC__
				// for ASH WARE, per the TR18037 specification, in order to get the integer
				// portion of an int*fract multiply, the library function mulir/muliur must
				// be used
				if (muliur(Tooth_Period_B, Gap_Ratio) <= Tooth_Period_A)  /*  if AB test fails */
#else
				if (Tooth_Period_B * Gap_Ratio <= Tooth_Period_A)  /*  if AB test fails */
#endif
                  {
                      Error_Status = Error_Status ;
                      goto Stall;
                      /*  revert to First_Edge */
                  }
                        
                Crank_State = CRANK_COUNTING;
                Clear (flag0); 
                Set (flag1);  /* CRANK_FLAGS_COUNTING */
                
                /* set up window for next tooth */
              
                Tooth_Period_B_norm = Tooth_Period_B/(Missing_Tooth_Count+1);
                /* calculate average tooth period across the Gap */
#ifdef __ETEC__
				// for ASH WARE, per the TR18037 specification, in order to get the integer
				// portion of an int*fract multiply, the library function mulir/muliur must
				// be used
                Half_Window_Width = muliur(Tooth_Period_B_norm, Windowing_Ratio_After_Gap);
#else
                Half_Window_Width = Tooth_Period_B_norm * Windowing_Ratio_After_Gap;
#endif
                erta = Tooth_Time + Tooth_Period_B_norm - Half_Window_Width;
                ertb = erta + (Half_Window_Width<<1);
                ClearMatchALatch();  /* set up window for next tooth */   
                ClearMatchBLatch();
                WriteErtAToMatchAAndEnable();
                WriteErtBToMatchBAndEnable();;           
              }
      }
/*--------------------------------------------------------------------------+
| THREAD NAME: Other                                                        |
| State: Various, see below                                                 |
| DESCRIPTION: If edge in window set up next window otherwise timeout.      |
+--------------------------------------------------------------------------*/
    else if (MatchA_TransB  && MatchB_TransA  && CRANK_FLAGS_OTHER)
      {
CRANK_Other:
          DisableMatchesInThread ();
          if (channel.TDLA==0)       /*timeout */
            {
#ifndef NO_ERRATTA_2477         
                if  ( Crank_State !=CRANK_TOOTH_AFTER_GAP_NOT_HRM ) 
                {     
#endif
                if (Blank_Time_Expired_Flag == 1 )      /* Blank_Time has expired */
                  {
                    /*-----------------------------------------------------------+
                    | State: S3                                                  |
                    | Description: Handle Blank_time timeout                     |
                    +-----------------------------------------------------------*/
                      Blank_Time_Expired_Flag = 0;     /* timeout is not expected */
                      if (IsLatchedFuncMode0 ())        /*Detect Rising Edge */
                        {
                            OnTransA (low_high);
                        }
                      else      /* Detect Falling Edge */
                        {
                            OnTransA (high_low);
                        }
                      erta = tcr1;      /* schedule an immediate match to open the window */
                      ClearMatchALatch ();
                      /* clear MatchB & don't set new match value so it always enabled window is fully open */
                      ClearMatchBLatch ();      
                      WriteErtAToMatchAAndEnable ();
                      Crank_State = CRANK_BLANK_TEETH;
                      if (Blank_Tooth_Count == 0)   /* if no blank teeth are specified skip BLANK_TEETH */
                        {
                            Crank_State = CRANK_FIRST_EDGE;
                        }                      
                  }
                else            /* An unexpected timeout has occurred */
                  {
                    /*------------------------------------------------------------+
                    | State: S15                                                  |
                    | Description: Handle unexpected timeout, reset to First_edge.|
                    +------------------------------------------------------------*/
                      Crank_State = CRANK_FIRST_EDGE;
                      Error_Status = Error_Status | CRANK_TIMEOUT;

                      Clear(flag0);
                      Clear(flag1); /* CRANK_FLAGS_OTHER */
                      erta=tcr1;
                      ertb = erta + First_Tooth_Timeout;  /* Timeout time */
                      ClearMatchALatch();  /* set up window for next tooth */   
                      ClearMatchBLatch();
                      WriteErtAToMatchAAndEnable();
                      WriteErtBToMatchBAndEnable();
                    }
                 }
#ifndef NO_ERRATTA_2477 
                else /*Crank_State == CRANK_TOOTH_AFTER_GAP_NOT_HRM */
                {
                    /*--------------------------------------------------------------------------+
                    | THREAD NAME: Tooth_before_gap_not_HRM                                     |
                    | State: S13_2477                                                           |
                    | DESCRIPTION: Write MISSCNT when not in High Rate Mode.                    |
                    +--------------------------------------------------------------------------*/
                      ActionUnitB (MatchTCR1, CaptureTCR2, GreaterEqual);

#ifdef __ETEC__
					  // for ASH WARE, per the TR18037 specification, in order to get the integer
					  // portion of an int*fract multiply, the library function mulir/muliur must
					  // be used
                      Half_Window_Width = muliur(Tooth_Period_A, Windowing_Ratio_Across_Gap);
#else
                      Half_Window_Width = Tooth_Period_A * Windowing_Ratio_Across_Gap;
#endif
                      erta = Tooth_Time +  (Tooth_Period_A>>1); 
                      /* window open half a tooth period after last tooth */
                      ertb = Tooth_Time + Tooth_Period_A * ( Missing_Tooth_Count +1 ) + Half_Window_Width;
                      /* window close time */
              
                      ClearMatchALatch();  /* set up window for next tooth */   
                      ClearMatchBLatch();
                      WriteErtAToMatchAAndEnable();
                      WriteErtBToMatchBAndEnable();                      
                      Crank_State = CRANK_TOOTH_AFTER_GAP;
                      Set (flag0);
                      Clear (flag1); /* CRANK_FLAGS_TOOTH_AFTER_GAP */
                      tpr = tpr | Missing_tooth_count_mask;
                }
             }   
#endif
          else /* edge in acceptance window */
               /* in some cases window will have been wide open i.e. no window */
            {
                Last_Tooth_Time = Tooth_Time;     /* backup Tooth_Time */
                Tooth_Time = erta;
                Clear (TransLatch);     /* Clear transitions */
                switch (Crank_State)
                  {
                  case CRANK_BLANK_TIME:
                    /*------------------------------------------------------------+
                    | State: S2                                                   |
                    | Description: Create a window where no edges are recognised. |
                    +------------------------------------------------------------*/
                      Blank_Time_Expired_Flag = 1;     /* timeout is expected */
                      ertb = Tooth_Time + Blank_Time;   /* Timeout time */
                      erta = tcr1;      /* schedule an immediate match to open the window */
                      ClearMatchALatch(); 
                      ClearMatchBLatch();
                      WriteErtAToMatchAAndEnable();
                      WriteErtBToMatchBAndEnable();
                      OnTransA (NoDetect);      /* don't detect transition during blank time */
                      tcr2 = 0;
                      break;
                  case CRANK_BLANK_TEETH:
                    /*------------------------------------------------------------+
                    | State: S4                                                   |
                    | Description: A number of teeth are ignored.                 |
                    +------------------------------------------------------------*/
                      erta = tcr1;      /* schedule an immediate match to open the window */
                      ClearMatchBLatch ();  /* clear MatchB & don't set new match value */
                                            /* so it always enabled window is fully open */
                                            /* MatchA is left pending; in this channel mode */
                                            /* it doesn't request service */
                      Blank_Tooth_Count--;
                      if (Blank_Tooth_Count == 0)   /* have we used up all the blank_teeth */
                        {
                            Crank_State = CRANK_FIRST_EDGE;
                        }
                      tcr2 = 0;
                      break;
                  case CRANK_FIRST_EDGE:
                    /*------------------------------------------------------------+
                    | State: S5                                                   |
                    | Description: The first edge after the ignored Blank teeth.  |
                    +------------------------------------------------------------*/
                      ertb = Tooth_Time + First_Tooth_Timeout;  /* Timeout time */
                      WriteErtBToMatchBAndEnable();
                      ClearMatchBLatch();
                      Crank_State = CRANK_SECOND_EDGE;
                      tcr2 = 0;
                      First_Run=1;
                      break;
                  case CRANK_SECOND_EDGE:
                    /*------------------------------------------------------------+
                    | State: S6                                                   |
                    | Description: The second edge after the ignored Blank teeth. |
                    | Ensure window is opened immediately and closes after the gap|
                    | if to were to occur.                                        |
                    +------------------------------------------------------------*/
                      Tooth_Period_A = Tooth_Time - Last_Tooth_Time;
                      Crank_State = CRANK_TEST_POSSIBLE_GAP;
                      tcr2 = 0;
                                                                  
#ifdef __ETEC__
					  // for ASH WARE, per the TR18037 specification, in order to get the integer
					  // portion of an int*fract multiply, the library function mulir/muliur must
					  // be used
                      Half_Window_Width = muliur(Tooth_Period_A, Windowing_Ratio_Across_Gap);
#else
                      Half_Window_Width = Tooth_Period_A * Windowing_Ratio_Across_Gap;
#endif
                      erta = tcr1; /* open the window immediately */
                      /* need a long timeout in case the Gap is next */
                      ertb = Tooth_Time + (Tooth_Period_A * ( Missing_Tooth_Count+1 )) + Half_Window_Width;
                      ClearMatchALatch();  /* set up window for next tooth */   
                      ClearMatchBLatch();
                      WriteErtAToMatchAAndEnable();
                      WriteErtBToMatchBAndEnable();                                           
                      break;
                  case CRANK_TEST_POSSIBLE_GAP:
                    /*------------------------------------------------------------+
                    | State: S7                                                   |
                    | Description: Test for a possible Gap (AB test).             |
                    | Schedule a window in which the next edge must happen.       |
                    +------------------------------------------------------------*/
                      Tooth_Period_B = Tooth_Time - Last_Tooth_Time;
                      
#ifdef __ETEC__
					  // for ASH WARE, per the TR18037 specification, in order to get the integer
					  // portion of an int*fract multiply, the library function mulir/muliur must
					  // be used
                      if ( muliur(Tooth_Period_B, Gap_Ratio) > Tooth_Period_A)  /* possibly a gap?*/
#else
                      if ( Tooth_Period_B * Gap_Ratio > Tooth_Period_A)  /* possibly a gap?*/
#endif
                        {
                            Crank_State = CRANK_VERIFY_GAP;
                            Tooth_Period_B_norm = Tooth_Period_B/(Missing_Tooth_Count+1);
                            /* calculate average tooth period across the Gap */
#ifdef __ETEC__
						    // for ASH WARE, per the TR18037 specification, in order to get the integer
						    // portion of an int*fract multiply, the library function mulir/muliur must
						    // be used
                            Half_Window_Width = muliur(Tooth_Period_B_norm, Windowing_Ratio_After_Gap);
#else
                            Half_Window_Width = Tooth_Period_B_norm * Windowing_Ratio_After_Gap;
#endif
                            erta = Tooth_Time + Tooth_Period_B_norm - Half_Window_Width;                            
                            ertb = erta + (Half_Window_Width<<1);
                        }
                      else      /* not a possible gap */
                        {
                            /* Current period can be used in next possible gap test */
                            Tooth_Period_A = Tooth_Period_B;
#ifdef __ETEC__
						    // for ASH WARE, per the TR18037 specification, in order to get the integer
						    // portion of an int*fract multiply, the library function mulir/muliur must
						    // be used
                            Half_Window_Width = muliur(Tooth_Period_B, Windowing_Ratio_Across_Gap);
#else
                            Half_Window_Width = Tooth_Period_B  * Windowing_Ratio_Across_Gap;
#endif
                            /* have to assume Gap is next; so use Windowing_Ratio_Across_Gap */
                            /* it is expected that the Windowing_Ratio_Across_Gap will be    */
                            /* numerically larger than Windowing_Ratio_Normal                */

                            erta = Tooth_Time + Tooth_Period_B  - Half_Window_Width;
                            
                            /* need a long timeout in case the Gap is next */
                            ertb = Tooth_Time + (Tooth_Period_B * ( Missing_Tooth_Count+1 )) + Half_Window_Width;
                        }
                      tcr2 = 0;
                 

                      
                      ClearMatchALatch();   
                      ClearMatchBLatch();
                      WriteErtAToMatchAAndEnable();
                      WriteErtBToMatchBAndEnable();
                      break;
                  case CRANK_VERIFY_GAP:
                    /*------------------------------------------------------------+
                    | State: S9                                                   |
                    | Description: Verify a possible Gap (BA portion of ABA test).|
                    | Schedule a window in which the next edge must happen.       |
                    +------------------------------------------------------------*/
                      Tooth_Period_A = Tooth_Time - Last_Tooth_Time;
#ifdef __ETEC__
					  // for ASH WARE, per the TR18037 specification, in order to get the integer
					  // portion of an int*fract multiply, the library function mulir/muliur must
					  // be used
                      if ( muliur(Tooth_Period_B, Gap_Ratio) > Tooth_Period_A)    /* Gap is verified */
#else
                      if ( Tooth_Period_B * Gap_Ratio > Tooth_Period_A)    /* Gap is verified */
#endif
                        {
                            Crank_State = CRANK_GAP_VERIFIED;
                            Tooth_Count = 2; /* this makes Tooth_Count=1 after gap */

                           /* calculate trr based on last measured period */
                           tpr_reg.TICKS = (Ticks_Per_Tooth - 1);
                           trr = ((Tooth_Period_A << 3 ) / (Ticks_Per_Tooth)) << 6;                     
                           tcr2 = Ticks_Per_Tooth ; 
#ifndef NO_ERRATTA_2477
                           Tooth_Angle_Target = Ticks_Per_Tooth;
#endif                                                  
                           goto Calc_window;
                        }
                      else      /* Gap not verified */
                        {
                            Crank_State = CRANK_TEST_POSSIBLE_GAP;
#ifdef __ETEC__
						    // for ASH WARE, per the TR18037 specification, in order to get the integer
						    // portion of an int*fract multiply, the library function mulir/muliur must
						    // be used
                            Half_Window_Width = muliur(Tooth_Period_A, Windowing_Ratio_Across_Gap);
#else
                            Half_Window_Width = Tooth_Period_A * Windowing_Ratio_Across_Gap;
#endif
                            /* must assume that the Gap comes next so use Windowing_Ratio_Across_Gap */

                            erta = Tooth_Time + Tooth_Period_A - Half_Window_Width;
                            /* need a long timeout in case the Gap is next */
                            ertb = Tooth_Time + (Tooth_Period_A * ( Missing_Tooth_Count+1 )) + Half_Window_Width;
                         }
                        
                      break;
                  case CRANK_GAP_VERIFIED:
                    /*-----------------------------------------------------------------+
                    | State: S11                                                       |
                    | Description: Tooth after Gap has been verified.                  |
                    | Schedule a window in which the next edge must happen.            |
                    | Update global engine sync status.                                |
                    +-----------------------------------------------------------------*/
                      Tooth_Count++;
#ifndef NO_ERRATTA_2477                      
                      Tooth_Angle_Target = Tooth_Angle_Target + Ticks_Per_Tooth;
#endif                      
                      Crank_State = CRANK_COUNTING;
                      Set (flag1);   /*flag0 already clear */
                      /* CRANK_FLAGS_COUNTING */
                      Tooth_Period_A = Tooth_Time - Last_Tooth_Time; 
                      
                      trr = ((Tooth_Period_A << 3 ) / (Ticks_Per_Tooth)) << 6;
                      Eng_Pos_Sync_Status_g = ENG_POS_FIRST_HALF_SYNC;                      
                      SetChannelInterruptRequest(); /* Tell host that Eng_Pos_Sync_Status_g has changed */
                      goto Calc_window; 
                      break;
                  default:
                      Error_Status = Error_Status |  CRANK_INTERNAL_ERROR;
                      break;                                            
                  }
            }
      }
/*--------------------------------------------------------------------------+
| THREAD NAME: CRANK_LSR                                                    |
| State: S18                                                                |
| DESCRIPTION: Update Eng_Pos_Sync_Status_g when CAM sends a Link.          |
| In this thread Eng_Pos_Sync_Status_g is decided based on the following    |
| table. The value in the table is Eng_Pos_Sync_Status_g.                   | 
|                                                                           |
| +-----------------------+--------------------------+--------------------+ |
| |Curent                 | CAM_State = SYNC_ANGLE   |CAM_State = LOST    | |
| |Eng_Pos_Sync_Status_g  |                          |                    | |
| |-----------------------|--------------------------|--------------------| |
| |ENG_POS_FIRST_HALF_SYNC|  ENG_POS_PRE_FULL_SYNC   |X                   | |
| |ENG_POS_HALF_SYNC      |  ENG_POS_FULL_SYNC       |X                   | |
| |X                      |  X                       |ENG_POS_HALF_SYNC   | |
| +-----------------------+--------------------------+--------------------+ |
+--------------------------------------------------------------------------*/
    else if (LinkServiceRequest == 1 && m1==0 && m2==0)
    /* m1 means MatchA_TransB */
    /* m2 means MatchB_TransA */
      {
CRANK_Link:
          DisableMatchesInThread ();
CRANK_LSR:  Clear (LSRLatch);     /* Clear LSR */
            if (*CAM_State == CAM_SYNC_ANGLE)
            {
            	if (Eng_Pos_Sync_Status_g == ENG_POS_FIRST_HALF_SYNC)
            	{
            		Eng_Pos_Sync_Status_g = ENG_POS_PRE_FULL_SYNC;
            	}
            	else if ( Eng_Pos_Sync_Status_g == ENG_POS_HALF_SYNC)
            	{
            		Eng_Pos_Sync_Status_g = ENG_POS_FULL_SYNC;
            	}            	
            }
            else if (*CAM_State == CAM_SYNC_LOST)
            {
              Eng_Pos_Sync_Status_g = ENG_POS_HALF_SYNC;
            }
            SetChannelInterruptRequest(); 
            /* Tell host that Eng_Pos_Sync_Status_g has changed */
      }
/*--------------------------------------------------------------------------+
| THREAD NAME: Invalid_m1                                                   |
| State: S16                                                                |
| DESCRIPTION: Clean up, write error code, set GlobalErrorFlag              |
+--------------------------------------------------------------------------*/
    else if (MatchA_TransB && m2 == 0 )
    /* m2 means MatchB_TransA */
      {
CRANK_InvalidM1:
          DisableMatchesInThread ();
          if ( LinkServiceRequest == 1 )
          {
          	goto CRANK_LSR;
          	/* in this case CAM has sent a link while CRANK has either a 
          	MatchA (window open) or an edge in the window (TransB). Service 
          	the link first. i.e. leave the Transition	to be serviced later by
          	CRANK. MatchA does not request service in this channel mode.  */
          }
          Clear (TransLatch);   /* Clear transitions */
          ClearMatchALatch ();
          Error_Status = Error_Status | CRANK_INVALID_M1;
          SetGlobalException ();
          /* Global Error could be called here
          Possible future enhancement */      }
/*--------------------------------------------------------------------------+
| THREAD NAME: Invalid_m2                                                   |
| State: S17                                                                |
| DESCRIPTION: Clean up, write error code, set GlobalErrorFlag              |
+--------------------------------------------------------------------------*/
    else if (m1 == 0 && MatchB_TransA )
    /* m1 means MatchA_TransB */
      {
CRANK_:
          DisableMatchesInThread ();
          Clear (TransLatch);   /* Clear transitions */
          ClearMatchBLatch ();
          Error_Status = Error_Status | CRANK_INVALID_M2;
          SetGlobalException ();
          /* Global Error could be called here
          Possible future enhancement */
      }
    else
      {
CRANK_Error:
#ifdef GLOBAL_ERROR_FUNC
          Global_Error_Func ();
#else
          ClearAllLatches ();
#endif
      }
}

/************************************************************************
*  Information exported to Host CPU program.
************************************************************************/
#pragma write h, (::ETPUfilename (cpu/etpu_crank_auto.h));
#pragma write h, (/****************************************************************/);
#pragma write h, (/* WARNING this file is automatically generated DO NOT EDIT IT! */);
#pragma write h, (/*                                                              */);
#pragma write h, (/* This file provides an interface between eTPU code and CPU    */);
#pragma write h, (/* code. All references to the CRANK function should be made   */);
#pragma write h, (/* with information in this file. This allows only symbolic     */);
#pragma write h, (/* information to be referenced which allows the eTPU code to be*/);
#pragma write h, (/* optimized without effecting the CPU code.                    */);
#pragma write h, (/****************************************************************/);
#pragma write h, (#ifndef _ETPU_CRANK_AUTO_H_ );
#pragma write h, (#define _ETPU_CRANK_AUTO_H_ );
#pragma write h, ( );
#pragma write h, (/****************************************************************);
#pragma write h, (* Function Configuration Information. );
#pragma write h, (****************************************************************/);
#pragma write h, (::ETPUliteral(#define FS_ETPU_CRANK_FUNCTION_NUMBER) ::ETPUfunctionnumber(Crank) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_CRANK_TABLE_SELECT)    ::ETPUentrytype(Crank) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_CRANK_NUM_PARMS)       ::ETPUram(Crank) );
#pragma write h, ( );
#pragma write h, (/****************************************************************);
#pragma write h, (* Host Service Request Definitions. );
#pragma write h, (****************************************************************/);
#pragma write h, (::ETPUliteral(#define FS_ETPU_CRANK_INIT       ) CRANK_INIT );
#pragma write h, (::ETPUliteral(#define FS_ETPU_CRANK_ANGLE_ADJUST            ) CRANK_ANGLE_ADJUST);
#pragma write h, (::ETPUliteral(#define FS_ETPU_CRANK_IPH             ) CRANK_IPH);
#pragma write h, ( );
#pragma write h, (/****************************************************************);
#pragma write h, (* Parameter Definitions. );
#pragma write h, (****************************************************************/);

#pragma write h, (::ETPUliteral(#define FS_ETPU_CRANK_SIGNED_ANGLE_ADJUST_OFFSET         )  ::ETPUlocation (Crank, Signed_Angle_Adjust ));
#pragma write h, (::ETPUliteral(#define FS_ETPU_CRANK_TICKS_PER_TOOTH_OFFSET             )  ::ETPUlocation (Crank, Ticks_Per_Tooth));
#pragma write h, (::ETPUliteral(#define FS_ETPU_CRANK_ERROR_STATUS_OFFSET                )  ::ETPUlocation (Crank, Error_Status ));
#pragma write h, (::ETPUliteral(#define FS_ETPU_CRANK_TOOTH_COUNT_OFFSET                 )  ::ETPUlocation (Crank, Tooth_Count ));
#pragma write h, (::ETPUliteral(#define FS_ETPU_CRANK_TOOTH_TIME_OFFSET                  )  ::ETPUlocation (Crank, Tooth_Time));
#pragma write h, (::ETPUliteral(#define FS_ETPU_CRANK_PHYSICAL_CRANK_TEETH_OFFSET        )  ::ETPUlocation (Crank, Physical_Crank_Teeth));
#pragma write h, (::ETPUliteral(#define FS_ETPU_CRANK_WINDOWING_RATIO_AFTER_GAP_OFFSET   )  ::ETPUlocation (Crank, Windowing_Ratio_After_Gap));
#pragma write h, (::ETPUliteral(#define FS_ETPU_CRANK_WINDOWING_RATIO_NORMAL_OFFSET      )  ::ETPUlocation (Crank, Windowing_Ratio_Normal));
#pragma write h, (::ETPUliteral(#define FS_ETPU_CRANK_WINDOWING_RATIO_ACROSS_GAP_OFFSET  )  ::ETPUlocation (Crank, Windowing_Ratio_Across_Gap));
#pragma write h, (::ETPUliteral(#define FS_ETPU_CRANK_WINDOWING_RATIO_TIMEOUT_OFFSET     )  ::ETPUlocation (Crank, Windowing_Ratio_Timeout));
#pragma write h, (::ETPUliteral(#define FS_ETPU_CRANK_MISSING_TOOTH_COUNT_OFFSET         )  ::ETPUlocation (Crank, Missing_Tooth_Count));
#pragma write h, (::ETPUliteral(#define FS_ETPU_CRANK_BLANK_TOOTH_COUNT_OFFSET           )  ::ETPUlocation (Crank, Blank_Tooth_Count ));
#pragma write h, (::ETPUliteral(#define FS_ETPU_CRANK_BLANK_TIME_OFFSET                  )  ::ETPUlocation (Crank, Blank_Time ));
#pragma write h, (::ETPUliteral(#define FS_ETPU_CRANK_FIRST_TOOTH_TIMEOUT_OFFSET         )  ::ETPUlocation (Crank, First_Tooth_Timeout ));
#pragma write h, (::ETPUliteral(#define FS_ETPU_CRANK_HOST_ASSERTED_TOOTH_COUNT_OFFSET   )  ::ETPUlocation (Crank, Host_Asserted_Tooth_Count ));
#pragma write h, (::ETPUliteral(#define FS_ETPU_CRANK_GAP_RATIO_OFFSET                   )  ::ETPUlocation (Crank, Gap_Ratio ));
#pragma write h, (::ETPUliteral(#define FS_ETPU_CRANK_ANGLE_START_COUNT_OFFSET           )  ::ETPUlocation (Crank, Angle_Start_Count ));
#pragma write h, (::ETPUliteral(#define FS_ETPU_CRANK_BLANK_TIME_EXPIRED_FLAG_OFFSET     )  ::ETPUlocation (Crank, Blank_Time_Expired_Flag ));
#pragma write h, (::ETPUliteral(#define FS_ETPU_CRANK_MISSING_TOOTH_COUNT_MASK_OFFSET    )  ::ETPUlocation (Crank, Missing_tooth_count_mask ));
#pragma write h, (::ETPUliteral(#define FS_ETPU_CRANK_STATE_OFFSET                       )  ::ETPUlocation (Crank, Crank_State) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_CRANK_TOOTH_PERIOD_A_OFFSET              )  ::ETPUlocation (Crank, Tooth_Period_A ));
#pragma write h, (::ETPUliteral(#define FS_ETPU_CRANK_CAM_STATE_OFFSET                   )  ::ETPUlocation (Crank, CAM_State));
#pragma write h, (::ETPUliteral(#define FS_ETPU_CRANK_LINK_1_OFFSET                      )  ::ETPUlocation (Crank, Link_1) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_CRANK_LINK_2_OFFSET                      )  ::ETPUlocation (Crank, Link_2) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_CRANK_LINK_3_OFFSET                      )  ::ETPUlocation (Crank, Link_3) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_CRANK_LINK_4_OFFSET                      )  ::ETPUlocation (Crank, Link_4) );
#ifndef NO_ERRATTA_2477         
#pragma write h, (::ETPUliteral(#define FS_ETPU_CRANK_TOOTH_ANGLE_TARGET_OFFSET)  ::ETPUlocation (Crank, Tooth_Angle_Target) );
#endif
#pragma write h, ( );
#pragma write h, (/* crank_edge_polarity options */);
#pragma write h, (::ETPUliteral(#define FS_ETPU_CRANK_FM0_RISING_EDGE)  CRANK_FM0_ACTIVE_RISING_EDGE );
#pragma write h, (::ETPUliteral(#define FS_ETPU_CRANK_FM0_FALLING_EDGE) CRANK_FM0_ACTIVE_FALLING_EDGE );
#pragma write h, ( );
#pragma write h, (/* crank_priority options ; required for GCT */);
#pragma write h, (::ETPUliteral(#define FS_ETPU_CRANK_PRIORITY_DISABLE  FS_ETPU_PRIORITY_DISABLE  /* Disable */) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_CRANK_PRIORITY_HIGH     FS_ETPU_PRIORITY_HIGH     /* High*/) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_CRANK_PRIORITY_MIDDLE   FS_ETPU_PRIORITY_MIDDLE   /* Middle*/) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_CRANK_PRIORITY_LOW      FS_ETPU_PRIORITY_LOW      /* Low*/) );
#pragma write h, ( );
#pragma write h, (/* Error codes */);
#pragma write h, (::ETPUliteral(#define FS_ETPU_CRANK_NO_ERROR)    CRANK_NO_ERROR );
#pragma write h, (::ETPUliteral(#define FS_ETPU_CRANK_INVALID_M1)  CRANK_INVALID_M1 );
#pragma write h, (::ETPUliteral(#define FS_ETPU_CRANK_INVALID_M2)  CRANK_INVALID_M2 );
#pragma write h, (::ETPUliteral(#define FS_ETPU_CRANK_TIMEOUT)     CRANK_TIMEOUT );
#pragma write h, (::ETPUliteral(#define FS_ETPU_CRANK_STALL)       CRANK_STALL );
#pragma write h, (::ETPUliteral(#define FS_ETPU_CRANK_INTERNAL_ERROR)     CRANK_INTERNAL_ERROR );
#pragma write h, ( );
#pragma write h, (/* Crank states */);                             
#pragma write h, (::ETPUliteral(#define FS_ETPU_CRANK_SEEK)              CRANK_SEEK);       
#pragma write h, (::ETPUliteral(#define FS_ETPU_CRANK_BLANK_TIME)        CRANK_BLANK_TIME);       
#pragma write h, (::ETPUliteral(#define FS_ETPU_CRANK_BLANK_TEETH)       CRANK_BLANK_TEETH);      
#pragma write h, (::ETPUliteral(#define FS_ETPU_CRANK_FIRST_EDGE)        CRANK_FIRST_EDGE);       
#pragma write h, (::ETPUliteral(#define FS_ETPU_CRANK_SECOND_EDGE)       CRANK_SECOND_EDGE);      
#pragma write h, (::ETPUliteral(#define FS_ETPU_CRANK_TEST_POSSIBLE_GAP) CRANK_TEST_POSSIBLE_GAP);
#pragma write h, (::ETPUliteral(#define FS_ETPU_CRANK_VERIFY_GAP)        CRANK_VERIFY_GAP);       
#pragma write h, (::ETPUliteral(#define FS_ETPU_CRANK_GAP_VERIFIED)      CRANK_GAP_VERIFIED);     
#pragma write h, (::ETPUliteral(#define FS_ETPU_CRANK_COUNTING)          CRANK_COUNTING);         
#pragma write h, (::ETPUliteral(#define FS_ETPU_CRANK_TOOTH_BEFORE_GAP)  CRANK_TOOTH_BEFORE_GAP);
#pragma write h, (::ETPUliteral(#define FS_ETPU_CRANK_TOOTH_AFTER_GAP)   CRANK_TOOTH_AFTER_GAP); 
#pragma write h, (::ETPUliteral(#define FS_ETPU_CRANK_TOOTH_AFTER_GAP_NOT_HRM)   CRANK_TOOTH_AFTER_GAP_NOT_HRM); 
#pragma write h, ( );
#pragma write h, (/* System Sync States */);
#pragma write h, (::ETPUliteral(#define FS_ETPU_ENG_POS_SEEK)             ENG_POS_SEEK);      
#pragma write h, (::ETPUliteral(#define FS_ETPU_ENG_POS_FIRST_HALF_SYNC)  ENG_POS_FIRST_HALF_SYNC); 
#pragma write h, (::ETPUliteral(#define FS_ETPU_ENG_POS_PRE_FULL_SYNC)    ENG_POS_PRE_FULL_SYNC); 
#pragma write h, (::ETPUliteral(#define FS_ETPU_ENG_POS_FULL_SYNC)        ENG_POS_FULL_SYNC); 
#pragma write h, (::ETPUliteral(#define FS_ETPU_ENG_POS_HALF_SYNC)        ENG_POS_HALF_SYNC); 
#pragma write h, ( );
#pragma write h, (/* Global variables : shared between functions */);
#pragma write h, (::ETPUliteral(#define FS_ETPU_ENG_POS_SYNC_STATUS_GLOBAL_OFFSET          )  ::ETPUlocation (Eng_Pos_Sync_Status_g) );
#pragma write h, ( );
#pragma write h, (#endif );

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
 * Revision 1.21  2009/09/04 09:10:44  r47354
 * Fix bug for workaround for Errata 2477. Tooth_Angle_Target was not being updated in a TIMEOUT condition.
 * Fix bug where Tooth_Count was not incremented for the tooth before the Gap.
 * Made Tooth_Angle_Target host visible.
 *
 * Revision 1.20  2008/05/21 13:57:11  r47354
 * Changes based on test release 03 reported problems:-
 * ENG_POS_HALF_SYNC now exported to *auto.h file
 * if tooth window close time is equal to transition detection time, crank internal error is set - bug now resolved
 * compilation errors with #define NO_ERRATTA_2477 resolved
 * interrupt now generated on all system state changes
 *
 * Revision 1.19  2008/05/01 15:29:42  r47354
 * Major overhaul based on output of Global team meeting held in EKB in March 08
 *
 * Revision 1.18  2008/04/03 12:49:40  r47354
 * Fixes for CAM in second half bug.
 *
 * Revision 1.17  2008/02/22 10:34:33  r47354
 * Replace erroneous use of ConfigMatch_AB
 * Add support for errata 2477
 *
 * Revision 1.16  2008/01/25 15:08:57  r47354
 * In state 13a mask late teeth by half a tooth period. In 36-1 configurations it was possible to mask the tooth after the gap
 *
 * Revision 1.15  2008/01/25 10:07:58  r47354
 * window needs to be wider under noise in the previous window situations.
 *
 * Revision 1.14  2008/01/11 14:58:12  r47354
 * Revert to matches enabled in thread.
 *
 * Turn off matches using DisableMatchDetection so that neither match can happen until it is pre-programmed.
 *
 * match is scheduled for tcr1+1. This means the window won't open until the timebase starts.
 *
 * Revision 1.13  2008/01/10 14:22:36  r47354
 * EnableMatchesInThread in init thread.
 *
 * Revision 1.12  2008/01/10 09:11:28  r47354
 * Make default trr be 0xffffff at init. Solves race condition in state 9.
 * Remove redundant writes to tpr_reg.TICKS in states 11,12,13.
 *
 * Revision 1.11  2007/12/20 11:38:35  r47354
 * In the Test Possible Gap thread the window is opened immediately. This prevents aliasing if the GAP if the first period to be measured.
 * TPR.TICKS is updated from PRAM on every tooth.
 *
 * Revision 1.10  2007/12/18 16:10:19  r47354
 * set tcr2 to 0 at initialisation.
 *
 * Revision 1.9  2007/11/29 14:04:21  r47354
 * Change CRANK --> Crank in #pragma statements
 *
 * Revision 1.8  2007/11/28 09:02:40  r47354
 * Make function name be lower case i.e. CRANK --> Crank.
 * Remove errant ";" after Blank_Time_Expired_Flag declaration.
 *
 * Revision 1.7  2007/11/28 08:46:58  r47354
 * Make all variables unsigned.
 * Fix a few typos in the comments.
 * A few changes to the auto generated file for GCT compliance.
 *
 * Revision 1.6  2007/10/11 13:21:45  r47354
 * Mkae Blank_Time_Expired_Flag a channel parameter so it is host visible and can be writen by Host API
 *
 * Revision 1.5  2007/10/11 12:15:27  r47354
 * Removed write to Blank_Time_Expired_Flag in Init thread. Host API can do this.
 * Single write to Tooth_Count = 1 in Tooth_after_gap thread.
 * Host API parameter names tidy up (Add _OFFSET) as required.
 * Export CRANK_INTERNAL_ERROR.
 *
 * Revision 1.4  2007/10/05 09:10:31  r47354
 * Add Host_Asserted_Tooth_Count
 * Comment tidy up
 * Added THREAD NAME:IPH_OR_HOLD.
 * Significantly changed timeout behaviour.
 * Removed unnecessary write of Blank_Time_Expired_Flag = 0 in State:S4.
 * DisableMatchesInThread (); in all threads.
 *
 * Revision 1.3  2007/09/07 15:16:10  r47354
 * Crank_State is no longer global.
 *
 * Revision 1.2  2007/09/05 14:59:27  r47354
 * Post review fixes.
 *
 * Revision 1.1  2007/09/03 15:06:40  r47354
 * Initial revision.
 *
 
 ********************************************************************/
