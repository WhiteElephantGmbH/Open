-- *********************************************************************************************************************
-- *                                  Windows.Files.Io - File handling routines                                        *
-- *                           Supports File open and creation using Wide_String filenames                             *
-- *********************************************************************************************************************
-- *                       (c) 2007 .. 2014 by White Elephant GmbH, Schaffhausen, Switzerland                          *
-- *                                           www.white-elephant.ch                                                   *
-- *                                                                                                                   *
-- * This is free software; you can redistribute it and/or modify it under terms of the  GNU General Public License as *
-- * published by the Free Software Foundation; either version 2, or (at your option) any later version.               *
-- * It is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty *
-- * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for  more details.     *
-- * You can receive a copy of the GNU General Public License by writing to                                            *
-- * Free Software Foundation, 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.                                *
-- *                                                                                                                   *
-- * As a special exception, if other files instantiate generics from this unit, or you link this unit with other      *
-- * files to produce an executable, this unit does not by itself cause the resulting executable to be covered by the  *
-- * GNU General Public License. This exception does not however invalidate any other reasons why the executable file  *
-- * might be covered by the GNU Public License.                                                                       *
-- *                                                                                                                   *
-- *********************************************************************************************************************
-->Style: White_Elephant

with Ada.Finalization;
with Win32.Winnt;

package Windows.Files.Io is

  type Handle is private;

  type Open_Mode is (Read_Only, Append, Modify);

  Bad_Handle       : exception;
  Bad_Size         : exception; -- Size of generic item not supported.
  Creation_Failure : exception;
  End_Error        : exception;
  File_Not_Found   : exception;
  Wrong_Mode       : exception;
  Unexpected_Error : exception;

  function Is_Already_Open (Filename : String) return Boolean;

  function Wide_Is_Already_Open (Filename : Wide_String) return Boolean;

  function Create (Filename : String;
                   New_File : Boolean := False;
                   Sharable : Boolean := False) return Handle;
  -- Creates a file and returns the file opened in Append mode
  --
  -- If New_File is set True then an exception will be raised.
  -- If the file already exists, otherwise any existing file is overwritten
  --
  -- If Sharable is set True then others can open the file for read access

  function Create_Wide (Filename : Wide_String;
                        New_File : Boolean := False;
                        Sharable : Boolean := False) return Handle;

  function Open (Filename : String;
                 Mode     : Open_Mode := Read_Only) return Handle;

  function Open_Wide (Filename : Wide_String;
                      Mode     : Open_Mode := Read_Only) return Handle;

  function Is_Open (File : Handle) return Boolean;

  procedure Reset (File : Handle);

  function At_End_Of (File : Handle) return Boolean;

  generic
    type Element is (<>);
  function Next (File : Handle) return Element;

  function Next_Line_From (File : Handle) return String;

  function Next_Line_From (File : Handle) return Wide_String;

  generic
    type Element is (<>);
  procedure Write (Item : Element;
                   File : Handle);

  procedure Write_String (Item : String;
                          File : Handle);

  procedure Write_Wide (Item : Wide_String;
                        File : Handle);

  procedure Write_Line (Item : String;
                        File : Handle);

  procedure Write_Wide_Line (Item : Wide_String;
                             File : in out Handle);

  procedure Set_Position_In (File     : Handle;
                             Position : Positive);

  function Position_In (File : Handle) return Positive;

  procedure Flush (File : Handle);

  procedure Close (The_File : in out Handle);

private

  type File_Structure;

  type File_Structure_Access is access File_Structure;

  type Handle is new Ada.Finalization.Controlled with record
    Fsa   : File_Structure_Access;
  end record;

  procedure Adjust (The_File : in out Handle);

  procedure Finalize (The_File : in out Handle);


end Windows.Files.Io;
