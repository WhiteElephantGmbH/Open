/****************************************************************************
 * FILE NAME: $RCSfile: etpuc_knock_window.c,v $ COPYRIGHT(c) FREESCALE 2008*
 * DESCRIPTION: 																		All Rights Reserved     *
 * This function generates window outputs for triggering ADC 								*
 * conversions to measure for knock.																				*                                      
 *==========================================================================*
 * ORIGINAL AUTHOR: David Paterson                                          *
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

#ifndef __ETPUC_KNOCK_H
#include <etpuc_knock_window.h>
#endif

/***********************************/
/* Verify performance requirements */
/***********************************/
#ifdef __ETEC__  // ASH WARE
#pragma verify_wctl  knock_window                30  steps 20 rams
#pragma exclude_wctl knock_window::KNOCK_Init
#endif

#ifdef KNOCK_WINDOW_FUNCTION_NUMBER    /* function is being compiled as part 
																				a set? */
#pragma ETPU_function knock_window, standard @ KNOCK_WINDOW_FUNCTION_NUMBER;
#else
#pragma ETPU_function knock_window, standard; /* stand alone */
#endif

/* General Notes: */
/*--------------------------------------------------------------------------+
| CHANNEL PARAMETERS: (host modifiable)                                     |
|                                                                           |
| Number_Of_Windows - the number of knock windows. 													|            
| *TCR2_counts_Per_Engine_Cycle - pointer to the CAM variable (Number of    |
|																TCR2 counts in an engine cycle)             |  
| *Table_Start_Ptr - pointer to the start of the table of knock angles			|       
| 																																					|
+--------------------------------------------------------------------------*/
void knock_window( unsigned int8 Number_Of_Windows,
						unsigned int24 *TCR2_counts_Per_Engine_Cycle,
						unsigned int24 *Table_Start_Ptr
						)
{
	
/*--------------------------------------------------------------------------+
| LOCAL VARIABLES: (currently implemented as channel paramaters)            |
|                                                                           |
| Number_Of_Windows_Remaining - counter to keep track of the number 				|
|														of windows. Decremented after each window is  	|
|														output and reset after all windows output				|
| Angle_Open_Coherent - coherent open angle from macro for atomic transfer  |
| Angle_Width_Coherent - coherent angle width from macro for atomic transfer|
| ECZC - Engine_Cycle_Zero_Count calculated using 													|
																							*TCR2_counts_Per_Engine_Cycle |
| *Current_Table_Ptr - pointer to current position in the angle table				|
+--------------------------------------------------------------------------*/      
static unsigned int8 Number_Of_Windows_Remaining;
static unsigned int24 Angle_Open_Coherent;
static unsigned int24 Angle_Width_Coherent;
static unsigned int24 ECZC;
static unsigned int24 *Current_Table_Ptr;

/*--------------------------------------------------------------------------+
| THREAD NAME: KNOCK_INIT                                                   |
| State: S0                                                                 |
| DESCRIPTION: Initialise a channel to run the KNOCK function.              |
+--------------------------------------------------------------------------*/
    if ( (HostServiceRequest == KNOCK_INIT) || (lsr == 1) )
    {
KNOCK_Init	:    
		ClearAllLatches();
	
		if ( IsFunctionMode0() ) 			/* FM = 1x */
		{
		SetPinLow();									/* Rising edge is the trigger. Initialise 
																	pin to low */
		OnMatchA(PinHigh);
    OnMatchB(PinLow);
		}
		
		else 													/* FM = 0x */
		{
		SetPinHigh();									/* Falling edge is the trigger. Initialise 
																	pin to high */
		OnMatchA(PinLow); 
    OnMatchB(PinHigh);
		}	
		
		DisableMatchesInThread();
    DisableMatchDetection(); 		/* prevent both matches from happening */
    EnableOutputBuffer(); 			/* needed for Coldfire products */
    
    BothMatchSingleTransition();	/* default -cause an interrupt on close 
    																															window */
      
    if ( IsFunctionMode1() )			
		{															/* cause an interrupt on open window */ 
      EitherMatchNonBlockingSingleTransition();	
		}
		
      ActionUnitA( MatchTCR2, CaptureTCR2, GreaterEqual);
      ActionUnitB( MatchTCR2, CaptureTCR2, GreaterEqual);
      
      Current_Table_Ptr = Table_Start_Ptr;			/* Set inital table pointers */ 

			/* Assembly code for coherent transfer using pointers */
			#asm
			ram diob <- Current_Table_Ptr.
			nop.
			ram p <- by diob++.              /* first coherent read */
			alu a = p; ram p <- by diob++.   /* second coherent read */
			ram p -> Angle_Width_Coherent.
			alu p = a; ram p -> Angle_Open_Coherent.
			ram diob -> Current_Table_Ptr.  /* Current_Table_Ptr already updated for next reads */
			#endasm
							                 				
			Number_Of_Windows_Remaining = Number_Of_Windows;			/* Copy Number_Of_Windows 
																														into a local variable */
			
      ECZC = *TCR2_counts_Per_Engine_Cycle;			/* Retrieve initial 
      																					Engine Cycle Zero Count */
      
      erta = ECZC+Angle_Open_Coherent;			/* Set match a to angle open */
      ertb = erta+Angle_Width_Coherent;    /* Set match b to angle close */
                           
      WriteErtAToMatchAAndEnable();
      WriteErtBToMatchBAndEnable();
      EnableEventHandling();
  }
       
/*--------------------------------------------------------------------------+
| THREAD NAME: edge_a                                            						|
| State: S1                                                                 |
| DESCRIPTION: Set channel interrupt only.                                  |
+--------------------------------------------------------------------------*/
    else if ( m1==1 && m2==0 && lsr==0)
    {
KNOCK_EdgeA:    
		ClearMatchALatch();		
		SetChannelInterrupt();		/* enable interrupt for open window */
    }
    
/*--------------------------------------------------------------------------+
| THREAD NAME: edge_b                                            						|
| State: S2                                                                 |
| DESCRIPTION: Update window parameters.                                    |
+--------------------------------------------------------------------------*/
    else if (( m1==0 && m2==1 ) || ( m1==1 && m2==1 ) && lsr==0)
    {
KNOCK_EdgeB:    
		ClearMatchAEvent();
		ClearMatchBEvent();
						
			if ( !IsFunctionMode1() )
      {
      SetChannelInterrupt();		/* enable channel interrupt for close window 
      														(if not had interrupt on open window) */
      }	
      
      /* Dercrement the number of windows remaining */
			Number_Of_Windows_Remaining = Number_Of_Windows_Remaining -1; 	
			
			if (Number_Of_Windows_Remaining == 0)									
			  {
			/* Reset the number of windows to initial value */
			/* Increment the engine cycle zero count by 1 engine cycle */
			Number_Of_Windows_Remaining = Number_Of_Windows;	
			ECZC = ECZC + (*TCR2_counts_Per_Engine_Cycle);		
				
			Current_Table_Ptr = Table_Start_Ptr;	/* Reset the table pointers */
			  }        

			/* Assembly code for coherent transfer using pointers */
			#asm
			ram diob <- Current_Table_Ptr.
			nop.
			ram p <- by diob++.              /* first coherent read */
			alu a = p; ram p <- by diob++.   /* second coherent read */
			ram p -> Angle_Width_Coherent.
			alu p = a; ram p -> Angle_Open_Coherent.
			ram diob -> Current_Table_Ptr.  /* Current_Table_Ptr already updated for next reads */
			#endasm
      
      erta = ECZC+Angle_Open_Coherent;			/* Set match a to angle open */
      ertb = erta+Angle_Width_Coherent;    /* Set match b to angle close */
                           
      WriteErtAToMatchAAndEnable();
      WriteErtBToMatchBAndEnable();
      EnableEventHandling();
    }
    
/*******************************************************************************
* THREAD NAME: UNHANDLED_EVENTS
*******************************************************************************/
   else 
   {
KNOCK_Error:    
#ifdef GLOBAL_ERROR_FUNC
		Global_Error_Func();
#else
		ClearAllLatches();
#endif
   }
}

