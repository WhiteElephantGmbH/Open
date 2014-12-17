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

with C;
with Log;
with Text;

package body Promotion is

  task type Handler is
    entry Start (Promote_All : Boolean;
                 Name        : String);
  end Handler;


  protected Control is

    procedure Start;

    procedure Set_Message_Text (Item : String);

    procedure Set_Error_Text (Item      : String;
                              File      : String;
                              At_Line   : Server.Line_Number := Server.Line_Number'first;
                              At_Column : Server.Column_Range := Server.Column_Range'first);

    procedure Set_Complete;

    entry Get_Message_Ready (The_Result : out Boolean);

    entry Get_Error_Ready (The_Result : out Boolean);

    function Actual_Message return String;

    function Actual_Filename return String;

    function Actual_Line return Server.Line_Number;

    function Actual_Column return Server.Column_Range;

  private
    The_Message  : Text.String;
    New_Message  : Boolean := False;
    New_Error    : Boolean := False;
    Is_Complete  : Boolean := False;
    Last_Message : Text.String;
    The_Filename : Text.String;
    The_Line     : Server.Line_Number;
    The_Column   : Server.Column_Range;
  end Control;


  type Handler_Access is access Handler;

  The_Handler : Handler_Access;

  task body Handler is

    procedure Promote (Name : String) is
    begin
      Set_Message ("Promote " & Name);
      C.Promote (Name);
      Set_Message ("Promotion of " & Name & " successfully completed.");
    exception
    when Error =>
      Log.Write ("Promotion Error");
    when Item: others =>
      Log.Write ("Promotion.Handler.Promote", Item);
      Set_Message ("Promotion of " & Name & " failed.");
    end Promote;


    procedure Promote_All_Projects is
    begin
      Promotion.Define_Next_Message_Color (Promotion.Red);
      Set_Message ("Promote all not implemented.");
    end Promote_All_Projects;

    The_Name       : Text.String;
    Is_Promote_All : Boolean;

  begin -- Handler
    accept Start (Promote_All : Boolean;
                  Name        : String) do
      Is_Promote_All := Promote_All;
      The_Name := Text.String_Of (Name);
      Control.Start;
    end Start;
    if Is_Promote_All then
      Promote_All_Projects;
    else
      Promote (Text.String_Of (The_Name));
    end if;
    Promotion.Complete;
  exception
  when Item: others =>
    Log.Write ("Promotion.Handler", Item);
  end Handler;


  procedure Start (Promote_All : Boolean;
                   Name        : String) is
  begin
    The_Handler := new Handler;
    The_Handler.Start (Promote_All, Name);
  end Start;


  protected body Control is

    procedure Start is
    begin
      Text.Clear (The_Message);
      New_Message := False;
      New_Error := False;
      Is_Complete := False;
    end Start;


    procedure Set_Message_Text (Item : String) is
    begin
      The_Message := Text.String_Of (Item);
      New_Message := True;
    end Set_Message_Text;


    procedure Set_Error_Text (Item      : String;
                              File      : String;
                              At_Line   : Server.Line_Number := Server.Line_Number'first;
                              At_Column : Server.Column_Range := Server.Column_Range'first) is
    begin
      The_Message := Text.String_Of (Item);
      The_Filename := Text.String_Of (File);
      The_Line := At_Line;
      The_Column := At_Column;
      New_Message := False;
      New_Error := True;
    end Set_Error_Text;


    procedure Set_Complete is
    begin
      Is_Complete := True;
    end Set_Complete;


    entry Get_Message_Ready (The_Result : out Boolean) when New_Message or New_Error or Is_Complete is
    begin
      if New_Message then
        Last_Message := The_Message;
        The_Result := True;
        New_Message := False;
      end if;
    end Get_Message_Ready;


    entry Get_Error_Ready (The_Result : out Boolean) when New_Message or New_Error or Is_Complete is
    begin
      if New_Error then
        Last_Message := The_Message;
        The_Result := True;
        New_Error := False;
      end if;
    end Get_Error_Ready;


    function Actual_Message return String is
    begin
      return Text.String_Of (Last_Message);
    end Actual_Message;


    function Actual_Filename return String is
    begin
      return Text.String_Of (The_Filename);
    end Actual_Filename;


    function Actual_Line return Server.Line_Number is
    begin
      return The_Line;
    end Actual_Line;


    function Actual_Column return Server.Column_Range is
    begin
      return The_Column;
    end Actual_Column;

  end Control;


  The_Message_Color : Color := Black;

  procedure Define_Next_Message_Color (Item : Color) is
  begin
    The_Message_Color := Item;
  end Define_Next_Message_Color;


  procedure Set_Message (Item : String) is
  begin
    case The_Message_Color is
    when Black =>
      Control.Set_Message_Text (Item);
    when Blue =>
      Control.Set_Message_Text ("%b" & Item);
    when Green =>
      Control.Set_Message_Text ("%g" & Item);
    when Red =>
      Control.Set_Message_Text ("%r" & Item);
    end case;
    The_Message_Color := Black;
  end Set_Message;


  procedure Set_Error (Item      : String;
                       File      : String := "";
                       At_Line   : Server.Line_Number := Server.Line_Number'first;
                       At_Column : Server.Column_Range := Server.Column_Range'first) is
  begin
    Control.Set_Error_Text (Item, File, At_Line, At_Column);
    raise Error;
  end Set_Error;


  procedure Complete is
  begin
    Control.Set_Complete;
  end Complete;


  function Message_Ready return Boolean is
    The_Result : Boolean;
  begin
    Control.Get_Message_Ready (The_Result);
    return The_Result;
  end Message_Ready;


  function Error_Message_Ready return Boolean is
    The_Result : Boolean;
  begin
    Control.Get_Error_Ready (The_Result);
    return The_Result;
  end Error_Message_Ready;


  function Message return String is
  begin
    return Control.Actual_Message;
  end Message;


  function Filename return String is
  begin
    return Control.Actual_Filename;
  end Filename;


  function Line return Server.Line_Number is
  begin
    return Control.Actual_Line;
  end Line;


  function Column return Server.Column_Range is
  begin
    return Control.Actual_Column;
  end Column;

end Promotion;
