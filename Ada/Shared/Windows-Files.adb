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
with Ada.Strings.Fixed;
with Interfaces.C;
with Windows; pragma Elaborate_All (Windows);
with Win32.Winerror;
with Win32.Winnls;
with Win32.Winnetwk;
with Win32.Winreg;

package body Windows.Files is

  pragma Linker_Options ("-lmpr");

  Wide_Nul : constant Wide_Character := Wide_Character'first;
  Nul      : constant Character      := Character'first;

  type Io_Status_Block is record
    Status      : Integer;     -->UD: Placeholder
    Information : Win32.ULONG; -->UD: Placeholder
  end record;

  type Io_Status_Block_Access is access all Io_Status_Block;

  type File_Stream_Information is record
    Next_Entry  : Natural;
    Name_Length : Natural;
    Size        : File_Size;
    Allocation  : File_Size; -->UD: Placeholder
    Name        : Wide_String (1..1024);
  end record;

  type File_Query_Handler is access function (The_File_Handle       : Nt.HANDLE;
                                              The_Io_Status_Block   : Io_Status_Block_Access;
                                              The_File_Information  : System.Address;
                                              The_Information_Size  : Natural;
                                              The_Information_Class : Win32.DWORD) return Integer;
  pragma Convention (Stdcall, File_Query_Handler);

  Ntqueryinformationfile : File_Query_Handler := null;

  Known_Sid_List : Sid := null;


  function To_C (S: Win32.WCHAR_Array) return Interfaces.C.wchar_array is
    Result : Interfaces.C.wchar_array(Interfaces.C.size_t(S'first) ..
                                      Interfaces.C.size_t(S'last));
  begin
    Result := Interfaces.C.wchar_array(S);
    return Result;
  end To_C;


  procedure Create_Directory (Directory       : String;
                              Ignore_Existing : Boolean := True) is
    Last : Natural := Directory'last;
    use type Win32.BOOL;
    use type Win32.DWORD;
  begin
    if Last >= Directory'first and then
       (Directory(Last) = '\' or Directory(Last) = '/')
    then
      Last := Last - 1;
    end if;
    declare
      Directory_Name : aliased constant String := Directory(Directory'first..Last) & Nul;
    begin
      if Base.CreateDirectoryA (Win32.Addr(Directory_Name), null) /= Win32.TRUE then
        if not Ignore_Existing or else Base.GetLastError /= Win32.Winerror.ERROR_ALREADY_EXISTS then
          raise Creation_Failure;
        end if;
      end if;
    end;
  end Create_Directory;


  procedure Create_Directory (Directory       : Wide_String;
                              Ignore_Existing : Boolean := True) is
    Last : Natural := Directory'last;
    use type Win32.BOOL;
    use type Win32.DWORD;
  begin
    if Last >= Directory'first and then
       (Directory(Last) = '\' or Directory(Last) = '/')
    then
      Last := Last - 1;
    end if;
    declare
      Directory_Name : aliased constant Wide_String := Directory(Directory'first..Last) & Wide_Nul;
    begin
      if Base.CreateDirectoryW (Win32.Addr(Directory_Name), null) /= Win32.TRUE then
        if not Ignore_Existing or else Base.GetLastError /= Win32.Winerror.ERROR_ALREADY_EXISTS then
          raise Creation_Failure;
        end if;
      end if;
    end;
  end Create_Directory;


  function Bits_Are_Set_In (The_Set  : Win32.DWORD;
                            The_Bits : Win32.DWORD) return Boolean is
  use type Win32.DWORD;
  begin
    return (The_Set and The_Bits)= The_Bits;
  end Bits_Are_Set_In;


  function File_Exists (The_Filename      : String;
                        Is_Case_Sensitive : Boolean := False) return Boolean is
    Filename : aliased constant String := The_Filename & Nul;
  begin
    if Is_Case_Sensitive then
      declare
        The_Handle : Nt.HANDLE;
        The_Data   : aliased Find_Data;
        Unused     : Win32.BOOL;
        use type Nt.HANDLE;
      begin
         The_Handle := Base.FindFirstFile (Win32.Addr(Filename),
                                           The_Data'unchecked_access);
         if The_Handle /= Base.INVALID_HANDLE_VALUE then
           Unused := Base.FindClose(The_Handle);
           if not Bits_Are_Set_In (The_Data.dwFileAttributes, Nt.FILE_ATTRIBUTE_DIRECTORY) then
              declare
                Name : constant String := Interfaces.C.To_Ada (Win32.To_C (The_Data.cFileName));
              begin
                return Name = The_Filename (The_Filename'last - Name'length + 1 .. The_Filename'last);
              end;
           end if;
         end if;
         return False;
      end;
    else
      return not Is_Directory (The_Filename);
    end if;
  exception
    when File_Not_Found =>
      return False;
  end File_Exists;


  function Directory_Exists (The_Filename      : String;
                             Is_Case_Sensitive : Boolean := False) return Boolean is
    Filename : aliased constant String := The_Filename & Nul;
  begin
    if Is_Case_Sensitive then
      declare
        The_Handle : Nt.HANDLE;
        The_Data   : aliased Find_Data;
        Unused     : Win32.BOOL;
        use type Nt.HANDLE;
      begin
         The_Handle := Base.FindFirstFile (Win32.Addr(Filename),
                                           The_Data'unchecked_access);
         if The_Handle /= Base.INVALID_HANDLE_VALUE then
           Unused := Base.FindClose(The_Handle);
           if Bits_Are_Set_In (The_Data.dwFileAttributes, Nt.FILE_ATTRIBUTE_DIRECTORY) then
              declare
                Name : constant String := Interfaces.C.To_Ada (Win32.To_C (The_Data.cFileName));
              begin
                return Name = The_Filename (The_Filename'last - Name'length + 1 .. The_Filename'last);
              end;
           end if;
         end if;
         return False;
      end;
    else
      return Is_Directory (The_Filename);
    end if;
  exception
    when File_Not_Found =>
      return False;
  end Directory_Exists;


  function Exists (The_Name          : Wide_String;
                   Is_Folder         : Boolean := False;
                   Is_Case_Sensitive : Boolean := False) return Boolean is
    Filename : aliased constant Wide_String := The_Name & Wide_Nul;
  begin
    if Is_Case_Sensitive then
      declare
        The_Handle : Nt.HANDLE;
        The_Data   : aliased Find_Wide_Data;
        Unused     : Win32.BOOL;
        use type Nt.HANDLE;
      begin
         The_Handle := Base.FindFirstFileW (Win32.Addr(Filename),
                                            The_Data'unchecked_access);
         if The_Handle /= Base.INVALID_HANDLE_VALUE then
           Unused := Base.FindClose(The_Handle);
           declare
             Name : constant Wide_String := Interfaces.C.To_Ada (To_C (The_Data.cFileName));
           begin
             if Name = The_Name (The_Name'last - Name'length + 1 .. The_Name'last) then
               return not (Is_Folder xor Bits_Are_Set_In (The_Data.dwFileAttributes, Nt.FILE_ATTRIBUTE_DIRECTORY));
             end if;
           end;
         end if;
         return False;
      end;
    else
      return not (Is_Folder xor Is_Directory (The_Name));
    end if;
  exception
    when File_Not_Found =>
      return False;
  end Exists;


  function Is_Directory (The_Attributes : Windows.Files.File_Attribute) return Boolean is
  begin
    return Bits_Are_Set_In (The_Attributes, Nt.FILE_ATTRIBUTE_DIRECTORY);
  end Is_Directory;


  function Is_Directory (The_Data : Windows.Files.Find_Data) return Boolean is
  begin
    return Bits_Are_Set_In (The_Data.dwFileAttributes, Nt.FILE_ATTRIBUTE_DIRECTORY);
  end Is_Directory;


  function Is_Directory (The_Data : Windows.Files.Find_Wide_Data) return Boolean is
  begin
    return Bits_Are_Set_In (The_Data.dwFileAttributes, Nt.FILE_ATTRIBUTE_DIRECTORY);
  end Is_Directory;


  function Is_Readonly (The_Attributes : Windows.Files.File_Attribute) return Boolean is
  begin
    return Bits_Are_Set_In (The_Attributes, Nt.FILE_ATTRIBUTE_READONLY);
  end Is_Readonly;


  function Is_Readonly (The_Data : Windows.Files.Find_Data) return Boolean is
  begin
    return Bits_Are_Set_In (The_Data.dwFileAttributes, Nt.FILE_ATTRIBUTE_READONLY);
  end Is_Readonly;


  function Is_Readonly (The_Data : Windows.Files.Find_Wide_Data) return Boolean is
  begin
    return Bits_Are_Set_In (The_Data.dwFileAttributes, Nt.FILE_ATTRIBUTE_READONLY);
  end Is_Readonly;


  function Is_Hidden (The_Attributes : Windows.Files.File_Attribute) return Boolean is
  begin
    return Bits_Are_Set_In (The_Attributes, Nt.FILE_ATTRIBUTE_HIDDEN);
  end Is_Hidden;


  function Is_Hidden (The_Data : Windows.Files.Find_Data) return Boolean is
  begin
    return Bits_Are_Set_In (The_Data.dwFileAttributes, Nt.FILE_ATTRIBUTE_HIDDEN);
  end Is_Hidden;


  function Is_Hidden (The_Data : Windows.Files.Find_Wide_Data) return Boolean is
  begin
    return Bits_Are_Set_In (The_Data.dwFileAttributes, Nt.FILE_ATTRIBUTE_HIDDEN);
  end Is_Hidden;


  function Is_System (The_Attributes : Windows.Files.File_Attribute) return Boolean is
  begin
    return Bits_Are_Set_In (The_Attributes, Nt.FILE_ATTRIBUTE_SYSTEM);
  end Is_System;


  function Is_System (The_Data : Windows.Files.Find_Data) return Boolean is
  begin
    return Bits_Are_Set_In (The_Data.dwFileAttributes, Nt.FILE_ATTRIBUTE_SYSTEM);
  end Is_System;


  function Is_System (The_Data : Windows.Files.Find_Wide_Data) return Boolean is
  begin
    return Bits_Are_Set_In (The_Data.dwFileAttributes, Nt.FILE_ATTRIBUTE_SYSTEM);
  end Is_System;


  function Is_Compressed (The_Attributes : Windows.Files.File_Attribute) return Boolean is
  begin
    return Bits_Are_Set_In (The_Attributes, Nt.FILE_ATTRIBUTE_COMPRESSED);
  end Is_Compressed;


  function Is_Compressed (The_Data : Windows.Files.Find_Data) return Boolean is
  begin
    return Bits_Are_Set_In (The_Data.dwFileAttributes, Nt.FILE_ATTRIBUTE_COMPRESSED);
  end Is_Compressed;


  function Is_Compressed (The_Data : Windows.Files.Find_Wide_Data) return Boolean is
  begin
    return Bits_Are_Set_In (The_Data.dwFileAttributes, Nt.FILE_ATTRIBUTE_COMPRESSED);
  end Is_Compressed;


  function Is_Special_Directory (The_Data : Windows.Files.Find_Data) return Boolean is
    use type Win32.CHAR;
  begin
    return The_Data.cFileName(The_Data.cFileName'first) = '.' and then
           (The_Data.cFileName(The_Data.cFileName'first + 1) = Win32.CHAR'first or else
           (The_Data.cFileName(The_Data.cFileName'first + 1) = '.' and then
            The_Data.cFileName(The_Data.cFileName'first + 2) = Win32.CHAR'first));
  end Is_Special_Directory;


  function Is_Special_Directory (The_Data : Windows.Files.Find_Wide_Data) return Boolean is
    use type Win32.WCHAR;
  begin
    return The_Data.cFileName(The_Data.cFileName'first) = '.' and then
           (The_Data.cFileName(The_Data.cFileName'first + 1) = Win32.WCHAR'first or else
           (The_Data.cFileName(The_Data.cFileName'first + 1) = '.' and then
            The_Data.cFileName(The_Data.cFileName'first + 2) = Win32.WCHAR'first));
  end Is_Special_Directory;


  function Is_Special_Directory (The_Directory_Name : String) return Boolean is
  begin
    return (The_Directory_Name = ".") or (The_Directory_Name = "..");
  end Is_Special_Directory;


  function Is_Special_Directory (The_Directory_Name : Wide_String) return Boolean is
  begin
    return (The_Directory_Name = ".") or (The_Directory_Name = "..");
  end Is_Special_Directory;


  function Filename_Of (The_Data : Find_Data) return String is
  begin
    return Interfaces.C.To_Ada (Win32.To_C (The_Data.cFileName));
  end Filename_Of;


  function Filename_Of (The_Data : Find_Wide_Data) return Wide_String is
  begin
    return Interfaces.C.To_Ada (To_C (The_Data.cFileName));
  end Filename_Of;


  function File_Size_Of (The_Data : Find_Data) return File_Size is
  begin
    return Unsigned.Quadword_Of (Most_Significant  => Unsigned.Longword (The_Data.nFileSizeHigh),
                                 Least_Significant => Unsigned.Longword (The_Data.nFileSizeLow));
  end File_Size_Of;


  function File_Size_Of (The_Data : Find_Wide_Data) return File_Size is
  begin
    return Unsigned.Quadword_Of (Most_Significant  => Unsigned.Longword (The_Data.nFileSizeHigh),
                                 Least_Significant => Unsigned.Longword (The_Data.nFileSizeLow));
  end File_Size_Of;


  function Modification_Time_Of (The_Data : Windows.Files.Find_Data) return File_Time is
  begin
    return The_Data.ftLastWriteTime;
  end Modification_Time_Of;


  function Modification_Time_Of (The_Data : Windows.Files.Find_Wide_Data) return File_Time is
  begin
    return The_Data.ftLastWriteTime;
  end Modification_Time_Of;


  procedure Rename_File (The_Existing_File : String;
                         The_New_File      : String) is
    Existing_File : aliased constant String := The_Existing_File & Nul;
    New_File      : aliased constant String := The_New_File & Nul;
    The_Flags     : constant Win32.DWORD := Base.MOVEFILE_REPLACE_EXISTING;
    use type Win32.BOOL;
  begin
    if Base.MoveFileExA (Win32.Addr(Existing_File),
                         Win32.Addr(New_File),
                         The_Flags) = Win32.FALSE
    then
      raise File_Not_Found;
    end if;
  end Rename_File;


  procedure Rename_File (The_Existing_File : Wide_String;
                         The_New_File      : Wide_String) is
    Existing_File : aliased constant Wide_String := The_Existing_File & Wide_Nul;
    New_File      : aliased constant Wide_String := The_New_File & Wide_Nul;
    The_Flags     : constant Win32.DWORD := Base.MOVEFILE_REPLACE_EXISTING;
    use type Win32.BOOL;
  begin
    if Base.MoveFileExW (Win32.Addr(Existing_File),
                         Win32.Addr(New_File),
                         The_Flags) = Win32.FALSE
    then
      raise File_Not_Found;
    end if;
  end Rename_File;


  procedure Copy_File (The_Existing_File  : String;
                       The_New_File       : String;
                       Overwrite_Existing : Boolean := True) is
    Existing_File  : aliased constant String := The_Existing_File & Nul;
    New_File       : aliased constant String := The_New_File & Nul;
    Fail_If_Exists : aliased Win32.BOOL := Win32.FALSE;
    use type Win32.BOOL;
    use type Win32.DWORD;
  begin
    if not Overwrite_Existing then
      Fail_If_Exists := Win32.TRUE;
    end if;
    if Base.CopyFileA (Win32.Addr(Existing_File),
                       Win32.Addr(New_File),
                       Fail_If_Exists) = Win32.FALSE
    then
      if Base.GetLastError = Win32.Winerror.ERROR_ACCESS_DENIED then
        raise Creation_Failure;
      else
        raise File_Not_Found;
      end if;
    end if;
  end Copy_File;


  procedure Copy_File (The_Existing_File  : Wide_String;
                       The_New_File       : Wide_String;
                       Overwrite_Existing : Boolean := True) is
    Existing_File  : aliased constant Wide_String := The_Existing_File & Wide_Nul;
    New_File       : aliased constant Wide_String := The_New_File & Wide_Nul;
    Fail_If_Exists : aliased Win32.BOOL := Win32.FALSE;
    use type Win32.BOOL;
    use type Win32.DWORD;
  begin
    if not Overwrite_Existing then
      Fail_If_Exists := Win32.TRUE;
    end if;
    if Base.CopyFileW (Win32.Addr(Existing_File),
                       Win32.Addr(New_File),
                       Fail_If_Exists) = Win32.FALSE
    then
      if Base.GetLastError = Win32.Winerror.ERROR_ACCESS_DENIED then
        raise Creation_Failure;
      else
        raise File_Not_Found;
      end if;
    end if;
  end Copy_File;


  procedure Delete_File (Filename : String) is
    File_Name : aliased constant String := Filename & Nul;
    use type Win32.BOOL;
    use type Win32.DWORD;
  begin
    if Base.DeleteFileA (Win32.Addr(File_Name)) /= Win32.TRUE and then
      Base.GetLastError /= Win32.Winerror.ERROR_FILE_NOT_FOUND
    then
      raise Access_Denied;
    end if;
  end Delete_File;


  procedure Delete_File (Filename : Wide_String) is
    File_Name : aliased constant Wide_String := Filename & Wide_Nul;
    use type Win32.BOOL;
    use type Win32.DWORD;
  begin
    if Base.DeleteFileW (Win32.Addr(File_Name)) /= Win32.TRUE and then
      Base.GetLastError /= Win32.Winerror.ERROR_FILE_NOT_FOUND
    then
      raise Access_Denied;
    end if;
  end Delete_File;


  procedure Remove_Directory (Directory_Name : String) is
    Name : aliased constant String := Directory_Name & Nul;
    use type Win32.BOOL;
    use type Win32.DWORD;
  begin
    if Base.RemoveDirectoryA (Win32.Addr(Name)) /= Win32.TRUE then
      declare
        Last_Error : constant Win32.DWORD := Base.GetLastError;
      begin
        if Last_Error = Win32.Winerror.ERROR_DIR_NOT_EMPTY then
          raise Directory_Not_Empty;
        elsif Last_Error /= Win32.Winerror.ERROR_FILE_NOT_FOUND then
          raise Access_Denied;
        end if;
      end;
    end if;
  end Remove_Directory;


  procedure Remove_Directory (Directory_Name : Wide_String) is
    Name : aliased constant Wide_String := Directory_Name & Wide_Nul;
    use type Win32.BOOL;
    use type Win32.DWORD;
  begin
    if Base.RemoveDirectoryW (Win32.Addr(Name)) /= Win32.TRUE then
      declare
        Last_Error : constant Win32.DWORD := Base.GetLastError;
      begin
        if Last_Error = Win32.Winerror.ERROR_DIR_NOT_EMPTY then
          raise Directory_Not_Empty;
        elsif Last_Error /= Win32.Winerror.ERROR_FILE_NOT_FOUND then
          raise Access_Denied;
        end if;
      end;
    end if;
  end Remove_Directory;


  type WIN32_FILE_ATTRIBUTE_DATA;
  type LPWIN32_FILE_ATTRIBUTE_DATA is access all WIN32_FILE_ATTRIBUTE_DATA;

  type WIN32_FILE_ATTRIBUTE_DATA is record
    Dwfileattributes : Win32.DWORD;
    Ftcreationtime   : Base.FILETIME;
    Ftlastaccesstime : Base.FILETIME;
    Ftlastwritetime  : Base.FILETIME;
    Nfilesizehigh    : Unsigned.Longword;
    Nfilesizelow     : Unsigned.Longword;
  end record;

  for WIN32_FILE_ATTRIBUTE_DATA use record
    Dwfileattributes at 0  range 0 .. 31;
    Ftcreationtime   at 4  range 0 .. 63;
    Ftlastaccesstime at 12 range 0 .. 63;
    Ftlastwritetime  at 20 range 0 .. 63;
    Nfilesizehigh    at 28 range 0 .. 31;
    Nfilesizelow     at 32 range 0 .. 31;
  end record;
  for WIN32_FILE_ATTRIBUTE_DATA'alignment use 1;
  pragma Convention (C_Pass_By_Copy, WIN32_FILE_ATTRIBUTE_DATA);

  type GET_FILEEX_INFO_LEVELS is (
    Getfileexinfostandard,
    Unused_Getfileexmaxinfolevel);
  for GET_FILEEX_INFO_LEVELS'size use 32;


  function Attributes_For (The_Filename : String) return File_Attributes is


    function Getfileattributesex (Lpszfilename      : Win32.LPCSTR;
                                  Finfolevelid      : GET_FILEEX_INFO_LEVELS;
                                  Lpfileinformation : LPWIN32_FILE_ATTRIBUTE_DATA)
      return Win32.BOOL;
    pragma Import (Stdcall, Getfileattributesex, "GetFileAttributesExA");
    use type Win32.BOOL;

    File_Name           : aliased constant String := The_Filename & Nul;
    The_Attributes      : aliased WIN32_FILE_ATTRIBUTE_DATA;
    The_File_Attributes : File_Attributes;

  begin
    if Getfileattributesex (Win32.Addr(File_Name),
                            Getfileexinfostandard,
                            The_Attributes'unchecked_access) = 0
    then
      raise File_Not_Found;
    end if;
    The_File_Attributes.Attribute := The_Attributes.Dwfileattributes;
    The_File_Attributes.Creation_Time := The_Attributes.Ftcreationtime;
    The_File_Attributes.Access_Time := The_Attributes.Ftlastaccesstime;
    The_File_Attributes.Last_Write_Time := The_Attributes.Ftlastwritetime;
    The_File_Attributes.Size := Unsigned.Quadword_Of (
                                Most_Significant  => The_Attributes.Nfilesizehigh,
                                Least_Significant => The_Attributes.Nfilesizelow);
    return The_File_Attributes;
  end Attributes_For;


  function Is_Directory (The_Filename : String) return Boolean is
  begin
    return Is_Directory (Attributes_For (The_Filename).Attribute);
  end Is_Directory;


  function Attributes_For (The_Filename : Wide_String) return File_Attributes is

    function Getfileattributesex (Lpszfilename      : Win32.LPCWSTR;
                                  Finfolevelid      : GET_FILEEX_INFO_LEVELS;
                                  Lpfileinformation : LPWIN32_FILE_ATTRIBUTE_DATA)
      return Win32.BOOL;
    pragma Import (Stdcall, Getfileattributesex, "GetFileAttributesExW");
    use type Win32.BOOL;

    File_Name           : aliased constant Wide_String := The_Filename & Wide_Nul;
    The_Attributes      : aliased WIN32_FILE_ATTRIBUTE_DATA;
    The_File_Attributes : File_Attributes;

  begin
    if Getfileattributesex (Win32.Addr(File_Name),
                            Getfileexinfostandard,
                            The_Attributes'unchecked_access) = 0
    then
      raise File_Not_Found;
    end if;
    The_File_Attributes.Attribute := The_Attributes.Dwfileattributes;
    The_File_Attributes.Creation_Time := The_Attributes.Ftcreationtime;
    The_File_Attributes.Access_Time := The_Attributes.Ftlastaccesstime;
    The_File_Attributes.Last_Write_Time := The_Attributes.Ftlastwritetime;
    The_File_Attributes.Size := Unsigned.Quadword_Of (
                                Most_Significant  => The_Attributes.Nfilesizehigh,
                                Least_Significant => The_Attributes.Nfilesizelow);
    return The_File_Attributes;
  end Attributes_For;


  function Is_Directory (The_Filename : Wide_String) return Boolean is
  begin
    return Is_Directory (Attributes_For (The_Filename).Attribute);
  end Is_Directory;


  function Size_Of (The_Filename : String) return File_Size is
    The_File_Attributes : constant File_Attributes := Attributes_For (The_Filename);
  begin
    return The_File_Attributes.Size;
  end Size_Of;


  function Size_Of (The_Filename : Wide_String) return File_Size is
    The_File_Attributes : constant File_Attributes := Attributes_For (The_Filename);
  begin
    return The_File_Attributes.Size;
  end Size_Of;


  function Image_Of (The_Size : File_Size) return String is
    use type Unsigned.Longword;
    use type Unsigned.Quadword;
    Lsw  : Unsigned.Longword := Unsigned.Least_Significant_Longword_Of (The_Size);
    Mega : Unsigned.Longword := Unsigned.Longword(The_Size / 1_000_000);
  begin
    if Mega > 1_000 then -- More than 1GB
      if Mega > 10_000_000 then
        Mega := (Mega + 500_000) / 1_000_000;
        return Unsigned.Longword'image(Mega) & "TB";
      elsif Mega < 10_000 then
        return Unsigned.Longword'image(Mega) & "MB";
      else
        Mega := (Mega + 500) / 1_000;
        return Unsigned.Longword'image(Mega) & "GB";
      end if;
    elsif Lsw < 10_000 then
      return Unsigned.Longword'image(Lsw);
    elsif Lsw >= 10_000_000 then
      Lsw := (Lsw + 500_000) / 1_000_000;
      return Unsigned.Longword'image(Lsw) & "MB";
    else
      Lsw := (Lsw + 500) / 1_000;
      return Unsigned.Longword'image(Lsw) & "KB";
    end if;
  end Image_Of;


  function Is_Earlier (The_Time  : File_Time;
                       Than_Time : File_Time) return Boolean is
    use type Win32.LONG;
    Left  : aliased Base.FILETIME := The_Time;
    Right : aliased Base.FILETIME := Than_Time;
  begin
    return Base.CompareFileTime (Left'unchecked_access,
                                 Right'unchecked_access) = -1;
  end Is_Earlier;


  function Is_Later (The_Time  : File_Time;
                     Than_Time : File_Time) return Boolean is
    use type Win32.LONG;
    Left  : aliased Base.FILETIME := The_Time;
    Right : aliased Base.FILETIME := Than_Time;
  begin
    return Base.CompareFileTime (Left'unchecked_access,
                                 Right'unchecked_access) = +1;
  end Is_Later;


  function Is_Equal (The_Time  : File_Time;
                     Than_Time : File_Time) return Boolean is
    use type Win32.LONG;
    Left  : aliased Base.FILETIME := The_Time;
    Right : aliased Base.FILETIME := Than_Time;
  begin
    return Base.CompareFileTime (Left'unchecked_access,
                                 Right'unchecked_access) = 0;
  end Is_Equal;


  function Is_Newer (First  : File_Attributes;
                     Second : File_Attributes) return Boolean is

    First_Time  : aliased Base.FILETIME
                := First.Last_Write_Time;
    Second_Time : aliased Base.FILETIME
                := Second.Last_Write_Time;
    use type Win32.LONG;
  begin
    return Base.CompareFileTime (First_Time'unchecked_access,
                                 Second_Time'unchecked_access) = 1;
  end Is_Newer;


  function Is_Newer (The_File  : String;
                     Than_File : String) return Boolean is
    First_Attributes  : constant File_Attributes := Attributes_For (The_File);
    Second_Attributes : constant File_Attributes := Attributes_For (Than_File);
  begin
    return Is_Newer (First_Attributes, Second_Attributes);
  end Is_Newer;


  function Is_Newer (The_File  : Wide_String;
                     Than_File : Wide_String) return Boolean is
    First_Attributes  : constant File_Attributes := Attributes_For (The_File);
    Second_Attributes : constant File_Attributes := Attributes_For (Than_File);
  begin
    return Is_Newer (First_Attributes, Second_Attributes);
  end Is_Newer;


  function The_Time_Now return File_Time is
    As_File_Time    : aliased Base.FILETIME;
    The_System_Time : aliased Base.SYSTEMTIME;
    Unused          : Win32.BOOL;
  begin
    Base.GetSystemTime (The_System_Time'unchecked_access);
    Unused := Base.SystemTimeToFileTime (The_System_Time'unchecked_access,
                                         As_File_Time'unchecked_access);
    return As_File_Time;
  end The_Time_Now;

  function Is_Null (The_Time : File_Time) return Boolean is
    use type Win32.DWORD;
  begin
    return (The_Time.dwLowDateTime = 0) and (The_Time.dwHighDateTime = 0);
  end Is_Null;

  function Image_Of (The_Time : File_Time) return String is
    The_File_Time  : aliased Base.FILETIME;
    As_Local_Time  : aliased Base.FILETIME;
    As_System_Time : aliased Base.SYSTEMTIME;
    Unused         : Win32.BOOL;
    Date_Size      : Integer;
    Max_Date_Size  : constant := 50;
    Date_Buffer    : aliased String (1..Max_Date_Size);
    pragma Warnings (Off, Date_Buffer);
    Time_Size      : Integer;
    Max_Time_Size  : constant := 50;
    Time_Buffer    : aliased String (1..Max_Date_Size);
    pragma Warnings (Off, Time_Buffer);
  begin
    if Is_Null (The_Time) then
      return "";
    else
      The_File_Time := The_Time;
      Unused  := Base.FileTimeToLocalFileTime (The_File_Time'unchecked_access,
                                               As_Local_Time'unchecked_access);
      Unused := Base.FileTimeToSystemTime (As_Local_Time'unchecked_access,
                                           As_System_Time'unchecked_access);
      Date_Size := Integer (Win32.Winnls.GetDateFormat (Nt.LOCALE_USER_DEFAULT,
                                                        0, As_System_Time'unchecked_access, null,
                                                        Win32.Addr(Date_Buffer), Max_Date_Size));
      Time_Size := Integer (Win32.Winnls.GetTimeFormat (Nt.LOCALE_USER_DEFAULT,
                                                        0, As_System_Time'unchecked_access, null,
                                                        Win32.Addr(Time_Buffer), Max_Time_Size));
      if Date_Size > Max_Date_Size then
        Date_Size := Max_Date_Size + 1;
      end if;
      if Time_Size > Max_Date_Size then
        Time_Size := Max_Date_Size + 1;
      end if;
      return Date_Buffer (1..Date_Size - 1) & " " & Time_Buffer (1..Time_Size - 1);
    end if;
  end Image_Of;


  Max_Path : constant := 260;

  function Current_Directory return String is
    use type Win32.DWORD;
    Directory_Name : aliased String (1 .. Max_Path);
    pragma Warnings (Off, Directory_Name);
    Name_Size : Natural;
  begin
    Name_Size := Natural(Base.GetCurrentDirectoryA(Win32.DWORD(Max_Path),
                                                   Win32.Addr(Directory_Name)));
    if Name_Size > Max_Path then
      Name_Size := Max_Path;
    end if;
    return Directory_Name (1..Name_Size);
  end Current_Directory;


  function Current_Directory return Wide_String is
    use type Win32.DWORD;
    Directory_Name : aliased Wide_String (1 .. Max_Path);
    pragma Warnings (Off, Directory_Name);
    Name_Size : Natural;
  begin
    Name_Size := Natural(Base.GetCurrentDirectoryW(Win32.DWORD(Max_Path),
                                                   Win32.Addr(Directory_Name)));
    if Name_Size > Max_Path then
      Name_Size := Max_Path;
    end if;
    return Directory_Name (1..Name_Size);
  end Current_Directory;


  procedure Search_With (The_File_Names : String) is
    File_Names : aliased constant String := The_File_Names & Nul;
    use type Nt.HANDLE;
    use type Win32.BOOL;
    The_Data   : aliased Find_Data;
    The_Handle : Nt.HANDLE;
    Unused     : Win32.BOOL;
  begin
    The_Handle := Base.FindFirstFile (Win32.Addr(File_Names),
                                      The_Data'unchecked_access);
    if The_Handle /= Base.INVALID_HANDLE_VALUE then
      loop
        exit when Action_Routine (The_Data) = Stop;
        exit when Base.FindNextFile (The_Handle, The_Data'unchecked_access) = 0;
      end loop;
      Unused := Base.FindClose(The_Handle);
    end if;
  end Search_With;


  procedure Iterate_With (The_File_Names : String) is
    File_Names : aliased constant String := The_File_Names & Nul;
    use type Nt.HANDLE;
    use type Win32.BOOL;
    The_Data   : aliased Find_Data;
    The_Handle : Nt.HANDLE;
    Unused     : Win32.BOOL;
  begin
    The_Handle := Base.FindFirstFile (Win32.Addr(File_Names),
                                      The_Data'unchecked_access);
    if The_Handle /= Base.INVALID_HANDLE_VALUE then
      loop
        Action_Routine (The_Data);
        exit when Base.FindNextFile (The_Handle, The_Data'unchecked_access) = 0;
      end loop;
      Unused := Base.FindClose(The_Handle);
    end if;
  end Iterate_With;


  Find_Ex_Info_Standard               : constant := 16#0#;
  --Find_Ex_Info_Max_Info_Level       : constant := 16#1#;

  --Find_Ex_Search_Name_Match         : constant := 16#0#;
  Find_Ex_Search_Limit_To_Directories : constant := 16#1#;
  --Find_Ex_Search_Limit_To_Devices   : constant := 16#2#;
  --Find_Ex_Search_Max_Search_Op      : constant := 16#3#;

  function Find_First_File_Exa (File_Name        : Win32.LPCSTR;
                                Info_Level_Id    : Win32.DWORD;
                                Find_File_Data   : Base.LPWIN32_FIND_DATAA;
                                Search_Options   : Win32.DWORD;
                                Search_Filter    : Win32.LPVOID;
                                Additional_Flags : Win32.DWORD
                               ) return Nt.HANDLE;

  pragma Import(Stdcall, Find_First_File_Exa, "FindFirstFileExA"); -- winbase.h

  function Find_First_File_Exw (File_Name        : Win32.LPCWSTR;
                                Info_Level_Id    : Win32.DWORD;
                                Find_File_Data   : Base.LPWIN32_FIND_DATAW;
                                Search_Options   : Win32.DWORD;
                                Search_Filter    : Win32.LPVOID;
                                Additional_Flags : Win32.DWORD
                               ) return Nt.HANDLE;

  pragma Import(Stdcall, Find_First_File_Exw, "FindFirstFileExW"); -- winbase.h

--
-- Note: Find_Ex_Search_Limit_To_Directories filtering doesn't work on Windows operating
--       systems upto and including XP-Pro SP3
--       Probably starts working with Vista.
--

  procedure Iterate_Directories_With (Directory : String) is
    Search_Path : aliased constant String := Directory & "\*.*" & Nul;
    use type Nt.HANDLE;
    use type Win32.BOOL;
    use type Win32.CHAR;
    The_Data   : aliased Find_Data;
    The_Handle : Nt.HANDLE;
    Unused     : Win32.BOOL;
  begin
    The_Handle := Find_First_File_Exa (Win32.Addr(Search_Path),
                                       Find_Ex_Info_Standard,
                                       The_Data'unchecked_access,
                                       Find_Ex_Search_Limit_To_Directories,
                                       System.Null_Address,
                                       0);
    if The_Handle /= Base.INVALID_HANDLE_VALUE then
      loop
        if Bits_Are_Set_In (The_Data.dwFileAttributes, Nt.FILE_ATTRIBUTE_DIRECTORY) then
          if The_Data.cFileName(The_Data.cFileName'first) = '.' and then
             (The_Data.cFileName(The_Data.cFileName'first + 1) = Win32.CHAR'first or else
             (The_Data.cFileName(The_Data.cFileName'first + 1) = '.' and then
              The_Data.cFileName(The_Data.cFileName'first + 2) = Win32.CHAR'first))
          then     -- A special directory
            null;  -- So ignore it
          else
            exit when Reporter (Interfaces.C.To_Ada (Win32.To_C (The_Data.cFileName))) = Stop;
          end if;
        end if;
        exit when Base.FindNextFileA (The_Handle, The_Data'unchecked_access) = 0;
      end loop;
      Unused := Base.FindClose(The_Handle);
    end if;
  end Iterate_Directories_With;



  procedure Iterate_Wide_Directories_With (Directory : Wide_String) is
    Search_Path : aliased constant Wide_String := Directory & "\*.*" & Wide_Nul;
    use type Nt.HANDLE;
    use type Win32.BOOL;
    use type Win32.WCHAR;
    The_Data   : aliased Find_Wide_Data;
    The_Handle : Nt.HANDLE;
    Unused     : Win32.BOOL;
  begin
    The_Handle := Find_First_File_Exw (Win32.Addr(Search_Path),
                                       Find_Ex_Info_Standard,
                                       The_Data'unchecked_access,
                                       Find_Ex_Search_Limit_To_Directories,
                                       System.Null_Address,
                                       0);
    if The_Handle /= Base.INVALID_HANDLE_VALUE then
      loop
        if Bits_Are_Set_In (The_Data.dwFileAttributes, Nt.FILE_ATTRIBUTE_DIRECTORY) then
          if The_Data.cFileName(The_Data.cFileName'first) = '.' and then
             (The_Data.cFileName(The_Data.cFileName'first + 1) = Win32.WCHAR'first or else
             (The_Data.cFileName(The_Data.cFileName'first + 1) = '.' and then
              The_Data.cFileName(The_Data.cFileName'first + 2) = Win32.WCHAR'first))
          then     -- A special directory
            null;  -- So ignore it
          else
            exit when Reporter (Interfaces.C.To_Ada (To_C (The_Data.cFileName))) = Stop;
          end if;
        end if;
        exit when Base.FindNextFileW (The_Handle, The_Data'unchecked_access) = 0;
      end loop;
      Unused := Base.FindClose(The_Handle);
    end if;
  end Iterate_Wide_Directories_With;



  procedure Search_Wide_With (The_File_Names : Wide_String) is
    File_Names : aliased constant Wide_String := The_File_Names & Wide_Nul;
    use type Nt.HANDLE;
    use type Win32.BOOL;
    The_Data   : aliased Find_Wide_Data;
    The_Handle : Nt.HANDLE;
    Unused     : Win32.BOOL;
  begin
    The_Handle := Base.FindFirstFileW (Win32.Addr(File_Names),
                                       The_Data'unchecked_access);
    if The_Handle /= Base.INVALID_HANDLE_VALUE then
      loop
        exit when Action_Routine (The_Data) = Stop;
        exit when Base.FindNextFileW (The_Handle, The_Data'unchecked_access) = 0;
      end loop;
      Unused := Base.FindClose(The_Handle);
    end if;
  end Search_Wide_With;


  procedure Iterate_Wide_With (The_File_Names : Wide_String) is
    File_Names : aliased constant Wide_String := The_File_Names & Wide_Nul;
    use type Nt.HANDLE;
    use type Win32.BOOL;
    The_Data   : aliased Find_Wide_Data;
    The_Handle : Nt.HANDLE;
    Unused     : Win32.BOOL;
  begin
    The_Handle := Base.FindFirstFileW (Win32.Addr(File_Names),
                                       The_Data'unchecked_access);
    if The_Handle /= Base.INVALID_HANDLE_VALUE then
      loop
        Action_Routine (The_Data);
        exit when Base.FindNextFileW (The_Handle, The_Data'unchecked_access) = 0;
      end loop;
      Unused := Base.FindClose(The_Handle);
    end if;
  end Iterate_Wide_With;


  function Size_From (The_Size : String) return File_Size is
    Max_Dword        : constant Long_Float := Long_Float(Win32.DWORD'last);
    Real_File_Size   : Long_Float;
    The_Multiplier   : Long_Float := 1.0;
    Lastcharposition : Natural := The_Size'length;
  begin
    if (Lastcharposition > 1) and then (Ada.Characters.Handling.To_Upper(The_Size(Lastcharposition)) = 'B') then
      Lastcharposition := Lastcharposition - 1;
    end if;
    if Lastcharposition > 1 then
      case The_Size(Lastcharposition) is
        when 'K' | 'k' => The_Multiplier := 1_000.0;
        when 'M' | 'm' => The_Multiplier := 1_000_000.0;
        when 'G' | 'g' => The_Multiplier := 1_000_000_000.0;
        when 'T' | 't' => The_Multiplier := 1_000_000_000_000.0;
        when others => null;
      end case;
      if The_Multiplier /= 1.0 then
        Lastcharposition := Lastcharposition - 1;
      end if;
    end if;
    Real_File_Size := Long_Float'value(The_Size(The_Size'first..Lastcharposition)) * The_Multiplier;
    return Unsigned.Quadword_Of (
                    Most_Significant => Unsigned.Longword (Long_Float'truncation (Real_File_Size / Max_Dword)),
                    Least_Significant => Unsigned.Longword (Long_Float'remainder (Real_File_Size, Max_Dword)));
  exception
    when others => return Zero_Length;
  end Size_From;


--  type Se_Object_Type is
--    (Se_Unknown_Object_Type,
--     Se_File_Object,
--     Se_Service,
--     Se_Printer,
--     Se_Registry_Key,
--     Se_LmShare,
--     Se_Kernel_Object,
--     Se_Window_Object);
--
--  function GetNamedSecurityInfo(ObjectName           : Nt.Lptstr;
--                                ObjectType           : Se_Object_Type;
--                                Security_Information : Nt.Security_Information;
--                                Owner_Sid            : Nt.Psid;
--                                Group_Sid            : Nt.Psid;
--                                Dacl                 : Nt.Pacl;
--                                Sacl                 : Nt.Pacl;
--                                Security_Descriptor  : Nt.PSecurity_Descriptor
--                                ) return Win32.Dword;
--  pragma Import(Stdcall, GetNamedSecurityInfo, "GetNamedSecurityInfo");


  function Is_Unknown (The_Sid : Sid) return Boolean is
  begin
    return The_Sid = null;
  end Is_Unknown;


  function Owner_Of (Filename : Wide_String) return Sid is
    File_Name : aliased constant Wide_String := Filename & Wide_Nul;
    type Security_Descriptor is
      record
        The_Descriptor : Nt.SECURITY_DESCRIPTOR; -->UD: Placeholder
        The_Owner_Sid  : Sid_Buffer;
      end record;
    The_Security_Descriptor : aliased Security_Descriptor;
    Length_Needed           : aliased Win32.DWORD;
    Owner_Sid               : Sid := null;
    Known_Sid               : Sid := Known_Sid_List;
    Account_Size            : aliased Win32.DWORD := Max_Image_Size;
    The_Account             : aliased Wide_String (1..Max_Image_Size);
    pragma Warnings (Off, The_Account);
    Domain_Size             : aliased Win32.DWORD := Max_Image_Size;
    The_Domain              : aliased Wide_String (1..Max_Image_Size);
    pragma Warnings (Off, The_Domain);
    Usage                   : aliased Nt.SID_NAME_USE;
    use type Win32.BOOL;
    use type Win32.DWORD;
    function Convert is new Ada.Unchecked_Conversion (System.Address, Nt.PSID);
  begin
    if Base.GetFileSecurityW (Win32.Addr(File_Name),
                              Nt.OWNER_SECURITY_INFORMATION,
                              The_Security_Descriptor'address,
                              Win32.DWORD (Security_Descriptor'size / 8),
                              Length_Needed'unchecked_access)  = Win32.TRUE
    then
      loop
        exit when Known_Sid = null;
        if Base.EqualSid (Convert(Known_Sid.Nt_Sid'address),
                          Convert(The_Security_Descriptor.The_Owner_Sid'address)) = Win32.TRUE
        then -- Matched
          return Known_Sid;
        else -- try next
          Known_Sid := Known_Sid.Next;
        end if;
      end loop;
      if Base.LookupAccountSidW (null, Convert(The_Security_Descriptor.The_Owner_Sid'address),
                                       Win32.Addr(The_Account), Account_Size'unchecked_access,
                                       Win32.Addr(The_Domain), Domain_Size'unchecked_access,
                                       Usage'unchecked_access) = Win32.FALSE
      then
        Account_Size := 0;  -- Return null string
      end if;
      Owner_Sid := new Sid_Body'(Nt_Sid =>The_Security_Descriptor.The_Owner_Sid,
                                 Image  => Ada.Strings.Wide_Unbounded.To_Unbounded_Wide_String(
                                                      The_Account (1..Natural(Account_Size))),
                                 Next   => Known_Sid_List);
      Known_Sid_List := Owner_Sid;
    end if;
    return Owner_Sid;
  end Owner_Of;

  function Image_Of (The_Sid : Sid) return Wide_String is
  begin
    if The_Sid = null then
      return "";
    else
      return Ada.Strings.Wide_Unbounded.To_Wide_String(The_Sid.Image);
    end if;
  end Image_Of;

  function Volume_Is_Ntfs (The_File_Name : String) return Boolean is
    The_Volume_Name   : aliased String (1..10);
    pragma Warnings (Off, The_Volume_Name);
    Root_Path_Name    : String := The_File_Name & '\' & Nul;
    Nr_Of_Backslashes : Natural := 1;
    use type Win32.BOOL;
  begin
    if The_File_Name'length < 2 then
      return False;
    end if;
    if Root_Path_Name (1..2) = "\\" then
      Nr_Of_Backslashes := 2;
    end if;
    for The_Index in 2 .. The_File_Name'length-2 loop
      if The_File_Name (The_File_Name'first + The_Index) = '\' then
        Nr_Of_Backslashes := Nr_Of_Backslashes - 1;
        if Nr_Of_Backslashes = 0 then
          Root_Path_Name (The_Index + 1) := '\';
          Root_Path_Name (The_Index + 2) := Nul;
          exit;
        end if;
      end if;
    end loop;
    if Base.GetVolumeInformationA (Win32.Addr(Root_Path_Name),
                                   null, 0, null, null, null,
                                   Win32.Addr(The_Volume_Name),
                                   Win32.DWORD(The_Volume_Name'last)) = Win32.TRUE
    then
      return The_Volume_Name(1..4) = "NTFS";
    else
      return False;
    end if;
  end Volume_Is_Ntfs;


  function Volume_Is_Ntfs (The_File_Name : Wide_String) return Boolean is
    The_Volume_Name   : aliased Wide_String (1..10); pragma Warnings (Off, The_Volume_Name);
    Root_Path_Name    : Wide_String := The_File_Name & '\' & Wide_Nul;
    Nr_Of_Backslashes : Natural := 1;
    use type Win32.BOOL;
  begin
    if The_File_Name'length < 2 then
      return False;
    end if;
    if Root_Path_Name (1..2) = "\\" then
      Nr_Of_Backslashes := 2;
    end if;
    for The_Index in 2 .. The_File_Name'length-2 loop
      if The_File_Name (The_File_Name'first + The_Index) = '\' then
        Nr_Of_Backslashes := Nr_Of_Backslashes - 1;
        if Nr_Of_Backslashes = 0 then
          Root_Path_Name (The_Index + 1) := '\';
          Root_Path_Name (The_Index + 2) := Wide_Nul;
          exit;
        end if;
      end if;
    end loop;
    if Base.GetVolumeInformationW (Win32.Addr(Root_Path_Name),
                                   null, 0, null, null, null,
                                   Win32.Addr(The_Volume_Name),
                                   Win32.DWORD(The_Volume_Name'last)) = Win32.TRUE
    then
      return The_Volume_Name(1..4) = "NTFS";
    else
      return False;
    end if;
  end Volume_Is_Ntfs;


  procedure Loadntqueryinformationfile is
    function Convert is new Ada.Unchecked_Conversion (Win32.Windef.FARPROC, File_Query_Handler);
    Nt_Dll              : aliased constant String := "NtDll.dll" & Nul;
    Nt_Query            : aliased constant String := "NtQueryInformationFile" & Nul;
    Ntdll_Module_Handle : constant Win32.Windef.HMODULE := Base.GetModuleHandle(Win32.Addr(Nt_Dll));
  begin
    Ntqueryinformationfile := Convert (Base.GetProcAddress (Win32.Windef.HINSTANCE(Ntdll_Module_Handle),
                                       Win32.Addr(Nt_Query)));
  end Loadntqueryinformationfile;


  procedure Iterate_Alternate_Data_Streams_Of (Filename : String) is
    File_Name                : aliased constant String := Filename & Nul;
    The_File_Handle          : Nt.HANDLE;
    Unused                   : Win32.BOOL;
    The_Return_Code          : Integer;
    The_Io_Status_Block      : aliased Io_Status_Block;
--  Buffer_Overflow          : constant Win32.Dword := 16#8000_0005#;
    Request_File_Stream_Info : constant := 22;
    Share_Mode               : constant := Nt.FILE_SHARE_READ + Nt.FILE_SHARE_WRITE;
    The_Info_Buffer          : aliased File_Stream_Information;
    type File_Stream_Information_Access is access all File_Stream_Information;
    The_Info_Buffer_Access   : File_Stream_Information_Access := The_Info_Buffer'access;
    use type Nt.HANDLE;

    function "+" (Left  : File_Stream_Information_Access;
                  Right : Natural) return File_Stream_Information_Access is

      function Convert is new Ada.Unchecked_Conversion (File_Stream_Information_Access, Integer);
      function Convert is new Ada.Unchecked_Conversion (Integer, File_Stream_Information_Access);
    begin
      return Convert (Convert (Left) + Right);
    end "+";

  begin
    if Ntqueryinformationfile /= null then
      The_File_Handle := Base.CreateFileA (Win32.Addr(File_Name),
                                           Nt.GENERIC_READ,
                                           Win32.DWORD (Share_Mode),
                                           null,
                                           Base.OPEN_EXISTING,
                                           0,
                                           System.Null_Address);
      if The_File_Handle /= Base.INVALID_HANDLE_VALUE then  -- was able to open the file
        The_Return_Code := Ntqueryinformationfile (The_File_Handle,
                                                    The_Io_Status_Block'unchecked_access,
                                                    The_Info_Buffer'address,
                                                    File_Stream_Information'size / 8,
                                                    Request_File_Stream_Info);
        -- if The_Return_Code = Buffer_Overflow then retry with a bigger buffer
        if The_Return_Code >= 0 then -- Successful
          if The_Info_Buffer.Next_Entry /= 0 then
            loop
              The_Stream_Handler (Ada.Characters.Handling.To_String (
                The_Info_Buffer_Access.Name (1 .. The_Info_Buffer_Access.Name_Length / 2)),
                The_Info_Buffer_Access.Size);
              exit when The_Info_Buffer_Access.Next_Entry = 0;
              The_Info_Buffer_Access := The_Info_Buffer_Access + The_Info_Buffer_Access.Next_Entry;
            end loop;
          end if;
        end if;
        Unused := Base.CloseHandle (The_File_Handle);
      end if;
    end if;
  end Iterate_Alternate_Data_Streams_Of;


  procedure Iterate_Alternate_Wide_Data_Streams_Of (Filename : Wide_String) is
    File_Name                : aliased constant Wide_String := Filename & Wide_Nul;
    The_File_Handle          : Nt.HANDLE;
    Unused                   : Win32.BOOL;
    The_Return_Code          : Integer;
    The_Io_Status_Block      : aliased Io_Status_Block;
--  Buffer_Overflow          : constant Win32.Dword := 16#8000_0005#;
    Request_File_Stream_Info : constant := 22;
    Share_Mode               : constant := Nt.FILE_SHARE_READ + Nt.FILE_SHARE_WRITE;
    The_Info_Buffer          : aliased File_Stream_Information;
    type File_Stream_Information_Access is access all File_Stream_Information;
    The_Info_Buffer_Access   : File_Stream_Information_Access := The_Info_Buffer'access;
    use type Nt.HANDLE;

    function "+" (Left  : File_Stream_Information_Access;
                  Right : Natural) return File_Stream_Information_Access is

      function Convert is new Ada.Unchecked_Conversion (File_Stream_Information_Access, Integer);
      function Convert is new Ada.Unchecked_Conversion (Integer, File_Stream_Information_Access);
    begin
      return Convert (Convert (Left) + Right);
    end "+";

  begin
    if Ntqueryinformationfile /= null then
      The_File_Handle := Base.CreateFileW(Win32.Addr(File_Name),
                                          Nt.GENERIC_READ,
                                          Win32.DWORD (Share_Mode),
                                          null,
                                          Base.OPEN_EXISTING,
                                          0,
                                          System.Null_Address);
      if The_File_Handle /= Base.INVALID_HANDLE_VALUE then  -- was able to open the file
        The_Return_Code := Ntqueryinformationfile (The_File_Handle,
                                                   The_Io_Status_Block'unchecked_access,
                                                   The_Info_Buffer'address,
                                                   File_Stream_Information'size / 8,
                                                   Request_File_Stream_Info);
        -- if The_Return_Code = Buffer_Overflow then retry with a bigger buffer
        if The_Return_Code >= 0 then -- Successful
          if The_Info_Buffer.Next_Entry /= 0 then
            loop
              The_Stream_Handler (The_Info_Buffer_Access.Name (1 .. The_Info_Buffer_Access.Name_Length / 2),
                                  The_Info_Buffer_Access.Size);
              exit when The_Info_Buffer_Access.Next_Entry = 0;
              The_Info_Buffer_Access := The_Info_Buffer_Access + The_Info_Buffer_Access.Next_Entry;
            end loop;
          end if;
        end if;
        Unused := Base.CloseHandle (The_File_Handle);
      end if;
    end if;
  end Iterate_Alternate_Wide_Data_Streams_Of;


  function Path_Of (Value : String) return String is
    Lc_Value : constant String := Ada.Characters.Handling.To_Lower (Value);
    Start    : constant Natural := Ada.Strings.Fixed.Index (Lc_Value, "path=");
  begin
    if Start /= 0 then
      for Index in Start + 5 .. Lc_Value'last loop
        if Lc_Value (Index) = Nul then
          return Lc_Value (Start + 5 .. Index - 1);
        end if;
      end loop;
    end if;
    return "";
  end Path_Of;


  function Is_On_Network (Drive : Character) return Boolean is
    Name   : aliased constant String := Drive & ":" & Nul;
    Length : aliased Win32.DWORD := 0;
    function Convert is new Ada.Unchecked_Conversion (System.Address, Win32.LPSTR);
    use type Win32.DWORD;
  begin
    return Win32.Winnetwk.WNETGETCONNECTIONA (Win32.Addr (Name),
                                                          Convert (System.Null_Address),
                                                          Length'unchecked_access)
           = Win32.Winerror.ERROR_MORE_DATA;
  end Is_On_Network;


  function Unc_Of (Name : String) return String is
    Length      : aliased Win32.DWORD := 0;
    Return_Code : Win32.DWORD;
    function Convert is new Ada.Unchecked_Conversion (System.Address, Win32.LPSTR);
    use type Win32.DWORD;
  begin
    if Name'length > 2 and then Name(Name'first + 1) = ':' then
      declare
        Drive : aliased constant String := Name(Name'first .. Name'first + 1) & Nul;
      begin
        Return_Code := Win32.Winnetwk.WNETGETCONNECTIONA (Win32.Addr(Drive),
                                                          Convert (System.Null_Address),
                                                          Length'unchecked_access);
        if Return_Code = Win32.Winerror.ERROR_MORE_DATA then
          declare
            Unc_Name : String (1..Natural(Length));
          begin
            Return_Code := Win32.Winnetwk.WNETGETCONNECTIONA (Win32.Addr(Drive),
                                                              Convert (Unc_Name(Unc_Name'first)'address),
                                                              Length'unchecked_access);
            if Return_Code = Win32.Winerror.NOERROR then
              for Index in Unc_Name'range loop
                if Unc_Name(Index) = Nul then
                  return Unc_Name (Unc_Name'first .. Index - 1) & Name(Name'first + 2 .. Name'last);
                end if;
              end loop;
            end if;
          end;
        elsif Return_Code = Win32.Winerror.ERROR_NOT_CONNECTED then
          declare
            Lc_Name        : constant String := Ada.Characters.Handling.To_Lower (Name);
            Computers_Name : constant String := Windows.Computer_Name;
            Root_Key       : constant String := "SYSTEM\CurrentControlSet\Services\LanmanServer\Shares" & Nul;
            The_Key        : aliased Win32.Winreg.HKEY;
            The_Long_Code  : Win32.LONG;
            The_Index      : Win32.DWORD := Win32.DWORD'first;
            The_Name       : aliased String (1..1024);
            pragma Warnings (Off, The_Name);
            The_Name_Size  : aliased Win32.DWORD;
            The_Value_Type : aliased Win32.DWORD;
            The_Value      : aliased String (1..500);
            The_Value_Size : aliased Win32.DWORD;
            function Convert is new Ada.Unchecked_Conversion (System.Address, Win32.LPBYTE);
            use type Win32.LONG;
          begin
            if Computers_Name /= "" and then
               Win32.Winreg.RegOpenKeyA (Win32.Winreg.HKEY_LOCAL_MACHINE,
                                         Win32.Addr(Root_Key),
                                         The_Key'unchecked_access) = Win32.Winerror.NO_ERROR
            then -- Scan registry for shared resources
              loop
                The_Name_Size := The_Name'length;
                The_Value_Size := The_Value'length;
                The_Long_Code := Win32.Winreg.RegEnumValueA (The_Key,
                                                             The_Index,
                                                             Win32.Addr (The_Name),
                                                             The_Name_Size'unchecked_access,
                                                             null,
                                                             The_Value_Type'unchecked_access,
                                                             Convert(The_Value(The_Value'first)'address),
                                                             The_Value_Size'unchecked_access);
                if The_Long_Code = Win32.Winerror.NOERROR and then The_Value_Type = Nt.REG_MULTI_SZ then
                  declare
                    Path : constant String := Path_Of (The_Value (The_Value'first ..
                                                                  The_Value'first + Natural(The_Value_Size) - 1));
                  begin
                    if Path'length <= Lc_Name'length and then
                       Path = Lc_Name (Lc_Name'first .. Lc_Name'first + Path'length - 1)
                    then
                      The_Long_Code := Win32.Winreg.RegCloseKey (The_Key);
                      return "\\" & Computers_Name & "\" &
                             The_Name (The_Name'first .. The_Name'first + Natural(The_Name_Size) - 1) &
                             Lc_Name(Lc_Name'first + Path'length .. Lc_Name'last);
                    end if;
                  end;
                end if;
                exit when The_Long_Code = Win32.Winerror.ERROR_NO_MORE_ITEMS;
                The_Index := The_Index + 1;
              end loop;
              The_Long_Code := Win32.Winreg.RegCloseKey (The_Key);
            end if;
          end;
        end if;
      end;
    end if;
    return Name; -- Can't be translated
  end Unc_Of;


  function Original_Name_Of (Filename : String) return String is

    The_Filename  : String := Filename;
    The_First     : Positive := The_Filename'first;
    The_Index     : Positive := The_First;
    Was_Separator : Boolean := False;

    procedure Append_Original is

      function Original_Of (Segment : String) return String is
        use type Win32.Winnt.HANDLE;
        use type Win32.BOOL;
        Segment_Name : aliased constant String := Segment & Nul;
        The_Data     : aliased Win32.Winbase.WIN32_FIND_DATAA;
        The_Handle   : Win32.Winnt.HANDLE;
        Unused       : Win32.BOOL;
      begin
        The_Handle := Win32.Winbase.FindFirstFileA (Win32.Addr(Segment_Name),
                                                    The_Data'unchecked_access);
        if The_Handle = Win32.Winbase.INVALID_HANDLE_VALUE then
          return "?";
        else
          Unused := Win32.Winbase.FindClose (The_Handle);
          return Interfaces.C.To_Ada (Win32.To_C (The_Data.cFileName));
        end if;
      end Original_Of;

      Original_Name : constant String := Original_Of (Filename(Filename'first .. The_Index - 1));
      Last          : constant Natural := The_First + Original_Name'length;

    begin -- Append_Original
      The_Filename(The_First) := '\';
      The_Filename(The_First + 1 .. Last) := Original_Name;
      The_First := Last + 1;
    end Append_Original;

  begin
    if Filename'length > 3 and then Filename(Filename'first + 1) = ':' then
      The_Filename(1) := Ada.Characters.Handling.To_Upper(Filename(Filename'first));
      The_Filename(2) := ':';
      The_Index := Filename'first + 3;
      The_First := 3;
    end if;
    while The_Index <= Filename'last loop
      case Filename(The_Index) is
      when '.' =>
        null; -- Skip special directores
      when '\' | '/' =>
        if not Was_Separator then
          if Filename(The_First) = '.' then
            The_First := The_Index;
          else
            Append_Original;
            Was_Separator := True;
          end if;
        end if;
      when others =>
        Was_Separator := False;
      end case;
      The_Index := The_Index + 1;
    end loop;
    if not Was_Separator then
      Append_Original;
    end if;
    return The_Filename(The_Filename'first .. The_First - 1);
  end Original_Name_Of;


  begin
    if Windows.Is_Nt then
      Loadntqueryinformationfile;
    end if;
  end Windows.Files;
