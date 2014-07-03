/****************************************************************************
 * FILE NAME: etpuc_sm.c                     COPYRIGHT (c) Freescale 2004   *
 * DESCRIPTION:                                     All Rights Reserved     *
 * This function drives a Stepper Motor (SM) based on user-defined          *
 * acceleration table. Each time a desired position is set the eTPU         *
 * generates signals to drive the motor to the position. Even if the        *
 * desired position is changed before the movement is completed, the        *
 * motor continues the optimal way to the new desired position.             *
 * The functiona is capable to drive both 2-phase and 3-phase motors in     *
 * both full-step or half-step modes.                                       *
 *==========================================================================*
 * ORIGINAL AUTHOR: Milan Brejl                                             *
 * Revision 1.4  2006/01/09 13:09:30  r47354
 * Fix auto file name comment.
 * Fix isue with function number when compiling standalone.
 * No compiled code changes.
 *
 * Revision 1.3  2004/11/23 10:31:24  r12110
 * -Optimization of 16-bit fractional multyp.
 * -Update for 1.0.0.5 compiler.
 * -Removed variables used to work around compiler issue.
 *
 * Revision 1.2  2004/11/02 14:01:00  r12110
 * -Added support for building function stand alone or in a set.
 *   -This includes using the global error function if avaialable.
 * -Updated comments in auto generated file to include version number.
 * -Updated to only use C style comments.
 *
 * Revision 1.1  2004/11/01 16:00:53  r12110
 * No changes to code, just updated for CVS and checked into CVS.
 *
 *..........................................................................*
 * 0.01  M. Brejl     09/Feb/04    Initial version of file.                 *
 * 0.1   M. Brejl     24/Feb/04    Basic tests passed.  ETPUC: 1.0.44.990   *
 * 0.2   M. Brejl     13/Jun/04    Inlined assembler replaced by C code.    *
 *                                                      ETPUC: 0.0.75.990   *
 * ToDo: Replace C code that overcomes ETPU_C bugs, with clean C code.      *
 ****************************************************************************/
#include <ETpu_Std.h>

#ifdef SM_FUNCTION_NUMBER    /* function is being compiled as part a set? */
#pragma ETPU_function SM, standard  @ SM_FUNCTION_NUMBER;
#else
#pragma ETPU_function SM, standard ; /* stand alone */
#endif

/* These macros are specific to this SM function */
/* Host service requests */
#define SM_INIT_LOW        7
#define SM_INIT_HIGH       6
#define SM_STOP_LOW        5
#define SM_STOP_HIGH       4
#define SM_MOVE            2

/* Function Modes */
#define SM_FULL_STEP       (fm1==0)
#define SM_HALF_STEP       (fm1==1)

/* Flags */
#define SM_STEPPING               1
#define SM_STEPPING_OFF           0
#define SM_STEPPING_ON            1

#define SM_DIRECTION              2
#define SM_DIRECTION_LEFT         0
#define SM_DIRECTION_RIGHT        2

#define SM_SLEW                   4
#define SM_SLEW_OFF               0
#define SM_SLEW_ON                4

/* General Notes:
   1. The Acceleration Table is an array of unsigned fract16. The CPU must
   allocate the DATA_RAM for the Acceleration Table, fill it, and pass the
   pointer to the array and size of the array. */

/* Channel Flags are not used. */

