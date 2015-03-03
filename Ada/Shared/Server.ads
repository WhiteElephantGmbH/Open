-- *********************************************************************************************************************
-- *                       (c) 2008 .. 2015 by White Elephant GmbH, Schaffhausen, Switzerland                          *
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

package Server is

  Project_File : constant String := "Project.ini";

  subtype Source_Buffer is String(1 .. 2**20);

  Bits_For_Column_Counter : constant := 12;
  Bits_For_Line_Counter   : constant := 32 - Bits_For_Column_Counter;

  type Column_Position is new Natural range 0 .. 2 ** Bits_For_Column_Counter - 1;
  for Column_Position'size use Bits_For_Column_Counter;

  subtype Column_Range is Column_Position range 1 .. Column_Position'last;

  type Line_Counter is new Natural range 0 .. 2 ** Bits_For_Line_Counter - 1;
  for Line_Counter'size use Bits_For_Line_Counter;

  subtype Line_Number is Line_Counter range 1 .. Line_Counter'last;

  type Command is (Open_Project,
                   Close_Project,
                   Get_Edge_Column,
                   Get_Extensions,
                   Is_In_Project,
                   Case_Updates,
                   Updates_For,
                   Referenced,
                   Promote,
                   Promote_All,
                   Has_Promotion_Message,
                   Has_Promotion_Error,
                   Get_Filename,
                   Get_Message,
                   Usage,
                   Unused);

  Confirmation  : constant Character := Ascii.Ack;
  Not_Confirmed : constant Character := Ascii.Nak;

  type Location is record
    Column : Column_Range;
    Line   : Line_Number;
  end record;

  Unknown_Column : constant Column_Range := Column_Range'last;
  Unknown_Line   : constant Line_Number := Line_Number'last;

  Not_Referenced : constant Location := (Column   => Unknown_Column,
                                         Line     => Unknown_Line);

  type File_Reference is record
    Cursor      : Location;
    File_Index  : Positive;
    Image_Index : Positive;
  end record;

  type File_References is array (Line_Counter range <>) of File_Reference;
  pragma Pack (File_References);

  type References (Message_Length  : Natural;
                   Files_Count     : Strings.Element_Count;
                   Files_Length    : Strings.Data_Length;
                   Images_Count    : Strings.Element_Count;
                   Images_Length   : Strings.Data_Length;
                   Reference_Count : Line_Counter) is record
    Message     : aliased String (1..Message_Length);              
    Filenames   : aliased Strings.Item(Count => Files_Count, Length => Files_Length);
    Line_Images : aliased Strings.Item(Count => Images_Count, Length => Images_Length);
    Locations   : aliased File_References(1..Reference_Count);
  end record;
  pragma Pack (References);

  No_References : constant References := (0, 0, 0, 0, 0, 0, "", others => <>);

  type Token_Kind is (Is_Attribute,
                      Is_Comment,
                      Is_Special_Comment,
                      Is_Directive,
                      Is_Reserved_Word,
                      Is_Character_Literal,
                      Is_Numeric_Literal,
                      Is_String_Literal,
                      Is_Type,
                      Is_Unused_Declaration,
                      Is_Unused_Type_Declaration,
                      Is_Unknown_Identifier,
                      Is_Style_Error,
                      Is_Error,
                      Is_Compilation_Error,
                      Is_Others);

  type Token_Info is record
    First_Line   : Line_Number;
    First_Column : Column_Range;
    Last_Line    : Line_Number;
    Last_Column  : Column_Range;
    Kind         : Token_Kind;
  end record;
  pragma Pack (Token_Info);

  type Tokens is array (Positive range <>) of Token_Info;
  pragma Pack (Tokens);

  No_Tokens : constant Tokens(1..0) := (others => (1, 1, 1, 1, Is_Others));

  type Case_Change is (No_Change, Change);
  for Case_Change'size use 1;

  type Case_Mask is mod 2**32;

  type Case_Info is record
    Line   : Line_Number;
    Column : Column_Range;
    Mask   : Case_Mask;
  end record;
  pragma Pack (Case_Info);

  type Case_Data is array (Positive range <>) of Case_Info;
  pragma Pack (Case_Data);

  No_Case_Data : constant Case_Data(1..0) := (others => (1, 1, 0));

  function Is_In_Project (Name : String) return Boolean;

  function Project_Opened (Name : String) return Boolean;

  procedure Close_Project;

  function Edge_Column return Server.Column_Position;

  function Known_Extensions return String;

  function Case_Updates return Case_Data;

  function Updates_For (The_Filename : String;
                        First_Line   : Line_Number;
                        Last_Line    : Line_Number;
                        Content      : String) return Tokens;

  function Referenced (The_Filename : String;
                       At_Column    : Column_Range;
                       At_Line      : Line_Number;
                       Content      : String) return Boolean;

  function Usage (The_Filename : String;
                  At_Column    : Column_Range;
                  At_Line      : Line_Number;
                  Content      : String) return References;

  function Unused return References;

  procedure Promote (Name   : String;
                     Is_All : Boolean := False);

  function Has_Promotion_Message return Boolean;

  function Has_Promotion_Error return Boolean;

  function Filename return String;
  function Column return Column_Range;
  function Line return Line_Number;

  function Message return String;

end Server;
