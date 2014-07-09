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
with Interfaces.C;
with Interfaces.C.Strings;
with Win32.Winnls;
with Win32.Winerror;

package body Windows is

  pragma Linker_Options ("-lntdll");

  package C renames  Interfaces.C;

  function Is_Nt return Boolean is
    Temp_Bool           : Win32.BOOL;
    Version_Information : aliased Base.OSVERSIONINFOA;
    use type Win32.DWORD;
  begin
    Version_Information.dwOSVersionInfoSize := Win32.DWORD (Base.OSVERSIONINFOA'size / 8);
    Temp_Bool := Base.GetVersionEx (Version_Information'unchecked_access);
    return (Version_Information.dwPlatformId = Base.VER_PLATFORM_WIN32_NT) and
           (Version_Information.dwMajorVersion >= 4);
  end Is_Nt;


  function Is_Win98 return Boolean is
    Temp_Bool                  : Win32.BOOL;
    Version_Information        : aliased Base.OSVERSIONINFOA;
    Ver_Platform_Win32_Windows : constant := 1;
    use type Win32.DWORD;
  begin
    Version_Information.dwOSVersionInfoSize := Win32.DWORD (Base.OSVERSIONINFOA'size / 8);
    Temp_Bool := Base.GetVersionEx (Version_Information'unchecked_access);
    return (Version_Information.dwPlatformId = Ver_Platform_Win32_Windows) and
           (Version_Information.dwMajorVersion = 4) and
           (Version_Information.dwMinorVersion >= 10);
  end Is_Win98;


  function The_Time_Now return Time is
    The_System_Time : aliased Base.SYSTEMTIME;
  begin
    Base.GetLocalTime (The_System_Time'unchecked_access);
    return The_System_Time;
  end The_Time_Now;


  function Image_Of (The_Time : Time) return String is
    Date_Size       : Integer;
    Max_Date_Size   : constant := 50;
    Date_Buffer     : aliased String (1..Max_Date_Size);
    pragma Warnings (Off, Date_Buffer);
    Time_Size       : Integer;
    Max_Time_Size   : constant := 50;
    Time_Buffer     : aliased String (1..Max_Date_Size);
    pragma Warnings (Off, Time_Buffer);
    The_System_Time : aliased Base.SYSTEMTIME;
  begin
    The_System_Time := The_Time;
    Date_Size := Integer(Win32.Winnls.GetDateFormat (Nt.LOCALE_USER_DEFAULT,
                                                     0, The_System_Time'unchecked_access, null,
                                                     Win32.Addr(Date_Buffer), Max_Date_Size));
    Time_Size := Integer(Win32.Winnls.GetTimeFormat (Nt.LOCALE_USER_DEFAULT,
                                                     0, The_System_Time'unchecked_access, null,
                                                     Win32.Addr(Time_Buffer), Max_Time_Size));
    if Date_Size > Max_Date_Size then
      Date_Size := Max_Date_Size + 1;
    end if;
    if Time_Size > Max_Date_Size then
      Time_Size := Max_Date_Size + 1;
    end if;
    return Date_Buffer (1..Date_Size - 1) & " " & Time_Buffer (1..Time_Size - 1);
  end Image_Of;


  function Is_First_Instance_Of (The_Name : String) return Boolean is
    The_Handle : Win32.Windef.HWND;
    use type Win32.DWORD;
  begin
    The_Handle := Base.CreateMutex (null, Win32.FALSE, Win32.Addr(The_Name));
    return Base.GetLastError = 0; -- We succeeded in creating the first occurrence of the mutex
  end Is_First_Instance_Of;


  function Is_First_Instance return Boolean is
    Filename_Size     : Natural;
    Max_Filename_Size : constant := Win32.Windef.MAX_PATH;
    The_Filename      : aliased String (1..Max_Filename_Size);
    pragma Warnings (Off, The_Filename);
    Start_Position    : Natural;
  begin
    Filename_Size := Natural(Base.GetModuleFileName (System.Null_Address,
                                                              Win32.Addr(The_Filename),
                                                              Win32.DWORD(Max_Filename_Size)));
    Start_Position := Filename_Size;
    while (Start_Position > 0) and then (The_Filename(Start_Position) /= '\') loop
      Start_Position := Start_Position - 1;  -- look for delimeter
    end loop;
    return Is_First_Instance_Of (The_Filename (Start_Position + 1 .. Filename_Size + 1));
  end Is_First_Instance;


  function User_Name return String is
    type Dword_Access is access all Win32.DWORD;
    Max_Username_Size : constant := 100;
    Username_Size     : aliased Win32.DWORD := Max_Username_Size;
    Name_Size_Access  : constant Dword_Access := Username_Size'access;
    The_Username      : aliased String (1..Max_Username_Size);
    pragma Warnings (Off, The_Username);
    function Convert is new Ada.Unchecked_Conversion (Dword_Access, Win32.LPDWORD);
  use type Win32.DWORD;
  use type Win32.BOOL;
  begin
    if Base.GetUserName (Win32.Addr(The_Username), Convert(Name_Size_Access)) = Win32.TRUE then
      return The_Username (1..Natural(Username_Size) - 1);
    else
      return "";
    end if;
  end User_Name;


  function Environment_Variable_Of (Name : String) return String is
    Variable_Name : aliased constant String := Name & Ascii.Nul;
    The_Length    : Win32.DWORD;
    use type Win32.DWORD;
  begin
    The_Length := Win32.Winbase.GetEnvironmentVariable (lpName   => Win32.Addr (Variable_Name),
                                                        lpBuffer => null,
                                                        nSize    => 0);
    if The_Length = 0 then
       return ""; -- Variable not defined
    end if;
    declare
      The_Value : aliased String(1 .. Natural(The_Length) + 1);
      pragma Warnings (Off, The_Value);
    begin
      The_Length := Win32.Winbase.GetEnvironmentVariable (lpName   => Win32.Addr (Variable_Name),
                                                          lpBuffer => Win32.Addr (The_Value),
                                                          nSize    => The_Value'length);
       return The_Value(1..Natural(The_Length));
    end;
  end Environment_Variable_Of;


  function Current_Thread_Id return Thread_Id is
  begin
    return Base.GetCurrentThreadId;
  end Current_Thread_Id;


  procedure Reduce_Thread_Priority is
    Temp          : Win32.BOOL;
    Current_Tread : constant Nt.HANDLE := Base.GetCurrentThread;
  begin
    Temp := Base.SetThreadPriority (Current_Tread, Base.THREAD_PRIORITY_BELOW_NORMAL);
  end Reduce_Thread_Priority;


  procedure Set_Priority_Class_To_Idle is
    Temp    : Win32.BOOL;
    Process : constant Nt.HANDLE := Base.GetCurrentProcess;
  begin
    Temp := Base.SetPriorityClass (Process, Base.IDLE_PRIORITY_CLASS);
  end Set_Priority_Class_To_Idle;

  function Create_Tool_Help32_Snapshot (Flags : Win32.DWORD;
                                        Id    : Process_Id)
           return Nt.HANDLE;
  pragma Import (Stdcall, Create_Tool_Help32_Snapshot, "CreateToolhelp32Snapshot");


  function Process32_First (Handle      : Nt.HANDLE;
                            Information : Process_Entry_Ptr)
           return Win32.BOOL;
  pragma Import (Stdcall, Process32_First, "Process32First");


  function Process32_Next (Handle      : Nt.HANDLE;
                           Information : Process_Entry_Ptr)
           return Win32.BOOL;
  pragma Import (Stdcall, Process32_Next, "Process32Next");


  procedure Iterate_Processes is
    The_Handle          : Nt.HANDLE;
    Th32cs_Snap_Process : constant Win32.DWORD := 16#02#;
    The_Information     : aliased Process_Entry;
    Temp                : Win32.BOOL;
    use type Nt.HANDLE;
    use type Win32.BOOL;
  begin
    The_Handle := Create_Tool_Help32_Snapshot (Th32cs_Snap_Process, 0);
    if The_Handle /= Base.INVALID_HANDLE_VALUE then
      The_Information.Entry_Size := Win32.DWORD(Process_Entry'size / 8); -- size in bytes.
      if Process32_First (The_Handle, The_Information'unchecked_access) /= Win32.FALSE then
        loop
          Process_Information (The_Information);
          exit when Process32_Next (The_Handle, The_Information'unchecked_access) = Win32.FALSE;
        end loop;
      end if;
      Temp := Base.CloseHandle (The_Handle);
    end if;
  end Iterate_Processes;


  function Module32_First (Handle      : Nt.HANDLE;
                           Information : Module_Entry_Ptr)
           return Win32.BOOL;
  pragma Import (Stdcall, Module32_First, "Module32First");


  function Module32_Next (Handle      : Nt.HANDLE;
                          Information : Module_Entry_Ptr)
           return Win32.BOOL;
  pragma Import (Stdcall, Module32_Next, "Module32Next");


  procedure Iterate_Modules (The_Process : Process_Id := Current_Process) is
    The_Handle         : Nt.HANDLE;
    Th32cs_Snap_Module : constant Win32.DWORD := 16#08#;
    The_Information    : aliased Module_Entry;
    Temp               : Win32.BOOL;
    use type Nt.HANDLE;
    use type Win32.BOOL;
  begin
    The_Handle := Create_Tool_Help32_Snapshot (Th32cs_Snap_Module, The_Process);
    if The_Handle /= Base.INVALID_HANDLE_VALUE then
      The_Information.Entry_Size := Win32.DWORD(Module_Entry'size / 8); -- size in bytes.
      if Module32_First (The_Handle, The_Information'unchecked_access) /= Win32.FALSE then
        loop
          Module_Information (The_Information);
          exit when Module32_Next (The_Handle, The_Information'unchecked_access) = Win32.FALSE;
        end loop;
      end if;
      Temp := Base.CloseHandle (The_Handle);
    end if;
  end Iterate_Modules;


  function First_Module_Of (The_Process : Process_Id) return Module_Entry is
    The_Handle         : Nt.HANDLE;
    Th32cs_Snap_Module : constant Win32.DWORD := 16#08#;
    The_Information    : aliased Module_Entry;
    Have_Data          : Boolean := False;
    Temp               : Win32.BOOL;
    use type Nt.HANDLE;
    use type Win32.BOOL;
  begin
    The_Handle := Create_Tool_Help32_Snapshot (Th32cs_Snap_Module, The_Process);
    if The_Handle /= Base.INVALID_HANDLE_VALUE then
      The_Information.Entry_Size := Win32.DWORD(Module_Entry'size / 8); -- size in bytes.
      Have_Data := Module32_First (The_Handle, The_Information'unchecked_access) /= Win32.FALSE;
      Temp := Base.CloseHandle (The_Handle);
    end if;
    if Have_Data then
      return The_Information;
    else
      raise No_Module_Information;
    end if;
  end First_Module_Of;


  function Module_From_Address (The_Address : System.Address) return Module_Entry is
    The_Handle          : Nt.HANDLE;
    Th32cs_Snap_Module : constant Win32.DWORD := 16#08#;
    The_Information    : aliased Module_Entry;
    Temp               : Win32.BOOL;
    Have_Data          : Boolean := False;
    use type Nt.HANDLE;
    use type Win32.BOOL;
    function Convert is new Ada.Unchecked_Conversion (System.Address, Win32.DWORD);
    use type Win32.DWORD;
  begin
    The_Handle := Create_Tool_Help32_Snapshot (Th32cs_Snap_Module, 0);
    if The_Handle /= Base.INVALID_HANDLE_VALUE then
      The_Information.Entry_Size := Win32.DWORD(Module_Entry'size / 8); -- size in bytes.
      if Module32_First (The_Handle, The_Information'unchecked_access) /= Win32.FALSE then
        loop
          Have_Data := (The_Address >= The_Information.Base_Address) and then
                       (Convert(The_Address) <= Convert(The_Information.Base_Address) + The_Information.Module_Size);
          exit when Have_Data or else Module32_Next (The_Handle, The_Information'unchecked_access) = Win32.FALSE;
        end loop;
      end if;
      Temp := Base.CloseHandle (The_Handle);
    end if;
    if Have_Data then
      return The_Information;
    else
      raise No_Module_Information;
    end if;
  end Module_From_Address;


  function Is_Dll (The_Module : Hmodule) return Boolean is
    Module_Data : constant Module_Entry := First_Module_Of (0);
    use type Hmodule;
  begin
    return The_Module /= Module_Data.The_Handle;
  end Is_Dll;


  function Am_Dll return Boolean is
    First_Module_Data : constant Module_Entry := First_Module_Of (0);
    Current_Module    : constant Module_Entry := Module_From_Address (Am_Dll'address);
    use type Hmodule;
  begin
    return Current_Module.The_Handle /= First_Module_Data.The_Handle;
  end Am_Dll;


  function Name_Of (The_Module : Module_Entry) return String is
    The_String : constant String
               := C.Strings.Value (Win32.To_Chars_Ptr (Win32.PSTR'(Win32.Addr (The_Module.Module_Name))));
  begin
    for Index in reverse The_String'range loop
      if The_String(Index) = '.' then
        return The_String (The_String'first..Index - 1);
      end if;
    end loop;
    return  The_String;
  end Name_Of;


  function Filename_Of (The_Module : Module_Entry) return String is
  begin
    return C.Strings.Value (Win32.To_Chars_Ptr (Win32.PSTR'(Win32.Addr (The_Module.Module_Filename))));
  end Filename_Of;


  function Profile (Key           : String;
                    Application   : String;
                    Configuration : String) return String is
    Key_Name           : aliased constant String := Key & Ascii.Nul;
    Application_Name   : aliased constant String := Application & Ascii.Nul;
    Configuration_Name : aliased constant String := Configuration & Ascii.Nul;
    Buffer_Size        : Natural := 300;
    Amount_Returned    : Natural;
  begin
    loop
      declare
        Return_String : aliased String (1..Buffer_Size);
        pragma Warnings (Off, Return_String);
      begin
        Amount_Returned := Natural (Base.GetPrivateProfileString (Win32.Addr(Application_Name),
                                                                  Win32.Addr(Key_Name),
                                                                  null, -- Default
                                                                  Win32.Addr (Return_String),
                                                                  Return_String'length,
                                                                  Win32.Addr(Configuration_Name)));
        if Amount_Returned < Buffer_Size - 1 then
          return Return_String (Return_String'first..Return_String'first + Amount_Returned - 1);
        end if;
        Buffer_Size := Buffer_Size * 2;  -- Buffer was too small so double it and try again
      end;
    end loop;
  end Profile;


  function Origin_Folder return String is
    Module        : constant Windows.Module_Entry
                  := Windows.Module_From_Address (Origin_Folder'address);
    Size          : Natural;
    Return_String : aliased String (1..300);
    pragma Warnings (Off, Return_String);
  begin
    Size := Natural (Base.GetModuleFileName (Module.The_Handle,
                                             Win32.Addr(Return_String),
                                             Return_String'length));
    while (Size > 0) and then Return_String (Size) /= '\' loop
      Size := Size - 1;
    end loop;
    return Return_String (Return_String'first..Return_String'first + Size - 1);
  end Origin_Folder;


  procedure Create_Process (Executable      : String;
                            Parameters      : String := "";
                            Environment     : String := "";
                            Current_Folder  : String := "";
                            Std_Input       : Nt.HANDLE := System.Null_Address;
                            Std_Output      : Nt.HANDLE := System.Null_Address;
                            Std_Error       : Nt.HANDLE := System.Null_Address;
                            Create_Detached : Boolean := False) is

    Startup_Info        : aliased Win32.Winbase.STARTUPINFOA;
    Process_Information : aliased Win32.Winbase.PROCESS_INFORMATION;

    Environment_Block  : aliased constant String
                       := Environment & Ascii.Nul & Ascii.Nul; -- An extra null in case caller forgot
    Environment_Ptr    : Win32.LPVOID := System.Null_Address;

    Current_Directory  : aliased constant String := Current_Folder & Ascii.Nul;
    Directory_Ptr      : Win32.LPCSTR := null;

    The_Creation_Flags : Win32.DWORD := 0;
    Inherit_Handles    : Win32.BOOL := Win32.FALSE;
    Is_Ok              : Win32.BOOL;

    use type Win32.BOOL;
    use type Win32.DWORD;
    use type System.Address;
  begin
    Startup_Info.cb             := Win32.DWORD (Win32.Winbase.STARTUPINFOA'size / 8);
    Startup_Info.lpReserved     := null;
    Startup_Info.lpDesktop      := null;
    Startup_Info.lpTitle        := null;
    Startup_Info.dwX            := 0;
    Startup_Info.dwY            := 0;
    Startup_Info.dwXSize        := 0;
    Startup_Info.dwYSize        := 0;
    Startup_Info.dwXCountChars  := 0;
    Startup_Info.dwYCountChars  := 0;
    Startup_Info.dwFillAttribute:= 0;
    Startup_Info.dwFlags        := 0;
    Startup_Info.wShowWindow    := 0;
    Startup_Info.cbReserved2    := 0;
    Startup_Info.lpReserved2    := null;
    Startup_Info.hStdInput      := Std_Input;
    Startup_Info.hStdOutput     := Std_Output;
    Startup_Info.hStdError      := Std_Error;

    if (Std_Input  /= System.Null_Address) or
       (Std_Output /= System.Null_Address) or
       (Std_Error  /= System.Null_Address)
    then
      Startup_Info.dwFlags := Win32.Winbase.STARTF_USESTDHANDLES;
      Inherit_Handles := Win32.TRUE;
      if Std_Input = System.Null_Address then
        Startup_Info.hStdInput  := Base.GetStdHandle (Base.STD_INPUT_HANDLE);
      end if;
      if Std_Output = System.Null_Address then
        Startup_Info.hStdOutput := Base.GetStdHandle (Base.STD_OUTPUT_HANDLE);
      end if;
      if Std_Error = System.Null_Address then
        Startup_Info.hStdError  := Base.GetStdHandle (Base.STD_ERROR_HANDLE);
      end if;
    end if;

    if Environment /= "" then
      Environment_Ptr := Environment_Block(Environment_Block'first)'address;
    end if;
    if Current_Folder /= "" then
      Directory_Ptr := Win32.Addr (Current_Directory);
    end if;
    if Create_Detached then
      The_Creation_Flags := The_Creation_Flags + Base.DETACHED_PROCESS;
    end if;
    if Parameters = "" then
      declare
        Executable_Name : aliased constant String := Executable & Ascii.Nul;
      begin
        if Win32.Winbase.CreateProcess (Win32.Addr (Executable_Name),
                                        null,
                                        null,
                                        null,
                                        Inherit_Handles,
                                        The_Creation_Flags,
                                        Environment_Ptr,
                                        Directory_Ptr,
                                        Startup_Info'unchecked_access,
                                        Process_Information'unchecked_access
                                       ) /= Win32.TRUE
        then
          raise Process_Creation_Failure;
        end if;
      end;
    else
      declare
        Executable_With_Parameters : aliased constant String := Executable & " " & Parameters & Ascii.Nul;
      begin
        if Win32.Winbase.CreateProcess (null,
                                        Win32.Addr (Executable_With_Parameters),
                                        null,
                                        null,
                                        Inherit_Handles,
                                        The_Creation_Flags,
                                        Environment_Ptr,
                                        Directory_Ptr,
                                        Startup_Info'unchecked_access,
                                        Process_Information'unchecked_access
                                       ) /= Win32.TRUE
        then
          raise Process_Creation_Failure;
        end if;
      end;
    end if;
    Is_Ok := Base.CloseHandle (Process_Information.hProcess);
    Is_Ok := Base.CloseHandle (Process_Information.hThread);
  end Create_Process;


  procedure Free_Sid (Sid: Nt.PSID);
  pragma Import(Stdcall, Free_Sid, "FreeSid");


  function Executing_As_Service return Boolean is
    The_Result    : Boolean := False;
    Token_Handle  : aliased Nt.HANDLE;
    Required_Size : aliased Win32.DWORD;
    Is_Ok         : Win32.BOOL;
    use type Win32.BOOL;
    use type Win32.DWORD;
  begin
    if Base.OpenProcessToken (Base.GetCurrentProcess, Nt.TOKEN_QUERY, Token_Handle'unchecked_access) = Win32.TRUE then
      if Base.GetTokenInformation (Token_Handle,
                                   Nt.TokenGroups,
                                   System.Null_Address,
                                   0,
                                   Required_Size'access) /= Win32.TRUE and then
         Win32.Winbase.GetLastError = Win32.Winerror.ERROR_INSUFFICIENT_BUFFER
      then
        declare
          Nr_Of_Groups    : constant Win32.DWORD
                          := 1 + (Required_Size * 8 - Win32.DWORD'size) / Nt.SID_AND_ATTRIBUTES'size;
          --
          -- Make sure buffer is always bigger than Required size and use Group count
          -- as the required size can be larger than actually required just to hold the groups
          -- Note: It may not even be a whole number of Sid and Attributes so +1 to round up!
          --
          type Sid_And_Attributes_Array is array (1..Nr_Of_Groups) of Nt.SID_AND_ATTRIBUTES;
          type Token_Groups is record
            Group_Count : Win32.DWORD;
            Groups      : Sid_And_Attributes_Array;
          end record;
          The_Group_Info  : Token_Groups;
          Authority       : aliased Nt.SID_IDENTIFIER_AUTHORITY := Nt.SECURITY_NT_AUTHORITY;
          Interactive_Sid : aliased Nt.PSID := System.Null_Address;
          Service_Sid     : aliased Nt.PSID := System.Null_Address;
          Sid_Found       : Boolean := False;
          use type Nt.PSID;
        begin
          if Base.GetTokenInformation (Token_Handle,
                                       Nt.TokenGroups,
                                       The_Group_Info'address,
                                       Win32.DWORD(Token_Groups'size / 8),
                                       Required_Size'access) = Win32.TRUE
          then -- Have got the token info
            if Base.AllocateAndInitializeSid (Authority'unchecked_access, 1, Nt.SECURITY_INTERACTIVE_RID,
                                              0,0,0,0,0,0,0, Interactive_Sid'access) = Win32.TRUE and
               Base.AllocateAndInitializeSid (Authority'unchecked_access, 1, Nt.SECURITY_SERVICE_RID,
                                              0,0,0,0,0,0,0, Service_Sid'access) = Win32.TRUE
            then
              for The_Group in 1 .. The_Group_Info.Group_Count loop
                if Base.EqualSid (The_Group_Info.Groups(The_Group).Sid, Interactive_Sid) = Win32.TRUE then
                  Sid_Found := True;
                  exit;  -- This process can't be a service
                elsif Base.EqualSid (The_Group_Info.Groups(The_Group).Sid, Service_Sid) = Win32.TRUE then
                  Sid_Found := True;
                  The_Result := True;
                  exit;  -- This process is running as a service in a user account
                end if;
              end loop;
              if not Sid_Found then -- If neither Interactive nor Service assume process is runnning as
                The_Result := True; -- a service, most likely as LocalSystem
              end if;
            end if;
            if Interactive_Sid /= System.Null_Address then
              Free_Sid (Interactive_Sid);
            end if;
            if Service_Sid /= System.Null_Address then
              Free_Sid (Service_Sid);
            end if;
          end if;
        end;
      end if;
      Is_Ok := Base.CloseHandle (Token_Handle);
    end if;
    return The_Result;
  end Executing_As_Service;


  function Computer_Name return String is
    The_Name : aliased String (1 .. Base.MAX_COMPUTERNAME_LENGTH + 1);
    pragma Warnings (Off, The_Name);
    The_Size : aliased Win32.DWORD := The_Name'length;
    use type Win32.BOOL;
  begin
    if Base.GetComputerNameA (Win32.Addr (The_Name), The_Size'unchecked_access) = Win32.TRUE then
      return The_Name (The_Name'first .. The_Name'first + Natural(The_Size) - 1);
    else
      return "";
    end if;
  end Computer_Name;


  function Computer_Name return Wide_String is
    The_Name : aliased Wide_String (1 .. Base.MAX_COMPUTERNAME_LENGTH + 1);
    pragma Warnings (Off, The_Name);
    The_Size : aliased Win32.DWORD := The_Name'length;
    use type Win32.BOOL;
  begin
    if Base.GetComputerNameW (Win32.Addr (The_Name), The_Size'unchecked_access) = Win32.TRUE then
      return The_Name (The_Name'first .. The_Name'first + Natural(The_Size) - 1);
    else
      return "";
    end if;
  end Computer_Name;


  function Nt_Query_System_Information (System_Information_Class : Natural;
                                        System_Information       : System.Address;
                                        Length                   : Win32.ULONG;
                                        Result_Length            : Win32.PULONG) return Win32.ULONG;
  pragma Import(Stdcall, Nt_Query_System_Information, "NtQuerySystemInformation");


  function Process_Handle_Count return Natural is
    Unique_Current_Process      : constant Win32.DWORD := Base.GetCurrentProcessId;
    System_Process_Information  : constant := 5;
    Status_Info_Length_Mismatch : constant := 16#C0000004#; -- From Ntstatus.h
    The_Requested_Size          : Win32.ULONG := 4000;
    The_Size                    : aliased Win32.ULONG := 0;
    use type Win32.ULONG;
  begin
    loop
      declare
        The_Buffer  : aliased array (1..The_Requested_Size / 4) of Win32.ULONG;
        Return_Code : Win32.ULONG;
      begin
        Return_Code := Nt_Query_System_Information (System_Process_Information,
                                                    The_Buffer'address,
                                                    The_Requested_Size,
                                                    The_Size'unchecked_access);
        if Return_Code = Win32.Winerror.NOERROR then
          declare
            Pointer : Win32.ULONG := The_Buffer'first;
          begin
            loop
              if The_Buffer(Pointer + 17) = Unique_Current_Process then
                return Natural(The_Buffer(Pointer + 19));
              end if;
              exit when The_Buffer(Pointer) = 0;
              Pointer := Pointer + The_Buffer(Pointer) / 4;
            end loop;
          end;
          return 0; -- Current process not found!
        elsif Return_Code = Status_Info_Length_Mismatch then
          The_Requested_Size := The_Requested_Size * 2;
        else
          return 0; -- Unexpected return code
        end if;
      end;
    end loop;
  exception
    when others => return 0; -- Unexpected exception
  end Process_Handle_Count;


end Windows;
