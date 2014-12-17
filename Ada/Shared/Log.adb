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

with Ada.Calendar;
with Exceptions;
with System;
with Strings;
with String_List;
with Windows;
with Windows.Files;
with Windows.Files.Io;
with Windows.Registry;
with Windows.Version;

package body Log is

  package Io renames Windows.Files.Io;

  Log_Time_Delta : constant := 0.0001;

  type Log_Time is delta Log_Time_Delta range -131072.0 .. +131072.0 - Log_Time_Delta;

  The_File         : Io.Handle;
  The_Maximum_Size : Unsigned.Longword;  -- Maximum number of lines
  The_Current_Size : Unsigned.Longword := 0;

  type String_Access is access String;

  Primary_Filename   : String_Access;
  Secondary_Filename : String_Access;

  Default_Maximum_Size : constant Unsigned.Longword := 100_000;
  Unlimited            : constant Unsigned.Longword := 0;


  protected Guarded is

    procedure Open (The_Project_Name :     String;
                    Use_Flush        :     Boolean;
                    Is_First_Open    : out Boolean);

    procedure Write (The_String : String);

    procedure Write_To_Category (The_String   : String;
                                 The_Category : Category);

    procedure Report_Categories;

    function Lookup_Category (The_Category : String) return Category;

  private
    Flush_After_Write : Boolean  := False;
    Logging_Is_Active : Boolean  := False;
    Categories        : Category := 16#FFFF_FFFF#;
    Category_Names    : String_List.Item;
  end Guarded;


  protected body Guarded is

    procedure Open (The_Project_Name :     String;
                    Use_Flush        :     Boolean;
                    Is_First_Open    : out Boolean) is

      Registry_Key : constant String := "Software\White Elephant\" & The_Project_Name;

      use type Unsigned.Longword;

      procedure Open_File (Name : String) is
      begin
        if Windows.Files.File_Exists (Name) then
          The_File := Io.Create (Name, Sharable => True);
          Logging_Is_Active := True;
        end if;
      exception
        when others => null;
      end Open_File;


      procedure Determine_Maximum_File_Size is
      begin
        The_Maximum_Size := Windows.Registry.Value_Of ("Log Limit");
      exception
      when others => The_Maximum_Size := Default_Maximum_Size;
      end Determine_Maximum_File_Size;


      function Derive_Seconday_Filename_From (The_Filename : String) return String is
        Dot_Position : constant Natural := Strings.Location_Of ('.', The_Filename, The_Direction => Strings.Backward);
        Suffix       : constant String := "_2";
      begin
        if Dot_Position = Strings.Not_Found then -- No file extension
          return The_Filename & Suffix;
        else
          return The_Filename (The_Filename'first .. Dot_Position - 1) & Suffix &
                               The_Filename(Dot_Position .. The_Filename'last);
        end if;
      end Derive_Seconday_Filename_From;

    begin -- Open
      if Use_Flush then
        Flush_After_Write := True;
      end if;
      Is_First_Open := not Logging_Is_Active;
      if Is_First_Open then
        declare
          Actual_Root : constant Windows.Registry.Root_Branch := Windows.Registry.Current_Root;
          Actual_Key  : constant Wide_String := Windows.Registry.Current_Key;
        begin
          begin
            Windows.Registry.Define_Root (Windows.Registry.Current_User);
            begin
              Windows.Registry.Set_Current_Key (Registry_Key);
              Primary_Filename := new String'(Windows.Registry.Value_Of ("Log"));
            exception
            when others => -- Try local machine hive
              Windows.Registry.Define_Root (Windows.Registry.Local_Machine);
              Windows.Registry.Set_Current_Key (Registry_Key);
              Primary_Filename := new String'(Windows.Registry.Value_Of ("Log"));
            end;
            Open_File (Primary_Filename.all);
            begin
              The_Current_Size := 0;
              Determine_Maximum_File_Size;
              if The_Maximum_Size /= Unlimited then
                Secondary_Filename := new String'(Derive_Seconday_Filename_From (Primary_Filename.all));
                Windows.Files.Delete_File (Secondary_Filename.all);
              end if;
            exception
            when others =>
              null;
            end;
            Category_Names := Strings.List_Of (Windows.Registry.Value_Of ("Categories"));
            if (Category_Names.Count > 0) and (Category_Names.Count <= 30) then
              Categories := 2 ** (Category_Names.Count + 1) - 1;
              if Lookup_Category ("debug") = 0 then -- debug not specified
                Categories := Categories - 1;  -- So mask out bit 0
              end if;
            end if;
          exception when others =>
            null;
          end;
          Windows.Registry.Define_Root (Actual_Root);
          Windows.Registry.Set_Current_Key (Actual_Key);
        end;
      else
        if Use_Flush then
          Io.Flush (The_File);
        end if;
      end if;
    exception
      when others => null;
    end Open;


    procedure Write (The_String : String) is
      use type Unsigned.Longword;
    begin
      if Logging_Is_Active then
        if (The_Maximum_Size /= Unlimited) and then (The_Current_Size >= The_Maximum_Size) then
          Io.Close (The_File);
          Windows.Files.Rename_File (Primary_Filename.all, Secondary_Filename.all);
          The_File := Io.Create (Primary_Filename.all, Sharable => True);
          Io.Write_Line ("The log file reached it's maximum size of" &
                         Unsigned.Longword'image(The_Maximum_Size) & " records", The_File);
          Io.Write_Line ("These records are now stored in the file " & Secondary_Filename.all, The_File);
          The_Current_Size := 2;
        end if;
        declare
          The_Thread_Id : constant String := Unsigned.Hex_Image_Of (Unsigned.Word(Windows.Current_Thread_Id));
          The_Timestamp : constant String := Log_Time'image(Log_Time(Ada.Calendar.Seconds(Ada.Calendar.Clock)));
        begin
          Io.Write_Line (The_Timestamp & " (" & The_Thread_Id & ") => " & The_String, The_File);
          if Flush_After_Write then
            Io.Flush (The_File);
          end if;
        end;
        The_Current_Size := The_Current_Size + 1;
      end if;
    exception
    when others =>
      Logging_Is_Active := False;
    end Write;


    procedure Write_To_Category (The_String   : String;
                                 The_Category : Category) is
      use type Unsigned.Longword;
    begin
      if (The_Category and Categories) /= 0 then
        Guarded.Write (The_String);
      end if;
    end Write_To_Category;


    procedure Report_Categories is
    begin
      if Category_Names.Count = 0 then
        Guarded.Write ("Logging categories not specified - All selected");
      else
        Guarded.Write ("Logging categories = " & Strings.Data_Of (Category_Names,","));
      end if;
    end Report_Categories;


    function Lookup_Category (The_Category : String) return Category is
      The_Index : Natural := 0;
    begin
      if Category_Names.Count = 0 then
        return Debug;
      end if;
      for Name of Category_Names loop
        The_Index := The_Index + 1;
        if The_Category = Strings.Lowercase_Of (Name) then
          if The_Index > 30 then
            return 0;
          else
            return 2 ** The_Index;
          end if;
        end if;
      end loop;
      return 0;
    end Lookup_Category;

  end Guarded;


  procedure Open (Use_Flush : Boolean := False) is
    Is_First_Open : Boolean;
    The_Module    : constant Windows.Module_Entry := Windows.Module_From_Address (Open'address);
    use type System.Address;
  begin
    begin
      declare
        Product_Name : constant String := Windows.Version.Product_Name;
      begin
        Guarded.Open (Product_Name, Use_Flush, Is_First_Open);
        if Is_First_Open then
          begin -- Add title lines (if possible)
            Guarded.Write (Product_Name &" version " & Windows.Version.Product_Version);
          exception
            when others => null;
          end;
        end if;
      end;
    exception
    when Windows.Version.No_Version_Info => -- Product name not available
      Guarded.Open (Windows.Name_Of (The_Module), Use_Flush, Is_First_Open);
    end;
    if Is_First_Open then
      begin -- Add timestamp (if possible)
        Guarded.Write ("Log created " & Windows.Image_Of (Windows.The_Time_Now));
        Guarded.Report_Categories;
      exception
        when others => null;
      end;
    end if;
  exception
  when others =>
    null;
  end Open;


  procedure Write (The_String   : String;
                   The_Category : Category := Debug) is
  begin
    Guarded.Write_To_Category (The_String, The_Category);
  exception
  when others =>
    null;
  end Write;


  procedure Write (Occurrence : Ada.Exceptions.Exception_Occurrence) is
  begin
    Write ("", Occurrence);
  end Write;


  procedure Write (Reason     : String;
                   Occurrence : Ada.Exceptions.Exception_Occurrence) is

    function Prefix return String is
    begin
      if Reason = "" then
        return "";
      end if;
      return Reason & Ascii.Lf;
    end Prefix;

  begin
    begin
      Write (Prefix & Exceptions.Information_Of (Occurrence));
    exception
    when Item: others =>
      Write (Prefix & "Log.Write failed for " & Ada.Exceptions.Exception_Name (Occurrence));
      Write (Exceptions.Information_Of (Item));
    end;
  exception
  when others =>
    Write (Prefix & " Exception handling failed");
  end Write;


  function "&" (Left, Right : Category) return Category is
  begin
    return Left or Right;
  end "&";


  function Lookup (The_Category : String) return Category is
    Lc_Category : constant String := Strings.Lowercase_Of (The_Category);
  begin
    Guarded.Write_To_Category ("Log.Lookup: Categories=" & The_Category, Debug);
    if Lc_Category = "debug" then
      return Debug;
    else
      return Guarded.Lookup_Category (Lc_Category);
    end if;
  end Lookup;

end Log;
