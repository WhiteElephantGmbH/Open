-- *********************************************************************************************************************
-- *                       (c) 2013 .. 2014 by White Elephant GmbH, Schaffhausen, Switzerland                          *
-- *                                               www.white-elephant.ch                                               *
-- *********************************************************************************************************************
-->Style: White_Elephant

with Ada.Containers.Indefinite_Doubly_Linked_Lists;

generic
  type Element (<>) is private;

  with function "=" (Left, Right : Element) return Boolean is <>;

package Indefinite_Doubly_Linked_Lists is
  pragma Preelaborate;
  package Private_Lists is new Ada.Containers.Indefinite_Doubly_Linked_Lists (Element_Type => Element);

  type Item is new Private_Lists.List with private;

  function "+" (Data : Element) return Item with Inline;

  function "+" (Left  : Item;
                Right : Element) return Item with Inline;

  function "+" (Left  : Element;
                Right : Item) return Item with Inline;

  function "-" (Left  : Item;
                Right : Element) return Item with Inline;

  function Count (List : Item) return Natural with Inline;

private
  type Item is new Private_Lists.List with null record;
end Indefinite_Doubly_Linked_Lists;
