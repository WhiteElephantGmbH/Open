------------------------------------------------------------------------------
--                                                                          --
--             GWINDOWS - Ada 95 Framework for Win32 Development            --
--                                                                          --
--                    G W I N D O W S . U T I L I T I E S                   --
--                                                                          --
--                                 B o d y                                  --
--                                                                          --
--                            $Revision: 1.1.1.1 $
--                                                                          --
--                 Copyright (C) 1999 - 2002 David Botton                   --
--                                                                          --
-- This is free software;  you can  redistribute it  and/or modify it under --
-- terms of the  GNU General Public License as published  by the Free Soft- --
-- ware  Foundation;  either version 2,  or (at your option) any later ver- --
-- sion. It is distributed in the hope that it will be useful,  but WITHOUT --
-- ANY WARRANTY;  without  even the  implied warranty of MERCHANTABILITY or --
-- FITNESS FOR A PARTICULAR PURPOSE.    See the GNU General  Public License --
-- for  more details.  You should have  received  a copy of the GNU General --
-- Public License  distributed with this;  see file COPYING.  If not, write --
-- to  the Free Software Foundation,  59 Temple Place - Suite 330,  Boston, --
-- MA 02111-1307, USA.                                                      --
--                                                                          --
-- As a special exception,  if other files  instantiate  generics from this --
-- unit, or you link  this unit with other files  to produce an executable, --
-- this  unit  does not  by itself cause  the resulting  executable  to  be --
-- covered  by the  GNU  General  Public  License.  This exception does not --
-- however invalidate  any other reasons why  the executable file  might be --
-- covered by the  GNU Public License.                                      --
--                                                                          --
-- More information about GWINDOWS and the most current public version can  --
-- be located on the web at http://www.adapower.com/gwindows                --
--                                                                          --
------------------------------------------------------------------------------

with Ada.Unchecked_Conversion;

package body GWindows.Utilities is

   -------------------------------------------------------------------------
   --  Local Specs
   -------------------------------------------------------------------------

   type SDouble_Word is
      record
         Low  : Interfaces.C.short;
         High : Interfaces.C.short;
      end record;

   function To_SDWORD is new
     Ada.Unchecked_Conversion (Interfaces.C.int, SDouble_Word);

   function To_Integer is new
     Ada.Unchecked_Conversion (SDouble_Word, Integer);

   type Double_Word is
      record
         Low  : Interfaces.C.unsigned_short;
         High : Interfaces.C.unsigned_short;
      end record;

   function To_DWORD is new
     Ada.Unchecked_Conversion (Interfaces.C.int, Double_Word);

   -------------------------------------------------------------------------
   --  Package Body
   -------------------------------------------------------------------------

   ---------------
   -- Make_Long --
   ---------------

   function Make_Long (Low  : in Interfaces.C.short;
                       High : in Interfaces.C.short)
                      return Integer
   is
      Result : constant Integer := To_Integer (SDouble_Word'(Low, High));
   begin
      return Result;
   end Make_Long;

   --------------
   -- Low_Word --
   --------------

   function Low_Word (DWORD : in Interfaces.C.int) return Integer
   is
      Result : constant SDouble_Word := To_SDWORD (DWORD);
   begin
      return Integer (Result.Low);
   end Low_Word;

   ---------------
   -- High_Word --
   ---------------

   function High_Word (DWORD : in Interfaces.C.int) return Integer
   is
      Result : constant SDouble_Word := To_SDWORD (DWORD);
   begin
      return Integer (Result.High);
   end High_Word;

   -----------------------
   -- Unsigned_Low_Word --
   -----------------------

   function Unsigned_Low_Word (DWORD : in Interfaces.C.int)
                     return Interfaces.C.unsigned
   is
      Result : constant Double_Word := To_DWORD (DWORD);
   begin
      return Interfaces.C.unsigned (Result.Low);
   end Unsigned_Low_Word;

   ------------------------
   -- Unsigned_High_Word --
   ------------------------

   function Unsigned_High_Word (DWORD : in Interfaces.C.int)
                      return Interfaces.C.unsigned
   is
      Result : constant Double_Word := To_DWORD (DWORD);
   begin
      return Interfaces.C.unsigned (Result.High);
   end Unsigned_High_Word;

end GWindows.Utilities;
