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

with Strings;
with Unsigned;

package Windows.Registry is

  Key_Not_Found          : exception;
  Entry_Not_Found        : exception;
  Wrong_Type             : exception;
  Overflow               : exception;
  Key_Creation_Failure   : exception;
  Entry_Creation_Failure : exception;


type
  Root_Branch is (Current_User, Local_Machine);

procedure Define_Root (Branch : Root_Branch);
-- Defines the registry root.
-- If not called the root is assumed to be Current_User

function Current_Root return Root_Branch;
-- Returns the current registry root.

procedure Create_Key (The_Key : String);
-- Creates a Key relative to the root.
-- New Key becomes the current key

procedure Create_Relative_Key (The_Key : String);
-- Creates a Key relative to the current key.
-- New Key becomes the current key

procedure Set_Current_Key (The_Key : String);

procedure Set_Current_Key (The_Key : Wide_String);
-- Set the current key relative to the root
-- A parameter of "" sets the current key back to the root

function Current_Key return Wide_String;
-- returns the current key relative to the root
-- Null string indicates that the current key is the root

procedure Delete_Key (The_Key : String);
-- Delete the specified key relative to the root

-- Named entries are always within the Current Key
procedure Create_Entry (The_Entry : String;
                        The_Value : Unsigned.Longword);

procedure Create_Entry (The_Entry : String;
                        The_Value : String);

procedure Create_Wide_Entry (The_Entry : String;
                             The_Value : Wide_String);

procedure Delete_Entry (The_Entry : String);

function Value_Of (The_Entry : String) return Unsigned.Longword;

function Value_Of (The_Entry : String) return String;

function Value_Of (The_Entry : String) return Wide_String;

function Value_Of (The_Entry : String) return Strings.Item;

type Entry_Type is (Non_Existant,
                    Reg_Dword,
                    Reg_Sz,
                    Reg_Multi_Sz);

function Type_Of (The_Entry : String) return Entry_Type;

type All_Entries is access procedure (The_Entry : String;
                                      The_Type  : Entry_Type);

type String_Entries is access procedure (The_Entry : String;
                                         The_Value : String);

type Natural_Entries is access procedure (The_Entry : String;
                                          The_Value : Unsigned.Longword);

-- The following Iteration routines call the specified call back for each entry in the current key.
-- If the callback is to supply the entry type then it is called for every entry within the key.
-- If the callback is to supply Strings then it is called only for entries of type String
-- If the callback is to supply Naturals then it is called only for entries of type Natural

procedure Iterate (The_Callback : All_Entries);

procedure Iterate (The_Callback : String_Entries);

procedure Iterate (The_Callback : Natural_Entries);

end Windows.Registry;
