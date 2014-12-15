------------------------------------------------------------------------------
--                                                                          --
--             GWINDOWS - Ada 95 Framework for Win32 Development            --
--                                                                          --
--      G W I N D O W S . W I N D O W S . C O M M O N _ C O N T R O L S     --
--                                                                          --
--                                 B o d y                                  --
--                                                                          --
--                            $Revision: 1.2 $
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
with System;

with Gwindows.Gstrings;
with Gwindows.Utilities;
with Gwindows.Internal;
--with Ada.Text_Io; use Ada.Text_Io;

package body Gwindows.Common_Controls is
   use type Interfaces.C.Unsigned;

   -------------------------------------------------------------------------
   --  Operating System Imports
   -------------------------------------------------------------------------

   Acs_Center : constant := 1;
   --     ACS_TRANSPARENT              : constant := 2;
   --     ACS_AUTOPLAY                 : constant := 4;
   Acm_Opena : constant := 1124;
   Acm_Openw : constant := 1127;
   Acm_Play  : constant := 1125;
   Acm_Stop  : constant := 1126;
   Acn_Start : constant := 1;
   Acn_Stop  : constant := 2;

   Dtm_First         : constant := 16#1000#;
   Dtm_Getsystemtime : constant := Dtm_First + 1;
   Dtm_Setsystemtime : constant := Dtm_First + 2;
   Dtm_Setrange      : constant := Dtm_First + 4;
   Dtm_Setformat     : constant := Dtm_First + 5;

   Gdt_Valid : constant := 0;
   Gdt_None  : constant := 1;

   Gdtr_Min : constant := 1;
   Gdtr_Max : constant := 2;

   Wm_User : constant := 16#400#;
   --     PBM_SETRANGE                 : constant := (WM_USER + 1);
   Pbm_Setpos     : constant := (Wm_User + 2);
   Pbm_Deltapos   : constant := (Wm_User + 3);
   Pbm_Setstep    : constant := (Wm_User + 4);
   Pbm_Stepit     : constant := (Wm_User + 5);
   Pbm_Setrange32 : constant := (Wm_User + 6);
   --     PBM_GETRANGE                 : constant := (WM_USER + 7);
   Pbm_Getpos : constant := (Wm_User + 8);
   --     PBM_SETBARCOLOR              : constant := (WM_USER + 9);
   --     PBM_SETBKCOLOR               : constant := 16#2001#;
   Udm_Setrange : constant := (Wm_User + 101);
   --     UDM_GETRANGE                 : constant := (WM_USER + 102);
   Udm_Setpos : constant := (Wm_User + 103);
   --     UDM_GETPOS                   : constant := (WM_USER + 104);
   --     UDM_SETBUDDY                 : constant := (WM_USER + 105);
   --     UDM_GETBUDDY                 : constant := (WM_USER + 106);
   --     UDM_SETACCEL                 : constant := (WM_USER + 107);
   --     UDM_GETACCEL                 : constant := (WM_USER + 108);
   --     UDM_SETBASE                  : constant := (WM_USER + 109);
   --     UDM_GETBASE                  : constant := (WM_USER + 110);
   Tbm_Getpos      : constant := (Wm_User);
   Tbm_Getrangemin : constant := (Wm_User + 1);
   Tbm_Getrangemax : constant := (Wm_User + 2);
   --    TBM_GETTIC              : constant := (WM_USER + 3);
   --    TBM_SETTIC              : constant := (WM_USER + 4);
   Tbm_Setpos : constant := (Wm_User + 5);
   --    TBM_SETRANGE            : constant := (WM_USER + 6);
   Tbm_Setrangemin : constant := (Wm_User + 7);
   Tbm_Setrangemax : constant := (Wm_User + 8);
   --     TBM_CLEARTICS           : constant := (WM_USER + 9);
   --     TBM_SETSEL              : constant := (WM_USER + 10);
   --     TBM_SETSELSTART         : constant := (WM_USER + 11);
   --     TBM_SETSELEND           : constant := (WM_USER + 12);
   --     TBM_GETPTICS            : constant := (WM_USER + 14);
   --     TBM_GETTICPOS           : constant := (WM_USER + 15);
   --     TBM_GETNUMTICS          : constant := (WM_USER + 16);
   --     TBM_GETSELSTART         : constant := (WM_USER + 17);
   --     TBM_GETSELEND           : constant := (WM_USER + 18);
   --     TBM_CLEARSEL            : constant := (WM_USER + 19);
   --     TBM_SETTICFREQ          : constant := (WM_USER + 20);
   --     TBM_SETPAGESIZE         : constant := (WM_USER + 21);
   --     TBM_GETPAGESIZE         : constant := (WM_USER + 22);
   --     TBM_SETLINESIZE         : constant := (WM_USER + 23);
   --     TBM_GETLINESIZE         : constant := (WM_USER + 24);
   --     TBM_GETTHUMBRECT        : constant := (WM_USER + 25);
   --     TBM_GETCHANNELRECT      : constant := (WM_USER + 26);
   --     TBM_SETTHUMBLENGTH      : constant := (WM_USER + 27);
   --     TBM_GETTHUMBLENGTH      : constant := (WM_USER + 28);
   --     TBM_SETTOOLTIPS         : constant := (WM_USER + 29);
   --     TBM_GETTOOLTIPS         : constant := (WM_USER + 30);
   --     TBM_SETTIPSIDE          : constant := (WM_USER + 31);
   Lvm_First        : constant := 16#1000#;
   Lvm_Getitemcount : constant := Lvm_First + 4;
   Lvm_Setitema     : constant := Lvm_First + 6;
   Lvm_Setitemw     : constant := Lvm_First + 76;
   Lvm_Insertitema  : constant := Lvm_First + 7;
   Lvm_Insertitemw  : constant := Lvm_First + 77;
   --     LVM_DELETEITEM          : constant := LVM_FIRST + 8;
   Lvm_Deleteallitems   : constant := Lvm_First + 9;
   Lvm_Setcolumna       : constant := Lvm_First + 26;
   Lvm_Setcolumnw       : constant := Lvm_First + 96;
   Lvm_Insertcolumna    : constant := Lvm_First + 27;
   Lvm_Insertcolumnw    : constant := Lvm_First + 97;
   Lvm_Getitemstate     : constant := Lvm_First + 44;
   Lvm_Getselectedcount : constant := Lvm_First + 50;


   --     LVIS_FOCUSED            : constant := 16#0001#;
   Lvis_Selected : constant := 16#0002#;
   --     LVIS_CUT                : constant := 16#0004#;
   --     LVIS_DROPHILITED        : constant := 16#0008#;
   --     LVIS_ACTIVATING         : constant := 16#0020#;
   --     LVIS_OVERLAYMASK        : constant := 16#0F00#;
   --     LVIS_STATEIMAGEMASK     : constant := 16#F000#;
   type Systemtime is
      record
         Wyear         : Interfaces.C.Short;
         Wmonth        : Interfaces.C.Short;
         Wdayofweek    : Interfaces.C.Short := 0;
         Wday          : Interfaces.C.Short;
         Whour         : Interfaces.C.Short;
         Wminute       : Interfaces.C.Short;
         Wsecond       : Interfaces.C.Short;
         Wmilliseconds : Interfaces.C.Short := 0;
      end record;

   function Calendar_To_Systemtime (
         Time : Ada.Calendar.Time )
     return Systemtime;

   function Systemtime_To_Calendar (
         Time : Systemtime )
     return Ada.Calendar.Time;

   Lvif_Text  : constant := 16#0001#;
   Lvif_Image : constant := 16#0002#;
   Lvif_Param : constant := 16#0004#;
   --     LVIF_STATE              : constant := 16#0008#;
   --     LVIF_INDENT             : constant := 16#0010#;
   --     LVIF_NORECOMPUTE        : constant := 16#0800#;
   type Lptstr is access all Gchar_C;

   use Interfaces.C;
   Max_Lparam : Interfaces.C.Int := 0;

   type Lvitem is
      record
         Mask      : Interfaces.C.Unsigned := 0;
         Item      : Integer               := 0;
         Subitem   : Integer               := 0;
         State     : Interfaces.C.Unsigned := 0;
         Statemask : Interfaces.C.Unsigned := 0;
         Text      : Lptstr                := null;
         Textmax   : Integer               := 0;
         Image     : Integer;
         Lparam    : Interfaces.C.Int;
         Indent    : Integer;
      end record;

   --     LVCF_FMT                : constant := 16#0001#;
   Lvcf_Width : constant := 16#0002#;
   Lvcf_Text  : constant := 16#0004#;
   --     LVCF_SUBITEM            : constant := 16#0008#;
   --     LVCF_IMAGE              : constant := 16#0010#;
   --     LVCF_ORDER              : constant := 16#0020#;
   --     LVCFMT_LEFT             : constant := 16#0000#;
   --     LVCFMT_RIGHT            : constant := 16#0001#;
   --     LVCFMT_CENTER           : constant := 16#0002#;
   --     LVCFMT_JUSTIFYMASK      : constant := 16#0003#;
   --     LVCFMT_IMAGE            : constant := 16#0800#;
   --     LVCFMT_BITMAP_ON_RIGHT  : constant := 16#1000#;
   --     LVCFMT_COL_HAS_IMAGES   : constant := 16#8000#;
   type Lvcolumn is
      record
         Mask    : Interfaces.C.Unsigned := 0;
         Format  : Interfaces.C.Unsigned := 0;
         Width   : Integer               := 0;
         Text    : Lptstr                := null;
         Textmax : Integer               := 0;
         Subitem : Integer               := 0;
         Image   : Integer               := 0;
         Order   : Integer               := 0;
      end record;

   Tv_First        : constant := 16#1100#;
   Tvm_Insertitema : constant := Tv_First + 0;
   Tvm_Insertitemw : constant := Tv_First + 50;
   Tvm_Deleteitem  : constant := Tv_First + 1;
   Tvm_Expand      : constant := Tv_First + 2;
   Tvm_Getnextitem : constant := Tv_First + 10;
   Tvm_Getitema    : constant := Tv_First + 12;
   Tvm_Getitemw    : constant := Tv_First + 62;

   Tvgn_Root     : constant := 16#0000#;
   Tvgn_Next     : constant := 16#0001#;
   Tvgn_Previous : constant := 16#0002#;
   Tvgn_Parent   : constant := 16#0003#;
   Tvgn_Child    : constant := 16#0004#;
   --     TVGN_FIRSTVISIBLE       : constant := 16#0005#;
   --     TVGN_NEXTVISIBLE        : constant := 16#0006#;
   --     TVGN_PREVIOUSVISIBLE    : constant := 16#0007#;
   --     TVGN_DROPHILITE         : constant := 16#0008#;
   Tvgn_Caret : constant := 16#0009#;
   --     TVGN_LASTVISIBLE        : constant := 16#000A#;
   Tvif_Text : constant := 16#0001#;
   --     TVIF_IMAGE              : constant := 16#0002#;
   --     TVIF_PARAM              : constant := 16#0004#;
   --     TVIF_STATE              : constant := 16#0008#;
   --     TVIF_HANDLE             : constant := 16#0010#;
   --     TVIF_SELECTEDIMAGE      : constant := 16#0020#;
   --     TVIF_CHILDREN           : constant := 16#0040#;
   --     TVIF_INTEGRAL           : constant := 16#0080#;
   --     TVIS_SELECTED           : constant := 16#0002#;
   --     TVIS_CUT                : constant := 16#0004#;
   --     TVIS_DROPHILITED        : constant := 16#0008#;
   --     TVIS_BOLD               : constant := 16#0010#;
   --     TVIS_EXPANDED           : constant := 16#0020#;
   --     TVIS_EXPANDEDONCE       : constant := 16#0040#;
   --     TVIS_EXPANDPARTIAL      : constant := 16#0080#;
   --     TVIS_OVERLAYMASK        : constant := 16#0F00#;
   --     TVIS_STATEIMAGEMASK     : constant := 16#F000#;
   --     TVIS_USERMASK           : constant := 16#F000#;
   type Tvitem is
      record
         Mask           : Interfaces.C.Unsigned := 0;
         Hitem          : Tree_Item_Node        := 0;
         State          : Interfaces.C.Unsigned := 0;
         State_Mask     : Interfaces.C.Unsigned := 0;
         Text           : Lptstr                := null;
         Textmax        : Integer               := 0;
         Image          : Integer               := 0;
         Selected_Image : Integer               := 0;
         Children       : Integer               := 0;
         Lparam         : Interfaces.C.Int      := 0;
      end record;

   Tcm_First          : constant := 16#1300#;
   Tcm_Getitemcount   : constant := (Tcm_First + 4);
   Tcm_Getitema       : constant := (Tcm_First + 5);
   Tcm_Setitema       : constant := (Tcm_First + 6);
   Tcm_Insertitema    : constant := (Tcm_First + 7);
   Tcm_Getitemw       : constant := (Tcm_First + 60);
   Tcm_Setitemw       : constant := (Tcm_First + 61);
   Tcm_Insertitemw    : constant := (Tcm_First + 62);
   Tcm_Deleteitem     : constant := (Tcm_First + 8);
   Tcm_Deleteallitems : constant := (Tcm_First + 9);
   Tcm_Getcursel      : constant := (Tcm_First + 11);
   Tcm_Setcursel      : constant := (Tcm_First + 12);
   Tcm_Adjustrect     : constant := (Tcm_First + 40);
   Tcm_Getrowcount    : constant := (Tcm_First + 44);

   Tcif_Text : constant := 16#0001#;
   --     TCIF_IMAGE              : constant := 16#0002#;
   --     TCIF_RTLREADING         : constant := 16#0004#;
   Tcif_Param : constant := 16#0008#;
   --    TCIF_STATE              : constant := 16#0010#;
   type Tcitem is
      record
         Mask       : Interfaces.C.Unsigned                      := 0;
         State      : Interfaces.C.Unsigned                      := 0;
         State_Mask : Interfaces.C.Unsigned                      := 0;
         Text       : Lptstr                                     := null;
         Textmax    : Integer                                    := 0;
         Image      : Integer                                    := 0;
         Lparam     : Gwindows.Base.Pointer_To_Base_Window_Class := null;
      end record;

   Tb_Addbuttons       : constant := (Wm_User + 20);
   Tb_Setimagelist     : constant := (Wm_User + 48);
   Tb_Buttonstructsize : constant := (Wm_User + 30);
   Tb_Setstyle         : constant := 1080;
   Tb_Getstyle         : constant := 1081;
   Tbstate_Enabled     : constant := 16#4#;
   Tbstyle_Sep         : constant := 1;

   type Tbbutton is
      record
         Image   : Integer                    := 0;
         Command : Integer                    := 0;
         State   : Interfaces.C.Unsigned_Char := 0;
         Style   : Interfaces.C.Unsigned_Char := 0;
         Data    : Integer                    := 0;
         Istring : Integer                    := 0;
      end record;

   --     TTM_ACTIVATE            : constant := (WM_USER + 1);
   --     TTM_SETDELAYTIME        : constant := (WM_USER + 3);
   Ttm_Addtoola : constant := (Wm_User + 4);
   Ttm_Addtoolw : constant := (Wm_User + 50);
   --     TTM_DELTOOLA            : constant := (WM_USER + 5);
   --     TTM_DELTOOLW            : constant := (WM_USER + 51);
   --     TTM_NEWTOOLRECTA        : constant := (WM_USER + 6);
   --     TTM_NEWTOOLRECTW        : constant := (WM_USER + 52);
   --     TTM_RELAYEVENT          : constant := (WM_USER + 7);
   --     TTM_GETTOOLINFOA        : constant := (WM_USER + 8);
   --     TTM_GETTOOLINFOW        : constant := (WM_USER + 53);
   --     TTM_SETTOOLINFOA        : constant := (WM_USER + 9);
   --     TTM_SETTOOLINFOW        : constant := (WM_USER + 54);
   --     TTM_HITTESTA            : constant := (WM_USER + 10);
   --     TTM_HITTESTW            : constant := (WM_USER + 55);
   --     TTM_GETTEXTA            : constant := (WM_USER + 11);
   --     TTM_GETTEXTW            : constant := (WM_USER + 56);
   --     TTM_UPDATETIPTEXTA      : constant := (WM_USER + 12);
   --     TTM_UPDATETIPTEXTW      : constant := (WM_USER + 57);
   --     TTM_GETTOOLCOUNT        : constant := (WM_USER + 13);
   --     TTM_ENUMTOOLSA          : constant := (WM_USER + 14);
   --     TTM_ENUMTOOLSW          : constant := (WM_USER + 58);
   --     TTM_GETCURRENTTOOLA     : constant := (WM_USER + 15);
   --     TTM_GETCURRENTTOOLW     : constant := (WM_USER + 59);
   --     TTM_WINDOWFROMPOINT     : constant := (WM_USER + 16);
   --     TTM_TRACKACTIVATE       : constant := (WM_USER + 17);
   --     TTM_TRACKPOSITION       : constant := (WM_USER + 18);
   --     TTM_SETTIPBKCOLOR       : constant := (WM_USER + 19);
   --     TTM_SETTIPTEXTCOLOR     : constant := (WM_USER + 20);
   --     TTM_GETDELAYTIME        : constant := (WM_USER + 21);
   --     TTM_GETTIPBKCOLOR       : constant := (WM_USER + 22);
   --     TTM_GETTIPTEXTCOLOR     : constant := (WM_USER + 23);
   Ttm_Setmaxtipwidth : constant := (Wm_User + 24);
   --     TTM_GETMAXTIPWIDTH      : constant := (WM_USER + 25);
   --     TTM_SETMARGIN           : constant := (WM_USER + 26);
   --     TTM_GETMARGIN           : constant := (WM_USER + 27);
   --     TTM_POP                 : constant := (WM_USER + 28);
   --     TTM_UPDATE              : constant := (WM_USER + 29);
   Ttf_Idishwnd : constant := 16#0001#;
   --     TTF_CENTERTIP           : constant := 16#0002#;
   --     TTF_RTLREADING          : constant := 16#0004#;
   Ttf_Subclass : constant := 16#0010#;
   --     TTF_TRACK               : constant := 16#0020#;
   --     TTF_ABSOLUTE            : constant := 16#0080#;
   --     TTF_TRANSPARENT         : constant := 16#0100#;
   --     TTF_DI_SETITEM          : constant := 16#8000#;
   type Toolinfo is
      record
         Size   : Integer                       := 44;
         Flags  : Interfaces.C.Unsigned         := 0;
         Hwnd   : Gwindows.Types.Handle         := 0;
         Uid    : Gwindows.Types.Handle         := 0;
         Rect   : Gwindows.Types.Rectangle_Type := (0, 0, 0, 0);
         Hinst  : Interfaces.C.Long             := Gwindows.Internal.Current_Hinstance;
         Text   : Lptstr                        := null;
         Lparam : Integer                       := 0;
      end record;

   -------------------------------------------------------------------------
   --  Package Body
   -------------------------------------------------------------------------

   --------------
   -- On_Click --
   --------------

   procedure On_Click (
         Control : in out Common_Control_Type ) is
   begin
      Fire_On_Click (Control);
   end On_Click;

   ---------------------
   -- On_Double_Click --
   ---------------------

   procedure On_Double_Click (
         Control : in out Common_Control_Type ) is
   begin
      Fire_On_Double_Click (Control);
   end On_Double_Click;

   --------------------
   -- On_Right_Click --
   --------------------

   procedure On_Right_Click (
         Control : in out Common_Control_Type ) is
   begin
      Fire_On_Right_Click (Control);
   end On_Right_Click;

   ---------------------------
   -- On_Right_Double_Click --
   ---------------------------

   procedure On_Right_Double_Click (
         Control : in out Common_Control_Type ) is
   begin
      Fire_On_Right_Double_Click (Control);
   end On_Right_Double_Click;

   ----------------------
   -- On_Out_Of_Memory --
   ----------------------

   procedure On_Out_Of_Memory (
         Control : in out Common_Control_Type ) is
   begin
      Fire_On_Out_Of_Memory (Control);
   end On_Out_Of_Memory;

   --------------
   -- On_Focus --
   --------------

   procedure On_Focus (
         Control : in out Common_Control_Type ) is
   begin
      Fire_On_Focus (Control);
   end On_Focus;

   -------------------
   -- On_Lost_Focus --
   -------------------

   procedure On_Lost_Focus (
         Control : in out Common_Control_Type ) is
   begin
      Fire_On_Lost_Focus (Control);
   end On_Lost_Focus;

   ---------------
   -- On_Return --
   ---------------

   procedure On_Return (
         Control : in out Common_Control_Type ) is
   begin
      Fire_On_Return (Control);
   end On_Return;

   --------------
   -- On_Hover --
   --------------

   procedure On_Hover (
         Control : in out Common_Control_Type ) is
   begin
      Fire_On_Hover (Control);
   end On_Hover;

   ---------------
   -- On_Notify --
   ---------------

   procedure On_Notify (
         Window       : in out Common_Control_Type;
         Message      : in     Gwindows.Base.Pointer_To_Notification;
         Control      : in     Gwindows.Base.Pointer_To_Base_Window_Class;
         Return_Value : in out Interfaces.C.Long                           ) is
      pragma Warnings (Off, Control);
      pragma Warnings (Off, Return_Value);

      Nm_Outofmemory : constant := - 1;
      Nm_Click       : constant := - 2;
      Nm_Dblclk      : constant := - 3;
      Nm_Return      : constant := - 4;
      Nm_Rclick      : constant := - 5;
      Nm_Rdblclk     : constant := - 6;
      Nm_Setfocus    : constant := - 7;
      Nm_Killfocus   : constant := - 8;
      Nm_Hover       : constant := - 13;
   begin
      case Message.Code is
         when Nm_Outofmemory =>
            On_Out_Of_Memory (Common_Control_Type'Class (Window));
         when Nm_Click =>
            On_Click (Common_Control_Type'Class (Window));
         when Nm_Dblclk =>
            On_Double_Click (Common_Control_Type'Class (Window));
         when Nm_Return =>
            On_Return (Common_Control_Type'Class (Window));
         when Nm_Rclick =>
            On_Right_Click (Common_Control_Type'Class (Window));
         when Nm_Rdblclk =>
            On_Right_Double_Click (Common_Control_Type'Class (Window));
         when Nm_Setfocus =>
            On_Focus (Common_Control_Type'Class (Window));
         when Nm_Killfocus =>
            On_Lost_Focus (Common_Control_Type'Class (Window));
         when Nm_Hover =>
            On_Hover (Common_Control_Type'Class (Window));
          when others =>
            null;
      end case;

   end On_Notify;

   ------------
   -- Create --
   ------------

   procedure Create (
         Bar        : in out Status_Bar_Type;
         Parent     : in out Gwindows.Base.Base_Window_Type'Class;
         Text       : in     Gstring;
         Show       : in     Boolean                              := True;
         Is_Dynamic : in     Boolean                              := False ) is
      Sbs_Sizegrip : constant := 16#100#;
      Sbt_Tooltips : constant := 16#800#;
   begin
      Create_Control (Bar, Parent,
         "msctls_statusbar32",
         Text,
         0, 0, 0, 0, 0, Sbs_Sizegrip or Sbt_Tooltips,
         Is_Dynamic => Is_Dynamic);

      if Show then
         Gwindows.Common_Controls.Show (Bar);
      end if;

   end Create;

   -----------
   -- Parts --
   -----------

   procedure Parts (
         Bar       : in out Status_Bar_Type;
         Positions : in     Status_Bar_Position_Type ) is
      Sb_Setparts : constant := 1028;

      procedure Sendmessage (
            Hwnd   : Interfaces.C.Long := Handle (Bar);
            Umsg   : Interfaces.C.Int  := Sb_Setparts;
            Wparam : Interfaces.C.Long := Positions'Length;
            Lparam : System.Address    := Positions'Address );
      pragma Import (Stdcall, Sendmessage,
         "SendMessage" & Character_Mode_Identifier);
   begin
      Sendmessage;
   end Parts;

   ----------
   -- Text --
   ----------

   procedure Text (
         Bar  : in out Status_Bar_Type;
         Text : in     Gstring;
         Part : in     Natural;
         How  : in     Status_Kind_Type := Sunken ) is
      Sb_Settexta   : constant := 16#401#;
      Sb_Settextw   : constant := 16#40B#;
      Sbt_Noborders : constant := 16#100#;
      Sbt_Popout    : constant := 16#200#;

      Format : constant
      array (Status_Kind_Type) of Integer :=
         (
         Flat   => Sbt_Noborders,
         Sunken => 0,
         Raised => Sbt_Popout);

      C_Text : Gstring_C := Gwindows.Gstrings.To_Gstring_C (Text);

      procedure Sendmessagea (
            Hwnd   : Interfaces.C.Long := Handle (Bar);
            Umsg   : Interfaces.C.Int  := Sb_Settexta;
            Wparam : Integer           := Format (How) + Part;
            Lparam : System.Address    := C_Text'Address       );
      pragma Import (Stdcall, Sendmessagea, "SendMessageA");

      procedure Sendmessagew (
            Hwnd   : Interfaces.C.Long := Handle (Bar);
            Umsg   : Interfaces.C.Int  := Sb_Settextw;
            Wparam : Integer           := Format (How) + Part;
            Lparam : System.Address    := C_Text'Address       );
      pragma Import (Stdcall, Sendmessagew, "SendMessageW");

   begin
      if Character_Mode_Identifier = "A" then
         Sendmessagea;
      else
         Sendmessagew;
      end if;
   end Text;

   ----------------------
   -- On_Click_Handler --
   ----------------------

   procedure On_Click_Handler (
         Control : in out Common_Control_Type;
         Handler : in     Gwindows.Base.Action_Event ) is
   begin
      Control.On_Click_Event := Handler;
   end On_Click_Handler;

   -------------------
   -- Fire_On_Click --
   -------------------

   procedure Fire_On_Click (
         Control : in out Common_Control_Type ) is
      use Gwindows.Base;
   begin
      if Control.On_Click_Event /= null then
         Control.On_Click_Event (Base_Window_Type'Class (Control));
      end if;
   end Fire_On_Click;

   -----------------------------
   -- On_Double_Click_Handler --
   -----------------------------

   procedure On_Double_Click_Handler (
         Control : in out Common_Control_Type;
         Handler : in     Gwindows.Base.Action_Event ) is
   begin
      Control.On_Double_Click_Event := Handler;
   end On_Double_Click_Handler;

   --------------------------
   -- Fire_On_Double_Click --
   --------------------------

   procedure Fire_On_Double_Click (
         Control : in out Common_Control_Type ) is
      use Gwindows.Base;
   begin
      if Control.On_Double_Click_Event /= null then
         Control.On_Double_Click_Event (Base_Window_Type'Class (Control));
      end if;
   end Fire_On_Double_Click;

   ----------------------------
   -- On_Right_Click_Handler --
   ----------------------------

   procedure On_Right_Click_Handler (
         Control : in out Common_Control_Type;
         Handler : in     Gwindows.Base.Action_Event ) is
   begin
      Control.On_Right_Click_Event := Handler;
   end On_Right_Click_Handler;

   -------------------------
   -- Fire_On_Right_Click --
   -------------------------

   procedure Fire_On_Right_Click (
         Control : in out Common_Control_Type ) is
      use Gwindows.Base;
   begin
      if Control.On_Right_Click_Event /= null then
         Control.On_Right_Click_Event (Base_Window_Type'Class (Control));
      end if;
   end Fire_On_Right_Click;

   -----------------------------------
   -- On_Right_Double_Click_Handler --
   -----------------------------------

   procedure On_Right_Double_Click_Handler (
         Control : in out Common_Control_Type;
         Handler : in     Gwindows.Base.Action_Event ) is
   begin
      Control.On_Right_Double_Click_Event := Handler;
   end On_Right_Double_Click_Handler;

   --------------------------------
   -- Fire_On_Right_Double_Click --
   --------------------------------

   procedure Fire_On_Right_Double_Click (
         Control : in out Common_Control_Type ) is
      use Gwindows.Base;
   begin
      if Control.On_Right_Double_Click_Event /= null then
         Control.On_Right_Double_Click_Event
            (Base_Window_Type'Class (Control));
      end if;
   end Fire_On_Right_Double_Click;

   -----------------------
   -- On_Return_Handler --
   -----------------------

   procedure On_Return_Handler (
         Control : in out Common_Control_Type;
         Handler : in     Gwindows.Base.Action_Event ) is
   begin
      Control.On_Return_Event := Handler;
   end On_Return_Handler;

   --------------------
   -- Fire_On_Return --
   --------------------

   procedure Fire_On_Return (
         Control : in out Common_Control_Type ) is
      use Gwindows.Base;
   begin
      if Control.On_Return_Event /= null then
         Control.On_Return_Event (Base_Window_Type'Class (Control));
      end if;
   end Fire_On_Return;

   ------------------------------
   -- On_Out_Of_Memory_Handler --
   ------------------------------

   procedure On_Out_Of_Memory_Handler (
         Control : in out Common_Control_Type;
         Handler : in     Gwindows.Base.Action_Event ) is
   begin
      Control.On_Out_Of_Memory_Event := Handler;
   end On_Out_Of_Memory_Handler;

   ---------------------------
   -- Fire_On_Out_Of_Memory --
   ---------------------------

   procedure Fire_On_Out_Of_Memory (
         Control : in out Common_Control_Type ) is
      use Gwindows.Base;
   begin
      if Control.On_Out_Of_Memory_Event /= null then
         Control.On_Out_Of_Memory_Event (Base_Window_Type'Class (Control));
      end if;
   end Fire_On_Out_Of_Memory;

   ----------------------
   -- On_Focus_Handler --
   ----------------------

   procedure On_Focus_Handler (
         Control : in out Common_Control_Type;
         Handler : in     Gwindows.Base.Action_Event ) is
   begin
      Control.On_Focus_Event := Handler;
   end On_Focus_Handler;

   -------------------
   -- Fire_On_Focus --
   -------------------

   procedure Fire_On_Focus (
         Control : in out Common_Control_Type ) is
      use Gwindows.Base;
   begin
      if Control.On_Focus_Event /= null then
         Control.On_Focus_Event (Base_Window_Type'Class (Control));
      end if;
   end Fire_On_Focus;

   ---------------------------
   -- On_Lost_Focus_Handler --
   ---------------------------

   procedure On_Lost_Focus_Handler (
         Control : in out Common_Control_Type;
         Handler : in     Gwindows.Base.Action_Event ) is
   begin
      Control.On_Lost_Focus_Event := Handler;
   end On_Lost_Focus_Handler;

   ------------------------
   -- Fire_On_Lost_Focus --
   ------------------------

   procedure Fire_On_Lost_Focus (
         Control : in out Common_Control_Type ) is
      use Gwindows.Base;
   begin
      if Control.On_Lost_Focus_Event /= null then
         Control.On_Lost_Focus_Event (Base_Window_Type'Class (Control));
      end if;
   end Fire_On_Lost_Focus;

   ----------------------
   -- On_Hover_Handler --
   ----------------------

   procedure On_Hover_Handler (
         Control : in out Common_Control_Type;
         Handler : in     Gwindows.Base.Action_Event ) is
   begin
      Control.On_Hover_Event := Handler;
   end On_Hover_Handler;

   -------------------
   -- Fire_On_Hover --
   -------------------

   procedure Fire_On_Hover (
         Control : in out Common_Control_Type ) is
      use Gwindows.Base;
   begin
      if Control.On_Hover_Event /= null then
         Control.On_Hover_Event (Base_Window_Type'Class (Control));
      end if;
   end Fire_On_Hover;

   ------------
   -- Create --
   ------------

   procedure Create (
         Control    : in out Animation_Control_Type;
         Parent     : in out Gwindows.Base.Base_Window_Type'Class;
         Left       : in     Integer;
         Top        : in     Integer;
         Width      : in     Integer                              := 1;
         Height     : in     Integer                              := 1;
         Auto_Size  : in     Boolean                              := True;
         Show       : in     Boolean                              := True;
         Is_Dynamic : in     Boolean                              := False ) is
      Styles : Interfaces.C.Unsigned := 0;
   begin
      if not Auto_Size then
         Styles := Acs_Center;
      end if;

      Create_Control (Control, Parent,
         "SysAnimate32",
         "",
         Left, Top, Width, Height,
         0, Styles,
         Is_Dynamic => Is_Dynamic);

      if Show then
         Gwindows.Common_Controls.Show (Control);
      end if;

   end Create;

   ----------
   -- Open --
   ----------

   procedure Open (
         Control : in out Animation_Control_Type;
         Name    : in     Gstring                 ) is
      C_Text : constant Gstring_C := Gwindows.Gstrings.To_Gstring_C (Name);

      procedure Sendmessagea (
            Hwnd   : Interfaces.C.Long := Handle (Control);
            Umsg   : Interfaces.C.Int  := Acm_Opena;
            Wparam : Interfaces.C.Long := 0;
            Lparam : Gstring_C         := C_Text            );
      pragma Import (Stdcall, Sendmessagea,
         "SendMessage" & Character_Mode_Identifier);

      procedure Sendmessagew (
            Hwnd   : Interfaces.C.Long := Handle (Control);
            Umsg   : Interfaces.C.Int  := Acm_Openw;
            Wparam : Interfaces.C.Long := 0;
            Lparam : Gstring_C         := C_Text            );
      pragma Import (Stdcall, Sendmessagew,
         "SendMessage" & Character_Mode_Identifier);
   begin
      if Character_Mode = Unicode then
         Sendmessagew;
      else
         Sendmessagea;
      end if;
   end Open;

   -----------
   -- Close --
   -----------

   procedure Close (
         Control : in out Animation_Control_Type ) is
      procedure Sendmessagea (
            Hwnd   : Interfaces.C.Long := Handle (Control);
            Umsg   : Interfaces.C.Int  := Acm_Opena;
            Wparam : Interfaces.C.Long := 0;
            Lparam : Interfaces.C.Long := 0                 );
      pragma Import (Stdcall, Sendmessagea,
         "SendMessage" & Character_Mode_Identifier);

      procedure Sendmessagew (
            Hwnd   : Interfaces.C.Long := Handle (Control);
            Umsg   : Interfaces.C.Int  := Acm_Openw;
            Wparam : Interfaces.C.Long := 0;
            Lparam : Interfaces.C.Long := 0                 );
      pragma Import (Stdcall, Sendmessagew,
         "SendMessage" & Character_Mode_Identifier);
   begin
      if Character_Mode = Unicode then
         Sendmessagew;
      else
         Sendmessagea;
      end if;
   end Close;

   ----------
   -- Play --
   ----------

   procedure Play (
         Control     : in out Animation_Control_Type;
         Repeat      : in     Integer                := 1;
         Start_Frame : in     Natural                := 0;
         End_Frame   : in     Integer                := - 1 ) is
      type Word is
         record
            Lpl : Interfaces.C.Short;
            Lph : Interfaces.C.Short;
         end record;
      pragma Convention (C_Pass_By_Copy, Word);

      procedure Sendmessage (
            Hwnd   : Interfaces.C.Long := Handle (Control);
            Umsg   : Interfaces.C.Int  := Acm_Play;
            Wparam : Integer           := Repeat;
            Lparam : Word              := (Interfaces.C.Short (Start_Frame), Interfaces.C.Short (End_Frame)) );
      pragma Import (Stdcall, Sendmessage,
         "SendMessage" & Character_Mode_Identifier);
   begin
      Sendmessage;
   end Play;

   ----------
   -- Seek --
   ----------

   procedure Seek (
         Control : in out Animation_Control_Type;
         Frame   : in     Natural                 ) is
   begin
      Play (Control, 1, Frame, Frame);
   end Seek;

   procedure Stop (
         Control : in out Animation_Control_Type ) is
      procedure Sendmessage (
            Hwnd   : Interfaces.C.Long := Handle (Control);
            Umsg   : Interfaces.C.Int  := Acm_Stop;
            Wparam : Interfaces.C.Long := 0;
            Lparam : Interfaces.C.Long := 0                 );
      pragma Import (Stdcall, Sendmessage,
         "SendMessage" & Character_Mode_Identifier);
   begin
      Sendmessage;
   end Stop;

   ----------------------
   -- On_Start_Handler --
   ----------------------

   procedure On_Start_Handler (
         Control : in out Animation_Control_Type;
         Handler : in     Gwindows.Base.Action_Event ) is
   begin
      Control.On_Start_Event := Handler;
   end On_Start_Handler;

   -------------------
   -- Fire_On_Start --
   -------------------

   procedure Fire_On_Start (
         Control : in out Animation_Control_Type ) is
      use Gwindows.Base;
   begin
      if Control.On_Start_Event /= null then
         Control.On_Start_Event (Base_Window_Type'Class (Control));
      end if;
   end Fire_On_Start;

   ----------------------
   -- On_Stop_Handler --
   ----------------------

   procedure On_Stop_Handler (
         Control : in out Animation_Control_Type;
         Handler : in     Gwindows.Base.Action_Event ) is
   begin
      Control.On_Stop_Event := Handler;
   end On_Stop_Handler;

   -------------------
   -- Fire_On_Stop --
   -------------------

   procedure Fire_On_Stop (
         Control : in out Animation_Control_Type ) is
      use Gwindows.Base;
   begin
      if Control.On_Stop_Event /= null then
         Control.On_Stop_Event (Base_Window_Type'Class (Control));
      end if;
   end Fire_On_Stop;

   --------------
   -- On_Start --
   --------------

   procedure On_Start (
         Control : in out Animation_Control_Type ) is
   begin
      Fire_On_Start (Control);
   end On_Start;

   -------------
   -- On_Stop --
   -------------

   procedure On_Stop (
         Control : in out Animation_Control_Type ) is
   begin
      Fire_On_Stop (Control);
   end On_Stop;

   ----------------
   -- On_Command --
   ----------------

   procedure On_Command (
         Window  : in out Animation_Control_Type;
         Code    : in     Integer;
         Id      : in     Integer;
         Control : in     Gwindows.Base.Pointer_To_Base_Window_Class ) is
      pragma Warnings (Off, Id);
      pragma Warnings (Off, Control);
   begin
      case Code is
         when Acn_Start =>
            On_Start (Animation_Control_Type'Class (Window));
         when Acn_Stop =>
            On_Stop (Animation_Control_Type'Class (Window));
         when others =>
            null;
      end case;
   end On_Command;

   ------------
   -- Create --
   ------------

   procedure Create (
         Control    : in out Date_Time_Picker_Type;
         Parent     : in out Gwindows.Base.Base_Window_Type'Class;
         Left       : in     Integer;
         Top        : in     Integer;
         Width      : in     Integer;
         Height     : in     Integer;
         Format     : in     Date_Format                          := Long_Format;
         Method     : in     Date_Selection_Method                := Calendar;
         None_Ok    : in     Boolean                              := False;
         Show       : in     Boolean                              := True;
         Is_Dynamic : in     Boolean                              := False        ) is

      Styles : Interfaces.C.Unsigned := 0;

      type Format_Array is array (Date_Format) of Interfaces.C.Unsigned;

      Format_Val : constant Format_Array := (Long_Format => 4, Short_Format
        => 0, Time_Format => 9);
   begin
      if Method = Up_Down then
         Styles := Styles or 1;
      end if;

      if None_Ok then
         Styles := Styles or 2;
      end if;

      Create_Control (Control, Parent,
         "SysDateTimePick32",
         "",
         Left, Top, Width, Height,
         0, Styles or Format_Val (Format),
         Is_Dynamic => Is_Dynamic);

      if Show then
         Gwindows.Common_Controls.Show (Control);
      end if;
   end Create;

   ---------------
   -- On_Notify --
   ---------------

   procedure On_Notify (
         Window       : in out Date_Time_Picker_Type;
         Message      : in     Gwindows.Base.Pointer_To_Notification;
         Control      : in     Gwindows.Base.Pointer_To_Base_Window_Class;
         Return_Value : in out Interfaces.C.Long                           ) is
      Dtn_First          : constant := - 760;
      Dtn_Datetimechange : constant := Dtn_First + 1;
   begin
      case Message.Code is
         when Dtn_Datetimechange =>
            On_Date_Time_Change (Date_Time_Picker_Type'Class (Window));
         when others =>
            On_Notify (Common_Control_Type (Window),
               Message, Control, Return_Value);
      end case;

   end On_Notify;

   ---------------
   -- On_Create --
   ---------------

   procedure On_Create (
         Control : in out Date_Time_Picker_Type ) is
   begin
      Tab_Stop (Control);
   end On_Create;

   -------------------------
   -- On_Date_Time_Change --
   -------------------------

   procedure On_Date_Time_Change (
         Control : in out Date_Time_Picker_Type ) is
   begin
      Fire_On_Date_Time_Change (Control);
   end On_Date_Time_Change;

   ---------------------------------
   -- On_Date_Time_Change_Handler --
   ---------------------------------

   procedure On_Date_Time_Change_Handler (
         Control : in out Date_Time_Picker_Type;
         Handler : in     Gwindows.Base.Action_Event ) is
   begin
      Control.On_Date_Time_Change_Event := Handler;
   end On_Date_Time_Change_Handler;

   ------------------------------
   -- Fire_On_Date_Time_Change --
   ------------------------------

   procedure Fire_On_Date_Time_Change (
         Control : in out Date_Time_Picker_Type ) is
      use Gwindows.Base;
   begin
      if Control.On_Date_Time_Change_Event /= null then
         Control.On_Date_Time_Change_Event (Base_Window_Type'Class (
               Control));
      end if;
   end Fire_On_Date_Time_Change;

   ----------------------
   -- Date_Time_Format --
   ----------------------

   procedure Date_Time_Format (
         Control : in out Date_Time_Picker_Type;
         Format  : in     Gstring                ) is

      C_Text : constant Interfaces.C.Char_Array := Interfaces.C.To_C (Gwindows.Gstrings.To_String
        (Format));

      procedure Sendmessage (
            Hwnd   : Interfaces.C.Long       := Handle (Control);
            Umsg   : Interfaces.C.Int        := Dtm_Setformat;
            Wparam : Interfaces.C.Long       := 0;
            Lparam : Interfaces.C.Char_Array := C_Text            );
      pragma Import (Stdcall, Sendmessage,
         "SendMessage" & Character_Mode_Identifier);
   begin
      Sendmessage;
   end Date_Time_Format;

   ---------------
   -- Set_Range --
   ---------------

   procedure Set_Range (
         Control     : in out Date_Time_Picker_Type;
         Range_Start : in     Ada.Calendar.Time;
         Range_End   : in     Ada.Calendar.Time      ) is
      type Range_Type is
         record
            Start_Range : Systemtime;
            End_Range   : Systemtime;
         end record;

      The_Range : constant Range_Type := (Calendar_To_Systemtime (Range_Start), Calendar_To_Systemtime
        (Range_End));

      procedure Sendmessage (
            Hwnd   : Interfaces.C.Long := Handle (Control);
            Umsg   : Interfaces.C.Int  := Dtm_Setrange;
            Wparam : Integer           := Gdtr_Min + Gdtr_Max;
            Lparam : Range_Type        := The_Range            );
      pragma Import (Stdcall, Sendmessage,
         "SendMessage" & Character_Mode_Identifier);
   begin
      Sendmessage;
   end Set_Range;

   ---------------
   -- Date_Time --
   ---------------

   procedure Date_Time (
         Control   : in out Date_Time_Picker_Type;
         Date_Time : in     Ada.Calendar.Time      ) is
      procedure Sendmessage (
            Hwnd   : Interfaces.C.Long := Handle (Control);
            Umsg   : Interfaces.C.Int  := Dtm_Setsystemtime;
            Wparam : Interfaces.C.Long := Gdt_Valid;
            Lparam : Systemtime                              );
      pragma Import (Stdcall, Sendmessage,
         "SendMessage" & Character_Mode_Identifier);

      C_Time : constant Systemtime := Calendar_To_Systemtime (Date_Time);
   begin
      Sendmessage (Lparam => C_Time);
   end Date_Time;

   function Date_Time (
         Control : in     Date_Time_Picker_Type )
     return Ada.Calendar.Time is
      procedure Sendmessage (
            Hwnd   :        Interfaces.C.Long := Handle (Control);
            Umsg   :        Interfaces.C.Int  := Dtm_Getsystemtime;
            Wparam :        Interfaces.C.Long := 0;
            Lparam :    out Systemtime                              );
      pragma Import (Stdcall, Sendmessage,
         "SendMessage" & Character_Mode_Identifier);

      C_Time : Systemtime;
   begin
      Sendmessage (Lparam => C_Time);

      return Systemtime_To_Calendar (C_Time);
   end Date_Time;

   ----------------------------
   -- Calendar_To_SYSTEMTIME --
   ----------------------------

   function Calendar_To_Systemtime (
         Time : Ada.Calendar.Time )
     return Systemtime is
      use Ada.Calendar;

      C_Time  : Systemtime;
      Seconds : Ada.Calendar.Day_Duration;
      Temp    : Ada.Calendar.Day_Duration;
   begin
      C_Time.Wyear   := Interfaces.C.Short (Year (Time));
      C_Time.Wmonth  := Interfaces.C.Short (Month (Time));
      C_Time.Wday    := Interfaces.C.Short (Day (Time));

      Seconds := Ada.Calendar.Seconds (Time);

      Temp := Seconds / (60*60);
      C_Time.Whour   :=
         Interfaces.C.Short (Float'Floor (Float (Temp)));

      Temp := (Seconds - (Ada.Calendar.Day_Duration
            (C_Time.Whour) * (60*60))) / 60;
      C_Time.Wminute :=
         Interfaces.C.Short (Float'Floor (Float (Temp)));

      Temp := Seconds -
         ((Ada.Calendar.Day_Duration (C_Time.Whour) * (60 * 60)) +
         (Ada.Calendar.Day_Duration (C_Time.Wminute) * 60));
      C_Time.Wsecond :=
         Interfaces.C.Short (Float'Floor (Float (Temp)));

      return C_Time;
   end Calendar_To_Systemtime;

   ----------------------------
   -- SYSTEMTIME_To_Calendar --
   ----------------------------

   function Systemtime_To_Calendar (
         Time : Systemtime )
     return Ada.Calendar.Time is
      use Ada.Calendar;
   begin
      return Time_Of (Year_Number (Time.Wyear),
         Month_Number (Time.Wmonth),
         Day_Number (Time.Wday),
         Day_Duration
         ((Day_Duration (Time.Whour) * 60 * 60) +
            (Day_Duration (Time.Wminute) * 60) +
            (Day_Duration (Time.Wsecond))));
   end Systemtime_To_Calendar;

   --------------------
   -- None_Date_Time --
   --------------------

   procedure None_Date_Time (
         Control : in out Date_Time_Picker_Type ) is
      procedure Sendmessage (
            Hwnd   : Interfaces.C.Long := Handle (Control);
            Umsg   : Interfaces.C.Int  := Dtm_Setsystemtime;
            Wparam : Interfaces.C.Long := Gdt_None;
            Lparam : Integer           := 0                  );
      pragma Import (Stdcall, Sendmessage,
         "SendMessage" & Character_Mode_Identifier);
   begin
      Sendmessage;
   end None_Date_Time;

   function None_Date_Time (
         Control : in     Date_Time_Picker_Type )
     return Boolean is
      function Sendmessage (
            Hwnd   : Interfaces.C.Long := Handle (Control);
            Umsg   : Interfaces.C.Int  := Dtm_Getsystemtime;
            Wparam : Interfaces.C.Long := 0;
            Lparam : Systemtime                              )
        return Integer;
      pragma Import (Stdcall, Sendmessage,
         "SendMessage" & Character_Mode_Identifier);

      C_Time : constant Systemtime := (0, 0, 0, 0, 0, 0, 0, 0);
   begin
      return (Sendmessage (Lparam => C_Time) = Gdt_None);
   end None_Date_Time;

   ------------
   -- Create --
   ------------

   procedure Create (
         Control    : in out Ip_Address_Control_Type;
         Parent     : in out Gwindows.Base.Base_Window_Type'Class;
         Left       : in     Integer;
         Top        : in     Integer;
         Width      : in     Integer;
         Height     : in     Integer;
         Show       : in     Boolean                              := True;
         Is_Dynamic : in     Boolean                              := False ) is
   begin
      Create_Control (Control, Parent,
         "SysIPAddress32",
         "",
         Left, Top, Width, Height,
         0, 0,
         Is_Dynamic => Is_Dynamic);

      if Show then
         Gwindows.Common_Controls.Show (Control);
      end if;

      Tab_Stop (Control);
   end Create;

   ---------------
   -- On_Change --
   ---------------

   procedure On_Change (
         Control : in out Ip_Address_Control_Type ) is
   begin
      Fire_On_Change (Control);
   end On_Change;

   ----------------
   -- On_Command --
   ----------------

   procedure On_Command (
         Window  : in out Ip_Address_Control_Type;
         Code    : in     Integer;
         Id      : in     Integer;
         Control : in     Gwindows.Base.Pointer_To_Base_Window_Class ) is
      pragma Warnings (Off, Id);
      pragma Warnings (Off, Control);

      En_Setfocus  : constant := 256;
      En_Killfocus : constant := 512;
      En_Change    : constant := 768;
   begin
      case Code is
         when En_Setfocus =>
            On_Focus (Ip_Address_Control_Type'Class (Window));
         when En_Killfocus =>
            On_Lost_Focus (Ip_Address_Control_Type'Class (Window));
         when En_Change =>
            On_Change (Ip_Address_Control_Type'Class (Window));
         when others =>
            null;
      end case;
   end On_Command;

   -----------------------
   -- On_Change_Handler --
   -----------------------

   procedure On_Change_Handler (
         Control : in out Ip_Address_Control_Type;
         Handler : in     Gwindows.Base.Action_Event ) is
   begin
      Control.On_Change_Event := Handler;
   end On_Change_Handler;

   --------------------
   -- Fire_On_Change --
   --------------------

   procedure Fire_On_Change (
         Control : in out Ip_Address_Control_Type ) is
      use Gwindows.Base;
   begin
      if Control.On_Change_Event /= null then
         Control.On_Change_Event (Base_Window_Type'Class (Control));
      end if;
   end Fire_On_Change;

   ---------------
   -- On_Create --
   ---------------

   procedure On_Create (
         Control : in out Ip_Address_Control_Type ) is
   begin
      Tab_Stop (Control);
   end On_Create;

   ------------
   -- Create --
   ------------

   procedure Create (
         Control    : in out Progress_Control_Type;
         Parent     : in out Gwindows.Base.Base_Window_Type'Class;
         Left       : in     Integer;
         Top        : in     Integer;
         Width      : in     Integer;
         Height     : in     Integer;
         Show       : in     Boolean                              := True;
         Is_Dynamic : in     Boolean                              := False ) is
   begin
      Create_Control (Control, Parent,
         "msctls_progress32",
         "",
         Left, Top, Width, Height,
         0, 0,
         Is_Dynamic => Is_Dynamic);

      if Show then
         Gwindows.Common_Controls.Show (Control);
      end if;
   end Create;

   --------------
   -- Position --
   --------------

   procedure Position (
         Control : in out Progress_Control_Type;
         Where   : in     Natural                ) is
      procedure Sendmessage (
            Hwnd   : Interfaces.C.Long := Handle (Control);
            Umsg   : Interfaces.C.Int  := Pbm_Setpos;
            Wparam : Integer           := Where;
            Lparam : Integer           := 0                 );
      pragma Import (Stdcall, Sendmessage,
         "SendMessage" & Character_Mode_Identifier);
   begin
      Sendmessage;
   end Position;

   function Position (
         Control : in     Progress_Control_Type )
     return Natural is
      function Sendmessage (
            Hwnd   : Interfaces.C.Long := Handle (Control);
            Umsg   : Interfaces.C.Int  := Pbm_Getpos;
            Wparam : Integer           := 0;
            Lparam : Integer           := 0                 )
        return Natural;
      pragma Import (Stdcall, Sendmessage,
         "SendMessage" & Character_Mode_Identifier);
   begin
      return Sendmessage;
   end Position;

   --------------------
   -- Progress_Range --
   --------------------

   procedure Progress_Range (
         Control : in out Progress_Control_Type;
         Low     : in     Natural;
         High    : in     Natural                ) is
      procedure Sendmessage (
            Hwnd   : Interfaces.C.Long := Handle (Control);
            Umsg   : Interfaces.C.Int  := Pbm_Setrange32;
            Wparam : Integer           := Low;
            Lparam : Integer           := High              );
      pragma Import (Stdcall, Sendmessage,
         "SendMessage" & Character_Mode_Identifier);
   begin
      Sendmessage;
   end Progress_Range;

   ---------------
   -- Increment --
   ---------------

   procedure Increment (
         Control : in out Progress_Control_Type;
         Amount  : in     Natural               := 1 ) is
      procedure Sendmessage (
            Hwnd   : Interfaces.C.Long := Handle (Control);
            Umsg   : Interfaces.C.Int  := Pbm_Deltapos;
            Wparam : Integer           := Amount;
            Lparam : Integer           := 0                 );
      pragma Import (Stdcall, Sendmessage,
         "SendMessage" & Character_Mode_Identifier);
   begin
      Sendmessage;
   end Increment;

   ---------------
   -- Step_Size --
   ---------------

   procedure Step_Size (
         Control : in out Progress_Control_Type;
         Size    : in     Natural               := 10 ) is
      procedure Sendmessage (
            Hwnd   : Interfaces.C.Long := Handle (Control);
            Umsg   : Interfaces.C.Int  := Pbm_Setstep;
            Wparam : Integer           := Size;
            Lparam : Integer           := 0                 );
      pragma Import (Stdcall, Sendmessage,
         "SendMessage" & Character_Mode_Identifier);
   begin
      Sendmessage;
   end Step_Size;

   ----------
   -- Step --
   ----------

   procedure Step (
         Control : in out Progress_Control_Type ) is
      procedure Sendmessage (
            Hwnd   : Interfaces.C.Long := Handle (Control);
            Umsg   : Interfaces.C.Int  := Pbm_Stepit;
            Wparam : Integer           := 0;
            Lparam : Integer           := 0                 );
      pragma Import (Stdcall, Sendmessage,
         "SendMessage" & Character_Mode_Identifier);
   begin
      Sendmessage;
   end Step;

   ------------
   -- Create --
   ------------

   procedure Create (
         Control    : in out List_View_Control_Type;
         Parent     : in out Gwindows.Base.Base_Window_Type'Class;
         Left       : in     Integer;
         Top        : in     Integer;
         Width      : in     Integer;
         Height     : in     Integer;
         Selection  : in     List_View_Control_Select_Type        := Single;
         View       : in     List_View_Control_View_Type          := List_View;
         Sort       : in     List_View_Control_Sort_Type          := No_Sorting;
         Arrange    : in     Boolean                              := True;
         Align      : in     List_View_Control_Alignment_Type     := Align_Left;
         Show       : in     Boolean                              := True;
         Is_Dynamic : in     Boolean                              := False       ) is

      Lvs_Icon      : constant := 16#0000#;
      Lvs_Report    : constant := 16#0001#;
      Lvs_Smallicon : constant := 16#0002#;
      Lvs_List      : constant := 16#0003#;
      --  LVS_TYPEMASK            : constant := 16#0003#;
      Lvs_Singlesel : constant := 16#0004#;
      --  LVS_SHOWSELALWAYS       : constant := 16#0008#;
      Lvs_Sortascending  : constant := 16#0010#;
      Lvs_Sortdescending : constant := 16#0020#;
      --  LVS_SHAREIMAGELISTS     : constant := 16#0040#;
      --  LVS_NOLABELWRAP         : constant := 16#0080#;
      Lvs_Autoarrange : constant := 16#0100#;
      --  LVS_EDITLABELS          : constant := 16#0200#;
      --  LVS_NOSCROLL            : constant := 16#2000#;
      --  LVS_TYPESTYLEMASK       : constant := 16#Fc00#;
      Lvs_Aligntop  : constant := 16#0000#;
      Lvs_Alignleft : constant := 16#0800#;
      --  LVS_ALIGNMASK           : constant := 16#0c00#;
      --  LVS_NOCOLUMNHEADER      : constant := 16#4000#;
      Lvs_Nosortheader : constant := 16#8000#;
      LVS_Ownerdrawfixed           : constant := 16#0400#;

      Styles : Interfaces.C.Unsigned := 0;
   begin
      if Selection = Single then
         Styles := Styles or Lvs_Singlesel;
      end if;

      case View is
         when Icon_View =>
            Styles := Styles or Lvs_Icon;
         when Small_Icon_View =>
            Styles := Styles or Lvs_Smallicon;
         when List_View =>
            Styles := Styles or Lvs_List;
         when Report_View =>
            Styles := Styles or Lvs_Report ;
      end case;

      if Sort = Sort_Custom then
         Styles := Styles or Lvs_Nosortheader;
      else
         if Sort = Sort_Ascending then
            Styles := Styles or Lvs_Sortascending;
         elsif Sort = Sort_Descending then
            Styles := Styles or Lvs_Sortdescending;
         end if;
      end if;

      if Arrange then
         Styles := Styles or Lvs_Autoarrange;
      end if;

      if Align = Align_Left then
         Styles := Styles or Lvs_Alignleft;
      elsif Align = Align_Top then
         Styles := Styles or Lvs_Aligntop;
      end if;

      Create_Control (Control, Parent,
         "SysListView32",
         "",
         Left, Top, Width, Height,
         10, Styles,
         Is_Dynamic => Is_Dynamic);

      if Show then
         Gwindows.Common_Controls.Show (Control);
      end if;

   end Create;

   --------------
   -- Set_Item --
   --------------

   procedure Set_Item (
         Control : in out List_View_Control_Type;
         Text    : in     Gstring;
         Index   : in     Integer;
         Icon    : in     Integer                := 0 ) is
      C_Text : Gstring_C := Gwindows.Gstrings.To_Gstring_C (Text);

      Item : Lvitem;

      procedure Sendmessagea (
            Hwnd   : Interfaces.C.Long := Handle (Control);
            Umsg   : Interfaces.C.Int  := Lvm_Setitema;
            Wparam : Integer           := 0;
            Lparam : Lvitem            := Item              );
      pragma Import (Stdcall, Sendmessagea,
         "SendMessage" & Character_Mode_Identifier);

      procedure Sendmessagew (
            Hwnd   : Interfaces.C.Long := Handle (Control);
            Umsg   : Interfaces.C.Int  := Lvm_Setitemw;
            Wparam : Integer           := 0;
            Lparam : Lvitem            := Item              );
      pragma Import (Stdcall, Sendmessagew,
         "SendMessage" & Character_Mode_Identifier);
   begin
      Item.Mask := Lvif_Text or Lvif_Image;
      Item.Item := Index;
      Item.Image := Icon;
      Item.Text := C_Text (0)'Unchecked_Access;

      if Character_Mode = Unicode then
         Sendmessagew;
      else
         Sendmessagea;
      end if;
   end Set_Item;

   ------------------
   -- Set_Sub_Item --
   ------------------

   procedure Set_Sub_Item (
         Control   : in out List_View_Control_Type;
         Text      : in     Gstring;
         Index     : in     Integer;
         Sub_Index : in     Integer                 ) is
      C_Text : Gstring_C := Gwindows.Gstrings.To_Gstring_C (Text);

      Item : Lvitem;

      procedure Sendmessagea (
            Hwnd   : Interfaces.C.Long := Handle (Control);
            Umsg   : Interfaces.C.Int  := Lvm_Setitema;
            Wparam : Integer           := 0;
            Lparam : Lvitem            := Item              );
      pragma Import (Stdcall, Sendmessagea,
         "SendMessage" & Character_Mode_Identifier);

      procedure Sendmessagew (
            Hwnd   : Interfaces.C.Long := Handle (Control);
            Umsg   : Interfaces.C.Int  := Lvm_Setitemw;
            Wparam : Integer           := 0;
            Lparam : Lvitem            := Item              );
      pragma Import (Stdcall, Sendmessagew,
         "SendMessage" & Character_Mode_Identifier);
   begin
      Item.Mask := Lvif_Text;
      Item.Item := Index;
      Item.Subitem := Sub_Index;
      Item.Text := C_Text (0)'Unchecked_Access;

      if Character_Mode = Unicode then
         Sendmessagew;
      else
         Sendmessagea;
      end if;
   end Set_Sub_Item;

   -----------------
   -- Insert_Item --
   -----------------

   procedure Insert_Item (
         Control : in out List_View_Control_Type;
         Text    : in     Gstring;
         Index   : in     Integer;
         Icon    : in     Integer                := 0 ) is
      C_Text : Gstring_C := Gwindows.Gstrings.To_Gstring_C (Text);

      Item : Lvitem;

      procedure Sendmessagea (
            Hwnd   : Interfaces.C.Long := Handle (Control);
            Umsg   : Interfaces.C.Int  := Lvm_Insertitema;
            Wparam : Integer           := 0;
            Lparam : Lvitem            := Item              );
      pragma Import (Stdcall, Sendmessagea,
         "SendMessage" & Character_Mode_Identifier);

      procedure Sendmessagew (
            Hwnd   : Interfaces.C.Long := Handle (Control);
            Umsg   : Interfaces.C.Int  := Lvm_Insertitemw;
            Wparam : Integer           := 0;
            Lparam : Lvitem            := Item              );
      pragma Import (Stdcall, Sendmessagew,
         "SendMessage" & Character_Mode_Identifier);
   begin
      Item.Mask := Lvif_Text or Lvif_Image or Lvif_Param;
      Item.Item := Index;
      Item.Image := Icon;
      Item.Text := C_Text (0)'Unchecked_Access;

      if Character_Mode = Unicode then
         Sendmessagew;
      else
         Sendmessagea;
      end if;


   end Insert_Item;

   ----------------
   -- Set_Column --
   ----------------

   procedure Set_Column (
         Control : in out List_View_Control_Type;
         Text    : in     Gstring;
         Index   : in     Integer;
         Width   : in     Integer                 ) is
      C_Text : Gstring_C := Gwindows.Gstrings.To_Gstring_C (Text);

      Item : Lvcolumn;

      procedure Sendmessagea (
            Hwnd   : Interfaces.C.Long := Handle (Control);
            Umsg   : Interfaces.C.Int  := Lvm_Setcolumna;
            Wparam : Integer           := Index;
            Lparam : Lvcolumn          := Item              );
      pragma Import (Stdcall, Sendmessagea,
         "SendMessage" & Character_Mode_Identifier);

      procedure Sendmessagew (
            Hwnd   : Interfaces.C.Long := Handle (Control);
            Umsg   : Interfaces.C.Int  := Lvm_Setcolumnw;
            Wparam : Integer           := Index;
            Lparam : Lvcolumn          := Item              );
      pragma Import (Stdcall, Sendmessagew,
         "SendMessage" & Character_Mode_Identifier);
   begin
      Item.Mask := Lvcf_Text or Lvcf_Width;
      Item.Text := C_Text (0)'Unchecked_Access;
      Item.Width := Width;

      if Character_Mode = Unicode then
         Sendmessagew;
      else
         Sendmessagea;
      end if;
   end Set_Column;

   -------------------
   -- Insert_Column --
   -------------------

   procedure Insert_Column (
         Control : in out List_View_Control_Type;
         Text    : in     Gstring;
         Index   : in     Integer;
         Width   : in     Integer                 ) is
      C_Text : Gstring_C := Gwindows.Gstrings.To_Gstring_C (Text);

      Item : Lvcolumn;

      procedure Sendmessagea (
            Hwnd   : Interfaces.C.Long := Handle (Control);
            Umsg   : Interfaces.C.Int  := Lvm_Insertcolumna;
            Wparam : Integer           := Index;
            Lparam : Lvcolumn          := Item               );
      pragma Import (Stdcall, Sendmessagea,
         "SendMessage" & Character_Mode_Identifier);

      procedure Sendmessagew (
            Hwnd   : Interfaces.C.Long := Handle (Control);
            Umsg   : Interfaces.C.Int  := Lvm_Insertcolumnw;
            Wparam : Integer           := Index;
            Lparam : Lvcolumn          := Item               );
      pragma Import (Stdcall, Sendmessagew,
         "SendMessage" & Character_Mode_Identifier);
   begin
      Item.Mask := Lvcf_Text or Lvcf_Width;
      Item.Text := C_Text (0)'Unchecked_Access;
      Item.Width := Width;

      if Character_Mode = Unicode then
         Sendmessagew;
      else
         Sendmessagea;
      end if;

   end Insert_Column;

   ----------------
   -- Item_Count --
   ----------------

   function Item_Count (
         Control : in     List_View_Control_Type )
     return Integer is
      function Sendmessage (
            Hwnd   : Interfaces.C.Long := Handle (Control);
            Umsg   : Interfaces.C.Int  := Lvm_Getitemcount;
            Wparam : Integer           := 0;
            Lparam : Integer           := 0                 )
        return Integer;
      pragma Import (Stdcall, Sendmessage,
         "SendMessage" & Character_Mode_Identifier);
   begin
      return Sendmessage;
   end Item_Count;

   -------------------------
   -- Selected_Item_Count --
   -------------------------

   function Selected_Item_Count (
         Control : in     List_View_Control_Type )
     return Integer is
      function Sendmessage (
            Hwnd   : Interfaces.C.Long := Handle (Control);
            Umsg   : Interfaces.C.Int  := Lvm_Getselectedcount;
            Wparam : Integer           := 0;
            Lparam : Integer           := 0                     )
        return Integer;
      pragma Import (Stdcall, Sendmessage,
         "SendMessage" & Character_Mode_Identifier);
   begin
      return Sendmessage;
   end Selected_Item_Count;

   -----------------
   -- Is_Selected --
   -----------------

   function Is_Selected (
         Control : in     List_View_Control_Type;
         Index   : in     Integer                 )
     return Boolean is
      function Sendmessage (
            Hwnd   : Interfaces.C.Long := Handle (Control);
            Umsg   : Interfaces.C.Int  := Lvm_Getitemstate;
            Wparam : Integer           := Index;
            Lparam : Integer           := Lvis_Selected     )
        return Integer;
      pragma Import (Stdcall, Sendmessage,
         "SendMessage" & Character_Mode_Identifier);
   begin
      return (Sendmessage /= 0);
   end Is_Selected;

   -----------
   -- Clear --
   -----------

   procedure Clear (
         Control : in out List_View_Control_Type ) is
      procedure Sendmessage (
            Hwnd   : Interfaces.C.Long := Handle (Control);
            Umsg   : Interfaces.C.Int  := Lvm_Deleteallitems;
            Wparam : Integer           := 0;
            Lparam : Integer           := 0                   );
      pragma Import (Stdcall, Sendmessage,
         "SendMessage" & Character_Mode_Identifier);
   begin
      Sendmessage;
   end Clear;

   ------------------
   -- Clicked_Item --
   ------------------

   procedure Item_At_Position (
         Control  : in     List_View_Control_Type;
         Position : in     Gwindows.Types.Point_Type;
         Item     : in out Integer;
         Subitem  : in out Integer                    ) is

      type Lvhittestinfo is
         record
            Pt      : Gwindows.Types.Point_Type := Position;
            Flags   : Natural;
            Item    : Integer;
            Subitem : Integer;
         end record;

      Lvm_Subitemhittest : constant := Lvm_First + 57;

      procedure Sendmessage (
            Hwnd   :        Interfaces.C.Long := Gwindows.Common_Controls.Handle (Control);
            Umsg   :        Interfaces.C.Int  := Lvm_Subitemhittest;
            Wparam :        Interfaces.C.Long := 0;
            Lparam : in out Lvhittestinfo                                                   );
      pragma Import (Stdcall, Sendmessage,
         "SendMessage" & Character_Mode_Identifier);

      Hittestinfo : Lvhittestinfo := ((0, 0), 0, 0, 0);
   begin
      Sendmessage (Lparam => Hittestinfo);

      Item := Hittestinfo.Item;
      Subitem := Hittestinfo.Subitem;
   end Item_At_Position;

   ----------
   -- Text --
   ----------

   function Text (
         Control : in     List_View_Control_Type;
         Item    : in     Integer;
         Subitem : in     Integer                 )
     return Gstring is
      Lvm_Getitema : constant := Lvm_First + 5;
      Lvm_Getitemw : constant := Lvm_First + 75;
      Lvif_Text    : constant := 16#0001#;

      Max_Text : constant := 255;
      type Buffer is new Gstring_C
            (0 .. Max_Text);
      type Pbuffer is access all Buffer;

      function To_Pbuffer is
      new Ada.Unchecked_Conversion (Lptstr, Pbuffer);

      C_Text : Buffer;
      Lvi    : Lvitem;

      procedure Sendmessagea (
            Hwnd   :        Interfaces.C.Long := Gwindows.Common_Controls.Handle (Control);
            Umsg   :        Interfaces.C.Int  := Lvm_Getitema;
            Wparam :        Integer           := 0;
            Lparam : in out Lvitem                                                          );
      pragma Import (Stdcall, Sendmessagea,
         "SendMessage" & Character_Mode_Identifier);

      procedure Sendmessagew (
            Hwnd   :        Interfaces.C.Long := Gwindows.Common_Controls.Handle (Control);
            Umsg   :        Interfaces.C.Int  := Lvm_Getitemw;
            Wparam :        Integer           := 0;
            Lparam : in out Lvitem                                                          );
      pragma Import (Stdcall, Sendmessagew,
         "SendMessage" & Character_Mode_Identifier);
   begin
      Lvi.Mask := Lvif_Text;
      Lvi.Item := Item;
      Lvi.Subitem := Subitem;
      Lvi.Text := C_Text (0)'Unchecked_Access;
      Lvi.Textmax := Max_Text;

      if Character_Mode = Unicode then
         Sendmessagew (Lparam => Lvi);
      else
         Sendmessagea (Lparam => Lvi);
      end if;

      return Gwindows.Gstrings.To_Gstring_From_C
         (Gstring_C (To_Pbuffer (Lvi.Text).all));
   end Text;

   --------------
   -- Selected --
   --------------

   procedure Selected (
         Control : in out List_View_Control_Type;
         Item    : in     Integer;
         State   : in     Boolean                 ) is

      Lvm_Setitemstate : constant := Lvm_First + 43;
      Lvis_Selected    : constant := 16#0002#;

      procedure Sendmessage (
            Hwnd   : Interfaces.C.Long := Gwindows.Common_Controls.Handle (Control);
            Umsg   : Interfaces.C.Int  := Lvm_Setitemstate;
            Wparam : Integer           := Item;
            Lparam : Lvitem                                                          );
      pragma Import (Stdcall, Sendmessage,
         "SendMessage" & Character_Mode_Identifier);

      Lvi : Lvitem;
   begin
      Lvi.Statemask := Lvis_Selected;
      if State then
         Lvi.State := Lvis_Selected;
      else
         Lvi.State := 0;
      end if;
      Sendmessage (Lparam => Lvi);
   end Selected;

   ----------------------
   -- Set_Column_Width --
   ----------------------

   procedure Set_Column_Width (
         Control : in out List_View_Control_Type;
         Index   : in     Integer;
         Width   : in     Integer                 ) is
      type Lvcolumn is
         record
            Mask    : Interfaces.C.Unsigned := 0;
            Format  : Interfaces.C.Unsigned := 0;
            Width   : Integer               := 0;
            Text    : Lptstr                := null;
            Textmax : Integer               := 0;
            Subitem : Integer               := 0;
            Image   : Integer               := 0;
            Order   : Integer               := 0;
         end record;

      Lvm_First      : constant := 16#1000#;
      Lvm_Setcolumna : constant := Lvm_First + 26;
      Lvm_Setcolumnw : constant := Lvm_First + 96;
      Lvcf_Width     : constant := 16#0002#;

      Item : Lvcolumn;

      procedure Sendmessagea (
            Hwnd   : Interfaces.C.Long := Handle (Control);
            Umsg   : Interfaces.C.Int  := Lvm_Setcolumna;
            Wparam : Integer           := Index;
            Lparam : Lvcolumn          := Item              );
      pragma Import (Stdcall, Sendmessagea,
         "SendMessage" & Character_Mode_Identifier);

      procedure Sendmessagew (
            Hwnd   : Interfaces.C.Long := Handle (Control);
            Umsg   : Interfaces.C.Int  := Lvm_Setcolumnw;
            Wparam : Integer           := Index;
            Lparam : Lvcolumn          := Item              );
      pragma Import (Stdcall, Sendmessagew,
         "SendMessage" & Character_Mode_Identifier);
   begin
      Item.Mask := Lvcf_Width;
      Item.Text := null;
      Item.Width := Width;

      if Character_Mode = Unicode then
         Sendmessagew;
      else
         Sendmessagea;
      end if;
   end Set_Column_Width;

   -----------------
   -- Delete_Item --
   -----------------

   procedure Delete_Item (
         Control : in out List_View_Control_Type;
         Index   : in     Integer                 ) is
      Lvm_Deleteitem : constant := Lvm_First + 8;
      procedure Sendmessage (
            Hwnd   : Interfaces.C.Long := Handle (Control);
            Umsg   : Interfaces.C.Int  := Lvm_Deleteitem;
            Wparam : Integer           := Index;
            Lparam : Integer           := 0                 );
      pragma Import (Stdcall, Sendmessage,
         "SendMessage" & Character_Mode_Identifier);
   begin
      Sendmessage;
   end Delete_Item;

   ---------------
   -- On_Create --
   ---------------

   procedure On_Create (
         Control : in out List_View_Control_Type ) is
   begin
      Border (Control);
      Tab_Stop (Control);
   end On_Create;

   ------------
   -- Create --
   ------------

   procedure Create (
         Control       : in out Tree_View_Control_Type;
         Parent        : in out Gwindows.Base.Base_Window_Type'Class;
         Left          : in     Integer;
         Top           : in     Integer;
         Width         : in     Integer;
         Height        : in     Integer;
         Buttons       : in     Boolean                              := True;
         Lines         : in     Boolean                              := True;
         Lines_At_Root : in     Boolean                              := True;
         Single_Expand : in     Boolean                              := False;
         Show          : in     Boolean                              := True;
         Is_Dynamic    : in     Boolean                              := False  ) is

      Tvs_Hasbuttons  : constant := 16#0001#;
      Tvs_Haslines    : constant := 16#0002#;
      Tvs_Linesatroot : constant := 16#0004#;
      --  TVS_EDITLABELS          : constant := 16#0008#;
      --  TVS_DISABLEDRAGDROP     : constant := 16#0010#;
      --  TVS_SHOWSELALWAYS       : constant := 16#0020#;
      --  TVS_RTLREADING          : constant := 16#0040#;
      --  TVS_NOTOOLTIPS          : constant := 16#0080#;
      --  TVS_CHECKBOXES          : constant := 16#0100#;
      --  TVS_TRACKSELECT         : constant := 16#0200#;
      Tvs_Singleexpand : constant := 16#0400#;
      --  TVS_INFOTIP             : constant := 16#0800#;
      --  TVS_FULLROWSELECT       : constant := 16#1000#;
      --  TVS_NOSCROLL            : constant := 16#2000#;
      --  TVS_NONEVENHEIGHT       : constant := 16#4000#;
      Styles : Interfaces.C.Unsigned := 0;
   begin
      if Lines then
         Styles := Styles or Tvs_Haslines;
      end if;

      if Single_Expand then
         Styles := Styles or Tvs_Singleexpand;
      end if;

      if Buttons then
         Styles := Styles or Tvs_Hasbuttons;
      end if;

      if Lines_At_Root then
         Styles := Styles or Tvs_Linesatroot;
      end if;

      Create_Control (Control, Parent,
         "SysTreeView32",
         "",
         Left, Top, Width, Height,
         0, Styles,
         Is_Dynamic => Is_Dynamic);

      if Show then
         Gwindows.Common_Controls.Show (Control);
      end if;
   end Create;

   -----------------
   -- Insert_Item --
   -----------------

   procedure Insert_Item (
         Control     : in out Tree_View_Control_Type;
         Text        : in     Gstring;
         Parent_Node : in     Tree_Item_Node;
         New_Node    :    out Tree_Item_Node;
         Where       : in     Tree_Item_Node          ) is
      C_Text : Gstring_C := Gwindows.Gstrings.To_Gstring_C (Text);

      type Tvinsertstruct is
         record
            Hparent : Tree_Item_Node := Parent_Node;
            Hafter  : Tree_Item_Node := Where;
            Item    : Tvitem;
         end record;

      Ts : Tvinsertstruct;

      function Sendmessagea (
            Hwnd   : Interfaces.C.Long := Handle (Control);
            Umsg   : Interfaces.C.Int  := Tvm_Insertitema;
            Wparam : Integer           := 0;
            Lparam : Tvinsertstruct    := Ts                )
        return Tree_Item_Node;
      pragma Import (Stdcall, Sendmessagea,
         "SendMessage" & Character_Mode_Identifier);

      function Sendmessagew (
            Hwnd   : Interfaces.C.Long := Handle (Control);
            Umsg   : Interfaces.C.Int  := Tvm_Insertitemw;
            Wparam : Integer           := 0;
            Lparam : Tvinsertstruct    := Ts                )
        return Tree_Item_Node;
      pragma Import (Stdcall, Sendmessagew,
         "SendMessage" & Character_Mode_Identifier);
   begin
      Ts.Item.Mask := Tvif_Text;
      Ts.Item.Text := C_Text (0)'Unchecked_Access;

      if Character_Mode = Unicode then
         New_Node := Sendmessagew;
      else
         New_Node := Sendmessagea;
      end if;

   end Insert_Item;

   procedure Insert_Item (
         Control     : in out Tree_View_Control_Type;
         Text        : in     Gstring;
         Parent_Node : in     Tree_Item_Node;
         New_Node    :    out Tree_Item_Node;
         Where       : in     Tree_View_List_Location_Type := Sort ) is
      Tvi_Root  : constant := 16#FFFF0000#;
      Tvi_First : constant := 16#FFFF0001#;
      Tvi_Last  : constant := 16#FFFF0002#;
      Tvi_Sort  : constant := 16#FFFF0003#;

      type Where_Value is array (Tree_View_List_Location_Type) of Tree_Item_Node;

      Values : constant Where_Value := (First => Tvi_First, Last => Tvi_Last, Sort
        => Tvi_Sort, As_A_Root => Tvi_Root);
   begin
      Insert_Item (Control, Text, Parent_Node, New_Node, Values (Where));
   end Insert_Item;

   -----------------
   -- Delete_Item --
   -----------------

   procedure Delete_Item (
         Control : in out Tree_View_Control_Type;
         Where   : in     Tree_Item_Node          ) is
      procedure Sendmessage (
            Hwnd   : Interfaces.C.Long := Handle (Control);
            Umsg   : Interfaces.C.Int  := Tvm_Deleteitem;
            Wparam : Interfaces.C.Long := 0;
            Lparam : Tree_Item_Node    := Where             );
      pragma Import (Stdcall, Sendmessage,
         "SendMessage" & Character_Mode_Identifier);
   begin
      Sendmessage;
   end Delete_Item;

   -------------------
   -- Selected_Item --
   -------------------

   function Selected_Item (
         Control : in     Tree_View_Control_Type )
     return Tree_Item_Node is
      function Sendmessage (
            Hwnd   : Interfaces.C.Long := Handle (Control);
            Umsg   : Interfaces.C.Int  := Tvm_Getnextitem;
            Wparam : Integer           := Tvgn_Caret;
            Lparam : Integer           := 0                 )
        return Tree_Item_Node;
      pragma Import (Stdcall, Sendmessage,
         "SendMessage" & Character_Mode_Identifier);
   begin
      return Sendmessage;
   end Selected_Item;

   function Selected_Item (
         Control : in     Tree_View_Control_Type )
     return Gstring is
   begin
      return Text (Control, Selected_Item (Control));
   end Selected_Item;

   -------------------
   -- Get_Root_Item --
   -------------------

   function Get_Root_Item (
         Control : in     Tree_View_Control_Type )
     return Tree_Item_Node is
      function Sendmessage (
            Hwnd   : Interfaces.C.Long := Handle (Control);
            Umsg   : Interfaces.C.Int  := Tvm_Getnextitem;
            Wparam : Integer           := Tvgn_Root;
            Lparam : Integer           := 0                 )
        return Tree_Item_Node;
      pragma Import (Stdcall, Sendmessage,
         "SendMessage" & Character_Mode_Identifier);
   begin
      return Sendmessage;
   end Get_Root_Item;

   ---------------------
   -- Get_Parent_Item --
   ---------------------

   function Get_Parent_Item (
         Control : in     Tree_View_Control_Type;
         From    : in     Tree_Item_Node          )
     return Tree_Item_Node is
      function Sendmessage (
            Hwnd   : Interfaces.C.Long := Handle (Control);
            Umsg   : Interfaces.C.Int  := Tvm_Getnextitem;
            Wparam : Integer           := Tvgn_Parent;
            Lparam : Tree_Item_Node    := From              )
        return Tree_Item_Node;
      pragma Import (Stdcall, Sendmessage,
         "SendMessage" & Character_Mode_Identifier);
   begin
      return Sendmessage;
   end Get_Parent_Item;

   --------------------------
   -- Get_First_Child_Item --
   --------------------------

   function Get_First_Child_Item (
         Control : in     Tree_View_Control_Type;
         From    : in     Tree_Item_Node          )
     return Tree_Item_Node is
      function Sendmessage (
            Hwnd   : Interfaces.C.Long := Handle (Control);
            Umsg   : Interfaces.C.Int  := Tvm_Getnextitem;
            Wparam : Integer           := Tvgn_Child;
            Lparam : Tree_Item_Node    := From              )
        return Tree_Item_Node;
      pragma Import (Stdcall, Sendmessage,
         "SendMessage" & Character_Mode_Identifier);
   begin
      return Sendmessage;
   end Get_First_Child_Item;

   -------------------
   -- Get_Next_Item --
   -------------------

   function Get_Next_Item (
         Control : in     Tree_View_Control_Type;
         From    : in     Tree_Item_Node          )
     return Tree_Item_Node is
      function Sendmessage (
            Hwnd   : Interfaces.C.Long := Handle (Control);
            Umsg   : Interfaces.C.Int  := Tvm_Getnextitem;
            Wparam : Integer           := Tvgn_Next;
            Lparam : Tree_Item_Node    := From              )
        return Tree_Item_Node;
      pragma Import (Stdcall, Sendmessage,
         "SendMessage" & Character_Mode_Identifier);
   begin
      return Sendmessage;
   end Get_Next_Item;

   -----------------------
   -- Get_Previous_Item --
   -----------------------

   function Get_Previous_Item (
         Control : in     Tree_View_Control_Type;
         From    : in     Tree_Item_Node          )
     return Tree_Item_Node is
      function Sendmessage (
            Hwnd   : Interfaces.C.Long := Handle (Control);
            Umsg   : Interfaces.C.Int  := Tvm_Getnextitem;
            Wparam : Integer           := Tvgn_Previous;
            Lparam : Tree_Item_Node    := From              )
        return Tree_Item_Node;
      pragma Import (Stdcall, Sendmessage,
         "SendMessage" & Character_Mode_Identifier);
   begin
      return Sendmessage;
   end Get_Previous_Item;

   ----------
   -- Text --
   ----------

   function Text (
         Control : in     Tree_View_Control_Type;
         Where   : in     Tree_Item_Node          )
     return Gstring is
      Max_Text : constant := 255;
      type Buffer is new Gstring_C
            (0 .. Max_Text);
      type Pbuffer is access all Buffer;

      function To_Pbuffer is
      new Ada.Unchecked_Conversion (Lptstr, Pbuffer);

      C_Text : Buffer;
      Tv     : Tvitem;

      procedure Sendmessagea (
            Hwnd   :        Interfaces.C.Long := Handle (Control);
            Umsg   :        Interfaces.C.Int  := Tvm_Getitema;
            Wparam :        Integer           := 0;
            Lparam : in out Tvitem                                 );
      pragma Import (Stdcall, Sendmessagea,
         "SendMessage" & Character_Mode_Identifier);

      procedure Sendmessagew (
            Hwnd   :        Interfaces.C.Long := Handle (Control);
            Umsg   :        Interfaces.C.Int  := Tvm_Getitemw;
            Wparam :        Integer           := 0;
            Lparam : in out Tvitem                                 );
      pragma Import (Stdcall, Sendmessagew,
         "SendMessage" & Character_Mode_Identifier);
   begin
      Tv.Mask := Tvif_Text;
      Tv.Hitem := Where;
      Tv.Text := C_Text (0)'Unchecked_Access;
      Tv.Textmax := Max_Text;

      if Character_Mode = Unicode then
         Sendmessagew (Lparam => Tv);
      else
         Sendmessagea (Lparam => Tv);
      end if;

      return Gwindows.Gstrings.To_Gstring_From_C
         (Gstring_C (To_Pbuffer (Tv.Text).all));
   end Text;

   ------------
   -- Expand --
   ------------

   procedure Expand (
         Control : in out Tree_View_Control_Type;
         At_Node : in     Tree_Item_Node          ) is
      Tve_Expand : constant := 2;

      procedure Sendmessage (
            Hwnd   : Interfaces.C.Long := Handle (Control);
            Umsg   : Interfaces.C.Int  := Tvm_Expand;
            Wparam : Integer           := Tve_Expand;
            Lparam : Tree_Item_Node    := At_Node           );
      pragma Import (Stdcall, Sendmessage,
         "SendMessage" & Character_Mode_Identifier);
   begin
      Sendmessage;
   end Expand;

   --------------
   -- Collapse --
   --------------

   procedure Collapse (
         Control : in out Tree_View_Control_Type;
         At_Node : in     Tree_Item_Node          ) is
      Tve_Collapse : constant := 1;

      procedure Sendmessage (
            Hwnd   : Interfaces.C.Long := Handle (Control);
            Umsg   : Interfaces.C.Int  := Tvm_Expand;
            Wparam : Integer           := Tve_Collapse;
            Lparam : Tree_Item_Node    := At_Node           );
      pragma Import (Stdcall, Sendmessage,
         "SendMessage" & Character_Mode_Identifier);
   begin
      Sendmessage;
   end Collapse;

   ---------------
   -- On_Create --
   ---------------

   procedure On_Create (
         Control : in out Tree_View_Control_Type ) is
   begin
      Border (Control);
      Tab_Stop (Control);
   end On_Create;

   ------------
   -- Create --
   ------------

   procedure Create (
         Control    : in out Trackbar_Control_Type;
         Parent     : in out Gwindows.Base.Base_Window_Type'Class;
         Left       : in     Integer;
         Top        : in     Integer;
         Width      : in     Integer;
         Height     : in     Integer;
         Where      : in     Trackbar_Control_Ticks_Type          := No_Ticks;
         Direction  : in     Trackbar_Control_Direction_Type      := Horizontal;
         Thumb      : in     Boolean                              := True;
         Tips       : in     Boolean                              := True;
         Show       : in     Boolean                              := True;
         Is_Dynamic : in     Boolean                              := False       ) is

      Tbs_Autoticks : constant := 16#0001#;
      Tbs_Vert      : constant := 16#0002#;
      --  TBS_HORZ                : constant := 16#0000#;
      Tbs_Top : constant := 16#0004#;
      --  TBS_BOTTOM              : constant := 16#0000#;
      --  TBS_LEFT                : constant := 16#0004#;
      --  TBS_RIGHT               : constant := 16#0000#;
      Tbs_Both : constant := 16#0008#;
      --  TBS_NOTICKS             : constant := 16#0010#;
      --  TBS_ENABLESELRANGE      : constant := 16#0020#;
      --  TBS_FIXEDLENGTH         : constant := 16#0040#;
      Tbs_Nothumb  : constant := 16#0080#;
      Tbs_Tooltips : constant := 16#0100#;

      Styles : Interfaces.C.Unsigned := 0;
   begin
      if Where /= No_Ticks then
         Styles := Styles or Tbs_Autoticks;

         if Where = Top_Ticks then
            Styles := Styles or Tbs_Top;
         elsif Where = Both_Ticks then
            Styles := Styles or Tbs_Both;
         end if;
      end if;

      if Direction = Vertical then
         Styles := Styles or Tbs_Vert;
      end if;

      if not Thumb then
         Styles := Styles or Tbs_Nothumb;
      end if;

      if Tips then
         Styles := Styles or Tbs_Tooltips;
      end if;

      Create_Control (Control, Parent,
         "msctls_trackbar32",
         "",
         Left, Top, Width, Height,
         0, Styles,
         Is_Dynamic => Is_Dynamic);

      if Show then
         Gwindows.Common_Controls.Show (Control);
      end if;
   end Create;

   --------------
   -- Position --
   --------------

   procedure Position (
         Control : in out Trackbar_Control_Type;
         Where   : in     Integer                ) is
      procedure Sendmessage (
            Hwnd   : Interfaces.C.Long := Handle (Control);
            Umsg   : Interfaces.C.Int  := Tbm_Setpos;
            Wparam : Integer           := 1;
            Lparam : Integer           := Where             );
      pragma Import (Stdcall, Sendmessage,
         "SendMessage" & Character_Mode_Identifier);
   begin
      Sendmessage;
   end Position;

   function Position (
         Control : in     Trackbar_Control_Type )
     return Integer is
      function Sendmessage (
            Hwnd   : Interfaces.C.Long := Handle (Control);
            Umsg   : Interfaces.C.Int  := Tbm_Getpos;
            Wparam : Integer           := 0;
            Lparam : Integer           := 0                 )
        return Natural;
      pragma Import (Stdcall, Sendmessage,
         "SendMessage" & Character_Mode_Identifier);
   begin
      return Sendmessage;
   end Position;

   -------------
   -- Minimum --
   -------------

   procedure Minimum (
         Control : in out Trackbar_Control_Type;
         Where   : in     Integer                ) is
      procedure Sendmessage (
            Hwnd   : Interfaces.C.Long := Handle (Control);
            Umsg   : Interfaces.C.Int  := Tbm_Setrangemin;
            Wparam : Integer           := 1;
            Lparam : Integer           := Where             );
      pragma Import (Stdcall, Sendmessage,
         "SendMessage" & Character_Mode_Identifier);
   begin
      Sendmessage;
   end Minimum;

   function Minimum (
         Control : in     Trackbar_Control_Type )
     return Integer is
      function Sendmessage (
            Hwnd   : Interfaces.C.Long := Handle (Control);
            Umsg   : Interfaces.C.Int  := Tbm_Getrangemin;
            Wparam : Integer           := 0;
            Lparam : Integer           := 0                 )
        return Natural;
      pragma Import (Stdcall, Sendmessage,
         "SendMessage" & Character_Mode_Identifier);
   begin
      return Sendmessage;
   end Minimum;

   -------------
   -- Maximum --
   -------------

   procedure Maximum (
         Control : in out Trackbar_Control_Type;
         Where   : in     Integer                ) is
      procedure Sendmessage (
            Hwnd   : Interfaces.C.Long := Handle (Control);
            Umsg   : Interfaces.C.Int  := Tbm_Setrangemax;
            Wparam : Integer           := 1;
            Lparam : Integer           := Where             );
      pragma Import (Stdcall, Sendmessage,
         "SendMessage" & Character_Mode_Identifier);
   begin
      Sendmessage;
   end Maximum;

   function Maximum (
         Control : in     Trackbar_Control_Type )
     return Integer is
      function Sendmessage (
            Hwnd   : Interfaces.C.Long := Handle (Control);
            Umsg   : Interfaces.C.Int  := Tbm_Getrangemax;
            Wparam : Integer           := 0;
            Lparam : Integer           := 0                 )
        return Natural;
      pragma Import (Stdcall, Sendmessage,
         "SendMessage" & Character_Mode_Identifier);
   begin
      return Sendmessage;
   end Maximum;

   ---------------
   -- On_Create --
   ---------------

   procedure On_Create (
         Control : in out Trackbar_Control_Type ) is
   begin
      Tab_Stop (Control);
   end On_Create;

   ------------
   -- Create --
   ------------

   procedure Create (
         Control    : in out Up_Down_Control_Type;
         Parent     : in out Gwindows.Base.Base_Window_Type'Class;
         Left       : in     Integer;
         Top        : in     Integer;
         Width      : in     Integer;
         Height     : in     Integer;
         Keyboard   : in     Boolean                              := True;
         Direction  : in     Up_Down_Control_Direction_Type       := Vertical;
         Wrap       : in     Boolean                              := False;
         Auto_Buddy : in     Boolean                              := True;
         Send_Int   : in     Boolean                              := True;
         Thousands  : in     Boolean                              := True;
         Align      : in     Up_Down_Control_Align_Type           := Align_Right;
         Show       : in     Boolean                              := True;
         Is_Dynamic : in     Boolean                              := False        ) is

      Uds_Wrap        : constant := 16#0001#;
      Uds_Setbuddyint : constant := 16#0002#;
      Uds_Alignright  : constant := 16#0004#;
      Uds_Alignleft   : constant := 16#0008#;
      Uds_Autobuddy   : constant := 16#0010#;
      Uds_Arrowkeys   : constant := 16#0020#;
      Uds_Horz        : constant := 16#0040#;
      Uds_Nothousands : constant := 16#0080#;

      Styles : Interfaces.C.Unsigned := 0;
   begin
      if Wrap then
         Styles := Styles or Uds_Wrap;
      end if;

      if Auto_Buddy then
         Styles := Styles or Uds_Autobuddy;

         if Align = Align_Left then
            Styles := Styles or Uds_Alignleft;
         else
            Styles := Styles or Uds_Alignright;
         end if;

         if Send_Int then
            Styles := Styles or Uds_Setbuddyint;
         end if;

         if not Thousands then
            Styles := Styles or Uds_Nothousands;
         end if;
      end if;

      if Direction = Horizontal then
         Styles := Styles or Uds_Horz;
      end if;

      if Keyboard then
         Styles := Styles or Uds_Arrowkeys;
      end if;

      Create_Control (Control, Parent,
         "msctls_updown32",
         "",
         Left, Top, Width, Height,
         0, Styles,
         Is_Dynamic => Is_Dynamic);

      if Show then
         Gwindows.Common_Controls.Show (Control);
      end if;
   end Create;

   --------------
   -- Position --
   --------------

   procedure Position (
         Control : in out Up_Down_Control_Type;
         Where   : in     Integer               ) is
      procedure Sendmessage (
            Hwnd   : Interfaces.C.Long := Handle (Control);
            Umsg   : Interfaces.C.Int  := Udm_Setpos;
            Wparam : Interfaces.C.Long := 0;
            Lparam : Integer           := Where             );
      pragma Import (Stdcall, Sendmessage,
         "SendMessage" & Character_Mode_Identifier);
   begin
      Sendmessage;
   end Position;

   function Position (
         Control : in     Up_Down_Control_Type )
     return Integer is
      function Sendmessage (
            Hwnd   : Interfaces.C.Long := Handle (Control);
            Umsg   : Interfaces.C.Int  := Udm_Setpos;
            Wparam : Interfaces.C.Long := 0;
            Lparam : Integer           := 0                 )
        return Integer;
      pragma Import (Stdcall, Sendmessage,
         "SendMessage" & Character_Mode_Identifier);
   begin
      return Sendmessage;
   end Position;

   ---------------
   -- Set_Range --
   ---------------

   procedure Set_Range (
         Control : in out Up_Down_Control_Type;
         Min,
         Max     : in     Integer               ) is
      procedure Sendmessage (
            Hwnd   : Interfaces.C.Long := Handle (Control);
            Umsg   : Interfaces.C.Int  := Udm_Setrange;
            Wparam : Interfaces.C.Long := 0;
            Lparam : Integer           := Gwindows.Utilities.Make_Long (Interfaces.C.Short (Min), Interfaces.C.Short (Max)) );
      pragma Import (Stdcall, Sendmessage,
         "SendMessage" & Character_Mode_Identifier);
   begin
      Sendmessage;
   end Set_Range;

   ----------------------------------
   -- On_Position_Changing_Handler --
   ----------------------------------

   procedure On_Position_Changing_Handler (
         Control : in out Up_Down_Control_Type;
         Handler : in     Up_Down_Changing_Event ) is
   begin
      Control.On_Position_Changing_Event := Handler;
   end On_Position_Changing_Handler;

   -------------------------------
   -- Fire_On_Position_Changing --
   -------------------------------

   procedure Fire_On_Position_Changing (
         Control        : in out Up_Down_Control_Type;
         Position       : in     Integer;
         Delta_Position : in     Integer               ) is
      use Gwindows.Base;
   begin
      if Control.On_Position_Changing_Event /= null then
         Control.On_Position_Changing_Event (Base_Window_Type'Class (
               Control),
            Position,
            Delta_Position);
      end if;
   end Fire_On_Position_Changing;

   --------------------------
   -- On_Position_Changing --
   --------------------------

   procedure On_Position_Changing (
         Window         : in out Up_Down_Control_Type;
         Position       : in     Integer;
         Delta_Position : in     Integer               ) is
   begin
      Fire_On_Position_Changing (Window, Position, Delta_Position);
   end On_Position_Changing;

   ---------------
   -- On_Create --
   ---------------

   procedure On_Create (
         Control : in out Up_Down_Control_Type ) is
   begin
      Tab_Stop (Control);
   end On_Create;

   ---------------
   -- On_Notify --
   ---------------

   procedure On_Notify (
         Window       : in out Up_Down_Control_Type;
         Message      : in     Gwindows.Base.Pointer_To_Notification;
         Control      : in     Gwindows.Base.Pointer_To_Base_Window_Class;
         Return_Value : in out Interfaces.C.Long                           ) is
      Udn_First    : constant := - 721;
      Udn_Deltapos : constant := Udn_First - 1;

      type Nmupdown is
         record
            Header : Gwindows.Base.Notification;
            Pos    : Integer;
            Delt   : Integer;
         end record;

      type Pnmupdown is access all Nmupdown;

      function To_Pnmupdown is
      new
         Ada.Unchecked_Conversion (Gwindows.Base.Pointer_To_Notification,
         Pnmupdown);
   begin
      case Message.Code is
         when Udn_Deltapos =>
            declare
               Nm : constant Pnmupdown := To_Pnmupdown (Message);
            begin
               On_Position_Changing (Up_Down_Control_Type'Class (Window),
                  Nm.Pos,
                  Nm.Delt);
            end;
         when others =>
            On_Notify (Common_Control_Type (Window),
               Message, Control, Return_Value);
      end case;

   end On_Notify;

   ------------
   -- Create --
   ------------

   procedure Create (
         Control    : in out Tab_Control_Type;
         Parent     : in out Gwindows.Base.Base_Window_Type'Class;
         Left       : in     Integer;
         Top        : in     Integer;
         Width      : in     Integer;
         Height     : in     Integer;
         Fixed_Tabs : in     Boolean                              := False;
         Multi_Line : in     Boolean                              := False;
         Show       : in     Boolean                              := True;
         Is_Dynamic : in     Boolean                              := False  ) is

      --  TCS_SCROLLOPPOSITE      : constant := 16#0001#;
      --  TCS_BOTTOM              : constant := 16#0002#;
      --  TCS_RIGHT               : constant := 16#0002#;
      --  TCS_MULTISELECT         : constant := 16#0004#;
      --  TCS_FLATBUTTONS         : constant := 16#0008#;
      --  TCS_FORCEICONLEFT       : constant := 16#0010#;
      --  TCS_FORCELABELLEFT      : constant := 16#0020#;
      --  TCS_HOTTRACK            : constant := 16#0040#;
      --  TCS_VERTICAL            : constant := 16#0080#;
      --  TCS_TABS                : constant := 16#0000#;
      --  TCS_BUTTONS             : constant := 16#0100#;
      --  TCS_SINGLELINE          : constant := 16#0000#;
      Tcs_Multiline : constant := 16#0200#;
      --  TCS_RIGHTJUSTIFY        : constant := 16#0000#;
      Tcs_Fixedwidth : constant := 16#0400#;
      --  TCS_RAGGEDRIGHT         : constant := 16#0800#;
      --  TCS_FOCUSONBUTTONDOWN   : constant := 16#1000#;
      --  TCS_OWNERDRAWFIXED      : constant := 16#2000#;
      Tcs_Tooltips : constant := 16#4000#;
      --  TCS_FOCUSNEVER          : constant := 16#8000#;
      Styles : Interfaces.C.Unsigned := Tcs_Tooltips;
   begin
      if Fixed_Tabs then
         Styles := Styles or Tcs_Fixedwidth;
      end if;

      if Multi_Line then
         Styles := Styles or Tcs_Multiline;
      end if;

      Create_Control (Control, Parent,
         "SysTabControl32",
         "",
         Left, Top, Width, Height,
         0, Styles,
         Is_Dynamic => Is_Dynamic);

      if Show then
         Gwindows.Common_Controls.Show (Control);
      end if;
   end Create;

   ---------------
   -- On_Change --
   ---------------

   procedure On_Change (
         Control : in out Tab_Control_Type ) is
   begin
      Fire_On_Change (Control);
   end On_Change;

   -----------------------
   -- On_Change_Handler --
   -----------------------

   procedure On_Change_Handler (
         Control : in out Tab_Control_Type;
         Handler : in     Gwindows.Base.Action_Event ) is
   begin
      Control.On_Change_Event := Handler;
   end On_Change_Handler;

   --------------------
   -- Fire_On_Change --
   --------------------

   procedure Fire_On_Change (
         Control : in out Tab_Control_Type ) is
      use Gwindows.Base;
   begin
      if Control.On_Change_Event /= null then
         Control.On_Change_Event (Base_Window_Type'Class (Control));
      end if;
   end Fire_On_Change;

   -----------------
   -- On_Changing --
   -----------------

   procedure On_Changing (
         Control : in out Tab_Control_Type ) is
   begin
      Fire_On_Changing (Control);
   end On_Changing;

   -------------------------
   -- On_Changing_Handler --
   -------------------------

   procedure On_Changing_Handler (
         Control : in out Tab_Control_Type;
         Handler : in     Gwindows.Base.Action_Event ) is
   begin
      Control.On_Changing_Event := Handler;
   end On_Changing_Handler;

   ----------------------
   -- Fire_On_Changing --
   ----------------------

   procedure Fire_On_Changing (
         Control : in out Tab_Control_Type ) is
      use Gwindows.Base;
   begin
      if Control.On_Changing_Event /= null then
         Control.On_Changing_Event (Base_Window_Type'Class (Control));
      end if;
   end Fire_On_Changing;

   ----------------
   -- Insert_Tab --
   ----------------

   procedure Insert_Tab (
         Control : in out Tab_Control_Type;
         Where   : in     Integer;
         Value   : in     Gstring           ) is
      C_Text : Gstring_C := Gwindows.Gstrings.To_Gstring_C (Value);

      Tc : Tcitem;

      procedure Sendmessagea (
            Hwnd   : Interfaces.C.Long := Handle (Control);
            Umsg   : Interfaces.C.Int  := Tcm_Insertitema;
            Wparam : Integer           := Where;
            Lparam : Tcitem            := Tc                );
      pragma Import (Stdcall, Sendmessagea,
         "SendMessage" & Character_Mode_Identifier);
      procedure Sendmessagew (
            Hwnd   : Interfaces.C.Long := Handle (Control);
            Umsg   : Interfaces.C.Int  := Tcm_Insertitemw;
            Wparam : Integer           := Where;
            Lparam : Tcitem            := Tc                );
      pragma Import (Stdcall, Sendmessagew,
         "SendMessage" & Character_Mode_Identifier);
   begin
      Tc.Mask := Tcif_Text;
      Tc.Text := C_Text (0)'Unchecked_Access;

      if Character_Mode = Unicode then
         Sendmessagew;
      else
         Sendmessagea;
      end if;

   end Insert_Tab;

   ----------
   -- Text --
   ----------

   procedure Text (
         Control : in out Tab_Control_Type;
         Where   : in     Integer;
         Value   : in     Gstring           ) is
      C_Text : Gstring_C := Gwindows.Gstrings.To_Gstring_C (Value);

      Tc : Tcitem;

      procedure Sendmessagea (
            Hwnd   : Interfaces.C.Long := Handle (Control);
            Umsg   : Interfaces.C.Int  := Tcm_Setitema;
            Wparam : Integer           := Where;
            Lparam : Tcitem            := Tc                );
      pragma Import (Stdcall, Sendmessagea,
         "SendMessage" & Character_Mode_Identifier);

      procedure Sendmessagew (
            Hwnd   : Interfaces.C.Long := Handle (Control);
            Umsg   : Interfaces.C.Int  := Tcm_Setitemw;
            Wparam : Integer           := Where;
            Lparam : Tcitem            := Tc                );
      pragma Import (Stdcall, Sendmessagew,
         "SendMessage" & Character_Mode_Identifier);

   begin
      Tc.Mask := Tcif_Text;
      Tc.Text := C_Text (0)'Unchecked_Access;

      if Character_Mode = Unicode then
         Sendmessagew;
      else
         Sendmessagea;
      end if;

   end Text;

   function Text (
         Control : in     Tab_Control_Type;
         Where   : in     Integer           )
     return Gstring is
      Max_Text : constant := 255;
      type Buffer is new Gstring_C
            (0 .. Max_Text);
      type Pbuffer is access all Buffer;

      function To_Pbuffer is
      new Ada.Unchecked_Conversion (Lptstr, Pbuffer);

      C_Text : Buffer;
      Tc     : Tcitem;

      procedure Sendmessagea (
            Hwnd   :        Interfaces.C.Long := Handle (Control);
            Umsg   :        Interfaces.C.Int  := Tcm_Getitema;
            Wparam :        Integer           := Where;
            Lparam : in out Tcitem                                 );
      pragma Import (Stdcall, Sendmessagea,
         "SendMessage" & Character_Mode_Identifier);

      procedure Sendmessagew (
            Hwnd   :        Interfaces.C.Long := Handle (Control);
            Umsg   :        Interfaces.C.Int  := Tcm_Getitemw;
            Wparam :        Integer           := Where;
            Lparam : in out Tcitem                                 );
      pragma Import (Stdcall, Sendmessagew,
         "SendMessage" & Character_Mode_Identifier);

   begin
      Tc.Mask := Tcif_Text;
      Tc.Text := C_Text (0)'Unchecked_Access;
      Tc.Textmax := Max_Text;

      if Character_Mode = Unicode then
         Sendmessagew (Lparam => Tc);
      else
         Sendmessagea (Lparam => Tc);
      end if;

      return Interfaces.C.To_Ada
         (Gstring_C (To_Pbuffer (Tc.Text).all));
   end Text;

   ---------------
   -- Tab_Count --
   ---------------

   function Tab_Count (
         Control : in     Tab_Control_Type )
     return Integer is
      function Sendmessage (
            Hwnd   : Interfaces.C.Long := Handle (Control);
            Umsg   : Interfaces.C.Int  := Tcm_Getitemcount;
            Wparam : Interfaces.C.Long := 0;
            Lparam : Integer           := 0                 )
        return Integer;
      pragma Import (Stdcall, Sendmessage,
         "SendMessage" & Character_Mode_Identifier);
   begin
      return Sendmessage;
   end Tab_Count;

   -------------------
   -- Tab_Row_Count --
   -------------------

   function Tab_Row_Count (
         Control : in     Tab_Control_Type )
     return Integer is
      function Sendmessage (
            Hwnd   : Interfaces.C.Long := Handle (Control);
            Umsg   : Interfaces.C.Int  := Tcm_Getrowcount;
            Wparam : Interfaces.C.Long := 0;
            Lparam : Integer           := 0                 )
        return Integer;
      pragma Import (Stdcall, Sendmessage,
         "SendMessage" & Character_Mode_Identifier);
   begin
      return Sendmessage;
   end Tab_Row_Count;

   ------------------
   -- Selected_Tab --
   ------------------

   procedure Selected_Tab (
         Control : in out Tab_Control_Type;
         Where   : in     Integer           ) is
      procedure Sendmessage (
            Hwnd   : Interfaces.C.Long := Handle (Control);
            Umsg   : Interfaces.C.Int  := Tcm_Setcursel;
            Wparam : Integer           := Where;
            Lparam : Integer           := 0                 );
      pragma Import (Stdcall, Sendmessage,
         "SendMessage" & Character_Mode_Identifier);
   begin
      Sendmessage;
   end Selected_Tab;

   function Selected_Tab (
         Control : in     Tab_Control_Type )
     return Integer is
      function Sendmessage (
            Hwnd   : Interfaces.C.Long := Handle (Control);
            Umsg   : Interfaces.C.Int  := Tcm_Getcursel;
            Wparam : Interfaces.C.Long := 0;
            Lparam : Integer           := 0                 )
        return Integer;
      pragma Import (Stdcall, Sendmessage,
         "SendMessage" & Character_Mode_Identifier);
   begin
      return Sendmessage;
   end Selected_Tab;

   ----------------
   -- Delete_Tab --
   ----------------

   procedure Delete_Tab (
         Control : in out Tab_Control_Type;
         Where   : in     Integer           ) is
      procedure Sendmessage (
            Hwnd   : Interfaces.C.Long := Handle (Control);
            Umsg   : Interfaces.C.Int  := Tcm_Deleteitem;
            Wparam : Integer           := Where;
            Lparam : Integer           := 0                 );
      pragma Import (Stdcall, Sendmessage,
         "SendMessage" & Character_Mode_Identifier);
   begin
      Sendmessage;
   end Delete_Tab;

   ---------------------
   -- Delete_All_Tabs --
   ---------------------

   procedure Delete_All_Tabs (
         Control : in out Tab_Control_Type ) is
      procedure Sendmessage (
            Hwnd   : Interfaces.C.Long := Handle (Control);
            Umsg   : Interfaces.C.Int  := Tcm_Deleteallitems;
            Wparam : Interfaces.C.Long := 0;
            Lparam : Integer           := 0                   );
      pragma Import (Stdcall, Sendmessage,
         "SendMessage" & Character_Mode_Identifier);
   begin
      Sendmessage;
   end Delete_All_Tabs;

   ------------------
   -- Display_Area --
   ------------------

   function Display_Area (
         Control : in     Tab_Control_Type )
     return Gwindows.Types.Rectangle_Type is
      Rt : Gwindows.Types.Rectangle_Type := (0, 0, Width (Control), Height
        (Control));

      procedure Sendmessage (
            Hwnd   :        Interfaces.C.Long             := Handle (Control);
            Umsg   :        Interfaces.C.Int              := Tcm_Adjustrect;
            Wparam :        Boolean                       := False;
            Lparam : in out Gwindows.Types.Rectangle_Type                      );
      pragma Import (Stdcall, Sendmessage,
         "SendMessage" & Character_Mode_Identifier);
   begin
      Sendmessage (Lparam => Rt);
      return Rt;
   end Display_Area;

   ---------------
   -- On_Create --
   ---------------

   procedure On_Create (
         Control : in out Tab_Control_Type ) is
   begin
      Tab_Stop (Control);
   end On_Create;

   ---------------
   -- On_Notify --
   ---------------

   procedure On_Notify (
         Window       : in out Tab_Control_Type;
         Message      : in     Gwindows.Base.Pointer_To_Notification;
         Control      : in     Gwindows.Base.Pointer_To_Base_Window_Class;
         Return_Value : in out Interfaces.C.Long                           ) is
      Tcn_First       : constant := - 550;
      Tcn_Selchange   : constant := Tcn_First - 1;
      Tcn_Selchanging : constant := Tcn_First - 2;
   begin
      case Message.Code is
         when Tcn_Selchange =>
            On_Change (Tab_Control_Type'Class (Window));
         when Tcn_Selchanging =>
            On_Changing (Tab_Control_Type'Class (Window));
         when others =>
            On_Notify (Common_Control_Type (Window),
               Message, Control, Return_Value);
      end case;

   end On_Notify;

   ----------------
   -- Tab_Window --
   ----------------

   procedure Tab_Window (
         Control : in out Tab_Window_Control_Type;
         Where   : in     Integer;
         Window  : in     Gwindows.Base.Pointer_To_Base_Window_Class ) is
      Tc : Tcitem;

      procedure Sendmessagea (
            Hwnd   : Interfaces.C.Long := Handle (Control);
            Umsg   : Interfaces.C.Int  := Tcm_Setitema;
            Wparam : Integer           := Where;
            Lparam : Tcitem            := Tc                );
      pragma Import (Stdcall, Sendmessagea,
         "SendMessage" & Character_Mode_Identifier);

      procedure Sendmessagew (
            Hwnd   : Interfaces.C.Long := Handle (Control);
            Umsg   : Interfaces.C.Int  := Tcm_Setitemw;
            Wparam : Integer           := Where;
            Lparam : Tcitem            := Tc                );
      pragma Import (Stdcall, Sendmessagew,
         "SendMessage" & Character_Mode_Identifier);
   begin
      Tc.Mask := Tcif_Param;
      Tc.Lparam := Window;

      if Character_Mode = Unicode then
         Sendmessagew;
      else
         Sendmessagea;
      end if;

      if Where = Selected_Tab (Control) then
         On_Change (Tab_Window_Control_Type'Class (Control));
      end if;
   end Tab_Window;

   function Tab_Window (
         Control : in     Tab_Window_Control_Type;
         Where   : in     Integer                  )
     return Gwindows.Base.Pointer_To_Base_Window_Class is
      Tc : Tcitem;

      procedure Sendmessagea (
            Hwnd   :        Interfaces.C.Long := Handle (Control);
            Umsg   :        Interfaces.C.Int  := Tcm_Getitema;
            Wparam :        Integer           := Where;
            Lparam : in out Tcitem                                 );
      pragma Import (Stdcall, Sendmessagea,
         "SendMessage" & Character_Mode_Identifier);

      procedure Sendmessagew (
            Hwnd   :        Interfaces.C.Long := Handle (Control);
            Umsg   :        Interfaces.C.Int  := Tcm_Getitemw;
            Wparam :        Integer           := Where;
            Lparam : in out Tcitem                                 );
      pragma Import (Stdcall, Sendmessagew,
         "SendMessage" & Character_Mode_Identifier);
   begin
      Tc.Mask := Tcif_Param;

      if Character_Mode = Unicode then
         Sendmessagew (Lparam => Tc);
      else
         Sendmessagea (Lparam => Tc);
      end if;

      return Tc.Lparam;
   end Tab_Window;

   -----------------
   -- On_Changing --
   -----------------

   procedure On_Changing (
         Control : in out Tab_Window_Control_Type ) is
      use Gwindows.Base;

      Current : constant Pointer_To_Base_Window_Class := Tab_Window (Control, Selected_Tab
        (Control));
   begin
      if Current /= null then
         Hide (Current.All);
      end if;
   end On_Changing;

   ---------------
   -- On_Change --
   ---------------

   procedure On_Change (
         Control : in out Tab_Window_Control_Type ) is
      use Gwindows.Base;

      Current : constant Pointer_To_Base_Window_Class  := Tab_Window (Control, Selected_Tab
        (Control));
      Area    : constant Gwindows.Types.Rectangle_Type := Display_Area (Control);
   begin
      if Current /= null then
         Left (Current.All, Area.Left);
         Top (Current.All, Area.Top);
         Width (Current.All, Area.Right - Area.Left);
         Height (Current.All, Area.Bottom - Area.Top);
         Show (Current.All);
      end if;
   end On_Change;

   ------------
   -- Create --
   ------------

   procedure Create (
         Control    : in out Toolbar_Control_Type;
         Parent     : in out Gwindows.Base.Base_Window_Type'Class;
         Left       : in     Integer;
         Top        : in     Integer;
         Width      : in     Integer;
         Height     : in     Integer;
         Show       : in     Boolean                              := True;
         Is_Dynamic : in     Boolean                              := False ) is
      Styles : constant Interfaces.C.Unsigned := 0;
   begin
      Create_Control (Control, Parent,
         "ToolbarWindow32",
         "",
         Left, Top, Width, Height,
         0, Styles,
         Is_Dynamic => Is_Dynamic);

      if Show then
         Gwindows.Common_Controls.Show (Control);
      end if;
   end Create;

   --------------------
   -- Set_Image_List --
   --------------------

   procedure Set_Image_List (
         Control : in out Toolbar_Control_Type;
         List    : in     Gwindows.Image_Lists.Image_List_Type ) is
      procedure Sendmessage (
            Hwnd   : Interfaces.C.Long     := Handle (Control);
            Umsg   : Interfaces.C.Int      := Tb_Setimagelist;
            Wparam : Integer               := 0;
            Lparam : Gwindows.Types.Handle                      );
      pragma Import (Stdcall, Sendmessage,
         "SendMessage" & Character_Mode_Identifier);

   begin
      Sendmessage (Lparam => Gwindows.Image_Lists.Handle (List));
   end Set_Image_List;

   ----------------
   -- Add_Button --
   ----------------

   procedure Add_Button (
         Control     : in out Toolbar_Control_Type;
         Image_Index : in     Natural;
         Command     : in     Integer               ) is

      type Button_Array is array (1 .. 1) of Tbbutton;
      Tb : Button_Array;

      procedure Sendmessage (
            Hwnd   : Interfaces.C.Long := Handle (Control);
            Umsg   : Interfaces.C.Int  := Tb_Addbuttons;
            Wparam : Integer           := 1;
            Lparam : Button_Array      := Tb                );
      pragma Import (Stdcall, Sendmessage,
         "SendMessage" & Character_Mode_Identifier);
   begin
      Tb (1).Image := Image_Index;
      Tb (1).Command := Command;
      Tb (1).State := Tbstate_Enabled;
      Sendmessage;
   end Add_Button;

   -------------------
   -- Add_Separator --
   -------------------

   procedure Add_Separator (
         Control : in out Toolbar_Control_Type;
         Width   : in     Integer               ) is
      type Button_Array is array (1 .. 1) of Tbbutton;
      Tb : Button_Array;
      procedure Sendmessage (
            Hwnd   : Interfaces.C.Long := Handle (Control);
            Umsg   : Interfaces.C.Int  := Tb_Addbuttons;
            Wparam : Integer           := 1;
            Lparam : Button_Array      := Tb                );
      pragma Import (Stdcall, Sendmessage,
         "SendMessage" & Character_Mode_Identifier);
   begin
      Tb (1).Image := Width;
      Tb (1).Style := Tbstyle_Sep;
      Sendmessage;
   end Add_Separator;

   ---------------
   -- Get_Style --
   ---------------

   function Get_Style (
         Control : in     Toolbar_Control_Type )
     return Interfaces.C.Unsigned is
      function Sendmessage (
            Hwnd   : Interfaces.C.Long := Handle (Control);
            Umsg   : Interfaces.C.Int  := Tb_Getstyle;
            Wparam : Interfaces.C.Long := 0;
            Lparam : Interfaces.C.Long := 0                 )
        return Interfaces.C.Unsigned;
      pragma Import (Stdcall, Sendmessage,
         "SendMessage" & Character_Mode_Identifier);
   begin
      return Sendmessage;
   end Get_Style;

   ---------------
   -- Set_Style --
   ---------------

   procedure Set_Style (
         Control : in out Toolbar_Control_Type;
         Style   : in     Interfaces.C.Unsigned ) is
      procedure Sendmessage (
            Hwnd   : Interfaces.C.Long     := Handle (Control);
            Umsg   : Interfaces.C.Int      := Tb_Setstyle;
            Wparam : Integer               := 0;
            Lparam : Interfaces.C.Unsigned := Style             );
      pragma Import (Stdcall, Sendmessage,
         "SendMessage" & Character_Mode_Identifier);
   begin
      Sendmessage;
   end Set_Style;

   ---------------
   -- On_Create --
   ---------------

   procedure On_Create (
         Control : in out Toolbar_Control_Type ) is
      procedure Sendmessage (
            Hwnd   : Interfaces.C.Long := Handle (Control);
            Umsg   : Interfaces.C.Int  := Tb_Buttonstructsize;
            Wparam : Integer           := 20;
            Lparam : Integer           := 0                    );
      pragma Import (Stdcall, Sendmessage,
         "SendMessage" & Character_Mode_Identifier);
   begin
      Sendmessage;
   end On_Create;

   procedure On_Command (
         Window  : in out Toolbar_Control_Type;
         Code    : in     Integer;
         Id      : in     Integer;
         Control : in     Gwindows.Base.Pointer_To_Base_Window_Class ) is
      pragma Warnings (Off, Control);
   begin
      if Code = 0 then
         On_Button_Select (Toolbar_Control_Type'Class (Window), Id);
      end if;
   end On_Command;

   ------------------------------
   -- On_Button_Select_Handler --
   ------------------------------

   procedure On_Button_Select_Handler (
         Control : in out Toolbar_Control_Type;
         Handler : in     Gwindows.Windows.Select_Event ) is
   begin
      Control.On_Button_Select_Event := Handler;
   end On_Button_Select_Handler;

   ---------------------------
   -- Fire_On_Button_Select --
   ---------------------------

   procedure Fire_On_Button_Select (
         Control : in out Toolbar_Control_Type;
         Item    : in     Integer               ) is
      use Gwindows.Base;
      use Gwindows.Windows;

   begin
      if Control.On_Button_Select_Event /= null then
         Control.On_Button_Select_Event (Base_Window_Type'Class (Control),
            Item);
      end if;
   end Fire_On_Button_Select;

   ----------------------
   -- On_Button_Select --
   ----------------------

   procedure On_Button_Select (
         Control : in out Toolbar_Control_Type;
         Item    : in     Integer               ) is
   begin
      Fire_On_Button_Select (Control, Item);
   end On_Button_Select;

   ------------
   -- Create --
   ------------

   procedure Create (
         Control    : in out Tool_Tip_Type;
         Parent     : in out Gwindows.Base.Base_Window_Type'Class;
         Is_Dynamic : in     Boolean                              := False ) is
      Ws_Popup       : constant := 2147483648;
      Tts_Always_Tip : constant := 1;
      Tts_No_Prefix  : constant := 2;
   begin
      Create_Control (Control, Parent,
         "tooltips_class32", "",
         0, 0, 0, 0, 0,
                      Ws_Popup or Tts_Always_Tip or Tts_No_Prefix,
         Is_Dynamic => Is_Dynamic);
   end Create;

   -----------------
   -- Add_Tooltip --
   -----------------

   procedure Add_Tool_Tip (
         Control : in out Tool_Tip_Type;
         Window  : in     Gwindows.Base.Base_Window_Type'Class;
         Tip     : in     Gstring                               ) is
      C_Text : Gstring_C := Gwindows.Gstrings.To_Gstring_C (Tip);

      Info : Toolinfo;

      procedure Sendmessagea (
            Hwnd   : Interfaces.C.Long := Handle (Control);
            Umsg   : Interfaces.C.Int  := Ttm_Addtoola;
            Wparam : Interfaces.C.Long := 0;
            Lparam : Toolinfo          := Info              );
      pragma Import (Stdcall, Sendmessagea,
         "SendMessage" & Character_Mode_Identifier);

      procedure Sendmessagew (
            Hwnd   : Interfaces.C.Long := Handle (Control);
            Umsg   : Interfaces.C.Int  := Ttm_Addtoolw;
            Wparam : Interfaces.C.Long := 0;
            Lparam : Toolinfo          := Info              );
      pragma Import (Stdcall, Sendmessagew,
         "SendMessage" & Character_Mode_Identifier);
   begin
      Info.Flags := Ttf_Idishwnd or Ttf_Subclass;
      Info.Hwnd := Gwindows.Base.Handle (Parent (Control).all);
      Info.Uid := Gwindows.Base.Handle (Window);
      Info.Text := C_Text (0)'Unchecked_Access;

      if Character_Mode = Unicode then
         Sendmessagew;
      else
         Sendmessagea;
      end if;

   end Add_Tool_Tip;

   -------------------
   -- Maximum_Width --
   -------------------

   procedure Maximum_Width (
         Control : in out Tool_Tip_Type;
         Width   : in     Integer        ) is
      procedure Sendmessage (
            Hwnd   : Interfaces.C.Long := Handle (Control);
            Umsg   : Interfaces.C.Int  := Ttm_Setmaxtipwidth;
            Wparam : Interfaces.C.Long := 0;
            Lparam : Integer           := Width               );
      pragma Import (Stdcall, Sendmessage,
         "SendMessage" & Character_Mode_Identifier);
   begin
      Sendmessage;
   end Maximum_Width;

end Gwindows.Common_Controls;
