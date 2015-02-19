-- *********************************************************************************************************************
-- *                       (c) 2013 .. 2015 by White Elephant GmbH, Schaffhausen, Switzerland                          *
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

with Ada.Characters.Handling;
with Ada.Unchecked_Conversion;
with Definite_Doubly_Linked_Lists;
with Scintilla;

package body Npp.Plugin is

  function Is_Unicode return Win.BOOL
  with
    Export,
    Convention    => C,
    External_Name => "isUnicode";
  pragma Unreferenced (Is_Unicode);

  type Info is record
    Npp_Handle              : Win.HWND;
    Scintilla_Main_Handle   : Win.HWND;
    Scintilla_Second_Handle : Win.HWND;
  end record
  with
    Alignment  => Win.Alignment,
    Convention => C_Pass_By_Copy,
    Pack       => True;

  procedure Set_Info (Data : Info)
  with
    Export,
    Convention     => C,
    External_Name  => "setInfo";
  pragma Unreferenced (Set_Info);

  function Get_Funcs_Array (Count : access Win.INT) return System.Address
  with
    Export,
    Convention    => C,
    External_Name => "getFuncsArray";
  pragma Unreferenced (Get_Funcs_Array);

  procedure Be_Notified (Notif : access Scintilla.Notification)
  with
    Export,
    Convention    => C,
    External_Name => "beNotified";
  pragma Unreferenced (Be_Notified);

  function Message_Proc (Unused_Message : Win.UINT;
                         Unused_Wpara   : Win.WPARAM;
                         Unused_Lpara   : Win.LPARAM) return Win.LRESULT
  with
    Export,
    Convention    => C,
    External_Name => "messageProc";
  pragma Unreferenced (Message_Proc);

  Max_Functions : constant := 8;

  type Function_Count is range 0..Max_Functions;

  subtype Function_Range is Function_Count range 1..Function_Count'last;

  Item_Name_Length : constant := 64;

  subtype Item_Name is Wide_String (1..Item_Name_Length);

  type Callbacks is array (Function_Range) of Callback;

  type Call_List is record
    Calls : Callbacks;
    Count : Function_Count := 0;
  end record;

  Set_Info_Callbacks         : Call_List;
  Tb_Modification_Callbacks  : Call_List;
  Ready_Callbacks            : Call_List;
  Buffer_Activated_Callbacks : Call_List;
  Buffer_Updated_Callbacks   : Call_List;

  function Convert is new Ada.Unchecked_Conversion (System.Address, Win.LPARAM);


  The_Name : aliased Wide_String (1..256) := (others => Wide_Nul);

  procedure Define (Wide_Name : Wide_String) is
  begin
    The_Name(1..Wide_Name'length) := Wide_Name;
  end Define;


  function Name return System.Address is
  begin
    return The_Name'address;
  end Name;


  Last_Id : Win.INT := 0;

  procedure Install (Set_Info_Call    :     Callback := null;
                     Tb_Modification  :     Callback := null;
                     Ready            :     Callback := null;
                     Buffer_Activated :     Callback := null;
                     Buffer_Updated   :     Callback := null) is

    procedure Add (Call : Callback;
                   To   : in out Call_List) is
    begin
      if Call /= null then
        To.Count := To.Count + 1;
        To.Calls(To.Count) := Call;
      end if;
    end Add;

    use type Win.INT;

  begin -- Install
    Add (Set_Info_Call, Set_Info_Callbacks);
    Add (Tb_Modification, Tb_Modification_Callbacks);
    Add (Ready, Ready_Callbacks);
    Add (Buffer_Activated, Buffer_Activated_Callbacks);
    Add (Buffer_Updated, Buffer_Updated_Callbacks);
    if Tb_Modification /= null then
      Last_Id := Last_Id + 1;
    end if;
  end Install;


  function Last_Dialog_Id return Win.INT is
  begin
    return Last_Id;
  end Last_Dialog_Id;


  procedure Call (List : Call_List) is
  begin
    for Index in 1 .. List.Count loop
      List.Calls(Index).all;
    end loop;
  end Call;


  type P_Funct_Plugin_Cmd is access procedure with Convention => C;

  type Func_Item is record
    Name       : Item_Name          := (others => Wide_Nul);
    P_Func     : P_Funct_Plugin_Cmd := null;
    Cmd_Id     : Win.WPARAM         := 0;
    Init2check : Win.BOOL           := Win.FALSE;           --> UD: not used
    P_Sh_Key   : System.Address     := System.Null_Address; --> UD: not used
  end record
  with
    Alignment  => Win.Alignment,
    Convention => C;

  The_Command  : array (Function_Range) of Callback;
  The_Function : array (Function_Range) of Func_Item;
  The_Toolbar  : array (Function_Range) of Toolbar_Icons;
  The_Count    : Function_Count := 0;

  procedure Command_1 with Convention => C;
  procedure Command_1 is
  begin
    The_Command(1).all;
  end Command_1;

  procedure Command_2 with Convention => C;
  procedure Command_2 is
  begin
    The_Command(2).all;
  end Command_2;

  procedure Command_3 with Convention => C;
  procedure Command_3 is
  begin
    The_Command(3).all;
  end Command_3;

  procedure Command_4 with Convention => C;
  procedure Command_4 is
  begin
    The_Command(4).all;
  end Command_4;

  procedure Command_5 with Convention => C;
  procedure Command_5 is
  begin
    The_Command(5).all;
  end Command_5;

  procedure Command_6 with Convention => C;
  procedure Command_6 is
  begin
    The_Command(6).all;
  end Command_6;

  procedure Command_7 with Convention => C;
  procedure Command_7 is
  begin
    The_Command(7).all;
  end Command_7;

  procedure Command_8 with Convention => C;
  procedure Command_8 is
  begin
    The_Command(8).all;
  end Command_8;


  subtype Id is Win.INT range 1 .. 10; -- fix but extendable for speed reasons

  type Handler_Data is record
    Handler  : Notify_Handler;
    For_Code : Win.INT;
  end record;

  package Handler_List is new Definite_Doubly_Linked_Lists (Handler_Data);

  type Handlers is array (Id) of Handler_List.Item;

  The_Notify_Handlers : Handlers;


  procedure Add_Notify_Handler (Handler  : Notify_Handler;
                                For_Code : Win.INT) is
    use type Handler_List.Item;
  begin
    The_Notify_Handlers(Last_Id) := The_Notify_Handlers(Last_Id) + (Handler, For_Code);
  end Add_Notify_Handler;


  procedure Add_Function (Wide_Name : Wide_String;
                          Command   : Callback;
                          Toolbar   : Toolbar_Icons := No_Toolbar) is
  begin
    if The_Count = Function_Range'last then
      raise Too_Many_Commands;
    end if;
    The_Count := The_Count + 1;
    declare
      Item : Func_Item renames The_Function(The_Count);
    begin
      Item.Name (Item.Name'first .. Item.Name'first + Wide_Name'length - 1) := Wide_Name;
      case Function_Range(The_Count) is
      when 1 =>
        Item.P_Func := Command_1'access;
      when 2 =>
        Item.P_Func := Command_2'access;
      when 3 =>
        Item.P_Func := Command_3'access;
      when 4 =>
        Item.P_Func := Command_4'access;
      when 5 =>
        Item.P_Func := Command_5'access;
      when 6 =>
        Item.P_Func := Command_6'access;
      when 7 =>
        Item.P_Func := Command_7'access;
      when 8 =>
        Item.P_Func := Command_8'access;
      end case;
    end;
    The_Command(The_Count) := Command;
    The_Toolbar(The_Count) := Toolbar;
  end Add_Function;


  The_Info : Info;

  function Handle return Win.HWND is
  begin
    return The_Info.Npp_Handle;
  end Handle;


  function Edit_View return Win.HWND is
    The_Current_Edit : aliased Win.INT;
    use type Win.INT;
  begin
    Win.Send_Message (The_Info.Npp_Handle, M_GETCURRENTSCINTILLA, 0, Convert (The_Current_Edit'address));
    if The_Current_Edit = 0 then
      return The_Info.Scintilla_Main_Handle;
    else
      return The_Info.Scintilla_Second_Handle;
    end if;
  end Edit_View;


  function Switched_To (Filename : String) return Boolean is
    use type Win.LRESULT;
    Wide_Filename : Wide_String := Ada.Characters.Handling.To_Wide_String (Filename) & Wide_Nul;
  begin
     return Win.Send_Message (To   => The_Info.Npp_Handle,
                              Msg  => Npp.M_SWITCHTOFILE,
                              Wpar => 0,
                              Lpar => Convert(Wide_Filename(Wide_Filename'first)'address)) = Win.OK;
  end Switched_To;


  function Opened (Filename : String) return Boolean is
    use type Win.LRESULT;
    Wide_Filename : Wide_String := Ada.Characters.Handling.To_Wide_String (Filename) & Wide_Nul;
  begin
     return Win.Send_Message (To   => The_Info.Npp_Handle,
                              Msg  => Npp.M_DOOPEN,
                              Wpar => 0,
                              Lpar => Convert(Wide_Filename(Wide_Filename'first)'address)) = Win.OK;
  end Opened;


  function All_Files_Saved return Boolean is
    use type Win.LRESULT;
  begin
    return Win.Send_Message (To   => The_Info.Npp_Handle,
                             Msg  => Npp.M_SAVEALLFILES,
                             Wpar => 0,
                             Lpar => 0) = Win.OK;
  end All_Files_Saved;


  function Is_Unicode return Win.BOOL is
  begin
    return Win.TRUE;
  end Is_Unicode;


  procedure Set_Info (Data : Info) is
  begin
    The_Info := Data;
    Call (Set_Info_Callbacks);
  end Set_Info;


  function Get_Funcs_Array (Count : access Win.INT) return System.Address is
  begin
    Count.all := Win.INT(The_Count);
    return The_Function(The_Function'first)'address;
  end Get_Funcs_Array;


  procedure Create_Toolbar_Buttons is
  begin
    for Index in 1 .. The_Count loop
      if The_Toolbar(Index) /= No_Toolbar then
        Win.Send_Message (To   => The_Info.Npp_Handle,
                          Msg  => Npp.M_ADDTOOLBARICON,
                          Wpar => The_Function(Index).Cmd_Id,
                          Lpar => Convert(The_Toolbar(Index)'address));
      end if;
    end loop;
  end Create_Toolbar_Buttons;


  procedure Be_Notified (Notif : access Scintilla.Notification) is
    use type Win.INT;
    use type Win.UINT;
    use type System.Address;
    Id_From : constant Win.INT := Win.INT(Notif.Nmhdr.Id_From);
  begin
    if Id_From in Id'first .. Last_Id then
      for Item of The_Notify_Handlers(Id_From) loop
        if Item.For_Code = Notif.Nmhdr.Code then
          Item.Handler (Notif.Nmhdr.Hwnd_From);
        end if;
      end loop;
    end if;
    case Notif.Nmhdr.Code is
    when Npp.N_READY =>
      Call (Ready_Callbacks);
    when Npp.N_TBMODIFICATION =>
      Create_Toolbar_Buttons;
      Call (Tb_Modification_Callbacks);
    when Npp.N_FILEBEFOREOPEN =>
      null;
    when Npp.N_FILEOPENED =>
      null;
    when Npp.N_BUFFERACTIVATED =>
      Call (Buffer_Activated_Callbacks);
    when Npp.N_FILEBEFORECLOSE =>
      null;
    when Npp.N_FILECLOSED =>
      null;
    when Npp.N_FILEBEFORESAVE =>
      null;
    when Npp.N_FILESAVED =>
      null;
    when Npp.N_SHUTDOWN =>
      null;
    when Scintilla.SCN_UPDATEUI =>
      Call (Buffer_Updated_Callbacks);
    when others =>
      return;
    end case;
  end Be_Notified;


  function Message_Proc (Unused_Message : Win.UINT;
                         Unused_Wpara   : Win.WPARAM;
                         Unused_Lpara   : Win.LPARAM) return Win.LRESULT is
  begin
    return Win.OK;
  end Message_Proc;

end Npp.Plugin;
