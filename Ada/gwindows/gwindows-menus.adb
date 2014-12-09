------------------------------------------------------------------------------
--                                                                          --
--             GWINDOWS - Ada 95 Framework for Win32 Development            --
--                                                                          --
--                        G W I N D O W S . M E N U S                       --
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

with GWindows.GStrings;
with GWindows.Internal;

package body GWindows.Menus is
   use type Interfaces.C.unsigned;

   -------------------------------------------------------------------------
   --  Operating System Imports
   -------------------------------------------------------------------------

--     MF_INSERT                  : constant := 0;
--     MF_CHANGE                  : constant := 128;
--     MF_APPEND                  : constant := 256;
--     MF_DELETE                  : constant := 512;
--     MF_REMOVE                  : constant := 4096;
   MF_BYCOMMAND               : constant := 0;
   MF_BYPOSITION              : constant := 1024;
   MF_SEPARATOR               : constant := 2048;
   MF_ENABLED                 : constant := 0;
   MF_GRAYED                  : constant := 1;
   MF_DISABLED                : constant := 2;
   MF_UNCHECKED               : constant := 0;
   MF_CHECKED                 : constant := 8;
--     MF_USECHECKBITMAPS         : constant := 512;
   MF_STRING                  : constant := 0;
--     MF_BITMAP                  : constant := 4;
--     MF_OWNERDRAW               : constant := 256;
   MF_POPUP                   : constant := 16;
--     MF_MENUBARBREAK            : constant := 32;
--     MF_MENUBREAK               : constant := 64;
   MF_UNHILITE                : constant := 0;
   MF_HILITE                  : constant := 128;
