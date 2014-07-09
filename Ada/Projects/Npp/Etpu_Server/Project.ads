-- *********************************************************************************************************************
-- *                       (c) 2013 .. 2014 by White Elephant GmbH, Schaffhausen, Switzerland                          *
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

with String_List;

package Project is

  function Confirmation_Message return String;

  function Initialized (Name : String) return Boolean;

  function Is_Source (Name : String) return Boolean;

  procedure Finalize;

  function Compiler return String;

  function Linker return String;

  function Is_C_Source (Filename : String) return Boolean;

  function Include_Path_Of (Filename : String) return String;

  function Source_List_Of (Filename : String) return String_List.Item;

  function Object_Of (Filename : String) return String;

  function Objects_Of (Sources : String_List.Item) return String;

  function Linker_Output_Of (Filename : String) return String;

  function Link_Map_Of (Filename : String) return String;

end Project;
