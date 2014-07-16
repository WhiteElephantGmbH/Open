------------------------------------------------------------------------------
--                                                                          --
--                         GNAT LIBRARY COMPONENTS                          --
--                                                                          --
--                 ADA.CONTAINERS.INDEFINITE_ORDERED_SETS                   --
--                                                                          --
--                                 S p e c                                  --
--                                                                          --
--          Copyright (C) 2004-2012, Free Software Foundation, Inc.         --
--                                                                          --
-- This specification is derived from the Ada Reference Manual for use with --
-- GNAT. The copyright notice above, and the license provisions that follow --
-- apply solely to the  contents of the part following the private keyword. --
--                                                                          --
-- GNAT is free software;  you can  redistribute it  and/or modify it under --
-- terms of the  GNU General Public License as published  by the Free Soft- --
-- ware  Foundation;  either version 3,  or (at your option) any later ver- --
-- sion.  GNAT is distributed in the hope that it will be useful, but WITH- --
-- OUT ANY WARRANTY;  without even the  implied warranty of MERCHANTABILITY --
-- or FITNESS FOR A PARTICULAR PURPOSE.                                     --
--                                                                          --
-- As a special exception under Section 7 of GPL version 3, you are granted --
-- additional permissions described in the GCC Runtime Library Exception,   --
-- version 3.1, as published by the Free Software Foundation.               --
--                                                                          --
-- In particular,  you can freely  distribute your programs  built with the --
-- GNAT Pro compiler, including any required library run-time units,  using --
-- any licensing terms  of your choosing.  See the AdaCore Software License --
-- for full details.                                                        --
--                                                                          --
-- This unit was originally developed by Matthew J Heaney.                  --
------------------------------------------------------------------------------

with Ada.Iterator_Interfaces;

private with Ada.Containers.Red_Black_Trees;
private with Ada.Finalization;
private with Ada.Streams;

generic
   type Element_Type (<>) is private;

   with function "<" (Left, Right : Element_Type) return Boolean is <>;
   with function "=" (Left, Right : Element_Type) return Boolean is <>;

