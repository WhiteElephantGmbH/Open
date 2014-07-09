-- *********************************************************************************************************************
-- *                                  Windows.Files.Io - File handling routines                                        *
-- *                           Supports File open and creation using Wide_String filenames                             *
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

with Ada.Unchecked_Conversion;
with Ada.Unchecked_Deallocation;
with Win32.Winbase;


package body Windows.Files.Io is

  Wide_Nul : constant Wide_Character := Wide_Character'first;
  Nul      : constant Character      := Character'first;

  subtype Terminators is Character range Ascii.Lf .. Ascii.Cr;

  Lookahead_Buffer_Size : constant := 500;

  subtype Lookahead_Buffer is String (Positive'first..Lookahead_Buffer_Size);
  type Buffer_Access is access Lookahead_Buffer;

  type File_Structure is record
    Handle      : Win32.Winnt.HANDLE;
    Base        : Natural := 0;
    Position    : Natural := 0;
    Extent      : Natural := 0;
    Buffer      : Buffer_Access;
    Count       : Natural := 0;
    Mode        : Open_Mode := Read_Only;
    Is_Modified : Boolean := False;
  end record;

  function Is_Already_Open (Filename : String) return Boolean is
    Name       : aliased constant String := Filename & Nul;
    Share_Mode : constant Win32.DWORD:= 0; -- Exclusive
    Handle     : Win32.Winnt.HANDLE;
    Is_Ok      : Win32.BOOL;
    use type Win32.Winnt.HANDLE;
  begin
    Handle := Win32.Winbase.CreateFileA (Win32.Addr(Name),
                                         Win32.Winnt.GENERIC_READ,
                                         Share_Mode,
                                         null,
                                         Win32.Winbase.OPEN_EXISTING,
                                         Win32.Winnt.FILE_ATTRIBUTE_NORMAL,
                                         System.Null_Address);
    if Handle = Win32.Winbase.INVALID_HANDLE_VALUE then
      return True;
    else
      Is_Ok := Win32.Winbase.CloseHandle (Handle);
      return False;
    end if;
  end Is_Already_Open;


  function Wide_Is_Already_Open (Filename : Wide_String) return Boolean is
    Name       : aliased constant Wide_String := Filename & Wide_Nul;
    Share_Mode : constant := 0;
    The_Handle : Win32.Winnt.HANDLE;
    Is_Ok      : Win32.BOOL;
    use type Win32.Winnt.HANDLE;
  begin
    The_Handle := Win32.Winbase.CreateFileW (Win32.Addr(Name),
                                             Win32.Winnt.GENERIC_READ,
                                             Win32.DWORD (Share_Mode),
                                             null,
                                             Win32.Winbase.OPEN_EXISTING,
                                             Win32.Winnt.FILE_ATTRIBUTE_NORMAL,
                                             System.Null_Address);
    if The_Handle = Win32.Winbase.INVALID_HANDLE_VALUE then
      return True;
    else
      Is_Ok := Win32.Winbase.CloseHandle (The_Handle);
      return False;
    end if;
  end Wide_Is_Already_Open;


  procedure Set_Position_To (File_Handle : Win32.Winnt.HANDLE;
                             Position    : Natural) is
    New_Position : Win32.DWORD;
    use type Win32.DWORD;
  begin
    New_Position := Win32.Winbase.SetFilePointer (File_Handle,
                                                  Win32.LONG(Position),
                                                  null,
                                                  Win32.Winbase.FILE_BEGIN);
    if New_Position = 16#FFFF_FFFF# then
      raise Unexpected_Error;
    end if;
  end Set_Position_To;


  function Set_Position_To_End (File_Handle : Win32.Winnt.HANDLE) return Natural is
    New_Position : Win32.DWORD;
    use type Win32.DWORD;
  begin
    New_Position := Win32.Winbase.SetFilePointer (File_Handle,
                                                  0,
                                                  null,
                                                  Win32.Winbase.FILE_END);
    if New_Position = 16#FFFF_FFFF# then
      raise Unexpected_Error;
    end if;
    return Natural (New_Position);
  end Set_Position_To_End;


  procedure Write_Buffer (Fsa : File_Structure_Access);


  procedure Read_Next_Buffer (Fsa : File_Structure_Access) is
    function Convert is new Ada.Unchecked_Conversion (Buffer_Access, Win32.LPVOID);
    function Convert is new Ada.Unchecked_Conversion (System.Address, Win32.LPDWORD);
    Amount_Read : aliased Natural;
    use type Win32.BOOL;
  begin
    if Fsa.Is_Modified then
      Write_Buffer (Fsa);
    end if;
    if Win32.Winbase.ReadFile (Fsa.Handle,
                               Convert (Fsa.Buffer),
                               Lookahead_Buffer_Size,
                               Convert (Amount_Read'address),
                               null) = Win32.TRUE
    then
      Fsa.Base := Fsa.Base + Fsa.Extent;
      Fsa.Extent := Amount_Read;
      Fsa.Position := 0;
    else
      raise End_Error;
    end if;
  end Read_Next_Buffer;


  function Next_Character_From (Fsa : File_Structure_Access) return Character is
    The_Character : Character;
    Next_Position : constant Positive := Fsa.Position + 1;
  begin
    The_Character := Fsa.Buffer (Next_Position);
    if Next_Position = Fsa.Extent then
      Read_Next_Buffer (Fsa);
    else
      Fsa.Position := Next_Position;
    end if;
    return The_Character;
  end Next_Character_From;


  function Next (File : Handle) return Element is
  begin
    if File.Fsa = null or else
       File.Fsa.Buffer = null
    then
      raise Bad_Handle;
    elsif File.Fsa.Extent = 0 then
      raise End_Error;
    end if;
    if Element'size = 8 then
      declare
        pragma Warnings (Off);
        function As_Element is new Ada.Unchecked_Conversion (Character, Element);
        pragma Warnings (On);
      begin
        return As_Element (Next_Character_From (File.Fsa));
      end;
    elsif (Element'size mod 8) = 0 then
      declare
        Item_Size : constant Natural := Element'size / 8;
        subtype Element_String is String (1..Item_Size);
        function As_Element is new Ada.Unchecked_Conversion (Element_String, Element);
        The_String : Element_String;
      begin
        for Index in The_String'range loop
          The_String (Index) := Next_Character_From (File.Fsa);
        end loop;
        return As_Element (The_String);
      end;
    else
      raise Bad_Size;
    end if;
  end Next;


  function Search_For_Terminator_In (Fsa : File_Structure_Access) return Natural is
  begin
    for Buffer_Index in Fsa.Position + 1 .. Fsa.Extent loop
      if Fsa.Buffer(Buffer_Index) in Terminators then
        return Buffer_Index;
      end if;
    end loop;
    return 0;  -- Not found
  end Search_For_Terminator_In;


  procedure Skip_Terminator (Fsa : File_Structure_Access) is
    The_Character : Character;
  begin
    if Next_Character_From (Fsa) = Ascii.Cr and then -- must lookahead
      Fsa.Position /= Fsa.Extent and then -- not end of file
      Fsa.Buffer(Fsa.Position + 1) = Ascii.Lf
    then -- Consume second character of terminator
      The_Character := Next_Character_From (Fsa);
    end if;
  end Skip_Terminator;


  function Next_Line_From (Fsa : File_Structure_Access) return String is
    Terminator_Position :          Natural;
    Start_Position      : constant Natural := Fsa.Position + 1;
  begin
    Terminator_Position := Search_For_Terminator_In (Fsa);
    if Terminator_Position = 0 then -- Not found
      if Fsa.Extent = Lookahead_Buffer'last then
        declare
          Partial_String : constant String := Fsa.Buffer (Start_Position .. Lookahead_Buffer'last);
        begin
          Read_Next_Buffer (Fsa);
          return Partial_String & Next_Line_From (Fsa);
        end;
      else -- Partial buffer
        Terminator_Position := Fsa.Extent;
        Fsa.Position := Fsa.Extent;  -- Flag end of file
        return Fsa.Buffer (Start_Position..Terminator_Position);
      end if;
    else
      Fsa.Position := Terminator_Position - 1;
      declare
        Return_String : constant String := Fsa.Buffer (Start_Position..Terminator_Position - 1);
      begin
        Skip_Terminator (Fsa);
        return Return_String;
      end;
    end if;
  end Next_Line_From;


  function Next_Line_From (File : Handle) return String is
  begin
    if File.Fsa = null or else
       File.Fsa.Buffer = null
    then
      raise Bad_Handle;
    end if;
    return Next_Line_From (File.Fsa);
  end Next_Line_From;


  function Search_For_Wide_Terminator_In (Fsa : File_Structure_Access) return Natural is
    The_Character : Character;
    Buffer_Index  : Natural := Fsa.Position + 1;
  begin
    while Buffer_Index < Fsa.Extent loop
      The_Character := Fsa.Buffer(Buffer_Index);
      if (The_Character in Terminators) or else (The_Character = Character'val (16#85#)) then
        if Fsa.Buffer(Buffer_Index + 1) = Nul then
          return Buffer_Index;
        end if;
      elsif (The_Character = Character'val(16#28#)) or (The_Character = Character'val(16#29#)) then
        if  Fsa.Buffer(Buffer_Index + 1) = Character'val(16#20#) then
          return Buffer_Index;
        end if;
      end if;
      Buffer_Index := Buffer_Index + 2;
    end loop;
    return 0;  -- Not found
  end Search_For_Wide_Terminator_In;


  function Next_Wide_From (Fsa : File_Structure_Access) return String;

  function Next_Wide_From (Fsa    : File_Structure_Access;
                           Prefix : Character) return String is
    Next_Character : constant Character := Next_Character_From (Fsa);
  begin
    if (Prefix in Terminators) or else (Prefix = Character'val (16#85#)) then
      if Next_Character = Nul then
        return "";  -- Was a split terminator
      end if;
    elsif (Prefix = Character'val(16#28#)) or (Prefix = Character'val(16#29#)) then
      if Next_Character = Character'val(16#20#) then
        return "";  -- Was a split terminator
      end if;
    end if;
    return Prefix & Next_Character & Next_Wide_From (Fsa);
  end Next_Wide_From;


  function Next_Wide_From (Fsa : File_Structure_Access) return String is
    Terminator_Position : Natural;
    Start_Position      : constant Natural := Fsa.Position + 1;
  begin
    Terminator_Position := Search_For_Wide_Terminator_In (Fsa);
    if Terminator_Position = 0 then -- Not found
      if Fsa.Extent = Lookahead_Buffer'last then
        declare
          Odd_Byte       : constant Boolean := ((Lookahead_Buffer'last - Start_Position) mod 2) = 0;
          Last_Byte      : constant Character := Fsa.Buffer (Lookahead_Buffer'last);
          Partial_String : constant String := Fsa.Buffer (Start_Position .. Lookahead_Buffer'last);
        begin
          Read_Next_Buffer (Fsa);
          if Odd_Byte then
            return Partial_String (Partial_String'first..Partial_String'last - 1) & Next_Wide_From (Fsa, Last_Byte);
          else
            return Partial_String & Next_Wide_From (Fsa);
          end if;
        end;
      else -- Partial buffer
        Terminator_Position := Fsa.Extent;
        Fsa.Position := Fsa.Extent;  -- Flag end of file
        return Fsa.Buffer (Start_Position..Terminator_Position);
      end if;
    else -- Complete terminator found in buffer
      Fsa.Position := Terminator_Position; -- Last byte was start of terminator
      declare
        Return_String : constant String := Fsa.Buffer (Start_Position..Terminator_Position - 1);
        Next_Byte     : constant Character := Next_Character_From (Fsa); -->UD: read ahead
      begin
        return Return_String;
      end;
    end if;
  end Next_Wide_From;


  function Next_Line_From (File : Handle) return Wide_String is
  begin
    if File.Fsa = null or else
       File.Fsa.Buffer = null
    then
      raise Bad_Handle;
    end if;
    declare
      Narrow : constant String := Next_Wide_From (File.Fsa);
    begin
      if Narrow'length mod 2 = 1 then -- Not enough bytes!
        raise End_Error;
      end if;
      declare
        subtype Wide is Wide_String (Narrow'first..Narrow'first + (Narrow'length / 2) - 1);
        function As_Wide is new Ada.Unchecked_Conversion (String, Wide);
      begin
        return As_Wide (Narrow);
      end;
    end;
  end Next_Line_From;


  procedure Write_Buffer (Fsa : File_Structure_Access) is
    function Convert is new Ada.Unchecked_Conversion (Buffer_Access, Win32.LPVOID);
    function Convert is new Ada.Unchecked_Conversion (System.Address, Win32.LPDWORD);
    Amount_Written  : aliased Natural;
    use type Win32.BOOL;
  begin
    if Fsa.Mode /= Append then -- No need to reposition
      Set_Position_To (Fsa.Handle, Fsa.Base);
    end if;
    if Fsa.Extent /= 0 then
      if Win32.Winbase.WriteFile (Fsa.Handle,
                                  Convert (Fsa.Buffer),
                                  Win32.DWORD (Fsa.Extent),
                                  Convert (Amount_Written'address),
                                  null) = Win32.TRUE and then
        Amount_Written = Fsa.Extent -- Managed to write all we wanted to
      then
        Fsa.Is_Modified := False;
        if Fsa.Mode = Append then
          Fsa.Base := Fsa.Base + Fsa.Extent;
          Fsa.Position := 0;
          Fsa.Extent := 0;
        else
          Read_Next_Buffer (Fsa);
        end if;
      else
        raise End_Error;
      end if;
    end if;
  end Write_Buffer;


  procedure Write_Character_To (Fsa           : File_Structure_Access;
                                The_Character : Character) is
    Next_Position : constant Positive := Fsa.Position + 1;
  begin
    Fsa.Is_Modified := True;
    Fsa.Buffer (Next_Position) := The_Character;
    if Next_Position > Fsa.Extent then
      Fsa.Extent := Next_Position;
    end if;
    Fsa.Position := Next_Position;
    if Next_Position = Lookahead_Buffer_Size then
      Write_Buffer (Fsa);
    end if;
  end Write_Character_To;


  procedure Write (Item : Element;
                   File : Handle) is
  begin
    if Element'size = 8 then
      if File.Fsa = null or else
         File.Fsa.Buffer = null
      then
        raise Bad_Handle;
      else
        declare
          pragma Warnings (Off);
          function Convert is new Ada.Unchecked_Conversion (Element, Character);
          pragma Warnings (On);
        begin
          Write_Character_To (File.Fsa, Convert (Item));
        end;
      end if;
    elsif (Element'size mod 8) = 0 then -- full bytes
      declare
        Item_Size : constant Natural := Element'size / 8;
        subtype Element_String is String (1..Item_Size);
        function As_String is new Ada.Unchecked_Conversion (Element, Element_String);
      begin
        Write_String (As_String (Item), File);
      end;
    else
      raise Bad_Size;
    end if;
  end Write;


  procedure Write_String (Item : String;
                          File : Handle) is
  begin
    if File.Fsa = null or else
       File.Fsa.Buffer = null
    then
      raise Bad_Handle;
    elsif Item'length /= 0 then
      declare
        Amount_To_Xfer : Natural := Item'length;
        Next_Position  : Positive := File.Fsa.Position + 1;
        Start_Position : Positive := Item'first;
        Chunk_Size     : Positive;
      begin
        File.Fsa.Is_Modified := True;
        while Amount_To_Xfer /= 0 loop
          if Amount_To_Xfer <= (Lookahead_Buffer_Size - Next_Position) then
            File.Fsa.Buffer (Next_Position .. File.Fsa.Position + Amount_To_Xfer) :=
                       Item (Start_Position .. Start_Position + Amount_To_Xfer - 1);
            File.Fsa.Position := File.Fsa.Position + Amount_To_Xfer;
            if File.Fsa.Position > File.Fsa.Extent then
              File.Fsa.Extent := File.Fsa.Position;
            end if;
            Amount_To_Xfer := 0;
          else
            Chunk_Size := Lookahead_Buffer_Size - File.Fsa.Position;
            File.Fsa.Buffer (Next_Position .. Lookahead_Buffer_Size) :=
                       Item (Start_Position .. Start_Position + Chunk_Size - 1);
            Start_Position := Start_Position + Chunk_Size;
            Amount_To_Xfer := Amount_To_Xfer - Chunk_Size;
            File.Fsa.Extent := Lookahead_Buffer_Size;
            Write_Buffer (File.Fsa);
            Next_Position := 1;
          end if;
        end loop;
      end;
    end if;
  end Write_String;


  procedure Write_Wide (Item : Wide_String;
                        File : Handle) is
  begin
    if Item'length /= 0 then
      declare
        subtype Narrow is String (Item'first..Item'first + (Item'length * 2) - 1);
        function As_Narrow is new Ada.Unchecked_Conversion (Wide_String, Narrow);
      begin
        Write_String (As_Narrow (Item), File);
      end;
    end if;
  end Write_Wide;


  procedure Write_Line (Item : String;
                        File : Handle) is
  begin
    Write_String (Item & Ascii.Cr & Ascii.Lf, File);
  end Write_Line;


  procedure Write_Wide_Line (Item : Wide_String;
                             File : in out Handle) is
    Lf : constant Wide_Character := Wide_Character'val(10);
  begin
    Write_Wide (Item &  Lf, File);
  end Write_Wide_Line;


  procedure Set_Position_In (File     : Handle;
                             Position : Positive) is
    Absolute_Position : constant Natural := Position - 1;
  begin
    if File.Fsa = null or else
       File.Fsa.Buffer = null
    then
      raise Bad_Handle;
    elsif File.Fsa.Mode = Append then
      raise Wrong_Mode;
    elsif (Absolute_Position < File.Fsa.Base) or
          (Position > File.Fsa.Base + File.Fsa.Extent)
    then  -- Must reposition and reload the lookahead buffer
      if File.Fsa.Is_Modified then
        Write_Buffer (File.Fsa);
        if (Absolute_Position >= File.Fsa.Base) and
           (Position <= File.Fsa.Base + File.Fsa.Extent)
        then -- New position in readahead buffer
          File.Fsa.Position := Absolute_Position - File.Fsa.Base;
          return;
        end if;
      end if;
      Set_Position_To (File.Fsa.Handle, Absolute_Position);
      Read_Next_Buffer (File.Fsa);
      File.Fsa.Base := Absolute_Position;
    else -- within the current buffer
      File.Fsa.Position := Absolute_Position - File.Fsa.Base;
    end if;
  end Set_Position_In;


  procedure Reset (File : Handle) is
  begin
    Set_Position_In (File, 1);
  end Reset;


  function Position_In (File : Handle) return Positive is
  begin
    if File.Fsa = null or else
       File.Fsa.Buffer = null
    then
      raise Bad_Handle;
    end if;
    return File.Fsa.Base + File.Fsa.Position + 1;
  end Position_In;


  function Initialise (File_Handle : Win32.Winnt.HANDLE;
                       Mode        : Open_Mode) return Handle is
    File : Handle;
  begin
    File.Fsa := new File_Structure;
    File.Fsa.Handle := File_Handle;
    File.Fsa.Buffer := new Lookahead_Buffer;
    if Mode = Append then
      File.Fsa.Base := Set_Position_To_End (File_Handle);
    else
      Read_Next_Buffer (File.Fsa);
      File.Fsa.Base := 0;
    end if;
    File.Fsa.Mode := Mode;
    File.Fsa.Count := 1;
    return File;
  end Initialise;


  function Open (Filename : String;
                 Mode     : Open_Mode := Read_Only) return Handle is
    Name           : aliased constant String := Filename & Nul;
    The_Handle     : Win32.Winnt.HANDLE;
    Share_Mode     : Win32.DWORD := 0;
    Desired_Access : Win32.DWORD := Win32.Winnt.GENERIC_READ;
    use type Win32.Winnt.HANDLE;
    use type Win32.DWORD;
  begin
    if Mode = Read_Only then
      Share_Mode := Win32.Winnt.FILE_SHARE_READ;
    else
      Desired_Access := Desired_Access + Win32.Winnt.GENERIC_WRITE;
    end if;
    The_Handle := Win32.Winbase.CreateFileA (Win32.Addr(Name),
                                             Desired_Access,
                                             Share_Mode,
                                             null,
                                             Win32.Winbase.OPEN_EXISTING,
                                             Win32.Winnt.FILE_ATTRIBUTE_NORMAL,
                                             System.Null_Address);
    if The_Handle = Win32.Winbase.INVALID_HANDLE_VALUE then
      raise File_Not_Found;
    end if;
    return Initialise (The_Handle, Mode);
  end Open;


  function Open_Wide (Filename : Wide_String;
                      Mode     : Open_Mode := Read_Only) return Handle is
    Name           : aliased constant Wide_String := Filename & Wide_Nul;
    The_Handle     : Win32.Winnt.HANDLE;
    Share_Mode     : Win32.DWORD := 0;
    Desired_Access : Win32.DWORD := Win32.Winnt.GENERIC_READ;
    use type Win32.Winnt.HANDLE;
    use type Win32.DWORD;
  begin
    if Mode = Read_Only then
      Share_Mode := Win32.Winnt.FILE_SHARE_READ;
    else
      Desired_Access := Desired_Access + Win32.Winnt.GENERIC_WRITE;
    end if;
    The_Handle := Win32.Winbase.CreateFileW (Win32.Addr(Name),
                                             Desired_Access,
                                             Share_Mode,
                                             null,
                                             Win32.Winbase.OPEN_EXISTING,
                                             Win32.Winnt.FILE_ATTRIBUTE_NORMAL,
                                             System.Null_Address);
    if The_Handle = Win32.Winbase.INVALID_HANDLE_VALUE then
      raise File_Not_Found;
    end if;
    return Initialise (The_Handle, Mode);
  end Open_Wide;


  function Is_Open (File : Handle) return Boolean is
  begin
    return File.Fsa /= null and then File.Fsa.Buffer /= null;
  end Is_Open;


  function Create (Filename : String;
                   New_File : Boolean := False;
                   Sharable : Boolean := False) return Handle is
    Name       : aliased constant String := Filename & Nul;
    The_Handle : Win32.Winnt.HANDLE;
    Creation   : Win32.DWORD := Win32.Winbase.CREATE_ALWAYS;
    Share_Mode : Win32.DWORD := 0; -- Exclusive access;
    use type Win32.Winnt.HANDLE;
    use type Win32.DWORD;
  begin
    if New_File then
      Creation := Win32.Winbase.CREATE_NEW;
    end if;
    if Sharable then
      Share_Mode := Share_Mode + Win32.Winnt.FILE_SHARE_READ;
    end if;
    The_Handle := Win32.Winbase.CreateFileA (Win32.Addr(Name),
                                             Win32.Winnt.GENERIC_WRITE,
                                             Share_Mode,
                                             null,
                                             Creation,
                                             Win32.Winnt.FILE_ATTRIBUTE_NORMAL,
                                             System.Null_Address);
    if The_Handle = Win32.Winbase.INVALID_HANDLE_VALUE then
      raise Creation_Failure;
    end if;
    return Initialise (The_Handle, Append);
  end Create;


  function Create_Wide (Filename : Wide_String;
                        New_File : Boolean := False;
                        Sharable : Boolean := False) return Handle is
    Name       : aliased constant Wide_String := Filename & Wide_Nul;
    The_Handle : Win32.Winnt.HANDLE;
    Creation   : Win32.DWORD := Win32.Winbase.CREATE_ALWAYS;
    Share_Mode : Win32.DWORD := 0; -- Exclusive access;
    use type Win32.Winnt.HANDLE;
    use type Win32.DWORD;
  begin
    if New_File then
      Creation := Win32.Winbase.CREATE_NEW;
    end if;
    if Sharable then
      Share_Mode := Share_Mode + Win32.Winnt.FILE_SHARE_READ;
    end if;
    The_Handle := Win32.Winbase.CreateFileW (Win32.Addr(Name),
                                             Win32.Winnt.GENERIC_WRITE,
                                             Share_Mode,
                                             null,
                                             Creation,
                                             Win32.Winnt.FILE_ATTRIBUTE_NORMAL,
                                             System.Null_Address);
    if The_Handle = Win32.Winbase.INVALID_HANDLE_VALUE then
      raise Creation_Failure;
    end if;
    return Initialise (The_Handle, Append);
  end Create_Wide;


  function At_End_Of (File : Handle) return Boolean is
  begin
    if File.Fsa = null or else
       File.Fsa.Buffer = null
    then
      raise Bad_Handle;
    end if;
    return File.Fsa.Position = File.Fsa.Extent;
  end At_End_Of;


  procedure Flush (File : Handle) is
    Is_Ok : Win32.BOOL;
  begin
    if File.Fsa = null or else
       File.Fsa.Buffer = null
    then
      raise Bad_Handle;
    else
      if File.Fsa.Mode /= Read_Only then
        Write_Buffer (File.Fsa); -- Flush any partial buffers
      end if;
      Is_Ok := Win32.Winbase.FlushFileBuffers (File.Fsa.Handle);
    end if;
  end Flush;


  procedure Close (The_File : in out Handle) is
    Is_Ok : Win32.BOOL;
    procedure Dispose is new Ada.Unchecked_Deallocation (Lookahead_Buffer, Buffer_Access);
  begin
    if The_File.Fsa = null or else
       The_File.Fsa.Buffer = null
    then
      raise Bad_Handle;
    else
      if The_File.Fsa.Mode /= Read_Only then
        Write_Buffer (The_File.Fsa); -- Flush any partial buffers
      end if;
      Dispose (The_File.Fsa.Buffer);
      Is_Ok := Win32.Winbase.CloseHandle (The_File.Fsa.Handle);
    end if;
  end Close;


  procedure Adjust (The_File : in out Handle) is
  begin
    if The_File.Fsa /= null then
      The_File.Fsa.Count := The_File.Fsa.Count + 1;
    end if;
  end Adjust;


  procedure Finalize (The_File : in out Handle) is
    procedure Dispose is new Ada.Unchecked_Deallocation (File_Structure, File_Structure_Access);
  begin
    if The_File.Fsa /= null then
      The_File.Fsa.Count := The_File.Fsa.Count - 1;
      if The_File.Fsa.Count = 0 then
        if The_File.Fsa.Buffer /= null then
          begin
            Close (The_File);
          exception
            when others =>
              null;  -- Ignore any erros closing the file.
          end;
        end if;
        Dispose (The_File.Fsa);
      end if;
    end if;
  end Finalize;

end Windows.Files.Io;
