-- *********************************************************************************************************************
-- *                           (c) 2014 by White Elephant GmbH, Schaffhausen, Switzerland                              *
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
with Project;
with Promotion;

package body Server is

  function Is_In_Project (Name : String) return Boolean is
  begin
    return Project.Is_Source (Name);
  end Is_In_Project;


  function Project_Opened (Name : String) return Boolean is
  begin
    if Project.Initialized (Name) then
      Log.Write ("&&& Project Opened: " & Name);
      return True;
    else
      Log.Write ("&&& Project not Opened: " & Name);
      return False;
    end if;
  end Project_Opened;


  procedure Close_Project is
  begin
    Project.Finalize;
  end Close_Project;


  function Known_Extensions return String is
  begin
    return "";
  end Known_Extensions;


  function Updates_For (Filename   : String;                  --> UP: not implemented
                        First_Line : Line_Number;             --> UP: not implemented
                        Last_Line  : Line_Number;             --> UP: not implemented
                        Marks      : Tokens;                  --> UP: not implemented
                        Content    : String) return Tokens is --> UP: not implemented
  begin
    return No_Tokens;
  end Updates_For;


  function Referenced (Filename : String;                   --> UP: not implemented
                       Column   : Column_Range;             --> UP: not implemented
                       Line     : Line_Number;              --> UP: not implemented
                       Content  : String) return Boolean is --> UP: not implemented
  begin
    return False;
  end Referenced;


  function Usage (Filename : String;                      --> UP: not implemented
                  Column   : Column_Range;                --> UP: not implemented
                  Line     : Line_Number;                 --> UP: not implemented
                  Content  : String) return References is --> UP: not implemented
  begin
    return No_References;
  end Usage;


  function Unused return References is
  begin
    return No_References;
  end Unused;


  procedure Promote (Name   : String;
                     Is_All : Boolean := False) is
  begin
    --TEST----------------------------------
    --Log.Write ("<== Promote " & Filename);
    ----------------------------------------
    Promotion.Start (Promote_All => Is_All,
                     Name        => Name);
  end Promote;


  function Has_Promotion_Message return Boolean is
  begin
    return Promotion.Message_Ready;
  end Has_Promotion_Message;


  function Has_Promotion_Error return Boolean is
  begin
    return Promotion.Error_Message_Ready;
  end Has_Promotion_Error;


  function Message return String is
    Item : constant String := Promotion.Message;
  begin
    --TEST-------------------------------
    --Log.Write ("==> Message: " & Item);
    -------------------------------------
    return Item;
  end Message;


  function Filename return String is
  begin
    return Promotion.Filename;
  end Filename;


  function Line return Line_Number is
  begin
    return Promotion.Line;
  end Line;


  function Column return Column_Range is
  begin
    return Promotion.Column;
  end Column;

end Server;