package Ada.Containers.Indefinite_Ordered_Sets is
   pragma Preelaborate;
   pragma Remote_Types;

   function Equivalent_Elements (Left, Right : Element_Type) return Boolean;

   type Set is tagged private with
      Constant_Indexing => Constant_Reference,
      Default_Iterator  => Iterate,
      Iterator_Element  => Element_Type;

   pragma Preelaborable_Initialization (Set);

   type Cursor is private;
   pragma Preelaborable_Initialization (Cursor);

   Empty_Set : constant Set;

   No_Element : constant Cursor;

   function Has_Element (Position : Cursor) return Boolean;

   package Set_Iterator_Interfaces is new
     Ada.Iterator_Interfaces (Cursor, Has_Element);

   function "=" (Left, Right : Set) return Boolean;

   function Equivalent_Sets (Left, Right : Set) return Boolean;

   function To_Set (New_Item : Element_Type) return Set;

   function Length (Container : Set) return Count_Type;

   function Is_Empty (Container : Set) return Boolean;

   procedure Clear (Container : in out Set);

   function Element (Position : Cursor) return Element_Type;

   procedure Replace_Element
     (Container : in out Set;
      Position  : Cursor;
      New_Item  : Element_Type);

   procedure Query_Element
     (Position : Cursor;
      Process  : not null access procedure (Element : Element_Type));

   type Constant_Reference_Type
     (Element : not null access constant Element_Type) is
   private with
      Implicit_Dereference => Element;

   function Constant_Reference
     (Container : aliased Set;
      Position  : Cursor) return Constant_Reference_Type;
   pragma Inline (Constant_Reference);

   procedure Assign (Target : in out Set; Source : Set);

   function Copy (Source : Set) return Set;

   procedure Move (Target : in out Set; Source : in out Set);

   procedure Insert
     (Container : in out Set;
      New_Item  : Element_Type;
      Position  : out Cursor;
      Inserted  : out Boolean);

   procedure Insert
     (Container : in out Set;
      New_Item  : Element_Type);

   procedure Include
     (Container : in out Set;
      New_Item  : Element_Type);

   procedure Replace
     (Container : in out Set;
      New_Item  : Element_Type);

   procedure Exclude
     (Container : in out Set;
      Item      : Element_Type);

   procedure Delete
     (Container : in out Set;
      Item      : Element_Type);

   procedure Delete
     (Container : in out Set;
      Position  : in out Cursor);

   procedure Delete_First (Container : in out Set);

   procedure Delete_Last (Container : in out Set);

   procedure Union (Target : in out Set; Source : Set);

   function Union (Left, Right : Set) return Set;

   function "or" (Left, Right : Set) return Set renames Union;

   procedure Intersection (Target : in out Set; Source : Set);

   function Intersection (Left, Right : Set) return Set;

   function "and" (Left, Right : Set) return Set renames Intersection;

   procedure Difference (Target : in out Set; Source : Set);

   function Difference (Left, Right : Set) return Set;

   function "-" (Left, Right : Set) return Set renames Difference;

   procedure Symmetric_Difference (Target : in out Set; Source : Set);

   function Symmetric_Difference (Left, Right : Set) return Set;

   function "xor" (Left, Right : Set) return Set renames Symmetric_Difference;

   function Overlap (Left, Right : Set) return Boolean;

   function Is_Subset (Subset : Set; Of_Set : Set) return Boolean;

   function First (Container : Set) return Cursor;

   function First_Element (Container : Set) return Element_Type;

   function Last (Container : Set) return Cursor;

   function Last_Element (Container : Set) return Element_Type;

   function Next (Position : Cursor) return Cursor;

   procedure Next (Position : in out Cursor);

   function Previous (Position : Cursor) return Cursor;

   procedure Previous (Position : in out Cursor);

   function Find
     (Container : Set;
      Item      : Element_Type) return Cursor;

   function Floor
     (Container : Set;
      Item      : Element_Type) return Cursor;

   function Ceiling
     (Container : Set;
      Item      : Element_Type) return Cursor;

   function Contains
     (Container : Set;
      Item      : Element_Type) return Boolean;

   function "<" (Left, Right : Cursor) return Boolean;

   function ">" (Left, Right : Cursor) return Boolean;

   function "<" (Left : Cursor; Right : Element_Type) return Boolean;

   function ">" (Left : Cursor; Right : Element_Type) return Boolean;

   function "<" (Left : Element_Type; Right : Cursor) return Boolean;

   function ">" (Left : Element_Type; Right : Cursor) return Boolean;

   procedure Iterate
     (Container : Set;
      Process   : not null access procedure (Position : Cursor));

   procedure Reverse_Iterate
     (Container : Set;
      Process   : not null access procedure (Position : Cursor));

   function Iterate
     (Container : Set)
      return Set_Iterator_Interfaces.Reversible_Iterator'class;

   function Iterate
     (Container : Set;
      Start     : Cursor)
      return Set_Iterator_Interfaces.Reversible_Iterator'class;

   generic
      type Key_Type (<>) is private;

      with function Key (Element : Element_Type) return Key_Type;

      with function "<" (Left, Right : Key_Type) return Boolean is <>;

   package Generic_Keys is

      function Equivalent_Keys (Left, Right : Key_Type) return Boolean;

      function Key (Position : Cursor) return Key_Type;

      function Element (Container : Set; Key : Key_Type) return Element_Type;

      procedure Replace
        (Container : in out Set;
         Key       : Key_Type;
         New_Item  : Element_Type);

      procedure Exclude (Container : in out Set; Key : Key_Type);

      procedure Delete (Container : in out Set; Key : Key_Type);

      function Find
        (Container : Set;
         Key       : Key_Type) return Cursor;

      function Floor
        (Container : Set;
         Key       : Key_Type) return Cursor;

      function Ceiling
        (Container : Set;
         Key       : Key_Type) return Cursor;

      function Contains
        (Container : Set;
         Key       : Key_Type) return Boolean;

      procedure Update_Element_Preserving_Key
        (Container : in out Set;
         Position  : Cursor;
         Process   : not null access
                       procedure (Element : in out Element_Type));

      type Reference_Type (Element : not null access Element_Type) is private
      with
         Implicit_Dereference => Element;

      function Reference_Preserving_Key
        (Container : aliased in out Set;
         Position  : Cursor) return Reference_Type;

      function Constant_Reference
        (Container : aliased Set;
         Key       : Key_Type) return Constant_Reference_Type;

      function Reference_Preserving_Key
        (Container : aliased in out Set;
         Key       : Key_Type) return Reference_Type;

   private
      type Reference_Type
         (Element : not null access Element_Type) is null record;

      use Ada.Streams;

      procedure Write
        (Stream : not null access Root_Stream_Type'Class;
         Item   : Reference_Type);

      for Reference_Type'Write use Write;

      procedure Read
        (Stream : not null access Root_Stream_Type'Class;
         Item   : out Reference_Type);

      for Reference_Type'Read use Read;
   end Generic_Keys;

