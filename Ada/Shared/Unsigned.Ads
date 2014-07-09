-- *********************************************************************************************************************
-- *                       (c) 2002 .. 2014 by White Elephant GmbH, Schaffhausen, Switzerland                          *
-- *                                               www.white-elephant.ch                                               *
-- *                                                                                                                   *
-- *    This program is free software; you can redistribute it and/or modify it under the terms of the GNU General     *
-- *    Public License as published by the Free Software Foundation; either version 2 of the License, or               *
-- *    (at your option) any later version.                                                                            *
-- *                                                                                                                   *
-- *    This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the     *
-- *    implied warranty of MERCHANTABILITY or FITNESS for A PARTICULAR PURPOSE. See the GNU General Public License    *
-- *    for more details.                                                                                              *
-- *                                                                                                                   *
-- *    You should have received a copy of the GNU General Public License along with this program; if not, write to    *
-- *    the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.                *
-- *********************************************************************************************************************
-->Style: White_Elephant

with System;
package Unsigned with Preelaborate => True is

  type Byte is new Natural range 0 .. 16#FF#;
  for Byte'size use 8;

  type Byte_String is array (Positive range <>) of Byte;

  for Byte_String'component_size use 8;

  Byte_Null_String : constant Byte_String(1..0) := (others => Byte(0));

  function Byte_Of (The_Address : System.Address) return Byte;

  function String_Of (The_Address : System.Address;
                      The_Size    : Natural) return Byte_String;

  function String_Of (The_String : String) return Byte_String;

  function String_Of (The_String : Byte_String) return String;

  function Image_Of (The_Byte : Byte) return String;

  function Hex_Image_Of (The_Byte : Byte) return String;

  function Hex_Image_Of (The_String : Byte_String) return String;

  function Hex_Value_Of (The_String : String) return Byte;

  String_Image_Error : exception;

  function Hex_Value_Of (The_String : String) return Byte_String;

------------------------------------------------------------------------

  type Word is new Natural range 0 .. 16#FFFF#;
  for Word'size use 16;

  type Word_String is array (Positive range <>) of Word;

  for Word_String'component_size use 16;

  Word_Null_String : constant Word_String(1..0) := (others => Word(0));

  function Word_Of (The_String : Byte_String) return Word;

  function String_Of (The_Word : Word) return Byte_String;

  function Image_Of (The_Word : Word) return String;

  function Hex_Image_Of (The_Word : Word) return String;

  function Hex_Image_Of (The_String : Word_String) return String;

  function Hex_Value_Of (The_String : String) return Word;

  function Swap (The_Word : Word) return Word;

  procedure Swap (The_Word : in out Word);

  ------------------------------------------------------------------------

  type Longword is mod 2 ** 32; --!!! could be changed to range 0 .. 16#FFFF_FFFF#;
  for Longword'size use 32;

  type Longword_String is array (Positive range <>) of Longword;

  for Longword_String'component_size use 32;

  Longword_Null_String : constant Longword_String(1..0) := (others => Longword(0));

  function Longword_Of (The_String : Byte_String) return Longword;

  function String_Of (The_Longword : Longword) return Byte_String;

  function String_Of (The_String : Longword_String) return Byte_String;

  function Longword_Of (The_String : Word_String) return Longword;

  function String_Of (The_Longword : Longword) return Word_String;

  function Longword_Of (The_Integer : Integer) return Longword;

  function To_Integer (The_Longword : Longword) return Integer;

  function Image_Of (The_Longword : Longword) return String;

  function Image_Of (The_Value : Natural) return String;

  function Hex_Image_Of (The_Longword : Longword) return String;

  function Hex_Image_Of (The_String : Longword_String) return String;

  function Hex_Value_Of (The_String : String) return Longword;

  function Swap (The_Longword : Longword) return Longword;

  procedure Swap (The_Longword : in out Longword);

  ------------------------------------------------------------------------

  type Quadword is mod 2 ** 64; --!!! could be changed to range 0 .. 16#FFFF_FFFF_FFFF_FFFF#;
  for Quadword'size use 64;

  function Quadword_Of (The_String : Byte_String) return Quadword;

  function String_Of (The_Quadword : Quadword) return Byte_String;

  function Quadword_Of (The_String : Word_String) return Quadword;

  function String_Of (The_Quadword : Quadword) return Word_String;

  function Quadword_Of (The_String : Longword_String) return Quadword;

  function String_Of (The_Quadword : Quadword) return Longword_String;

  function Quadword_Of (Most_Significant  : Longword;
                        Least_Significant : Longword) return Quadword;

  function Most_Significant_Longword_Of (The_Quadword : Quadword) return Longword;

  function Least_Significant_Longword_Of (The_Quadword : Quadword) return Longword;

  function Least_Significant_Word_Of (The_Quadword : Quadword) return Word;

  function Image_Of (The_Quadword : Quadword) return String;

  function Hex_Image_Of (The_Quadword : Quadword) return String;

  function Hex_Value_Of (The_String : String) return Quadword;

  function Swap (The_Quadword : Quadword) return Quadword;

  procedure Swap (The_Quadword : in out Quadword);

end Unsigned;
