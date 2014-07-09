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

with Ada.Characters.Handling;
with Ada.Strings;
with String_List;

package Strings is

  Space : constant Character := ' ';

  function Lowercase_Of (The_Character : Character) return Character
           renames Ada.Characters.Handling.To_Lower;

  function Lowercase_Of (The_String : String) return String
           renames Ada.Characters.Handling.To_Lower;

  function Uppercase_Of (The_Character : Character) return Character
           renames Ada.Characters.Handling.To_Upper;

  function Uppercase_Of (The_String : String) return String
           renames Ada.Characters.Handling.To_Upper;

  function Is_Lowercase (The_Character : Character) return Boolean
           renames Ada.Characters.Handling.Is_Lower;

  function Is_Lowercase (The_String : String) return Boolean;
  -- Returns TRUE if all the letters in the string are lowercase.

  function Is_Uppercase (The_Character : Character) return Boolean
           renames Ada.Characters.Handling.Is_Upper;

  function Is_Uppercase (The_String : String) return Boolean;
  -- Returns TRUE if all the letters in the string are uppercase.

  function Found (The_Character : Character;
                  In_String     : String) return Boolean;

  Not_Found : constant Natural := 0;

  type Direction is new Ada.Strings.Direction;

  function Location_Of (The_Character : Character;
                        In_String     : String;
                        The_Direction : Direction := Forward) return Natural;
  function Location_Of (The_String    : String;
                        In_String     : String;
                        The_Direction : Direction := Forward) return Natural;
  -- The procedure returns the position of the match or in case of no match zero.


  function Trimmed (Data : String) return String;
  -- Trims left and right whitespace.


  function Concatenation_Of (List      : String_List.Item;
                             Separator : String := " ") return String;


  function File_Extension_Of (The_Filename : String) return String;
  -- Function to return, in lowercase, the file extension part of a file name.

  function Legible_Of (The_String : String) return String;
  -- Function to return a "legible" version of the supplied string.
  --    Underscores are replaced with spaces.
  --    Leading & trailing spaces are removed.
  --    Multiple spaces are condensed into a single space.
  --    The first character and characters following a space are
  --    capitalized, otherwise the string is reduced to lowercase.

  function Reduced (The_String : String) return String;
  -- Function to return a "reduces" version of the supplied string.
  --    white_spaces :== {<cr> | <lf> | <tab> | space}.
  --    Leading & trailing white_spaces are removed.
  --    {<tab> | space} replaced with a single space.
  --    [white_spaces] (<cr> | <lf>) [white_spaces] replaced with a single <cr>.


  generic
    type Element is (<>);
  function Image_Of (The_Value : Element) return String;

  Usage_Error : exception;
  generic
    type Element is (<>);
  function Padded_Image_Of (The_Value : Element;
                            Padding   : Character := '0') return String;

------------------------------------------------------------------------------------------------------------------------

  Max_Count       : constant := 2**16-1;
  Max_Data_Length : constant := 2**24-1;

  First : constant := 1;

  subtype Element_Count is Natural range 0 .. Max_Count;
  subtype Element_Index is Element_Count range First .. Element_Count'last;

  type Slice is record
    First : Element_Index;
    Last  : Element_Count;
  end record;

  subtype Data_Length is Natural range 0 .. Max_Count;

  type Item (Count  : Element_Count;
             Length : Data_Length) is private; --String of 'Standard.STRING'

  None : constant Item; -- no strings


  function "+" (Left  : String;
                Right : String) return Item;

  function "+" (Left  : Item;
                Right : String) return Item;

  function "+" (Left  : String;
                Right : Item) return Item;

  function "+" (Left  : Item;
                Right : Item) return Item;
  -- Concatenate


  function "+" (Data : String) return Item;
  -- Convert


  function Element_Of (List  : Item;
                       Index : Element_Index) return String with Inline;


  function Length_Of (List  : Item;
                      Index : Element_Index) return Natural with Inline;


  function First_Of (List : Item) return String with Inline;


  function Last_Of (List : Item) return String with Inline;


  function Data_Of (List      : Item;
                    Separator : String := "") return String with Inline;


  function Item_Of (Data      : String;
                    Separator : Character;
                    Symbols   : String := "") return Item;
  -- Returns the splitted strings from Item.
  --   Example: Item = "," and Separator = ',' results in two empty strings.


  function Purge_Of (List : Item) return Item;
  -- Removes all empty strings.


  function Item_Of (List      : Item;
                    Selection : Slice) return Item;
  -- Exception: CONSTRAINT_ERROR: Index out of range.


  function Data_Of (List      : String_List.Item;
                    Separator : String := "") return String;

  function Item_Of (List : String_List.Item) return Item;

  function List_Of (List : Item) return String_List.Item;

  function Trimmed_List_Of (List : Item) return String_List.Item;


  generic
    with procedure Handler (Data : String);
  procedure Iterator (List : Item);


  generic
    Count : Element_Count;
    with function Next_Length return Data_Length;
    with function Next_String return String;
  function Creator return Item;


  generic
    From : Element_Index;
    To   : Element_Count;
    with function Next_Length (Index : Element_Index) return Data_Length;
    with function Next_String (Index : Element_Index) return String;
  function Indexed_Creator return Item;


  generic
     with function Mapped_String_Of (Data : String) return String;
  function Creator_From (List : Item) return Item;
  -- Create a new string for each string in items.
  -- Mapped_String_Of is called twice for each string.


private
  type Position is new Data_Length range First .. Data_Length'last;

  type Element_Positions is array (Element_Count range <>) of Position;
  pragma Pack (Element_Positions);

  type Item (Count  : Element_Count;
             Length : Data_Length) is
  record
    Positions : Element_Positions(First..Count);
    Data      : String(First..Length);
  end record;

  None : constant Item := (Count     => 0,
                           Length    => 0,
                           Positions => (others => First),
                           Data      => (others => Ascii.Nul));
end Strings;
