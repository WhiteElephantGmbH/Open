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

package Npp.Tree_View is

  Item_Is_Root : exception;

  subtype Item is Win.HTREEITEM;

  Root : constant Item := 16#FFFF0000#;

  No_Data : constant System.Address := System.Null_Address;

  procedure Install (Double_Click : Notify_Handler;
                     Focus_Lost   : Notify_Handler := null);

  procedure Clear;

  function Add (Title  : String;
                Parent : Item := Root;
                Data   : System.Address := No_Data) return Item;

  procedure Expand (Data : Item);

end Npp.Tree_View;
