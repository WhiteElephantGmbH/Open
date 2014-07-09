/*******************************************************************************
*
*  FREESCALE SEMICONDUCTOR INC. 2005
*  ALL RIGHTS RESERVED
*  COPYRIGHT (c)
*  
********************************************************************************
*
*  DESCRIPTION:
*   Current Controller.
*
********************************************************************************
*
*  REVISION HISTORY:
*                                                         
*  REVISION    AUTHOR       DATE        DESCRIPTION OF CHANGE                  
*  --------    -----------  ---------   ------------------------------------                  
*  0.1         A. Butok     10/Feb/04   Initial version of file.               
*  1.0         M. Brejl     21/Feb/05   Update to new coding style and compiler.
*  1.1         M. Brejl     07/Dec/06   PID controller call using new macro.
*
*******************************************************************************/
#ifdef __ETEC__  // ASH WARE
#include <etpu_std.h>
#else  // Byte Craft
#ifndef __ETPUC_H
#include <etpuc.h>          /* Defines eTPU hardware */
#endif
#ifndef __ETPUC_COMMON_H
#include <eTPUc_common.h>   /* Standard way to use eTPU */
#endif
#endif

/***********************************/
/* Verify performance requirements */
/***********************************/
#ifdef __ETEC__  // ASH WARE
#pragma verify_wctl  CC_FUNC                82  steps  28 rams
#pragma exclude_wctl CC_FUNC::CC_FUNC_Error
#endif

#ifdef CC_FUNCTION_NUMBER /* function is being compiled as part of a set? */
#pragma ETPU_function CC_FUNC, standard @ CC_FUNCTION_NUMBER;
#else
#pragma ETPU_function CC_FUNC, standard;
#endif

/************************************************************************
*  Includes.
************************************************************************/
#include "etpuc_mc_ctrl.c"

/************************************************************************
*  Definitions. 
*************************************************************************/

/* HSR values */
#define CC_HSR_INIT_SLAVE           7
#define CC_HSR_INIT_MASTER          5
#define CC_HSR_CALC                 2

/* FM modes */
#define CC_PID_OFF                 (fm0==0)
#define CC_PID_ON                  (fm0==1)

