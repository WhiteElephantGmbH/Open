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

with Log;
with System;
with Text;
with Windows;
with Win32.Winbase;
with Win32.Winerror;
with Win32.Winnt;

package body Process is

  package Base renames Win32.Winbase;
  package Nt   renames Win32.Winnt;


  function Execution_Of (Executable     : String;
                         Parameters     : String;
                         Environment    : String := "";
                         Current_Folder : String := "") return String
  is
    In_Temp      : aliased Nt.HANDLE;
    Inbound      : aliased Nt.HANDLE;
    Outbound     : aliased Nt.HANDLE;
    Security     : aliased Base.SECURITY_ATTRIBUTES;
    Default_Size : constant Win32.DWORD := 0;
    The_Data     : String (1..1000);
    The_Length   : aliased Win32.DWORD;
    Temp         : Win32.BOOL;
    The_Result   : Text.String;
    use type Win32.BOOL;
    use type Win32.DWORD;
  begin
    Security.nLength             := Win32.DWORD (Base.SECURITY_ATTRIBUTES'size / 8);
    Security.lpSecurityDescriptor:= System.Null_Address;
    Security.bInheritHandle      := Win32.TRUE;
    if Base.CreatePipe (hReadPipe        => In_Temp'unchecked_access,
                        hWritePipe       => Outbound'unchecked_access,
                        lpPipeAttributes => Security'unchecked_access,
                        nSize            => Default_Size) /= Win32.TRUE
    then
      Log.Write ("!!! Process.Createpipe failed");
      raise Execution_Failed;
    end if;
    --
    -- Duplicate handle but make non inheritable so that child can close pipe
    --
    if Base.DuplicateHandle (Base.GetCurrentProcess, In_Temp,
                             Base.GetCurrentProcess, Inbound'unchecked_access,
                             0, -- Desired access ignored if same access
                             Win32.FALSE, -- Non inheritable
                             Nt.DUPLICATE_SAME_ACCESS) /= Win32.TRUE
    then
      Log.Write ("!!! Process.Duplicatehandle failed");
      raise Execution_Failed;
    end if;
    Temp := Base.CloseHandle (In_Temp); -- No longer used

    Windows.Create_Process (Executable      => Executable,
                            Parameters      => Parameters,
                            Environment     => Environment,
                            Current_Folder  => Current_Folder,
                            Std_Error       => Outbound,
                            Std_Output      => Outbound,
                            Create_Detached => True);
    Temp := Base.CloseHandle (Outbound); -- No longer used, child has a copy
    loop
      if Base.ReadFile (Inbound,
                        The_Data'address,
                        The_Data'length,
                        The_Length'unchecked_access,
                        null) /= Win32.TRUE
      then
        exit when Base.GetLastError = Win32.Winerror.ERROR_BROKEN_PIPE;
        Log.Write ("!!! Process.Readfile Error =" & Win32.DWORD'image(Base.GetLastError));
        raise Execution_Failed;
      else
        Text.Append_To (The_Result, The_Data (The_Data'first .. The_Data'first + Natural(The_Length) - 1));
      end if;
    end loop;
    Temp := Base.CloseHandle (Inbound); -- No longer used
    return Text.String_Of(The_Result);

  exception
  when Execution_Failed =>
    raise;
  when Item: others =>
    Log.Write ("!!! Process.Execution_Of", Item);
    Log.Write ("    Last Error =" & Win32.DWORD'image(Base.GetLastError));
    raise Execution_Failed;
  end Execution_Of;

end Process;

