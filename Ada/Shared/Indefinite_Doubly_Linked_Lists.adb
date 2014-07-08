-- *********************************************************************************************************************
-- *                       (c) 2013 .. 2014 by White Elephant GmbH, Schaffhausen, Switzerland                          *
-- *                                               www.white-elephant.ch                                               *
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
