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

with System;
with Win32;
with Win32.Winbase;
with Win32.Windef;
with Win32.Winnt;

package Windows is

  package Base renames Win32.Winbase;
  package Nt   renames Win32.Winnt;

  No_Module_Information    : exception;
  Process_Creation_Failure : exception;

  subtype Time is Base.SYSTEMTIME;
  subtype Thread_Id is Win32.DWORD;
  subtype Process_Id is Win32.DWORD;
  subtype Hmodule is Nt.HANDLE;

  Current_Process : constant Process_Id := 0;

  function Is_Nt return Boolean;

  function Is_Win98 return Boolean;

  function The_Time_Now return Time;

  function Image_Of (The_Time : Time) return String;

  function Is_First_Instance return Boolean;
  -- Returns True if this is the only occurence of this program executing.

  function User_Name return String;

  function Environment_Variable_Of (Name : String) return String;

  function Current_Thread_Id return Thread_Id;

  procedure Reduce_Thread_Priority;
  -- Reduce the current thread priority to 1 point below normal

  procedure Set_Priority_Class_To_Idle;
  -- Sets the priority class of the current process to Idle
  -- Indicates a process whose threads should only run when the system is idle.

  type Process_Entry is record
    Entry_Size          : Win32.DWORD;
    Usage_Count         : Win32.DWORD;
    The_Process_Id      : Process_Id;
    Default_Heap_Id     : Win32.DWORD;
    The_Module_Id       : Win32.DWORD;
    Nr_Of_Threads       : Win32.DWORD;
    Parent_Process_Id   : Win32.DWORD;
    Base_Priority       : Win32.LONG;
    Flags               : Win32.DWORD;
    Executable_Filename : Win32.CHAR_Array (0..Win32.Windef.MAX_PATH);
    -- Note: Current versions of windows (Win2k Sp4) only ever
    -- return the first 15 characters!
  end record;
  for Process_Entry use record
    Entry_Size          at  0 range 0 .. 31;
    Usage_Count         at  4 range 0 .. 31;
    The_Process_Id      at  8 range 0 .. 31;
    Default_Heap_Id     at 12 range 0 .. 31;
    The_Module_Id       at 16 range 0 .. 31;
    Nr_Of_Threads       at 20 range 0 .. 31;
    Parent_Process_Id   at 24 range 0 .. 31;
    Base_Priority       at 28 range 0 .. 31;
    Flags               at 32 range 0 .. 31;
    Executable_Filename at 36 range 0 .. (Win32.Windef.MAX_PATH + 1) * 8 - 1;
  end record;
  for Process_Entry'size use 2376;


  type Process_Entry_Ptr is access all Process_Entry;

  type Module_Entry is record
    Entry_Size         : Win32.DWORD;
    The_Module_Id      : Win32.DWORD;
    The_Process_Id     : Process_Id;
    Global_Usage_Count : Win32.DWORD;
    Usage_This_Process : Win32.DWORD;
    Base_Address       : Win32.LPVOID;
    Module_Size        : Win32.DWORD;
    The_Handle         : Hmodule;
    Module_Name        : Win32.CHAR_Array (0..255);
    Module_Filename    : Win32.CHAR_Array (0..Win32.Windef.MAX_PATH);
  end record;
  for Module_Entry use record
    Entry_Size         at   0 range 0 .. 31;
    The_Module_Id      at   4 range 0 .. 31;
    The_Process_Id     at   8 range 0 .. 31;
    Global_Usage_Count at  12 range 0 .. 31;
    Usage_This_Process at  16 range 0 .. 31;
    Base_Address       at  20 range 0 .. 31;
    Module_Size        at  24 range 0 .. 31;
    The_Handle         at  28 range 0 .. 31;
    Module_Name        at  32 range 0 .. 2047;
    Module_Filename    at 288 range 0 .. (Win32.Windef.MAX_PATH + 1) * 8 - 1;
  end record;
  for Module_Entry'size use 4392;
  type Module_Entry_Ptr is access all Module_Entry;


  generic
    with procedure Process_Information (The_Information : Process_Entry);
  procedure Iterate_Processes;
  --
  -- Calls Process_Information for each process known to the system, passing as
  -- its one and only parameter a process entry structure detailing information
  -- known about the process.


  generic
    with procedure Module_Information (The_Information : Module_Entry);
  procedure Iterate_Modules (The_Process : Process_Id := Current_Process);
  --
  -- Calls Module_Information for each module within the specified processe
  -- passing as its one and only parameter a module entry structure detailing
  -- information known about the module.
  -- By default iteration is made over the current process


  function First_Module_Of (The_Process : Process_Id) return Module_Entry;
  --
  -- Returns the Module data of the first module in the process executable
  --

  function Module_From_Address (The_Address : System.Address) return Module_Entry;
  --
  -- Returns the Module data of the module within the current process
  -- containing the specified address
  --

  function Is_Dll (The_Module : Hmodule) return Boolean;
  --
  -- Returns True if the specified module is a DLL within the current process
  --

  function Am_Dll return Boolean;
  --
  -- Returns True if the current code is executing in a DLL
  --

  function Name_Of (The_Module : Module_Entry) return String;
  --
  -- Returns the module name from out of the module entry
  --

  function Filename_Of (The_Module : Module_Entry) return String;
  --
  -- Returns the module filename from out of the module entry
  --

  function Profile (Key           : String;
                    Application   : String;
                    Configuration : String) return String;
  --
  -- A wrapper arounf GetPrivateProfileString to return the vaule
  -- associated with a key for a specified application within a named
  -- configuation (.ini) file.
  --
  -- The null strings is returned if key cannot be resolved.
  --

  function Origin_Folder return String;
  --
  -- Returns the folder name from which the executable was started
  -- NB: The folder name is terminated with a '\'
  --

  type Console_Type is (None, Normal, Invisible);

  procedure Create_Process (Executable     : String;
                            Parameters     : String := "";
                            Environment    : String := "";
                            Current_Folder : String := "";
                            Std_Input      : Nt.HANDLE := System.Null_Address;
                            Std_Output     : Nt.HANDLE := System.Null_Address;
                            Std_Error      : Nt.HANDLE := System.Null_Address;
                            Console        : Console_Type := Normal);
  --
  -- Procedure to create a detached process.
  --
  -- Note: The environment should be a single string composed of a series of variables names
  --       followed by an equals symbol followed by its value terminated by an ascii zero
  --       The null string causes the new process to inherit the environment of the parent.
  --
  -- Note: If the current folder is set to the null string then the current folder of new process
  --       is set to equal the current folder of the parent (creating process)
  --

  function Executing_As_Service return Boolean;
  --
  -- Returns True if the current process is executing as a service
  --

  function Computer_Name return String;

  function Computer_Name return Wide_String;
  --
  -- Returns the computer name of the current system
  --

  function Process_Handle_Count return Natural;
  --
  -- Returns the handle count of the current process.
  --

end Windows;
