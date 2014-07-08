-- *********************************************************************************************************************
-- *                       (c) 2013 .. 2014 by White Elephant GmbH, Schaffhausen, Switzerland                          *
-- *                                               www.white-elephant.ch                                               *
-- *********************************************************************************************************************
-->Style: White_Elephant

package body Definite_Doubly_Linked_Lists is

  function Elements (The_List : Item) return Element_List is
    The_Elements : Element_List(Positive'first .. Natural(Length (The_List)));
    The_Index    : Index := Index'first;
  begin
    for Element of The_List loop
      The_Elements(The_Index) := Element;
      The_Index := Index'succ(The_Index);
    end loop;
    return The_Elements;
  end Elements;

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

  function Count (List : Item) return Natural is
  begin
    return Natural(Length (List));
  end Count;

end Definite_Doubly_Linked_Lists;
