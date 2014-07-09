/*******************************************************************************
*
*  FREESCALE SEMICONDUCTOR INC. 2004
*  ALL RIGHTS RESERVED
*  COPYRIGHT (c)
*  
********************************************************************************
*
*  DESCRIPTION:
*   Hall Decoder eTPU function
*
********************************************************************************
*
*  REVISION HISTORY:
*                                                         
*  REVISION    AUTHOR       DATE        DESCRIPTION OF CHANGE                  
*  --------    -----------  ---------   ------------------------------------                  
*  1.0         V.Phillipov  05/Oct/04   Generation of interrupts added.
*              Milan Brejl              Ready for set3 release 0.5.
*              Michal Princ
*  1.1         M. Brejl     21/Feb/04   Handling hd_common structure optimized
*                                       using assembler.
*                                       Definition of hd_common_t changed.
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
#pragma verify_wctl  HD                110  steps  23 rams
#pragma exclude_wctl HD::HD_Error
#pragma exclude_wctl HD::HD_Init
#endif

#ifdef HD_FUNCTION_NUMBER  /* function is being compiled as part of a set? */
#pragma ETPU_function HD, alternate @ HD_FUNCTION_NUMBER;
#else
#pragma ETPU_function HD, alternate;
#endif

/************************************************************************
*  Includes.
************************************************************************/
#include "etpuc_pwmc.h"     /* Commutation definitions */
#include "etpuc_mc_comm.c"  /* routine to execute commutation command */

/************************************************************************
*  Definitions.
*************************************************************************/
/* Host Service Requests */
#define HD_HSR_INIT             7
#define HD_HSR_COMMUT_ON        5
#define HD_HSR_COMMUT_OFF       3

/* Function Modes */
#define HD_DIRECTION_ON   (fm0==1)
#define HD_REV_COUNT_ON   (fm1==1)

/* Pin states */
#define HD_PIN_HIGH             1
#define HD_PIN_LOW              0

/* timer options */
#define HD_TCR1                 0
#define HD_TCR2                 1

/************************************************************************
* Common HD paramers structure type definition.   
************************************************************************/
typedef struct {              
  unsigned int24 sector;         /* Number of current sector */
  unsigned int8  direction;      /* Direction number */
  unsigned int24 rev_period;     /* Revolution period */
  unsigned int8  timer;          /* ETPU_HD_TCR1 or ETPU_HD_TCR2 */
           int24 last_edge;      /* Last edge time */
  unsigned int24 sector_period;  /* Commutation period */
           int24 rev_counter;    /* Revolution counter */
} hd_common_t;