/************************************************************************
*  Information exported to Host CPU program.
************************************************************************/
#pragma write h, (::ETPUfilename (cpu/etpu_knock_window_auto.h));
#pragma write h, (/****************************************************************/);
#pragma write h, (/* WARNING this file is automatically generated DO NOT EDIT IT! */);
#pragma write h, (/*                                                              */);
#pragma write h, (/* This file provides an interface between eTPU code and CPU    */);
#pragma write h, (/* code. All references to the KNOCK function should be made    */);
#pragma write h, (/* with information in this file. This allows only symbolic     */);
#pragma write h, (/* information to be referenced which allows the eTPU code to be*/);
#pragma write h, (/* optimized without effecting the CPU code.                    */);
#pragma write h, (/****************************************************************/);
#pragma write h, (#ifndef _ETPU_KNOCK_AUTO_H_ );
#pragma write h, (#define _ETPU_KNOCK_AUTO_H_ );
#pragma write h, ( );
#pragma write h, (/****************************************************************);
#pragma write h, (* Function Configuration Information. );
#pragma write h, (****************************************************************/);
#pragma write h, (::ETPUliteral(#define FS_ETPU_KNOCK_WINDOW_FUNCTION_NUMBER) ::ETPUfunctionnumber(knock_window) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_KNOCK_WINDOW_TABLE_SELECT)    ::ETPUentrytype(knock_window) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_KNOCK_WINDOW_NUM_PARMS)       ::ETPUram(knock_window) );
#pragma write h, ( );
#pragma write h, (/****************************************************************);
#pragma write h, (/* Host Service Request Definitions */);
#pragma write h, (/****************************************************************/);
#pragma write h, (::ETPUliteral(#define FS_ETPU_KNOCK_INIT       			) KNOCK_INIT );
#pragma write h, ( );
#pragma write h, (/****************************************************************);
#pragma write h, (/* Parameter Definitions */);
#pragma write h, (/****************************************************************/);
#pragma write h, (::ETPUliteral(#define FS_ETPU_KNOCK_NUMBER_OF_WINDOWS_OFFSET            )  ::ETPUlocation (knock_window, Number_Of_Windows));
#pragma write h, (::ETPUliteral(#define FS_ETPU_KNOCK_TCR2_COUNTS_PER_ENGINE_CYCLE_OFFSET	)  ::ETPUlocation (knock_window, TCR2_counts_Per_Engine_Cycle));
#pragma write h, (::ETPUliteral(#define FS_ETPU_KNOCK_TABLE_START_PTR_OFFSET     					)  ::ETPUlocation (knock_window, Table_Start_Ptr));
#pragma write h, ( );	
#pragma write h, (/* edge_polarity options */);
#pragma write h, (::ETPUliteral(#define FS_ETPU_KNOCK_FM0_RISING_EDGE) KNOCK_FM0_RISING_EDGE );
#pragma write h, (::ETPUliteral(#define FS_ETPU_KNOCK_FM0_FALLING_EDGE) KNOCK_FM0_FALLING_EDGE );
#pragma write h, (/* edge_interrupt options */);
#pragma write h, (::ETPUliteral(#define FS_ETPU_KNOCK_FM1_INT_OPEN) (KNOCK_FM1_INT_OPEN<<1) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_KNOCK_FM1_INT_CLOSE) (KNOCK_FM1_INT_CLOSE<<1) );
#pragma write h, ( );
#pragma write h, (#endif /* _ETPU_KNOCK_AUTO_H_ */);
#pragma write h, ( );

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
 * Revision 1.5  2008/10/30 09:57:14  r43562
 * Updated Number_Of_Windows and Number_Of_Windows_Remaining to int8.
 *
 * Revision 1.4  2008/06/20 09:28:29  r43562
 * Updated version based on Milan's feedback before test.
 *
 * Revision 1.3  2008/05/23 12:45:53  r47354
 * Updated version after code review.
 *
 * Revision 1.2  2008/04/10 14:59:20  r43562
 * This version includes structure and all threads for the knock function.
 *
 
  ********************************************************************/