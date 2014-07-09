-- *********************************************************************************************************************
-- *                           (c) 2008 .. 2014 by Soudronic AG, Bergdietikon, Switzerland                             *
-- *                      Developed by White Elephant GmbH, Switzerland (www.white-elephant.ch)                        *
-- *********************************************************************************************************************
-->Style: White_Elephant

with Ada.Unchecked_Conversion;
with Log;
with Text;
with Unsigned;
with System;
with Windows.Files;
with Windows.Pipe;

package body Server is

  The_Pipe : Windows.Pipe.Handle;

  The_Length : Natural;
  The_Data   : aliased Source_Buffer;
  for The_Data'alignment use 4;

  The_Message : Text.String;


  procedure Read_Data is
  begin
    Windows.Pipe.Read (The_Pipe, The_Data'address, The_Length);
  end Read_Data;


  function Data_String return String is
  begin
    return The_Data(The_Data'first .. The_Data'first + The_Length - 1);
  end Data_String;


  procedure Send (Service : Command;
                  Item    : String := "") is
    Id   :         constant Character := Character'val(Command'pos(Service));
    Data : aliased constant String := Id & Item;
  begin
    Windows.Pipe.Write (The_Pipe, Data'address, Data'length);
    Read_Data;
  end Send;


  procedure Send (Item : String) is
  begin
    Windows.Pipe.Write (The_Pipe, Item'address, Item'length);
    Read_Data;
  end Send;


  procedure Send (Item : Natural) is
  begin
    Send (Natural'image(Item));
  end Send;


  procedure Send (Item : Tokens) is
  begin
    Windows.Pipe.Write (The_Pipe, Item'address, Item'size / Unsigned.Byte'size);
    Read_Data;
  end Send;


  function Is_In_Project (Name : String) return Boolean is
  begin
    Send (Is_In_Project, Name);
    return Data_String = "" & Confirmation;
  end Is_In_Project;



  procedure Set_Message (Item : String) is
  begin
    The_Message := Text.String_Of (Item);
  end Set_Message;


  function Language_Of (Name : String) return String is
    Last : Natural := Natural'first;
  begin
    for Index in reverse Name'range loop
      case Name(Index) is
      when '\' | '/' =>
        if Last = Natural'first then
          if Windows.Files.File_Exists (Name(Name'first .. Index) & Project_File) then
            Last := Index - 1;
          end if;
        else
          return Name(Index + 1 .. Last);
        end if;
      when others =>
        null;
      end case;
    end loop;
    return "";
  end Language_Of;


  function Project_Opened (Name : String) return Boolean is

    Language        : constant String := Language_Of (Name);
    Pipe_Name       : constant String := "Npp_" & Language & "_Pipe_V_1.0";
    Language_Server : constant String := Language & "_Server.exe";

    Project_Not_Opened : constant String := "Project containing " & Name & " not opened - ";
    Termination_Time   : constant Duration := 0.2;

  begin
    if Language = "" then
      Set_Message (Project_Not_Opened & "unknown project! ( no " & Project_File & ")");
      return False;
    end if;
    begin
      Windows.Create_Process (Windows.Origin_Folder & '\' & Language_Server, Pipe_Name);
      delay 0.5;  -- Wait for server to start
      for Try in 1..4 loop --> UD: just count
        begin  -- Attempt to connect to server
          Windows.Pipe.Open (Pipe => The_Pipe,
                             Name => Pipe_Name,
                             Kind => Windows.Pipe.Client,
                             Mode => Windows.Pipe.Duplex,
                             Size => Server.Source_Buffer'length);
          Send (Open_Project, Name);
          if The_Length = 0 then
            Set_Message (Project_Not_Opened & "protocol error (no Confirmation)");
          else
            Set_Message (The_Data(The_Data'first + 1 .. The_Data'first + The_Length - 1));
            if The_Data(The_Data'first) = Confirmation then
              Log.Write ("+ Project Opened using: " & Name);
              Send (Get_Extensions);
              return True;
            elsif The_Data(The_Data'first) = Not_Confirmed then
              Log.Write ("- Project not Opened using: " & Name);
              return False;
            else
              Set_Message (Project_Not_Opened & "protocol error (wrong Confirmation)");
            end if;
          end if;
          exit;
        exception
        when Windows.Pipe.No_Server =>
          Log.Write ("Server.Project_Opened - retry for " & Language_Server);
          delay 1.0;
        end;
      end loop;
      delay Termination_Time;
      Set_Message (Project_Not_Opened & Language_Server & " not connected!");
    exception
    when Windows.Process_Creation_Failure =>
      Set_Message (Project_Not_Opened & Language_Server & " missing!");
    when Windows.Pipe.Name_In_Use =>
      Set_Message (Project_Not_Opened & Language_Server & " in use!");
    when Occurence: others =>
      Set_Message (Project_Not_Opened & "internal error");
      Log.Write ("! " & Project_Not_Opened, Occurence);
    end;
    return False;
  end Project_Opened;


  procedure Close_Project is
  begin
    Log.Write ("+ Project Close");
    Send (Close_Project);
  exception
  when others =>
    null;
  end Close_Project;


  function Known_Extensions return String is
  begin
    Send (Get_Extensions);
    return Data_String;
  end Known_Extensions;


  function Updates_For (Filename   : String;
                        First_Line : Line_Number;
                        Last_Line  : Line_Number;
                        Marks      : Tokens;
                        Content    : String) return Tokens is
  begin
    Send (Updates_For, Filename);
    Send (Natural(First_Line));
    Send (Natural(Last_Line));
    Send (Marks);
    Send (Content);
    declare
      subtype Actual_Results is Tokens(1 .. The_Length * 8 / Tokens'component_size);
      Updates : Actual_Results;
      for Updates'address use The_Data'address;
    begin
      return Updates;
    end;
  end Updates_For;


  The_Column   : Column_Range;
  The_Line     : Line_Number;
  The_Filename : Text.String;


  procedure Read_Filename is
  begin
    Send (Get_Filename);
    The_Filename := Text.String_Of (Data_String);
  end Read_Filename;


  procedure Read_Message is
  begin
    Send (Get_Message);
    Set_Message (Data_String);
  end Read_Message;


  function Has_Reference return Boolean is
    Reference : Location;
    for Reference'address use The_Data'address;
    use type Location;
  begin
    if Reference = Not_Referenced then
      return False;
    else
      The_Column := Reference.Column;
      The_Line := Reference.Line;
      Read_Filename;
      return True;
    end if;
  end Has_Reference;


  function Has_Message return Boolean is
  begin
    if The_Length /= 0 then
      Set_Message (Data_String);
      return True;
    else
      return False;
    end if;
  end Has_Message;


  function Referenced (Filename : String;
                       Column   : Column_Range;
                       Line     : Line_Number;
                       Content  : String) return Boolean is
  begin
    Send (Referenced, Filename);
    Send (Natural(Column));
    Send (Natural(Line));
    Send (Content);
    return Has_Reference;
  end Referenced;


  function Usage (Filename : String;
                  Column   : Column_Range;
                  Line     : Line_Number;
                  Content  : String) return References is
    use type System.Address;
  begin
    Send (Usage, Filename);
    Send (Natural(Column));
    Send (Natural(Line));
    Send (Content);
    declare
      type References_Access is access all References;

      function References_Of is new Ada.Unchecked_Conversion (System.Address, References_Access);

    begin
      return References_Of (The_Data(The_Data'first)'address).all;
    end;
  end Usage;


  function Unused return References is
  begin
    Send (Command'(Unused));
    declare
      type References_Access is access all References;

      function References_Of is new Ada.Unchecked_Conversion (System.Address, References_Access);

    begin
      return References_Of (The_Data(The_Data'first)'address).all;
    end;
  exception
  when Item: others =>
    Log.Write ("Unused", Item);
    return No_References;
  end Unused;


  procedure Promote (Name   : String;
                     Is_All : Boolean := False) is
  begin
    if Is_All then
      Send (Promote_All, Name);
    else
      Send (Promote, Name);
    end if;
  end Promote;


  function Has_Promotion_Message return Boolean is
  begin
    Send (Has_Promotion_Message);
    return Has_Message;
  end Has_Promotion_Message;


  function Has_Promotion_Error return Boolean is
  begin
    Send (Has_Promotion_Error);
    if Has_Reference then
      Read_Message;
      return True;
    else
      return False;
    end if;
  end Has_Promotion_Error;


  function Message return String is
  begin
    return Text.String_Of (The_Message);
  end Message;


  function Filename return String is
  begin
    return Text.String_Of (The_Filename);
  end Filename;


  function Column return Column_Range is
  begin
    return The_Column;
  end Column;


  function Line return Line_Number is
  begin
    return The_Line;
  end Line;

end Server;