/************************************************************************
* NAME: HD
*
* DESCRIPTION: Hall Decoder   
* 
* FUNCTION PARAMETERS:
*
*  sector_mask_LH    - Sector LH_mask, depends on configuration
*  sector_mask_HL    - Sector HL_mask, depends on configuration
*  direction_mask_LH - Direction LH_mask, depends on configuration
*  direction_mask_HL - Direction HL_masl, depends on configuration
*  comm_cmd_LH_I_0   - Commutation command to execute on LH transition 
*                      at incremental direction, as first
*  comm_cmd_LH_I_1   - Commutation command to execute on LH transition
*                      at incremental direction, as second
*  comm_cmd_LH_D_0   - Commutation command to execute on LH transition
*                      at decremental direction, as first 
*  comm_cmd_LH_D_1   - Commutation command to execute on LH transition
*                      at decremental direction, as second
*  comm_cmd_HL_I_0   - Commutation command to execute on HL transition
*                      at incremental direction, as first 
*  comm_cmd_HL_I_1   - Commutation command to execute on HL transition
*                      at incremental direction, as second
*  comm_cmd_HL_D_0   - Commutation command to execute on HL transition
*                      at decremental direction, as first 
*  comm_cmd_HL_D_1   - Commutation command to execute on HL transition
*                      at decremental direction, as second
*  PWMM_chan         - PWMM channel number
*  hd_common         - Pointer to structure of common parameters
*  
*************************************************************************/
void HD(  unsigned int24 sector_mask_LH,   
          unsigned int24 sector_mask_HL,   
          unsigned int24 direction_mask_LH,
          unsigned int24 direction_mask_HL,
          unsigned int32 comm_cmd_LH_I_0,  
          unsigned int32 comm_cmd_LH_I_1,  
          unsigned int32 comm_cmd_LH_D_0,  
          unsigned int32 comm_cmd_LH_D_1,  
          unsigned int32 comm_cmd_HL_I_0,  
          unsigned int32 comm_cmd_HL_I_1,  
          unsigned int32 comm_cmd_HL_D_0,  
          unsigned int32 comm_cmd_HL_D_1,  
                   int24 last_edge_LH,     
                   int24 last_edge_HL,     
                   int8  PWMM_chan,        
          unsigned int24 * hd_common  /* hd_common_t * hd_common */      
)
{
         int24 tmp;

/*--------------------------------------------------------------------------+
| THREAD NAME: INIT                                                         |
| DESCRIPTION: Initialize a channel to run without commutation.             |
+--------------------------------------------------------------------------*/
  if ( hsr==HD_HSR_INIT )
  {
HD_Init:
    /* Configure the channel */
#asm
    /* if (hd_common->timer==HD_TCR1) */
    ram diob <- hd_common.
    alu diob = diob + 0x04.
    ram p31_24 <- by diob++.  // p = timer
    alu nil = p31_24, ccs.
#endasm
    Clear(flag1);
    if (CC.Z == 1)
    {
      ActionUnitA( MatchTCR1, CaptureTCR1, GreaterEqual);      
      OnTransA(AnyTrans);
      SingleMatchSingleTransition();
      tmp = tcr1;
    }
    else 
    {
      ActionUnitA( MatchTCR2, CaptureTCR2, GreaterEqual);      
      OnTransA(AnyTrans);
      SingleMatchSingleTransition();
      tmp = tcr2;
    }
    /* Initialize time values */
    last_edge_HL = tmp;
    last_edge_LH = tmp;
#asm
    /* hd_common->last_edge = tmp; */
    alu p = d;
    ram p -> by diob.  // last_edge = tmp
    ram diob <- hd_common.
#endasm
    /* Initialize sector */
    if (CurrentInputPin == 0) 
    {
#asm
      /* Clear(flag0);
      EnableEventHandling();
	    hd_common->sector = hd_common->sector & sector_mask_HL; */
    chan mtd = enable_mtsr, clear flag0;
    ram p <- sector_mask_HL.
    alu a = p;                 // a = sector_mask_HL
    ram p <- by diob.          // p = sector
    alu p = p & a.             // p = sector & sector_mask_HL
#endasm
    }
    else
    {
#asm
      /* Set(flag0);
      EnableEventHandling();
      hd_common->sector = hd_common->sector | sector_mask_LH; */
    chan mtd = enable_mtsr, set flag0;
    ram p <- sector_mask_LH.
    alu a = p;                 // a = sector_mask_LH
    ram p <- by diob.          // p = sector
    alu p = p | a.             // p = sector | sector_mask_LH
#endasm
    }
#asm
    ram p -> by diob.          // sector = p
#endasm
  }
/*--------------------------------------------------------------------------+
| THREAD NAME: COMMUT_ON                                                    |
| DESCRIPTION: Enable commutations.                                         |
+--------------------------------------------------------------------------*/
  else if ( hsr==HD_HSR_COMMUT_ON )
  {
HD_CommutationOn:
    Set(flag1);
  }
/*--------------------------------------------------------------------------+
| THREAD NAME: COMMUT_OFF                                                   |
| DESCRIPTION: Disable commutations.                                        |
+--------------------------------------------------------------------------*/
  else if ( hsr==HD_HSR_COMMUT_OFF )
  {
HD_CommutationOff:
    Clear(flag1);
  }
/*--------------------------------------------------------------------------+
| THREAD NAME: RISING TRANSITION (LH) with commutation                      |
| DESCRIPTION: 1. Calculate direction (if activated)                        |
|              2. Apply commutation commands                                |
|              3. Calculate HD parameters                                   |
|              4. Increment Revolution Counter (if activated in this phase) |
+--------------------------------------------------------------------------*/
  else if( (m2==1) && (pin==1) && (flag0==0) && (flag1==1))
  {
HD_RisingTransWithCommutation:
    Clear(TransLatch);
    /* Calculculate Direction if activated */
    if (HD_DIRECTION_ON)
    {
#asm
      /* hd_common->direction = hd_common->sector & direction_mask_LH; */
    ram diob <- hd_common.
    ram p <- direction_mask_LH.
    alu a = p;                 // a = direction_mask_LH
    ram p <- by diob.          // p = sector
    alu p31_24 = p & a, ccs.   // p_msb = sector & direction_mask_LH
    ram p31_24 -> by diob.     // direction = p_msb
#endasm      
    }
    /* Perform commutation of PWM phases */
    /* if ( hd_common->direction == 0 ) */
#ifdef __ETEC__  // ASH WARE
	if (CC.Z)
#else  // Byte Craft
    #asm( if Z == 0 then goto HD_LH_2, flush. )
#endif
    {
      PWMCCommutate(comm_cmd_LH_I_0);
      PWMCCommutate(comm_cmd_LH_I_1);
    } 
    /* else */
#ifdef __ETEC__  // ASH WARE
	else
#else  // Byte Craft
    #asm( goto HD_LH_3, flush. )
#endif
HD_LH_2:
    {
      PWMCCommutate(comm_cmd_LH_D_0);
      PWMCCommutate(comm_cmd_LH_D_1);
    } 
HD_LH_3:
    /* force PWMM channel to reload (and apply new phase options) */
    tmp = GetCurrentChanNum();
    SwitchToChannel(PWMM_chan);
    Set(flag0);
    SwitchToChannel(tmp);
    
    goto HD_LH;
  }
/*--------------------------------------------------------------------------+
| THREAD NAME: RISING TRANSITION (LH) without commutation                   |
| DESCRIPTION: 1. Calculate direction (if activated)                        |
|              2. Calculate HD parameters                                   |
|              3. Increment Revolution Counter (if activated in this phase) |
+--------------------------------------------------------------------------*/
  else if( (m2==1) && (pin==1) && (flag0==0) && (flag1==0))
  {
HD_RisingTransWithoutCommutation:
    Clear(TransLatch);
    /* Calculculate Direction if activated */
    if (HD_DIRECTION_ON)
    {
#asm
      /* hd_common->direction = hd_common->sector & direction_mask_LH; */
    ram diob <- hd_common.
    ram p <- direction_mask_LH.
    alu a = p;                 // a = direction_mask_LH
    ram p <- by diob.          // p = sector
    alu p31_24 = p & a, ccs.   // p_msb = sector & direction_mask_LH
    ram p31_24 -> by diob.     // direction = p_msb
#endasm      
    }
HD_LH:
    /* Calculate HD parametres */
#asm
    ram diob <- hd_common.
    /* hd_common->sector = hd_common->sector | sector_mask_LH; */
    ram p <- sector_mask_LH.
    alu a = p.                 // a = sector_mask_LH
    ram p31_0 <- by diob.      // p31_24 = direction, p23_0 = sector
    alu p = p | a.             // p = sector | sector_mask_LH
    ram p -> by diob++.        // sector = p
    /* hd_common->rev_period = erta - last_edge_LH;
       last_edge_LH = erta; */
    ram p <- last_edge_LH.     // p = last_edge_LH
    alu p = erta - p;          // p = erta - last_edge_LH
    ram p -> by diob++.        // rev_period = p
    alu p = erta;
    ram p -> last_edge_LH.     // last_edge_LH = erta
    /* hd_common->sector_period = erta - hd_common->last_edge;
       hd_common->last_edge = erta; */
    alu nil = p31_24, ccs;     // test direction flags
    ram p <- by diob.          // p = last_edge
    alu d = erta - p.          // d = erta - last_edge
    alu p = erta;
    ram p -> by diob++.        // last_edge = erta
    alu p = d;
    ram p -> by diob++.        // sector_period = p
#endasm

    /* Calculate Revolution counter if activated */
    if (HD_REV_COUNT_ON)
    {
      /* if ( hd_common->direction == 0 )
           hd_common->rev_counter++; */
#asm
    if Z == 0 then goto HD_LH_1, flush.
    ram p <- by diob.          // p = rev_counter
    alu p = p + 1;             // p = rev_counter + 1
    ram p -> by diob.          // rev_counter = p
HD_LH_1:
#endasm
    }
    Set(flag0);
    SetChannelInterrupt();
  }
/*--------------------------------------------------------------------------+
| THREAD NAME: FALLING TRANSITION (HL) with commutation                     |
| DESCRIPTION: 1. Calculate direction (if activated)                        |
|              2. Apply commutation commands                                |
|              3. Calculate HD parameters                                   |
|              4. Decrement Revolution Counter (if activated in this phase) |
+--------------------------------------------------------------------------*/
  else if( (m2==1) && (pin==0) && (flag0==1) && (flag1==1))
  {
HD_FallingTransWithCommutation:
    Clear(TransLatch);
    /* Calculculate direction if activated */
    if (HD_DIRECTION_ON)
    {
#asm
      /* hd_common->direction = hd_common->sector & direction_mask_HL; */
    ram diob <- hd_common.
    ram p <- direction_mask_HL.
    alu a = p;                 // a = direction_mask_HL
    ram p <- by diob.          // p = sector
    alu p31_24 = p & a, ccs.   // p_msb = sector & direction_mask_HL
    ram p31_24 -> by diob.     // direction = p_msb
#endasm      
    }
    /* Perform commutation of PWM phases */
    /* if ( hd_common->direction == 0 ) */
#ifdef __ETEC__  // ASH WARE
	if (CC.Z)
#else  // Byte Craft
    #asm( if Z == 0 then goto HD_HL_2, flush. )
#endif
    {
      PWMCCommutate(comm_cmd_HL_I_0);
      PWMCCommutate(comm_cmd_HL_I_1);
    } 
    /* else */
#ifdef __ETEC__  // ASH WARE
	else
#else  // Byte Craft
    #asm( goto HD_HL_3, flush. )
#endif
HD_HL_2:
    {
      PWMCCommutate(comm_cmd_HL_D_0);
      PWMCCommutate(comm_cmd_HL_D_1);
    } 
HD_HL_3:
    /* force PWMM channel to reload (and apply new phase options) */
    tmp = GetCurrentChanNum();
    SwitchToChannel(PWMM_chan);
    Set(flag0);
    SwitchToChannel(tmp);
    
    goto HD_HL;
  }
/*--------------------------------------------------------------------------+
| THREAD NAME: FALLING TRANSITION (HL) without commutation                  |
| DESCRIPTION: 1. Calculate direction (if activated)                        |
|              2. Calculate HD parameters                                   |
|              3. Decrement Revolution Counter (if activated in this phase) |
+--------------------------------------------------------------------------*/
  else if( (m2==1) && (pin==0) && (flag0==1) && (flag1==0))
  {
HD_FallingTransNoCommutation:
    Clear(TransLatch);
    /* Calculculate direction if activated */
    if (HD_DIRECTION_ON)
    {
#asm
      /* hd_common->direction = hd_common->sector & direction_mask_HL; */
    ram diob <- hd_common.
    ram p <- direction_mask_HL.
    alu a = p;                 // a = direction_mask_HL
    ram p <- by diob.          // p = sector
    alu p31_24 = p & a, ccs.   // p_msb = sector & direction_mask_HL
    ram p31_24 -> by diob.     // direction = p_msb
#endasm      
    }
HD_HL:
    /* Calculate HD parametres */
#asm
    ram diob <- hd_common.
    /* hd_common->sector = hd_common->sector & sector_mask_HL; */
    ram p <- sector_mask_HL.
    alu a = p.                 // a = sector_mask_HL
    ram p31_0 <- by diob.      // p31_24 = direction, p23_0 = sector
    alu p = p & a.             // p = sector & sector_mask_HL
    ram p -> by diob++.        // sector = p
    /* hd_common->rev_period = erta - last_edge_HL;
       last_edge_HL = erta; */
    ram p <- last_edge_HL.     // p = last_edge_HL
    alu p = erta - p;          // p = erta - lastlast_edge_HL_edge_LH
    ram p -> by diob++.        // rev_period = p
    alu p = erta;
    ram p -> last_edge_HL.     // last_edge_HL = erta
    /* hd_common->sector_period = erta - hd_common->last_edge;
       hd_common->last_edge = erta; */
    alu nil = p31_24, ccs;     // test direction flags
    ram p <- by diob.          // p = last_edge
    alu d = erta - p.          // d = erta - last_edge
    alu p = erta;
    ram p -> by diob++.        // last_edge = erta
    alu p = d;
    ram p -> by diob++.        // sector_period = p
#endasm

    /* Calculate Revolution counter if activated */
    if (HD_REV_COUNT_ON)
    {
      /* if ( hd_common->direction > 0 )
           hd_common->rev_counter--; */
#asm
    if Z == 1 then goto HD_HL_1, flush.
    ram p <- by diob.          // p = rev_counter
    alu p = p - 1;             // p = rev_counter - 1
    ram p -> by diob.          // rev_counter = p
HD_HL_1:
#endasm
    }
    Clear(flag0);
    SetChannelInterrupt();
  }
/*--------------------------------------------------------------------------+
| THREAD NAME: NOISE TRANSITION                                             |
| DESCRIPTION: 1. Enable next transition detections                         |
+--------------------------------------------------------------------------*/
  else if( ((m2==1) && (pin==1) && (flag0==1)) || ((m2==1) && (pin==0) && (flag0==0)) )
  {
HD_NoiseTransition:
    Clear(TransLatch);
  }
  else
  {
HD_Error:
#ifdef GLOBAL_ERROR_FUNC
		Global_Error_Func();
#else
		ClearAllLatches();
#endif
  }
}

