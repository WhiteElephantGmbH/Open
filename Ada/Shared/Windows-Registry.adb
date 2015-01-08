-- *********************************************************************************************************************
-- *                       (c) 2002 .. 2015 by White Elephant GmbH, Schaffhausen, Switzerland                          *
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
with Win32.Winerror;
with Win32.Winnt;
with Win32.Winreg;

package body Windows.Registry is

  pragma Linker_Options ("-lntdll");

  Nul      : constant Character      := Character'first;
  Wide_Nul : constant Wide_Character := Wide_Character'first;
  Nul_Name : aliased constant String := "" & Nul;

  function Nt_Query_Key (Key                   : Win32.Winreg.HKEY;
                         Key_Information_Class : Natural;
                         Key_Information       : System.Address;
                         Length                : Win32.ULONG;
                         Result_Length         : Win32.PULONG) return Win32.ULONG;
  pragma Import(Stdcall, Nt_Query_Key, "NtQueryKey");


  Status_Buffer_Too_Small : constant := 16#C0000023#; -- From Ntstatus.h
  Key_Name_Information    : constant := 3;

  The_Root        : Win32.Winreg.HKEY := Win32.Winreg.HKEY_CURRENT_USER;
  The_Current_Key : Win32.Winreg.HKEY := The_Root;


  procedure Close_Current_Key is
    use type Win32.Winreg.HKEY;
    Return_Code : Win32.LONG; pragma Unreferenced (Return_Code);
  begin
    if (The_Current_Key /= Win32.Winreg.HKEY_CURRENT_USER) and
       (The_Current_Key /= Win32.Winreg.HKEY_LOCAL_MACHINE)
    then
      Return_Code := Win32.Winreg.RegCloseKey (The_Current_Key);
    end if;
  end Close_Current_Key;


  procedure Create_Key (The_Parent : Win32.Winreg.HKEY;
                        The_Key    : String) is
    Key        : aliased constant String := The_Key & Nul;
    Key_Access : constant := Win32.Winnt.KEY_READ +
                             Win32.Winnt.KEY_SET_VALUE +
                             Win32.Winnt.KEY_CREATE_SUB_KEY +
                             Win32.Winnt.DELETE;
    -- Requesting Win32.Winnt.Key_All_Access fails for keys under Local_Machine
    -- because "all" includes Write_Dac, Write_Owner and Key_Create_Link
    use type Win32.LONG;
    New_Key     : aliased Win32.Winreg.HKEY;
    Disposition : aliased Win32.DWORD;
  begin
    if Win32.Winreg.RegCreateKeyEx (The_Parent,
                                    Win32.Addr(Key),
                                    0,
                                    Win32.Addr(Nul_Name),
                                    Win32.Winnt.REG_OPTION_NON_VOLATILE,
                                    Key_Access,
                                    null,
                                    New_Key'unchecked_access,
                                    Disposition'unchecked_access) /= Win32.Winerror.ERROR_SUCCESS
    then
      raise Key_Creation_Failure;
    end if;
    Close_Current_Key;
    The_Current_Key := New_Key;
  end Create_Key;


  procedure Create_Key (The_Key : String) is
  begin
    Create_Key (The_Root, The_Key);
  end Create_Key;


  procedure Create_Relative_Key (The_Key : String) is
  begin
    Create_Key (The_Current_Key, The_Key);
  end Create_Relative_Key;


  procedure Set_Current_Key (The_Key : String) is
    Key            : aliased constant String := The_Key & Nul;
    The_Key_Access : constant := Win32.Winnt.KEY_READ +
                                 Win32.Winnt.KEY_SET_VALUE +
                                 Win32.Winnt.KEY_CREATE_SUB_KEY +
                                 Win32.Winnt.DELETE;
    -- Requesting Win32.Winnt.Key_All_Access fails for keys under Local_Machine
    -- because "all" includes Write_Dac, Write_Owner and Key_Create_Link
    Return_Code : Win32.LONG;
    New_Key     : aliased Win32.Winreg.HKEY;
    use type Win32.LONG;
  begin
    if The_Key = "" then
      New_Key := The_Root;
    else
      Return_Code := Win32.Winreg.RegOpenKeyExA (The_Root,
                                                 Win32.Addr(Key),
                                                 0,
                                                 The_Key_Access,
                                                 New_Key'unchecked_access);
      if Return_Code = Win32.Winerror.ERROR_ACCESS_DENIED then -- Try again for read only
        Return_Code := Win32.Winreg.RegOpenKeyExA (The_Root,
                                                   Win32.Addr(Key),
                                                   0,
                                                   Win32.Winnt.KEY_READ,
                                                   New_Key'unchecked_access);
      end if;
      if Return_Code /= Win32.Winerror.ERROR_SUCCESS then
        raise Key_Not_Found;
      end if;
    end if;
    Close_Current_Key;
    The_Current_Key := New_Key;
  end Set_Current_Key;


  procedure Set_Current_Key (The_Key : Wide_String) is
    Key            : aliased constant Wide_String := The_Key & Wide_Nul;
    The_Key_Access : constant := Win32.Winnt.KEY_READ +
                                 Win32.Winnt.KEY_SET_VALUE +
                                 Win32.Winnt.KEY_CREATE_SUB_KEY +
                                 Win32.Winnt.DELETE;
    -- Requesting Win32.Winnt.Key_All_Access fails for keys under Local_Machine
    -- because "all" includes Write_Dac, Write_Owner and Key_Create_Link
    Return_Code : Win32.LONG;
    New_Key     : aliased Win32.Winreg.HKEY;
    use type Win32.LONG;
  begin
    if The_Key = "" then
      New_Key := The_Root;
    else
      Return_Code := Win32.Winreg.RegOpenKeyExW (The_Root,
                                                 Win32.Addr(Key),
                                                 0,
                                                 The_Key_Access,
                                                 New_Key'unchecked_access);
      if Return_Code = Win32.Winerror.ERROR_ACCESS_DENIED then -- Try again for read only
        Return_Code := Win32.Winreg.RegOpenKeyExW (The_Root,
                                                   Win32.Addr(Key),
                                                   0,
                                                   Win32.Winnt.KEY_READ,
                                                   New_Key'unchecked_access);
      end if;
      if Return_Code /= Win32.Winerror.ERROR_SUCCESS then
        raise Key_Not_Found;
      end if;
    end if;
    Close_Current_Key;
    The_Current_Key := New_Key;
  end Set_Current_Key;


  function Current_Key return Wide_String is
    The_Size : aliased Win32.ULONG := 0;
    use type Win32.Winreg.HKEY;
    use type Win32.ULONG;
  begin
    if The_Current_Key = The_Root then
      return "";
    else
      if Nt_Query_Key (The_Current_Key,
                       Key_Name_Information,
                       System.Null_Address,
                       0,
                       The_Size'unchecked_access) = Status_Buffer_Too_Small
      then -- Have found out how big a buffer is required
        declare
          Name_Length : constant Natural
                      := Natural (The_Size * System.Storage_Unit - Win32.ULONG'size) / Wide_Character'size;
          type Key_Name_Information_Structure is
            record
              Length : Win32.ULONG; -->UD: Placeholder
              Name   : Wide_String (1..Name_Length);
            end record;
          The_Buffer      : aliased Key_Name_Information_Structure;
          Separator_Count : Natural := 4;
        begin
          if The_Root = Win32.Winreg.HKEY_LOCAL_MACHINE then
            Separator_Count := 3;
          end if;
          if Nt_Query_Key (The_Current_Key,
                           Key_Name_Information,
                           The_Buffer'address,
                           Win32.ULONG(Key_Name_Information_Structure'size / System.Storage_Unit),
                           The_Size'unchecked_access) = Win32.Winerror.NOERROR
          then  -- Chop off root prefix
            for Index in The_Buffer.Name'range loop
              if The_Buffer.Name(Index) = '\' then
                Separator_Count := Separator_Count - 1;
                if Separator_Count = 0 then
                  return The_Buffer.Name (Index + 1 .. The_Buffer.Name'last);
                end if;
              end if;
            end loop;
          end if;
        end;
      end if;
    end if;
    raise Key_Not_Found;
  end Current_Key;


  procedure Define_Root (Branch : Root_Branch) is
  begin
    case Branch is
      when Current_User  => The_Root := Win32.Winreg.HKEY_CURRENT_USER;
      when Local_Machine => The_Root := Win32.Winreg.HKEY_LOCAL_MACHINE;
    end case;
    Close_Current_Key;
    The_Current_Key := The_Root;
  end Define_Root;


  function Current_Root return Root_Branch is
    use type Win32.Winreg.HKEY;
  begin
    if The_Root = Win32.Winreg.HKEY_LOCAL_MACHINE then
      return Local_Machine;
    else
      return Current_User;
    end if;
  end Current_Root;


  procedure Delete_Key (The_Key : String) is
    Key  : aliased constant String := The_Key & Nul;
    Temp : Win32.LONG; pragma Unreferenced (Temp);
  begin
    Temp := Win32.Winreg.RegDeleteKey (The_Root, Win32.Addr(Key));
  end Delete_Key;


  procedure Create_Entry (The_Entry : String;
                          The_Value : Unsigned.Longword) is
    function Convert is new Ada.Unchecked_Conversion(System.Address, Win32.PCBYTE);
    Entry_Name : aliased constant String := The_Entry & Nul;
    use type Win32.LONG;
  begin
    if Win32.Winreg.RegSetValueExA (The_Current_Key,
                                    Win32.Addr(Entry_Name),
                                    0,
                                    Win32.Winnt.REG_DWORD,
                                    Convert(The_Value'address),
                                    4) /= Win32.Winerror.ERROR_SUCCESS
    then
      raise Entry_Creation_Failure;
    end if;
  end Create_Entry;


  procedure Create_Entry (The_Entry : String;
                          The_Value : String) is
    function Convert is new Ada.Unchecked_Conversion(System.Address, Win32.PCBYTE);
    Entry_Name  : aliased constant String := The_Entry & Nul;
    Temp_String : aliased constant String := The_Value & Nul;
    use type Win32.LONG;
  begin
    if Win32.Winreg.RegSetValueExA (The_Current_Key,
                                    Win32.Addr(Entry_Name),
                                    0,
                                    Win32.Winnt.REG_SZ,
                                    Convert (Temp_String'address),
                                    Temp_String'length) /= Win32.Winerror.ERROR_SUCCESS
    then
      raise Entry_Creation_Failure;
    end if;
  end Create_Entry;


  procedure Create_Wide_Entry (The_Entry : String;
                               The_Value : Wide_String) is
    function Convert is new Ada.Unchecked_Conversion(System.Address, Win32.PCBYTE);
    Entry_Name  : aliased constant Wide_String := Ada.Characters.Handling.To_Wide_String(The_Entry) & Wide_Nul;
    Temp_String : aliased constant Wide_String := The_Value & Wide_Character'first ;
    use type Win32.LONG;
  begin
    if Win32.Winreg.RegSetValueExW (The_Current_Key,
                                    Win32.Addr(Entry_Name),
                                    0,
                                    Win32.Winnt.REG_SZ,
                                    Convert (Temp_String'address),
                                    Win32.ULONG(Temp_String'length * 2)) /= Win32.Winerror.ERROR_SUCCESS
    then
      raise Entry_Creation_Failure;
    end if;
  end Create_Wide_Entry;


  procedure Delete_Entry (The_Entry : String) is
    Entry_Name : aliased constant String := The_Entry & Nul;
    use type Win32.LONG;
  begin
    if Win32.Winreg.RegDeleteValue(The_Current_Key, Win32.Addr(Entry_Name)) /= Win32.Winerror.ERROR_SUCCESS then
      raise Entry_Not_Found;
    end if;
  end Delete_Entry;


  function Value_Of (The_Entry : String) return Unsigned.Longword is
    function Convert is new Ada.Unchecked_Conversion(System.Address, Win32.PBYTE);
    Entry_Name  : aliased constant String := The_Entry & Nul;
    Entry_Kind  : aliased Win32.DWORD;
    The_Value   : aliased Unsigned.Longword;
    The_Size    : aliased Win32.DWORD := 4;
    Return_Code : Win32.LONG;
    use type Win32.LONG;
    use type Win32.DWORD;
  begin
    Return_Code := Win32.Winreg.RegQueryValueExA (The_Current_Key,
                                                  Win32.Addr(Entry_Name),
                                                  null,
                                                  Entry_Kind'unchecked_access,
                                                  Convert(The_Value'address),
                                                  The_Size'unchecked_access);
    if Return_Code /= Win32.Winerror.ERROR_SUCCESS then
      raise Entry_Not_Found;
    elsif Entry_Kind = Win32.Winnt.REG_DWORD then
      return The_Value;
    else
      raise Wrong_Type;
    end if;
  end Value_Of;


  function Value_Of (The_Entry : String) return String is
    function Convert is new Ada.Unchecked_Conversion(System.Address, Win32.PBYTE);
    function Convert is new Ada.Unchecked_Conversion(System.Address, Win32.PULONG);
    Entry_Name      : aliased constant String := The_Entry & Nul;
    Entry_Kind      : aliased Win32.DWORD;
    Max_String_Size : constant := 250;
    The_Size        : aliased Natural := Max_String_Size;
    The_Value       : String (1..Max_String_Size);
    Return_Code     : Win32.LONG;
    use type Win32.LONG;
    use type Win32.DWORD;
  begin
    Return_Code := Win32.Winreg.RegQueryValueExA (The_Current_Key,
                                                  Win32.Addr(Entry_Name),
                                                  null,
                                                  Entry_Kind'unchecked_access,
                                                  Convert(The_Value'address),
                                                  Convert(The_Size'address));
    if Return_Code = Win32.Winerror.ERROR_MORE_DATA then
      raise Overflow;
    elsif Return_Code /= Win32.Winerror.ERROR_SUCCESS then
      raise Entry_Not_Found;
    elsif Entry_Kind = Win32.Winnt.REG_SZ then
      return The_Value (1..The_Size - 1);
    else
      raise Wrong_Type;
    end if;
  end Value_Of;


  function Value_Of (The_Entry : String) return Wide_String is
    function Convert is new Ada.Unchecked_Conversion(System.Address, Win32.PBYTE);
    function Convert is new Ada.Unchecked_Conversion(System.Address, Win32.PULONG);
    Entry_Name      : aliased constant Wide_String := Ada.Characters.Handling.To_Wide_String(The_Entry) & Wide_Nul;
    Entry_Kind      : aliased Win32.DWORD;
    Max_String_Size : constant := 250;
    The_Size        : aliased Natural := Max_String_Size;
    The_Value       : Wide_String (1..Max_String_Size);
    Return_Code     : Win32.LONG;
    use type Win32.LONG;
    use type Win32.DWORD;
  begin
    Return_Code := Win32.Winreg.RegQueryValueExW (The_Current_Key,
                                                  Win32.Addr(Entry_Name),
                                                  null,
                                                  Entry_Kind'unchecked_access,
                                                  Convert(The_Value'address),
                                                  Convert(The_Size'address));
    if Return_Code = Win32.Winerror.ERROR_MORE_DATA then
      raise Overflow;
    elsif Return_Code /= Win32.Winerror.ERROR_SUCCESS then
      raise Entry_Not_Found;
    elsif Entry_Kind = Win32.Winnt.REG_SZ then
      return The_Value (1..The_Size - 1);
    else
      raise Wrong_Type;
    end if;
  end Value_Of;


  function Value_Of (The_Entry : String) return Strings.Item is
    function Convert is new Ada.Unchecked_Conversion(System.Address, Win32.PBYTE);
    function Convert is new Ada.Unchecked_Conversion(System.Address, Win32.PULONG);
    Entry_Name      : aliased constant String := The_Entry & Nul;
    Entry_Kind      : aliased Win32.DWORD;
    Max_String_Size : constant := 250;
    The_Size        : aliased Natural := Max_String_Size;
    The_Value       : String (1..Max_String_Size);
    Return_Code     : Win32.LONG;
    use type Win32.LONG;
    use type Win32.DWORD;
    use type Strings.Item;
  begin
    Return_Code := Win32.Winreg.RegQueryValueExA (The_Current_Key,
                                                  Win32.Addr(Entry_Name),
                                                  null,
                                                  Entry_Kind'unchecked_access,
                                                  Convert(The_Value'address),
                                                  Convert(The_Size'address));
    if Return_Code = Win32.Winerror.ERROR_MORE_DATA then
      raise Overflow;
    elsif Return_Code /= Win32.Winerror.ERROR_SUCCESS then
      raise Entry_Not_Found;
    elsif Entry_Kind = Win32.Winnt.REG_SZ then
      return +The_Value (1..The_Size - 1);
    elsif Entry_Kind = Win32.Winnt.REG_MULTI_SZ then
      return Strings.Item_Of (The_Value (1..The_Size - 2), Ascii.Nul);
    else
      raise Wrong_Type;
    end if;
  end Value_Of;


  function Type_Of (The_Entry : String) return Entry_Type is
    Entry_Name : aliased constant String := The_Entry & Nul;
    The_Type   : aliased Win32.DWORD;
    use type Win32.LONG;
    use type Win32.DWORD;
  begin
    if Win32.Winreg.RegQueryValueEx (The_Current_Key,
                                     Win32.Addr(Entry_Name),
                                     null,
                                     The_Type'unchecked_access,
                                     null,
                                     null) = Win32.Winerror.ERROR_SUCCESS
    then -- Entry exists
      case The_Type is
      when Win32.Winnt.REG_MULTI_SZ =>
        return Reg_Multi_Sz;
      when Win32.Winnt.REG_SZ =>
        return Reg_Sz;
      when Win32.Winnt.REG_DWORD =>
        return Reg_Dword;
      when others =>
        return Non_Existant; -- Type not supported.
      end case;
    end if;
    return Non_Existant; -- Doesn't exist.
  end Type_Of;


  procedure Iterate (The_Callback : All_Entries) is
    function Convert is new Ada.Unchecked_Conversion(System.Address, Win32.PCHAR);
    function Convert is new Ada.Unchecked_Conversion(System.Address, Win32.PULONG);
    Max_Name_Size : constant := 50;
    The_Index  : Win32.DWORD := 0;
    Name_Size  : aliased Natural;
    The_Type   : aliased Win32.DWORD;
    Entry_Name : aliased String (1..Max_Name_Size);
    use type Win32.DWORD;
    use type Win32.LONG;
  begin
    loop
      Name_Size := Max_Name_Size;
      if Win32.Winreg.RegEnumValue (The_Current_Key,
                                    The_Index,
                                    Convert(Entry_Name'address),
                                    Convert(Name_Size'address),
                                    null,
                                    The_Type'unchecked_access,
                                    null,
                                    null) = Win32.Winerror.ERROR_SUCCESS
      then
        if The_Type = Win32.Winnt.REG_SZ then
          The_Callback (Entry_Name (1..Name_Size), Reg_Sz);
        elsif The_Type = Win32.Winnt.REG_DWORD then
          The_Callback (Entry_Name (1..Name_Size), Reg_Dword);
        end if;
        The_Index := The_Index + 1;
      else
        exit;
      end if;
    end loop;
  end Iterate;


  procedure Iterate (The_Callback : String_Entries) is
    function Convert is new Ada.Unchecked_Conversion(System.Address, Win32.PCHAR);
    function Convert is new Ada.Unchecked_Conversion(System.Address, Win32.PBYTE);
    function Convert is new Ada.Unchecked_Conversion(System.Address, Win32.PULONG);
    Max_Name_Size  : constant := 50;
    The_Index      : Win32.DWORD := 0;
    Name_Size      : aliased Natural;
    The_Type       : aliased Win32.DWORD;
    Entry_Name     : aliased String (1..Max_Name_Size);
    Max_Value_Size : constant := 250;
    Value_Size     : aliased Natural;
    The_Value      : String (1..Max_Value_Size);
    use type Win32.DWORD;
    use type Win32.LONG;
  begin
    loop
      Name_Size  := Max_Name_Size;
      Value_Size := Max_Value_Size;
      if Win32.Winreg.RegEnumValue(The_Current_Key,
                                   The_Index,
                                   Convert(Entry_Name'address),
                                   Convert(Name_Size'address),
                                   null,
                                   The_Type'unchecked_access,
                                   Convert(The_Value'address),
                                   Convert(Value_Size'address)) = Win32.Winerror.ERROR_SUCCESS
      then
        if The_Type = Win32.Winnt.REG_SZ then
          The_Callback (Entry_Name (1..Name_Size), The_Value (1.. Value_Size - 1));
        end if;
        The_Index := The_Index + 1;
      else
        exit;
      end if;
    end loop;
  end Iterate;


  procedure Iterate (The_Callback : Natural_Entries) is
    function Convert is new Ada.Unchecked_Conversion(System.Address, Win32.PCHAR);
    function Convert is new Ada.Unchecked_Conversion(System.Address, Win32.PBYTE);
    function Convert is new Ada.Unchecked_Conversion(System.Address, Win32.PULONG);
    Max_Name_Size : constant := 50;
    The_Index     : Win32.DWORD := 0;
    Name_Size     : aliased Natural;
    The_Type      : aliased Win32.DWORD;
    Entry_Name    : aliased String (1..Max_Name_Size);
    Value_Size    : aliased Win32.DWORD := 4;
    The_Value     : Unsigned.Longword;
    use type Win32.DWORD;
    use type Win32.LONG;
  begin
    loop
      Name_Size  := Max_Name_Size;
      if Win32.Winreg.RegEnumValue(The_Current_Key,
                                   The_Index,
                                   Convert(Entry_Name'address),
                                   Convert(Name_Size'address),
                                   null,
                                   The_Type'unchecked_access,
                                   Convert(The_Value'address),
                                   Value_Size'unchecked_access) = Win32.Winerror.ERROR_SUCCESS
      then
        if The_Type = Win32.Winnt.REG_DWORD then
          The_Callback (Entry_Name (1..Name_Size), The_Value);
        end if;
        The_Index := The_Index + 1;
      else
        exit;
      end if;
    end loop;
  end Iterate;


end Windows.Registry;

