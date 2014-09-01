------------------------------------------------------------------------------
--                                                                          --
--             GWINDOWS - Ada 95 Framework for Win32 Development            --
--                                                                          --
--                     G W I N D O W S . C A R E T S                        --
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

package body GWindows.Carets is
   use GWindows.Base;
   use GWindows.Drawing_Objects;

   ------------------------
   -- Create_Solid_Caret --
   ------------------------

   procedure Create_Solid_Caret
     (Window : in out GWindows.Base.Base_Window_Type'Class;
      Width  : in     Integer                              := 0;
      Height : in     Integer                              := 0)
   is
      procedure CreateCaret
        (HWND : GWindows.Types.Handle := Handle (Window);
         BMP  : Integer := 0;
         W    : Integer := Width;
         H    : Integer := Height);
      pragma Import (StdCall, CreateCaret, "CreateCaret");
   begin
      CreateCaret;
   end Create_Solid_Caret;

   -----------------------
   -- Create_Gray_Caret --
   -----------------------

   procedure Create_Gray_Caret
     (Window : in out GWindows.Base.Base_Window_Type'Class;
      Width  : in     Integer                              := 0;
      Height : in     Integer                              := 0)
   is
      procedure CreateCaret
        (HWND : GWindows.Types.Handle := Handle (Window);
         BMP  : Integer := 1;
         W    : Integer := Width;
         H    : Integer := Height);
      pragma Import (StdCall, CreateCaret, "CreateCaret");
   begin
      CreateCaret;
   end Create_Gray_Caret;

   -------------------------
   -- Create_Bitmap_Caret --
   -------------------------

   procedure Create_Bitmap_Caret
     (Window : in out GWindows.Base.Base_Window_Type'Class;
      Bitmap : in     GWindows.Drawing_Objects.Bitmap_Type)
   is
      procedure CreateCaret
        (HWND : GWindows.Types.Handle := Handle (Window);
         BMP  : GWindows.Types.Handle := Handle (Bitmap);
         W    : Integer := 0;
         H    : Integer := 0);
      pragma Import (StdCall, CreateCaret, "CreateCaret");
   begin
      CreateCaret;
   end Create_Bitmap_Caret;

   -------------------
   -- Destroy_Caret --
   -------------------

   procedure Destroy_Caret
   is
      procedure DestroyCaret;
      pragma Import (StdCall, DestroyCaret, "DestroyCaret");
   begin
      DestroyCaret;
   end Destroy_Caret;

   ----------------
   -- Show_Caret --
   ----------------

   procedure Show_Caret
     (Window : in out GWindows.Base.Base_Window_Type'Class)
   is
      procedure ShowCaret
        (HWND : GWindows.Types.Handle := Handle (Window));
      pragma Import (StdCall, ShowCaret, "ShowCaret");
   begin
      ShowCaret;
   end Show_Caret;

   ----------------
   -- Hide_Caret --
   ----------------

   procedure Hide_Caret
     (Window : in out GWindows.Base.Base_Window_Type'Class)
   is
      procedure HideCaret
        (HWND : GWindows.Types.Handle := Handle (Window));
      pragma Import (StdCall, HideCaret, "HideCaret");
   begin
      HideCaret;
   end Hide_Caret;

   ------------------------
   -- Set_Caret_Position --
   ------------------------

   procedure Set_Caret_Position (X, Y : Integer)
   is
      procedure SetCaretPos (X, Y : Integer);
      pragma Import (StdCall, SetCaretPos, "SetCaretPos");
   begin
      SetCaretPos (X, Y);
   end Set_Caret_Position;

   ------------------------
   -- Get_Caret_Position --
   ------------------------

   function Get_Caret_Position return GWindows.Types.Point_Type
   is
      Result : GWindows.Types.Point_Type := (0, 0);

      procedure GetCaretPos (Pos : GWindows.Types.Point_Type := Result);
      pragma Import (StdCall, GetCaretPos, "GetCaretPos");
   begin
      GetCaretPos;
      return Result;
   end Get_Caret_Position;

end GWindows.Carets;