/*******************************************************************************
*  Information exported to Host CPU program.
*******************************************************************************/
#pragma write h, (::ETPUfilename (cpu/etpu_hd_auto.h));
#pragma write h, (/**************************************************************** );
#pragma write h, (* WARNING this file is automatically generated DO NOT EDIT IT!    );
#pragma write h, (*                                                                 );
#pragma write h, (* This file provides an interface between eTPU code and CPU       );
#pragma write h, (* code. All references to the HD function should be made with     );
#pragma write h, (* information in this file. This allows only symbolic             );
#pragma write h, (* information to be referenced which allows the eTPU code to be   );
#pragma write h, (* optimized without effecting the CPU code.                       );
#pragma write h, (*****************************************************************/);
#pragma write h, (#ifndef _ETPU_HD_AUTO_H_ );
#pragma write h, (#define _ETPU_HD_AUTO_H_ );
#pragma write h, ( );
#pragma write h, (/****************************************************************);
#pragma write h, (* Function Configuration Information. );
#pragma write h, (****************************************************************/);
#pragma write h, (::ETPUliteral(#define FS_ETPU_HD_FUNCTION_NUMBER)        HD_FUNCTION_NUMBER );
#pragma write h, (::ETPUliteral(#define FS_ETPU_HD_TABLE_SELECT)           ::ETPUentrytype(HD) );
#pragma write h, (::ETPUliteral(#define FS_ETPU_HD_NUM_PARMS)              ::ETPUram(HD) );
#pragma write h, ( );
#pragma write h, (/****************************************************************);
#pragma write h, (* Host Service Request Definitions. );
#pragma write h, (****************************************************************/);
#pragma write h, (::ETPUliteral(#define FS_ETPU_HD_HSR_INIT)               HD_HSR_INIT );
#pragma write h, (::ETPUliteral(#define FS_ETPU_HD_HSR_COMMUT_ON)          HD_HSR_COMMUT_ON );
#pragma write h, (::ETPUliteral(#define FS_ETPU_HD_HSR_COMMUT_OFF)         HD_HSR_COMMUT_OFF );
#pragma write h, ( );
#pragma write h, (/****************************************************************);
#pragma write h, (* Parameter Definitions. );
#pragma write h, (****************************************************************/);
#pragma write h, (::ETPUliteral(#define FS_ETPU_HD_SECTORMASKLH_OFFSET)    ::ETPUlocation(HD, sector_mask_LH   ));  
#pragma write h, (::ETPUliteral(#define FS_ETPU_HD_SECTORMASKHL_OFFSET)    ::ETPUlocation(HD, sector_mask_HL   )); 
#pragma write h, (::ETPUliteral(#define FS_ETPU_HD_DIRECTIONMASKLH_OFFSET) ::ETPUlocation(HD, direction_mask_LH));
#pragma write h, (::ETPUliteral(#define FS_ETPU_HD_DIRECTIONMASKHL_OFFSET) ::ETPUlocation(HD, direction_mask_HL));
#pragma write h, (::ETPUliteral(#define FS_ETPU_HD_COMMCMDLHI0_OFFSET)     ::ETPUlocation(HD, comm_cmd_LH_I_0  ));
#pragma write h, (::ETPUliteral(#define FS_ETPU_HD_COMMCMDLHI1_OFFSET)     ::ETPUlocation(HD, comm_cmd_LH_I_1  ));
#pragma write h, (::ETPUliteral(#define FS_ETPU_HD_COMMCMDLHD0_OFFSET)     ::ETPUlocation(HD, comm_cmd_LH_D_0  ));
#pragma write h, (::ETPUliteral(#define FS_ETPU_HD_COMMCMDLHD1_OFFSET)     ::ETPUlocation(HD, comm_cmd_LH_D_1  ));
#pragma write h, (::ETPUliteral(#define FS_ETPU_HD_COMMCMDHLI0_OFFSET)     ::ETPUlocation(HD, comm_cmd_HL_I_0  ));
#pragma write h, (::ETPUliteral(#define FS_ETPU_HD_COMMCMDHLI1_OFFSET)     ::ETPUlocation(HD, comm_cmd_HL_I_1  ));
#pragma write h, (::ETPUliteral(#define FS_ETPU_HD_COMMCMDHLD0_OFFSET)     ::ETPUlocation(HD, comm_cmd_HL_D_0  ));
#pragma write h, (::ETPUliteral(#define FS_ETPU_HD_COMMCMDHLD1_OFFSET)     ::ETPUlocation(HD, comm_cmd_HL_D_1  ));
#pragma write h, (::ETPUliteral(#define FS_ETPU_HD_COMMONSTR_OFFSET)       ::ETPUlocation(HD, hd_common        ));
#pragma write h, (::ETPUliteral(#define FS_ETPU_HD_PWMMCHAN_OFFSET)        ::ETPUlocation(HD, PWMM_chan        ));
#pragma write h, ( );
#pragma write h, (/****************************************************************);
#pragma write h, (* Common Structure Size and Offset Definitions. );
#pragma write h, (****************************************************************/);
#pragma write h, (::ETPUliteral(#define FS_ETPU_HD_COMMON_STR_SIZE)               0x14 );
#pragma write h, ( );
#pragma write h, (::ETPUliteral(#define FS_ETPU_HD_COMMONSTR_DIRECTION_OFFSET)    0x00 );
#pragma write h, (::ETPUliteral(#define FS_ETPU_HD_COMMONSTR_SECTOR_OFFSET)       0x01 );
#pragma write h, (::ETPUliteral(#define FS_ETPU_HD_COMMONSTR_TIMER_OFFSET)        0x04 );
#pragma write h, (::ETPUliteral(#define FS_ETPU_HD_COMMONSTR_REVPERIOD_OFFSET)    0x05 );
#pragma write h, (::ETPUliteral(#define FS_ETPU_HD_COMMONSTR_LASTEDGE_OFFSET)     0x09 );
#pragma write h, (::ETPUliteral(#define FS_ETPU_HD_COMMONSTR_SECTORPERIOD_OFFSET) 0x0D );
#pragma write h, (::ETPUliteral(#define FS_ETPU_HD_COMMONSTR_REVCOUNTER_OFFSET)   0x11 );
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