--     MF_DEFAULT                 : constant := 4096;
--     MF_SYSMENU                 : constant := 8192;
--     MF_HELP                    : constant := 16384;
--     MF_RIGHTJUSTIFY            : constant := 16384;
--     MF_MOUSESELECT             : constant := 32768;
--     MF_END                     : constant := 128;
--     MFT_STRING                 : constant := 0;
--     MFT_BITMAP                 : constant := 4;
--     MFT_MENUBARBREAK           : constant := 32;
--     MFT_MENUBREAK              : constant := 64;
--     MFT_OWNERDRAW              : constant := 256;
--     MFT_RADIOCHECK             : constant := 512;
--     MFT_SEPARATOR              : constant := 2048;
--     MFT_RIGHTORDER             : constant := 8192;
--     MFT_RIGHTJUSTIFY           : constant := 16384;
--     MFS_GRAYED                 : constant := 3;
--     MFS_DISABLED               : constant := 3;
--     MFS_CHECKED                : constant := 8;
--     MFS_HILITE                 : constant := 128;
--     MFS_ENABLED                : constant := 0;
--     MFS_UNCHECKED              : constant := 0;
--     MFS_UNHILITE               : constant := 0;
--     MFS_DEFAULT                : constant := 4096;

   -------------------------------------------------------------------------
   --  Package Body
   -------------------------------------------------------------------------

   ---------------
   -- Load_Menu --
   ---------------

   function Load_Menu (Name : in GString) return Menu_Type is
      C_Name : constant GString_C := GWindows.GStrings.To_GString_C (Name);

      function LoadMenu
        (hInst    : Interfaces.C.long := GWindows.Internal.Current_hInstance;
         lpszName : GString_C         := C_Name)
        return Menu_Type;
      pragma Import (StdCall, LoadMenu,
                       "LoadMenu" & Character_Mode_Identifier);
   begin
      return LoadMenu;
   end Load_Menu;

   -----------------
   -- Create_Menu --
   -----------------

   function Create_Menu return Menu_Type is
      function CreateMenu return Menu_Type;
      pragma Import (StdCall, CreateMenu, "CreateMenu");
   begin
      return CreateMenu;
   end Create_Menu;

   ------------------
   -- Create_Popup --
   ------------------

   function Create_Popup return Menu_Type is
      function CreatePopupMenu return Menu_Type;
      pragma Import (StdCall, CreatePopupMenu, "CreatePopupMenu");
   begin
      return CreatePopupMenu;
   end Create_Popup;

   -----------------
   -- Append_Menu --
   -----------------

   procedure Append_Menu (Menu     : in Menu_Type;
                          Text     : in GString;
                          Add_Menu : in Menu_Type)
   is
      C_Text : constant GString_C := GWindows.GStrings.To_GString_C (Text);

      procedure AppendMenu
        (hmenu  : Menu_Type             := Menu;
         uflags : Interfaces.C.unsigned := MF_POPUP or MF_ENABLED;
         UID    : Menu_Type             := Add_Menu;
         Item   : GString_C := C_Text);
      pragma Import (StdCall, AppendMenu,
                       "AppendMenu" & Character_Mode_Identifier);
   begin
      AppendMenu;
   end Append_Menu;

   -----------------
   -- Append_Item --
   -----------------

   procedure Append_Item (Menu    : in Menu_Type;
                          Text    : in GString;
                          Command : in Positive)
   is
      C_Text : constant GString_C := GWindows.GStrings.To_GString_C (Text);

      procedure AppendMenu
        (hmenu  : Menu_Type               := Menu;
         uflags : Interfaces.C.unsigned   := MF_STRING or MF_ENABLED;
         UID    : Positive                := Command;
         Item   : GString_C := C_Text);
      pragma Import (StdCall, AppendMenu,
                       "AppendMenu" & Character_Mode_Identifier);
   begin
      AppendMenu;
   end Append_Item;

   ----------------------
   -- Append_Separator --
   ----------------------

   procedure Append_Separator (Menu : in Menu_Type) is
      procedure AppendMenu
        (hmenu  : Menu_Type             := Menu;
         uflags : Interfaces.C.unsigned := MF_SEPARATOR;
         UID    : Integer               := 0;
         Item   : Integer               := 0);
      pragma Import (StdCall, AppendMenu,
                       "AppendMenu" & Character_Mode_Identifier);
   begin
      AppendMenu;
   end Append_Separator;

   -----------------
   -- Insert_Menu --
   -----------------

   procedure Insert_Menu (Menu      : in Menu_Type;
                          Locate_By : in Location_Type;
                          Locate_At : in Positive;
                          Text      : in GString;
                          Add_Menu  : in Menu_Type)
   is
      C_Text : constant GString_C := GWindows.GStrings.To_GString_C (Text);
      procedure InsertMenu
        (hMenu   : Menu_Type               := Menu;
         idItem  : Natural;
         fuFlags : Interfaces.C.unsigned;
         UID     : Menu_Type               := Add_Menu;
         Item    : GString_C := C_Text);
      pragma Import (StdCall, InsertMenu,
                       "InsertMenu" & Character_Mode_Identifier);
   begin
      if Locate_By = Position then
         InsertMenu (idItem  => Locate_At - 1,
                     fuFlags => MF_BYPOSITION or MF_POPUP or MF_ENABLED);
      else
         InsertMenu (idItem  => Locate_At,
                     fuFlags => MF_BYCOMMAND or MF_POPUP or MF_ENABLED);
      end if;
   end Insert_Menu;

   -----------------
   -- Insert_Item --
   -----------------

   procedure Insert_Item (Menu      : in Menu_Type;
                          Locate_By : in Location_Type;
                          Locate_At : in Positive;
                          Text      : in GString;
                          Command   : in Positive)
   is
      C_Text : constant GString_C := GWindows.GStrings.To_GString_C (Text);
      procedure InsertMenu
        (hMenu   : Menu_Type               := Menu;
         idItem  : Natural;
         fuFlags : Interfaces.C.unsigned;
         UID     : Positive                := Command;
         Item    : GString_C := C_Text);
      pragma Import (StdCall, InsertMenu,
                       "InsertMenu" & Character_Mode_Identifier);
   begin
      if Locate_By = Position then
         InsertMenu (idItem  => Locate_At - 1,
                     fuFlags => MF_BYPOSITION or MF_STRING or MF_ENABLED);
      else
         InsertMenu (idItem  => Locate_At,
                     fuFlags => MF_BYCOMMAND or MF_STRING or MF_ENABLED);
      end if;
   end Insert_Item;

   ----------------------
   -- Insert_Separator --
   ----------------------

   procedure Insert_Separator (Menu      : in Menu_Type;
                               Locate_By : in Location_Type;
                               Locate_At : in Positive)
   is
      procedure InsertMenu
        (hMenu   : Menu_Type        := Menu;
         idItem  : Natural;
         fuFlags : Interfaces.C.unsigned;
         UID     : Integer          := 0;
         Item    : Integer          := 0);
      pragma Import (StdCall, InsertMenu,
                       "InsertMenu" & Character_Mode_Identifier);
   begin
      if Locate_By = Position then
         InsertMenu (idItem  => Locate_At - 1,
                     fuFlags => MF_BYPOSITION or MF_SEPARATOR);
      else
         InsertMenu (idItem  => Locate_At,
                     fuFlags => MF_BYCOMMAND or MF_SEPARATOR);
      end if;
   end Insert_Separator;

   ------------------
   -- Get_Sub_Menu --
   ------------------

   function Get_Sub_Menu (Menu     : Menu_Type;
                          Position : Positive)
                         return Menu_Type
   is
      function GetSubMenu
        (hmenu : Menu_Type := Menu;
         Pos   : Natural   := Position - 1)
        return Menu_Type;
      pragma Import (StdCall, GetSubMenu, "GetSubMenu");
   begin
      return GetSubMenu;
   end Get_Sub_Menu;

   -----------------
   -- Delete_Item --
   -----------------

   procedure Delete_Item (Menu      : in Menu_Type;
                          Locate_By : in Location_Type;
                          Locate_At : in Positive)
   is
      procedure DeleteMenu
        (hMenu   : Menu_Type        := Menu;
         idItem  : Natural;
         fuFlags : Interfaces.C.int);
      pragma Import (StdCall, DeleteMenu, "DeleteMenu");
   begin
      if Locate_By = Position then
         DeleteMenu (idItem  => Locate_At - 1,
                     fuFlags => MF_BYPOSITION);
      else
         DeleteMenu (idItem  => Locate_At,
                     fuFlags => MF_BYCOMMAND);
      end if;
   end Delete_Item;

   -----------------
   -- Remove_Menu --
   -----------------

   function Remove_Menu (Menu     : Menu_Type;
                         Position : Positive)
                        return Menu_Type
   is
      Old_Menu : Menu_Type;

      procedure RemoveMenu
        (hMenu   : Menu_Type        := Menu;
         idItem  : Natural          := Position - 1;
         fuFlags : Interfaces.C.int := MF_BYPOSITION);
      pragma Import (StdCall, RemoveMenu, "RemoveMenu");
   begin
      Old_Menu := Get_Sub_Menu (Menu, Position);
      RemoveMenu;
      return Old_Menu;
   end Remove_Menu;

   -----------
   -- State --
   -----------

   procedure State (Menu      : in Menu_Type;
                    Locate_By : in Location_Type;
                    Locate_At : in Positive;
                    State     : in State_Type)
   is
      procedure EnableMenuItem
        (hMenu   : Menu_Type        := Menu;
         idItem  : Natural;
         fuFlags : Interfaces.C.unsigned);
      pragma Import (StdCall, EnableMenuItem, "EnableMenuItem");

      Flags : Interfaces.C.unsigned;
   begin
      case State is
         when Enabled =>
            Flags := MF_ENABLED;
         when Disabled =>
            Flags := MF_DISABLED;
         when Grayed =>
            Flags := MF_GRAYED;
      end case;

      if Locate_By = Position then
         EnableMenuItem (idItem  => Locate_At - 1,
                         fuFlags => MF_BYPOSITION or Flags);
      else
         EnableMenuItem (idItem  => Locate_At,
                         fuFlags => MF_BYCOMMAND or Flags);
      end if;
   end State;

   function State (Menu      : in Menu_Type;
                   Locate_By : in Location_Type;
                   Locate_At : in Positive)
                  return State_Type
   is
      function GetMenuState
        (hMenu   : Menu_Type        := Menu;
         idItem  : Natural;
         fuFlags : Interfaces.C.unsigned)
        return Interfaces.C.unsigned;
      pragma Import (StdCall, GetMenuState, "GetMenuState");

      State : Interfaces.C.unsigned;
   begin
      if Locate_By = Position then
         State := GetMenuState (idItem  => Locate_At - 1,
                                fuFlags => MF_BYPOSITION);
      else
         State := GetMenuState (idItem  => Locate_At,
                                fuFlags => MF_BYCOMMAND);
      end if;

      if (State and MF_GRAYED) = MF_GRAYED then
         return Grayed;
      elsif (State and MF_DISABLED) = MF_DISABLED then
         return Disabled;
      else
         return Enabled;
      end if;
   end State;

   -----------
   -- Check --
   -----------

   procedure Check (Menu      : in Menu_Type;
                    Locate_By : in Location_Type;
                    Locate_At : in Positive;
                    State     : in Boolean)
   is
      procedure CheckMenuItem
        (hMenu   : Menu_Type        := Menu;
         idItem  : Natural;
         fuFlags : Interfaces.C.unsigned);
      pragma Import (StdCall, CheckMenuItem, "CheckMenuItem");

      Flags : Interfaces.C.unsigned;
   begin
      case State is
         when True =>
            Flags := MF_CHECKED;
         when others =>
            Flags := MF_UNCHECKED;
      end case;

      if Locate_By = Position then
         CheckMenuItem (idItem  => Locate_At - 1,
                        fuFlags => MF_BYPOSITION or Flags);
      else
         CheckMenuItem (idItem  => Locate_At,
                        fuFlags => MF_BYCOMMAND or Flags);
      end if;
   end Check;

   function Check (Menu      : in Menu_Type;
                   Locate_By : in Location_Type;
                   Locate_At : in Positive)
                  return Boolean
   is
      function GetMenuState
        (hMenu   : Menu_Type        := Menu;
         idItem  : Natural;
         fuFlags : Interfaces.C.unsigned)
        return Interfaces.C.unsigned;
      pragma Import (StdCall, GetMenuState, "GetMenuState");

      State : Interfaces.C.unsigned;
   begin
      if Locate_By = Position then
         State := GetMenuState (idItem  => Locate_At - 1,
                                fuFlags => MF_BYPOSITION);
      else
         State := GetMenuState (idItem  => Locate_At,
                                fuFlags => MF_BYCOMMAND);
      end if;

      if (State and MF_CHECKED) = MF_CHECKED then
         return True;
      else
         return False;
      end if;
   end Check;

   ------------
   -- Hilite --
   ------------

   procedure Hilite (Menu      : in Menu_Type;
                     Window    : in GWindows.Base.Base_Window_Type'Class;
                     Locate_By : in Location_Type;
                     Locate_At : in Positive;
                     State     : in Boolean)
   is
      procedure HiliteMenuItem
        (hwnd    : Interfaces.C.long := GWindows.Base.Handle (Window);
         hMenu   : Menu_Type        := Menu;
         idItem  : Natural;
         fuFlags : Interfaces.C.unsigned);
      pragma Import (StdCall, HiliteMenuItem, "HiliteMenuItem");

      Flags : Interfaces.C.unsigned;
   begin
      case State is
         when True =>
            Flags := MF_HILITE;
         when others =>
            Flags := MF_UNHILITE;
      end case;

      if Locate_By = Position then
         HiliteMenuItem (idItem  => Locate_At - 1,
                         fuFlags => MF_BYPOSITION or Flags);
      else
         HiliteMenuItem (idItem  => Locate_At,
                         fuFlags => MF_BYCOMMAND or Flags);
      end if;
   end Hilite;

   function Hilite (Menu      : in Menu_Type;
                    Locate_By : in Location_Type;
                    Locate_At : in Positive)
                   return Boolean
   is
      function GetMenuState
        (hMenu   : Menu_Type        := Menu;
         idItem  : Natural;
         fuFlags : Interfaces.C.unsigned)
        return Interfaces.C.unsigned;
      pragma Import (StdCall, GetMenuState, "GetMenuState");

      State : Interfaces.C.unsigned;
   begin
      if Locate_By = Position then
         State := GetMenuState (idItem  => Locate_At - 1,
                                fuFlags => MF_BYPOSITION);
      else
         State := GetMenuState (idItem  => Locate_At,
                                fuFlags => MF_BYCOMMAND);
      end if;

      if (State and MF_HILITE) = MF_HILITE then
         return True;
      else
         return False;
      end if;
   end Hilite;

   -----------
   -- Count --
   -----------

   function Count (Menu : in Menu_Type) return Natural is
      function GetMenuItemCount (hmenu : Menu_Type := Menu)
                                return Integer;
      pragma Import (StdCall,  GetMenuItemCount, "GetMenuItemCount");

      Pre_Count : constant Integer := GetMenuItemCount;
   begin
      if Pre_Count > 0 then
         return Pre_Count;
      else
         return 0;
      end if;
   end Count;

   -------------
   -- Command --
   -------------

   function Command (Menu     : in Menu_Type;
                     Position : in Positive)
                    return Natural
   is
      function GetMenuItemID (hmenu : Menu_Type := Menu;
                              Pos   : Positive  := Position)
                             return Integer;
      pragma Import (StdCall,  GetMenuItemID, "GetMenuItemID");

      Pre_ID : constant Integer := GetMenuItemID;
   begin
      if Pre_ID > 0 then
         return Pre_ID;
      else
         return 0;
      end if;
   end Command;

   ----------
   -- Text --
   ----------

   function Text (Menu      : in Menu_Type;
                  Locate_By : in Location_Type;
                  Locate_At : in Positive)
                 return GString
   is
      Length : constant Natural := Text_Length (Menu, Locate_By, Locate_At);
   begin
      if Length = 0 then
         return "";
      else
         declare
            C_Text : constant GString_C
              (0 .. Interfaces.C.size_t (Length + 1)) := (others => ' ');

            procedure GetMenuString
              (hMenu    : Menu_Type               := Menu;
               idItem   : Natural;
               lpstring : GString_C := C_Text;
               maxcount : Natural                 := Length + 1;
               fuFlags  : Interfaces.C.unsigned);
            pragma Import (StdCall, GetMenuString,
                             "GetMenuString" & Character_Mode_Identifier);
         begin
            if Locate_By = Position then
               GetMenuString (idItem  => Locate_At - 1,
                              fuFlags => MF_BYPOSITION);
            else
               GetMenuString (idItem  => Locate_At,
                              fuFlags => MF_BYCOMMAND);
            end if;

            return Interfaces.C.To_Ada (C_Text);
         end;
      end if;
   end Text;

   -----------------
   -- Text_Length --
   -----------------

   function Text_Length (Menu      : in Menu_Type;
                         Locate_By : in Location_Type;
                         Locate_At : in Positive)
                        return Natural
   is
      function GetMenuString
        (hMenu    : Menu_Type             := Menu;
         idItem   : Natural;
         lpstring : Integer               := 0;
         maxcount : Integer               := 0;
         fuFlags  : Interfaces.C.unsigned)
        return Natural;
      pragma Import (StdCall, GetMenuString,
                       "GetMenuString" & Character_Mode_Identifier);
   begin
      if Locate_By = Position then
         return GetMenuString (idItem  => Locate_At - 1,
                               fuFlags => MF_BYPOSITION);
      else
         return GetMenuString (idItem  => Locate_At,
                               fuFlags => MF_BYCOMMAND);
      end if;
   end Text_Length;

   ------------------
   -- Destroy_Menu --
   ------------------

   procedure Destroy_Menu (Menu : in out Menu_Type) is
      procedure DestroyMenu
        (hmenu : Menu_Type := Menu);
      pragma Import (StdCall, DestroyMenu, "DestroyMenu");
   begin
      DestroyMenu (Menu);
      Menu := 0;
   end Destroy_Menu;

   -----------
   -- Valid --
   -----------

   function Valid (Menu : in Menu_Type) return Boolean is
      use type Interfaces.C.long;

      function IsMenu (Menu : in Menu_Type) return Interfaces.C.long;
      pragma Import (StdCall, IsMenu, "IsMenu");
   begin
      return IsMenu (Menu) /= 0;
   end Valid;

end GWindows.Menus;