/************************************************************************
* NAME: CC 
*
* DESCRIPTION: Current Controller.  
* 
* FUNCTION PARAMETERS:
*
*  period            - Applies in master mode only:
*                      Update period (in TCR1 ticks).
*  start_offset      - Applies in master mode only:
*                      Offset from initialization to first match (in TCR1 ticks)
*  services_per_irq  - Number of updates per one IRQ to CPU
*  link_chan         - A channel to send link to after update.
*  *p_pid            - Pointer to PID controller parameters & state variables
*                      structure.
*  i_desired         - Desired value of current.
*  error             - PID input error.
*  i_measured        - Measured value of current.
*  *p_output         - Pointer to output value is written to.
*************************************************************************/
void CC_FUNC ( int24     period, 
               int24     start_offset, 
      unsigned int24     services_per_irq,
      unsigned int8      link_chan,
      unsigned int24   * p_pid,   /* mc_ctrl_pid_t *  */
          fract24   i_desired,
          fract24   error,
          fract24   i_measured, 
          fract24 * p_output)
{
  static int24 edge_time;          /* Time of first edge. Updated each period */
  static int24 service_counter;    /* Counts down from services_per_irq to zero */
  
/*******************************************************************************
* THREAD NAME: INIT_MASTER
* DESCRIPTION: Initialize a channel to run the CC function in master mode.
*              1. Disable matches in thread in case there are any previous
*                 pending matches. This could happen if the channel was
*                 running another function before this one.
*              2. Configure pin actions to no_detect on transition and
*                 no_change on match.
*              3. Configure channel to use TCR1 clock.
*              4. Select SingleMatch-SingleTransition channel mode.
*              5. Enable match and transition event handling.
*              6. Schedule first match after start_offset.
*              7. Continue with common init processing.
*******************************************************************************/
  if (hsr==CC_HSR_INIT_MASTER)
  {
CC_FUNC_InitMaster:
    DisableMatchesInThread();

    OnTransA(NoDetect);
    OnTransB(NoDetect);
    ActionUnitA(MatchTCR1, CaptureTCR1, GreaterEqual);
    SingleMatchSingleTransition();
    EnableEventHandling(); 
    erta = tcr1+start_offset;     /* Time of first match */
    edge_time = erta;             /* Save time of first match to edge_time */
    EnableMatchA();               /* Schedule the match */
    OnMatchA(NoChange);
    OnMatchB(NoChange);
    goto CC_INIT_COMMON;
  }
/*******************************************************************************
* THREAD NAME: INIT_SLAVE
* DESCRIPTION: Initialize a channel to run the CC function in slave mode.
*              1. Disable matches in thread in case there are any previous
*                 pending matches. This could happen if the channel was
*                 running another function before this one.
*  common init processing:
*              2. Reset service counter.
*              3. Set pin off.
*              4. set ON_OFF_state = OFF.
*              5. Clear flag0 - ON/OFF mode.
*              6. Enable output buffer - set channel pin direction to output.
*              7. Clear latches.
*******************************************************************************/
  else if (hsr==CC_HSR_INIT_SLAVE)
  {
CC_FUNC_InitSlave:
    DisableMatchesInThread();
CC_INIT_COMMON:
    Pin(SetLow);
    EnableOutputBuffer();
    ClearAllLatches();
    service_counter = services_per_irq;  /* Reset service counter */
  }
/*******************************************************************************
* THREAD NAME: CALC_
* DESCRIPTION: Perform CC calculations.
*              1. If PID is on
*                   calculate PID controller output
*                 else
*                   pass i_desired to output.
*              2. Generate Interrupt each services_per_irq period.
*              3. Clear link service latch.
*******************************************************************************/
  else if ((lsr==1) || (hsr==CC_HSR_CALC))
  {
CC_CALC:
    Pin(SetHigh);
    
    /**********************************************
    * PID Controller.
    **********************************************/
    if(CC_PID_ON) 
    {
      MC_CTRL_PID1( p_output, error, i_desired, i_measured, p_pid);
    }
    else
    {
      *p_output = i_desired;
    }

    /**********************************************
    * Interrupt each services_per_irq period.
    **********************************************/
    if ( --service_counter == 0 )
    {
       SetChannelInterrupt();
       service_counter = services_per_irq;  /* Reset service counter */
    }
    LinkTo(link_chan);
    ClearLSRLatch();
    Pin(SetLow);
  }
/*******************************************************************************
* THREAD NAME: MatchA
* DESCRIPTION: Schedule next periodic match and perform all CC calculations. 
*              1. Schedule next match.
*              2. Goto CC_CALC.
*******************************************************************************/
  else if(MatchA)
  {
CC_FUNC_MatchA:
    erta = edge_time + period;       /* Schedule next match A */
    edge_time = erta;                /* Store edge time */
    EnableMatchA();
    ClearMatchALatch();
    goto CC_CALC;
  }
/*******************************************************************************
* THREAD NAME: UNHANDLED_EVENTS
*******************************************************************************/
  else
  {
CC_FUNC_Error:
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
#pragma write h, (::ETPUfilename (cpu/etpu_cc_auto.h));
#pragma write h, (/**************************************************************** );
#pragma write h, (* WARNING this file is automatically generated DO NOT EDIT IT!    );
#pragma write h, (*                                                                 );
#pragma write h, (* This file provides an interface between eTPU code and CPU       );
#pragma write h, (* code. All references to the CC function should be made with     );
#pragma write h, (* information in this file. This allows only symbolic             );
#pragma write h, (* information to be referenced which allows the eTPU code to be   );
#pragma write h, (* optimized without effecting the CPU code.                       );
#pragma write h, (*****************************************************************/);
#pragma write h, (#ifndef _ETPU_CC_AUTO_H_);
#pragma write h, (#define _ETPU_CC_AUTO_H_);
#pragma write h, ( );
#pragma write h, (/****************************************************************);
#pragma write h, (* Function Configuration Information. );
#pragma write h, (****************************************************************/);
#pragma write h, (::ETPUliteral(#define FS_ETPU_CC_FUNCTION_NUMBER       ) CC_FUNCTION_NUMBER );
#pragma write h, (::ETPUliteral(#define FS_ETPU_CC_TABLE_SELECT          ) ::ETPUentrytype(CC_FUNC) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_CC_NUM_PARMS             ) ::ETPUram(CC_FUNC) );
#pragma write h, ( );
#pragma write h, (/****************************************************************);
#pragma write h, (* Host Service Request Definitions. );
#pragma write h, (****************************************************************/);
#pragma write h, (::ETPUliteral(#define FS_ETPU_CC_INIT_MASTER           ) CC_HSR_INIT_MASTER);
#pragma write h, (::ETPUliteral(#define FS_ETPU_CC_INIT_SLAVE            ) CC_HSR_INIT_SLAVE );
#pragma write h, (::ETPUliteral(#define FS_ETPU_CC_CALC                  ) CC_HSR_CALC );
#pragma write h, ( );
#pragma write h, (/****************************************************************);
#pragma write h, (* Parameter Definitions. );
#pragma write h, (****************************************************************/);
#pragma write h, (::ETPUliteral(#define FS_ETPU_CC_PERIOD_OFFSET         ) ::ETPUlocation (CC_FUNC, period) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_CC_STARTOFFSET_OFFSET    ) ::ETPUlocation (CC_FUNC, start_offset) );      
#pragma write h, (::ETPUliteral(#define FS_ETPU_CC_SERVICESPERIRQ_OFFSET ) ::ETPUlocation (CC_FUNC, services_per_irq) );  
#pragma write h, (::ETPUliteral(#define FS_ETPU_CC_LINKCHAN_OFFSET       ) ::ETPUlocation (CC_FUNC, link_chan) );         
#pragma write h, (::ETPUliteral(#define FS_ETPU_CC_PPID_OFFSET           ) ::ETPUlocation (CC_FUNC, p_pid) );             
#pragma write h, (::ETPUliteral(#define FS_ETPU_CC_IDESIRED_OFFSET       ) ::ETPUlocation (CC_FUNC, i_desired) );         
#pragma write h, (::ETPUliteral(#define FS_ETPU_CC_ERROR_OFFSET          ) ::ETPUlocation (CC_FUNC, error) );             
#pragma write h, (::ETPUliteral(#define FS_ETPU_CC_IMEASURED_OFFSET      ) ::ETPUlocation (CC_FUNC, i_measured) );      
#pragma write h, (::ETPUliteral(#define FS_ETPU_CC_POUTPUT_OFFSET        ) ::ETPUlocation (CC_FUNC, p_output) );          
#pragma write h, ( );
#pragma write h, (/****************************************************************);
#pragma write h, (* Value Definitions. );
#pragma write h, (****************************************************************/);
#pragma write h, (::ETPUliteral(#define FS_ETPU_CC_FM_PID_OFF            ) 0 );
#pragma write h, (::ETPUliteral(#define FS_ETPU_CC_FM_PID_ON             ) 1 );
#pragma write h, ( );
#pragma write h, (#endif);

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
