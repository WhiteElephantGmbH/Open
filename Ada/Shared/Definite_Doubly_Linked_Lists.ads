-- *********************************************************************************************************************
-- *                       (c) 2013 .. 2014 by White Elephant GmbH, Schaffhausen, Switzerland                          *
-- *                                               www.white-elephant.ch                                               *
-- *********************************************************************************************************************
-->Style: White_Elephant

with Ada.Containers.Doubly_Linked_Lists;

generic
  type Element is private;

  with function "=" (Left, Right : Element) return Boolean is <>;

package Definite_Doubly_Linked_Lists is
  pragma Preelaborate;
  package Private_Lists is new Ada.Containers.Doubly_Linked_Lists (Element_Type => Element);
  type Item is new Private_Lists.List with private;

  subtype Index is Natural range 1 .. Natural(Ada.Containers.Count_Type'last);

  type Element_List is array (Index range <>) of Element;

  function Elements (The_List : Item) return Element_List;

  function "+" (Data : Element) return Item;

  function "+" (Left  : Item;
                Right : Element) return Item;

  function Count (List : Item) return Natural with Inline;

private
  type Item is new Private_Lists.List with null record;
end Definite_Doubly_Linked_Lists;
