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

package body Indefinite_Doubly_Linked_Lists is

  function "+" (Data : Element) return Item is
    The_List : Item;
  begin
    Append (The_List, Data);
    return The_List;
  end "+";

  function "+" (Left  : Item;
                Right : Element) return Item is
    The_List : Item := Left;
  begin
    Append (The_List, Right);
    return The_List;
  end "+";

  function "+" (Left  : Element;
                Right : Item) return Item is
    The_List : Item := Right;
  begin
    Prepend (The_List, Left);
    return The_List;
  end "+";

  function "-" (Left  : Item;
                Right : Element) return Item is
    The_List   : Item := Left;
    The_Cursor : Private_Lists.Cursor;
  begin
    The_Cursor := Find (The_List, Right);
    Delete (The_List, The_Cursor);
    return The_List;
  end "-";

  function Count (List : Item) return Natural is
  begin
    return Natural(Length (List));
  end Count;

end Indefinite_Doubly_Linked_Lists;
