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

with Server;

package Promotion is

  Error : exception;

  procedure Start (Promote_All : Boolean;
                   Name        : String);

  type Color is (Black, Blue, Green, Red);

  procedure Define_Next_Message_Color (Item : Color);

  procedure Set_Message (Item : String);

  procedure Set_Error (Item   : String;
                       File   : String := "";
                       Line   : Server.Line_Number := Server.Line_Number'first;
                       Column : Server.Column_Range := Server.Column_Range'first);

  procedure Complete;

  function Message_Ready return Boolean; -- awaits result

  function Error_Message_Ready return Boolean; -- awaits result

  function Message return String;

  function Filename return String;

  function Line return Server.Line_Number;

  function Column return Server.Column_Range;

end Promotion;
