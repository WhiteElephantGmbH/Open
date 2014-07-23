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

with Ada.Strings.Wide_Unbounded;
with Unsigned; pragma Elaborate_All (Unsigned);

package Windows.Files is

  subtype File_Attribute is Win32.DWORD;
  subtype File_Time      is Base.FILETIME;
  subtype Find_Data      is Base.WIN32_FIND_DATAA;
  subtype Find_Wide_Data is Base.WIN32_FIND_DATAW;

  type Sid is private;
  subtype File_Size is Unsigned.Quadword;

  Zero_Length : constant File_Size := 0;

  type File_Attributes is record
    Attribute       : File_Attribute;
    Creation_Time   : File_Time;
    Access_Time     : File_Time;
    Last_Write_Time : File_Time;
    Size            : File_Size;
  end record;

  Access_Denied       : exception;
  Creation_Failure    : exception;
  Directory_Not_Empty : exception;
  File_Not_Found      : exception;

  procedure Create_Directory (Directory       : String;
                              Ignore_Existing : Boolean := True);

  procedure Create_Directory (Directory       : Wide_String;
                              Ignore_Existing : Boolean := True);


  function File_Exists (The_Filename      : String;
                        Is_Case_Sensitive : Boolean := False) return Boolean;
  -- returns True if the named file exists (and is not a directory)
  -- If Is_Case_Sensitive is True then the function will return true only if the filename matches exactly.
  -- Note: The names of parent directories specified in the full file specification
  --       passed as the parameter are NOT case checked.

  function Directory_Exists (The_Filename      : String;
                             Is_Case_Sensitive : Boolean := False) return Boolean;
  -- returns True if the named directory exists
  -- If Is_Case_Sensitive is True then the function will return true only if the directory name matches exactly.
  -- Note: The names of parent directories specified in the full file specification
  --       passed as the parameter are NOT case checked.

  function Exists (The_Name          : Wide_String;
                   Is_Folder         : Boolean := False;
                   Is_Case_Sensitive : Boolean := False) return Boolean;
  -- Returns true if Is_Folder set true and the named folder (directory) exists
  -- otherwise returns true only if the named file exists.
  -- If Is_Case_Sensitive is True then the function will return true only if the name matches exactly.
  -- Note: The names of parent directories specified in the full file specification
  --       passed as the parameter are NOT case checked.

  function Is_Directory (The_Attributes : Windows.Files.File_Attribute) return Boolean;

  function Is_Directory (The_Data : Windows.Files.Find_Data) return Boolean;

  function Is_Directory (The_Data : Windows.Files.Find_Wide_Data) return Boolean;

  function Is_Directory (The_Filename : String) return Boolean;

  function Is_Directory (The_Filename : Wide_String) return Boolean;

  function Is_Readonly (The_Attributes : Windows.Files.File_Attribute) return Boolean;

  function Is_Readonly (The_Data : Windows.Files.Find_Data) return Boolean;

  function Is_Readonly (The_Data : Windows.Files.Find_Wide_Data) return Boolean;

  function Is_Hidden (The_Attributes : Windows.Files.File_Attribute) return Boolean;

  function Is_Hidden (The_Data : Windows.Files.Find_Data) return Boolean;

  function Is_Hidden (The_Data : Windows.Files.Find_Wide_Data) return Boolean;

  function Is_System (The_Attributes : Windows.Files.File_Attribute) return Boolean;

  function Is_System (The_Data : Windows.Files.Find_Data) return Boolean;

  function Is_System (The_Data : Windows.Files.Find_Wide_Data) return Boolean;

  function Is_Compressed (The_Attributes : Windows.Files.File_Attribute) return Boolean;

  function Is_Compressed (The_Data : Windows.Files.Find_Data) return Boolean;

  function Is_Compressed (The_Data : Windows.Files.Find_Wide_Data) return Boolean;

  function Is_Special_Directory (The_Data : Windows.Files.Find_Data) return Boolean;

  function Is_Special_Directory (The_Data : Windows.Files.Find_Wide_Data) return Boolean;

  function Is_Special_Directory (The_Directory_Name : String) return Boolean;

  function Is_Special_Directory (The_Directory_Name : Wide_String) return Boolean;

  function File_Size_Of (The_Data : Windows.Files.Find_Data) return File_Size;

  function File_Size_Of (The_Data : Windows.Files.Find_Wide_Data) return File_Size;

  function Filename_Of (The_Data : Windows.Files.Find_Data) return String;

  function Filename_Of (The_Data : Windows.Files.Find_Wide_Data) return Wide_String;

  function Modification_Time_Of (The_Data : Windows.Files.Find_Data) return File_Time;

  function Modification_Time_Of (The_Data : Windows.Files.Find_Wide_Data) return File_Time;

  procedure Rename_File (The_Existing_File : String;
                         The_New_File      : String);

  procedure Rename_File (The_Existing_File : Wide_String;
                         The_New_File      : Wide_String);

  procedure Copy_File (The_Existing_File  : String;
                       The_New_File       : String;
                       Overwrite_Existing : Boolean := True);

  procedure Copy_File (The_Existing_File  : Wide_String;
                       The_New_File       : Wide_String;
                       Overwrite_Existing : Boolean := True);

  procedure Delete_File (Filename : String);

  procedure Delete_File (Filename : Wide_String);

  procedure Remove_Directory (Directory_Name : String);

  procedure Remove_Directory (Directory_Name : Wide_String);

  function Is_Earlier (The_Time  : File_Time;
                       Than_Time : File_Time) return Boolean;

  function Is_Later (The_Time  : File_Time;
                     Than_Time : File_Time) return Boolean;

  function Is_Equal (The_Time  : File_Time;
                     Than_Time : File_Time) return Boolean;

  function Attributes_For (The_Filename : String) return File_Attributes;

  function Attributes_For (The_Filename : Wide_String) return File_Attributes;

  function Size_Of (The_Filename : String) return File_Size;

  function Size_Of (The_Filename : Wide_String) return File_Size;

  function Image_Of (The_Size : File_Size) return String;

  function Is_Newer (The_File  : String;
                     Than_File : String) return Boolean;

  function Is_Newer (The_File  : Wide_String;
                     Than_File : Wide_String) return Boolean;

  function The_Time_Now return File_Time;

  function Image_Of (The_Time : File_Time) return String;

  function Current_Directory return String;

  function Current_Directory return Wide_String;

  type Continuation is (Continue, Stop);

  generic
    with function Action_Routine (The_Information : Find_Data) return Continuation;
  procedure Search_With (The_File_Names : String);

  generic
    with procedure Action_Routine (The_Information : Find_Data);
  procedure Iterate_With (The_File_Names : String);

  generic
    with function Reporter (Subfolder : Wide_String) return Continuation;
  procedure Iterate_Wide_Directories_With (Directory : Wide_String);

  generic
    with function Reporter (Subfolder : String) return Continuation;
  procedure Iterate_Directories_With (Directory : String);
  --
  -- Iterates all the directories in the specified directory
  -- (Excluding the self and parent "special directories")
  --

  generic
    with function Action_Routine (The_Information : Find_Wide_Data) return Continuation;
  procedure Search_Wide_With (The_File_Names : Wide_String);

  generic
    with procedure Action_Routine (The_Information : Find_Wide_Data);
  procedure Iterate_Wide_With (The_File_Names : Wide_String);

  function Size_From (The_Size : String) return File_Size;

  function Is_Unknown (The_Sid : Sid) return Boolean;

  function Owner_Of (Filename : Wide_String) return Sid;
  -- returns a sid from the heap which can be returned by calling the Dispose_Of procedure

  function Image_Of (The_Sid : Sid) return Wide_String;

  function Volume_Is_Ntfs (The_File_Name : String) return Boolean;

  function Volume_Is_Ntfs (The_File_Name : Wide_String) return Boolean;
  -- Returns true if the named file is housed on an NTFS volume


  generic
    with procedure The_Stream_Handler (The_Stream_Name : String;
                                       The_Stream_Size : File_Size);
  procedure Iterate_Alternate_Data_Streams_Of (Filename : String);
  -- If the specified file contains alternate data streams the stream handler is called for each stream
  -- (including the default ::$Data)

  generic
    with procedure The_Stream_Handler (The_Stream_Name : Wide_String;
                                       The_Stream_Size : File_Size);
  procedure Iterate_Alternate_Wide_Data_Streams_Of (Filename : Wide_String);
  -- If the specified file contains alternate data streams the stream handler is called for each stream
  -- (including the default ::$Data)


  function Is_On_Network (Drive : Character) return Boolean;
  
  
  function Unc_Of (Name : String) return String;
  --
  -- Converts the specified fully qualified name into UNC (Uniform Naming Convention)
  --
  -- I.e. Disk:\resource => \\Computer_Name\Shared_Folder\Resource
  --
  -- If the string cannot be converted it is returned unaltered
  --
  -- Note: The specified name should not use relative naming
  --       Ie Does not imply the current working folder or use the current folder (.) or parent folder (..)
  --


  function Original_Name_Of (Filename : String) return String;


private

  type Sid_Buffer is array (0..24) of Natural;

  Max_Image_Size : constant := 50;

  type Sid_Body is record
    Next   : Sid;
    Nt_Sid : Sid_Buffer;
    Image  : Ada.Strings.Wide_Unbounded.Unbounded_Wide_String;
  end record;

  type Sid is access Sid_Body;

end Windows.Files;