private
   pragma Inline (Next);
   pragma Inline (Previous);

   type Node_Type;
   type Node_Access is access Node_Type;

   type Element_Access is access Element_Type;

   type Node_Type is limited record
      Parent  : Node_Access;
      Left    : Node_Access;
      Right   : Node_Access;
      Color   : Red_Black_Trees.Color_Type := Red_Black_Trees.Red;
      Element : Element_Access;
   end record;

   package Tree_Types is new Red_Black_Trees.Generic_Tree_Types
     (Node_Type,
      Node_Access);

   type Set is new Ada.Finalization.Controlled with record
      Tree : Tree_Types.Tree_Type;
   end record;

   overriding procedure Adjust (Container : in out Set);

   overriding procedure Finalize (Container : in out Set) renames Clear;

   use Red_Black_Trees;
   use Tree_Types;
   use Ada.Finalization;
   use Ada.Streams;

   procedure Write
     (Stream    : not null access Root_Stream_Type'Class;
      Container : Set);

   for Set'Write use Write;

   procedure Read
     (Stream    : not null access Root_Stream_Type'Class;
      Container : out Set);

   for Set'Read use Read;

   type Set_Access is access all Set;
   for Set_Access'Storage_Size use 0;

   type Cursor is record
      Container : Set_Access;
      Node      : Node_Access;
   end record;

   procedure Write
     (Stream : not null access Root_Stream_Type'Class;
      Item   : Cursor);

   for Cursor'Write use Write;

   procedure Read
     (Stream : not null access Root_Stream_Type'Class;
      Item   : out Cursor);

   for Cursor'Read use Read;

   type Reference_Control_Type is
      new Controlled with record
         Container : Set_Access;
      end record;

   overriding procedure Adjust (Control : in out Reference_Control_Type);
   pragma Inline (Adjust);

   overriding procedure Finalize (Control : in out Reference_Control_Type);
   pragma Inline (Finalize);

   type Constant_Reference_Type
      (Element : not null access constant Element_Type) is
      record
         Control : Reference_Control_Type;
      end record;

   procedure Read
     (Stream : not null access Root_Stream_Type'Class;
      Item   : out Constant_Reference_Type);

   for Constant_Reference_Type'Read use Read;

   procedure Write
     (Stream : not null access Root_Stream_Type'Class;
      Item   : Constant_Reference_Type);

   for Constant_Reference_Type'Write use Write;

   Empty_Set : constant Set :=
                 (Controlled with Tree => (First  => null,
                                           Last   => null,
                                           Root   => null,
                                           Length => 0,
                                           Busy   => 0,
                                           Lock   => 0));

   No_Element : constant Cursor := Cursor'(null, null);

end Ada.Containers.Indefinite_Ordered_Sets;