/*--------------------------------------------------------------------------+
| FUNCTION PARAMETERS:                                                      |
| desired_position: Desired position index                                  |
| current_position: Current position index                                  |
| start_period: Start period as number of TCR1 clocks. Start period is      |
|     the first and the last period of a movement.                          |
| slew_period: Slew period as number of TCR1 clocks. Slew period is         |
|     the step period when the motor rotates at max speed - shortest period |
|     of a movement.                                                        |
| pin_sequence: Pin sequence. To generate a step, pin_sequence is rotated   |
|     left or right depending on step direction and the pin level that will |
|     result after the step match is determined by the MSB of the new       |
|     pin_sequence.                                                         |
| *accel_tbl: Base address of the Acceleration Table.                       |
| accel_tbl_size: Acceleration table size.                                  |
| channels: Number of generated signals.                                    |
| flags: Status flags. - bit0=0: stepping = flase                           |
|                        bit0=1: stepping = true                            |
|                      - bit1=0: direction = left                           |
|                        bit1=1: direction = right                          |
|                      - bit2=0: slew = false                               |
|                        bit2=1: slew = true                                |
|                                                                           |
| STATIC LOCAL VARIABLES:                                                   |
| accel_tbl_index: Actual position in the Acceleration Table.               |
+--------------------------------------------------------------------------*/
void SM(  int24  desired_position,
          int24  current_position,
          int24  start_period,
          int24  slew_period,
 unsigned int24  channels,
 unsigned int24  pin_sequence,
 unsigned int24  accel_tbl_size,
          int16 *accel_tbl,
 unsigned int8   flags )
{
  static   int24  accel_tbl_index;
  register _SR int24 tmp;
  unsigned int24  tmp_pin_sequence;
  unsigned int24  tmp_channels;

/*--------------------------------------------------------------------------+
| THREAD NAME: INIT_LOW                                                     |
| DESCRIPTION: Initialize a channel to run the SM function, put pin low.    |
|              1. Disable matches in thread in case there are any previous  |
|                  pending matches. This could happen if the channel was    |
|                  running another function before this one.                |
|              2. Set pin low.                                              |
|              3. Configure channel to use TCR1 clock  .                    |
|              4. Select SingleMatch-SingleTransition channel mode.         |
|              5. Configure pin actions to no_detect on transition and      |
|                  no_change on match.                                      |
|              6. Clear latches.                                            |
|              7. Disable match and transition event handling.              |
|              8. clear all flags.                                          |
|              9. Reset accel_tbl_ptr to zero.                              |
+--------------------------------------------------------------------------*/
  if ( HostServiceRequest == SM_INIT_LOW )
  {
SM_init_low:
    DisableMatchesInThread();
    OnTransA( NoDetect );
    SetPinLow();

    goto SM_INIT_COMMON;
  }

/*--------------------------------------------------------------------------+
| THREAD NAME: INIT_HIGH                                                    |
| DESCRIPTION: Initialize a channel to run the SM function, put pin high.   |
|              1. Disable matches in thread in case there are any previous  |
|                  pending matches. This could happen if the channel was    |
|                  running another function before this one.                |
|              2. Set pin high.                                             |
|              3. Configure channel to use TCR1 clock  .                    |
|              4. Select SingleMatch-SingleTransition channel mode.         |
|              5. Configure pin actions to no_detect on transition and      |
|                  no_change on match.                                      |
|              6. Clear latches.                                            |
|              7. Disable match and transition event handling.              |
|              8. clear all flags.                                          |
|              9. Reset accel_tbl_ptr to zero.                              |
+--------------------------------------------------------------------------*/
  else if ( HostServiceRequest == SM_INIT_HIGH )
  {
SM_init_high:
    DisableMatchesInThread();
    OnTransA( NoDetect );
    SetPinHigh();

SM_INIT_COMMON:
    ActionUnitA( MatchTCR1, CaptureTCR1, GreaterEqual);
    SingleMatchSingleTransition();
    EnableOutputBuffer();
    OnMatchA( NoChange );
    ClearAllLatches();
    DisableEventHandling();

    flags = 0;            /* clear all status flags */
    accel_tbl_index = 0;  /* reset accel_tbl_index */
  }

/*--------------------------------------------------------------------------+
| THREAD NAME: STOP_LOW                                                     |
| DESCRIPTION: Stop processing, put pin low.                                |
|              1. Disable matches in thread in case there are any previous  |
|                  pending matches. This could happen if the channel was    |
|                  running another function before this one.                |
|              2. Set pin low.                                             |
|              3. Clear latches.                                            |
|              4. Disable match and transition event handling.              |
+--------------------------------------------------------------------------*/
  else if ( HostServiceRequest == SM_STOP_LOW )
  {
SM_stop_low:
    DisableMatchesInThread();
    DisableMatchDetection();
    SetPinLow();
    ClearAllLatches();
  }

/*--------------------------------------------------------------------------+
| THREAD NAME: STOP_HIGH                                                    |
| DESCRIPTION: Stop processing, put pin high.                               |
|              1. Disable matches in thread in case there are any previous  |
|                  pending matches. This could happen if the channel was    |
|                  running another function before this one.                |
|              2. Set pin high.                                             |
|              3. Clear latches.                                            |
|              4. Disable match and transition event handling.              |
+--------------------------------------------------------------------------*/
  else if ( HostServiceRequest == SM_STOP_HIGH )
  {
SM_stop_high:
    DisableMatchesInThread();
    DisableMatchDetection();
    SetPinHigh();
    ClearAllLatches();
  }

/*--------------------------------------------------------------------------+
| THREAD NAME: MOVE                                                         |
| DESCRIPTION: This is used to start the stepping to a new desired_position.|
|              If the function is currently stepping then do nothing - it   |
|              will automatically continue to the new desired_position.     |
|              1. Check the stepping flag. If ON then return. Else continue.|
|              2. Set the stepping flag.                                    |
|              3. Take current tcr as the first step reference.             |
|              4. START_DIR_TEST. Test which direction to move and set      |
|                 direction flag. If there is no need to move anywhere      |
|                 (current_position == desired_position) then:              |
|                    - clear stepping flag                                  |
|                    - set channel interrupt                                |
|                    - return.                                              |
|              5. Continue to adjust the step - STEP in STEP thread.        |
+--------------------------------------------------------------------------*/
  else if ( HostServiceRequest == SM_MOVE )
  {
SM_move:
    /* If already stepping do nothing. */
    /* Stepping will automaticaly continue to the new desired_position. */
    if ((flags & SM_STEPPING) == SM_STEPPING_OFF)
    {
      flags |= SM_STEPPING_ON;   /* set stepping flag */
      EnableEventHandling();     /* disabled after INIT, master need mtsr enabled */
      erta = tcr1;               /* first step reference */

SM_START_DIR_TEST:
      /* Test direction */
      tmp = desired_position - current_position;
      if (tmp < 0)
      {
        flags &= ~SM_DIRECTION_RIGHT;  /* set direction flag = left */
      }
      else if (tmp > 0)
      {
        flags |= SM_DIRECTION_RIGHT;  /* set direction flag = right */
        tmp = -tmp;
      }
      else
      {
        /* Finished */
        flags &= ~SM_STEPPING;        /* clear stepping flag */
        SetChannelInterrupt();        /* set interrupt to CPU */
        ClearAllLatches();
        return;
      }
      goto SM_STEP;
    }
  }

/*--------------------------------------------------------------------------+
| THREAD NAME: STEP                                                         |
| DESCRIPTION: Generates the next step of the movement.                     |
|              1. Update current position by the step just done.            |
|              2. Check if decceleration just finished. If so then continue |
|                 from START_DIR_TEST (in MOVE thread):                     |
|                 - if (current_position == desired_position) then:         |
|                    - clear stepping flag                                  |
|                    - set channel interrupt                                |
|                    - return.                                              |
|                 - else (desired_position changed during the movement)     |
|                   continue the oposit direction as from start.            |
|              4. Test which direction to move. If going the oposit         |
|                 direction (desired_position changed during the movement)  |
|                 then continue to DECCELERATE.                             |
|              5. STEP - Adjust the step.                                   |
|                 Deccelerate, slew or accelerate? Use the sign of          |
|                 accel_tbl_index + 1 - |desired_position-current_position| |
|                 = 0: Slew or no more space to accelerate.                 |
|                   - If slew flag already set jump to SET_ERT with         |
|                     step-period equal to slew_period.                     |
|                 < 0: Accelerate.                                          |
|                   - increment accel_tbl_index.                            |
|                   - Check if there is more acceleration steps available.  |
|                     If no, then check if already in slew rate.            |
|                        If no, then set slew flag, otherwise take back     |
|                        the accel_tbl_index increment                      |
|                   - Jump to SET_ERT with step-period equal to slew_period.|
|                 > 0: Deccelerate.                                         |
|                   - decrement accel_tbl_index.                            |
|              6. Calculate the step-period. If accel_tbl_index > 1 then    |
|                 step_period = start_period * accel_tbl[accel_tbl_index-2],|
|                 where accel_tbl[x] is unsigned fract16 value,             |
|                 else used start_period as the step-period.                |
|              7. Limit the step-period by slew_period. If the limitation   |
|                 is applied set slew flag ON.                              |
|              8. SET_ERT: Set matches:                                     |
|                 Based on the current direction rotate the pin sequence    |
|                 left (dec-direction) or right (inc-direction).            |
|                 Set match on all channels according to pin_sequence bits. |
|                 The LSB (bit 0) corresponds to the master channel and     |
|                 bits 1, 2, 3, ... (in full-step mode) or                  |
|                 bits 2, 4, 6, ... (in half-step mode) to slave channels.  |
+--------------------------------------------------------------------------*/
  else if ( m1==1 )
  {
SM_step:
    /* Update current_position by the step just done */
    if ((flags & SM_DIRECTION) == SM_DIRECTION_RIGHT)
    {
      current_position++;
    }
    else
    {
      current_position--;
    }

    /* Decceleration finished? */
    if (accel_tbl_index == 0)
    {
      goto SM_START_DIR_TEST;
    }

    /* Test direction */
    tmp = desired_position - current_position;
    if (tmp < 0)
    {
      /* if going the oposit direction then deccelerate */
      if ((flags & SM_DIRECTION) == SM_DIRECTION_RIGHT)
      {
        goto SM_DECCELERATE;
      }
    }
    else if (tmp > 0)
    {
      /* if going the oposit direction then deccelerate */
      if ((flags & SM_DIRECTION) == SM_DIRECTION_LEFT)
      {
        goto SM_DECCELERATE;
      }
      tmp = -tmp;
    }

SM_STEP:
    /* Deccelerate? Slew? Accelerate? */
    tmp += accel_tbl_index + 1;
    if (tmp == 0)  /* ... slew or no more space to accelerate */
    {
      /* Already is slew rate ? */
      if ((flags & SM_SLEW) == SM_SLEW_ON)
      {
        tmp = slew_period;
        goto SM_SET_ERT;
      }
    }
    else if (tmp < 0)  /* ... accelerate */
    {
      tmp = accel_tbl_index;
      accel_tbl_index++;
      /* No more acceleration steps available? */
      if (tmp > accel_tbl_size)
      {
        /* Already is slew rate ? */
        if ((flags & SM_SLEW) == SM_SLEW_ON)
        {
          accel_tbl_index = tmp;  /* correct index, but not on first slew step */
        }
        else
        {
          flags |= SM_SLEW_ON;  /* set slew flag */
        }
        tmp = slew_period;
        goto SM_SET_ERT;
      }
    }
    else   /* (tmp > 0)  ... time to deccelerate */
    {
SM_DECCELERATE:
      accel_tbl_index--;
    }

    /* Calculate step-period */
    if (accel_tbl_index > 1)
    {
      /*tmp = start_period * (unsigned fract16)(accel_tbl[accel_tbl_index-2]);*/
      tmp = accel_tbl_index-2;
      tmp = accel_tbl[tmp];
      #asm( alu a = d;  ram p <- start_period. )
      #asm( mdu p fmultu a (16). )
      #asm( SM_L: if mbsy == 1 then goto SM_L, flush. )
      #asm( alu d = mach. )
/* Comments to ETPUC:
   - this expresion is not compiled correctly:
     1. 16-bit unsigned fractional multiplication (instruction fmultu(16))
        is not supported.
     2. overcasting does not works properly. */
    }
    else  /* accel_tbl_index == 0 or 1 */
    {
      tmp = start_period;
    }
    /* Limit by slew_period */
    if (slew_period > tmp)
    {
      tmp = slew_period;
      /* Already is slew rate ? */
      if ((flags & SM_SLEW) == SM_SLEW_ON)
      {
        accel_tbl_index--;  /* correct index, but not on first slew step */
      }
      else
      {
        flags |= SM_SLEW_ON;  /* set slew flag */
      }
    }
    else
    {
      flags &= ~SM_SLEW;   /* clear slew flag */
    }

    /* Set matches */
SM_SET_ERT:
    /* Rotate the pin sequence */
    if ((flags & SM_DIRECTION) == SM_DIRECTION_RIGHT)
    {
      /* rotate right by 1 bit */
      // using intrinsic function
      pin_sequence = __rotate_right_1(pin_sequence);
/*
#asm( ram p <- pin_sequence. )
#asm( alu p =R> p; ram p -> pin_sequence. )
*/
/* Comments to ETPUC: */
/* - is there a way how to perform rotation right in C (or ETPUC)? */
    }
    else
    {
      /* rotate left by 1 bit */
      pin_sequence <<= 1;
      if (CC.C == 1)
      {
        pin_sequence++;
      }
    }
    /* Set match on all channels according to pin_sequence bits */
    tmp_channels = channels;
    tmp_pin_sequence = pin_sequence;
    tmp = erta + tmp;
    while (tmp_channels-- > 0)
    {
      /* Set OPAC according to LSB */
      if ((tmp_pin_sequence & 0x01) == 0)
      {
        OnMatchA(PinLow);
      }
      else
      {
        OnMatchA(PinHigh);
      }
      SetupMatchA(tmp);
      SwitchToChannel(GetCurrentChanNum()+1);
      tmp_pin_sequence>>=1;  /* prepare next bit to LSB position */
      if (SM_HALF_STEP)
      {
        tmp_pin_sequence>>=1;  /* ... the second next bit in half-step mode */
      }
    }

  }
/*--------------------------------------------------------------------------+
| THREAD NAME: Error                                                        |
| DESCRIPTION: Something has gone wrong. :-(                                |
|                Call the Global error routine and end.                     |
+--------------------------------------------------------------------------*/
  else
  {
SM_Error:
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

