#ifndef __MC_COMM_C
#define __MC_COMM_C

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

/************************************************************************
*  Includes.
************************************************************************/
#include "etpuc_pwmm.h"     /* Shared by PWMMDC, PWMMAC, PWMF and PWMC */
#include "etpuc_pwmc.h"     /* Commutation definitions */


/************************************************************************
* NAME: PWMCCommutate()
*
* DESCRIPTION: This routine is called by PWMC and HD in order to execute
*              a commutation command.
*
* FUNCTION PARAMETERS:
*  This function has no function parameters. The commutation command
*  is passed in through 32-bit p register.
*  The commutation command consists of 4 parts:
*    - base channel number (msb byte)
*    - base channel commutation byte (high byte)
*    - complementary channel commutation byte (middle byte)
*    - phase options (low byte)
*  The commutation byte can be one of:
*      PWMC_COMM_DO_NOTHING
*      PWMC_COMM_OFF_LOW
*      PWMC_COMM_OFF_HIGH
*      PWMC_COMM_ON_ACTIVE_HIGH
*      PWMC_COMM_ON_ACTIVE_LOW
*  The phase options rewrites the PWMC options parameter.
*
************************************************************************/
/* void PWMCCommutate( comm_cmd_t comm_cmd ) */

/* 32-bit comm_cmd is passed through register p */
register_p7_0    comm_cmd_base_ch_num;         /* comm_cmd.base_ch_num */
register_p15_8   comm_cmd_base_ch_comm_byte;   /* comm_cmd.base_ch_comm_byte */
register_p23_16  comm_cmd_compl_ch_comm_byte;  /* comm_cmd.compl_ch_comm_byte */
register_p31_24  comm_cmd_phase_options;       /* comm_cmd.phase_options */

void PWMCCommutate_( void)
{
  /* Access to phase parameters */
  pwmm_phase_t register_chan_base * phaseX;

  /* Registers accessed in C-code for optimizations */
  register_d compl_ch_comm_byte;
  register_c original_chan;
  register_b compl_done;


  compl_done = 0;
  original_chan = GetCurrentChanNum();
  SwitchToChannel(comm_cmd_base_ch_num);
  phaseX->options = comm_cmd_phase_options;
  compl_ch_comm_byte = comm_cmd_compl_ch_comm_byte;

#ifdef __ETEC__  // ASH WARE
// This routine can be complimentary or single output
#ifdef  SINGLE_OUTPUT_PWMC_COMMUTATE
#pragma wctl_loop_iterations 1
#else  // Complementary - inverse output on next higher channel
#pragma wctl_loop_iterations 2
#endif
#endif // __ETEC__

PWMC_COMM:
  switch ( comm_cmd_base_ch_comm_byte )
  {
    case PWMC_COMM_OFF_LOW:
      Pin(SetLow);
      OnMatchA(NoChange);
      OnMatchB(NoChange);
      break;
    case PWMC_COMM_OFF_HIGH:
      Pin(SetHigh);
      OnMatchA(NoChange);
      OnMatchB(NoChange);
      break;
    case PWMC_COMM_ON_ACTIVE_HIGH:
      OnMatchA(PinHigh);
      OnMatchB(PinLow);
      chan = chan;
      if (erta > ertb) // active time
      {
        Pin(SetHigh);
        chan = chan;
        if (IsMatchBLatched())
        {
          Pin(SetLow);
        }
      }
      else             // inactive time
      {
        Pin(SetLow);
        chan = chan;
        if (IsMatchALatched())
        {
          Pin(SetHigh);
        }
      }
      break;
    case PWMC_COMM_ON_ACTIVE_LOW:
      OnMatchA(PinLow);
      OnMatchB(PinHigh);
      chan = chan;
      if (erta > ertb) // active time
      {
        Pin(SetLow);
        chan = chan;
        if (IsMatchBLatched())
        {
          Pin(SetHigh);
        }
      }
      else             // inactive time
      {
        Pin(SetHigh);
        chan = chan;
        if (IsMatchALatched())
        {
          Pin(SetLow);
        }
      }
    case PWMC_COMM_DO_NOTHING:
#ifdef __ETEC__  // ASH WARE
		// C requirement - statement must follow a case
		;
#endif
  }
  if ( compl_done != 0 )
  {
    SwitchToChannel(original_chan);
    return;
  }
  else
  {
    compl_done = 1;
    SwitchToChannel(GetCurrentChanNum()+1);
    comm_cmd_base_ch_comm_byte = compl_ch_comm_byte;
    goto PWMC_COMM;
  }
}

#endif // __MC_COMM_C
