------------------------------------------------------------------------------
--                                                                          --
--                         GNAT LIBRARY COMPONENTS                          --
--                                                                          --
--                   ADA.CONTAINERS.BOUNDED_MULTIWAY_TREES                  --
--                                                                          --
--                                 S p e c                                  --
--                                                                          --
--             Copyright (C) 2011, Free Software Foundation, Inc.           --
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
private with Ada.Streams;

generic
   type Element_Type is private;

   with function "=" (Left, Right : Element_Type) return Boolean is <>;

package Ada.Containers.Bounded_Multiway_Trees is
   pragma Pure;
   pragma Remote_Types;

   type Tree (Capacity : Count_Type) is tagged private
     with Constant_Indexing => Constant_Reference,
          Variable_Indexing => Reference,
          Default_Iterator  => Iterate,
          Iterator_Element  => Element_Type;
   pragma Preelaborable_Initialization (Tree);

   type Cursor is private;
   pragma Preelaborable_Initialization (Cursor);

   Empty_Tree : constant Tree;

   No_Element : constant Cursor;
   function Has_Element (Position : Cursor) return Boolean;

   package Tree_Iterator_Interfaces is new
     Ada.Iterator_Interfaces (Cursor, Has_Element);

   function Equal_Subtree
     (Left_Position  : Cursor;
      Right_Position : Cursor) return Boolean;

   function "=" (Left, Right : Tree) return Boolean;

   function Is_Empty (Container : Tree) return Boolean;

   function Node_Count (Container : Tree) return Count_Type;

   function Subtree_Node_Count (Position : Cursor) return Count_Type;

   function Depth (Position : Cursor) return Count_Type;

   function Is_Root (Position : Cursor) return Boolean;

   function Is_Leaf (Position : Cursor) return Boolean;

   function Root (Container : Tree) return Cursor;

   procedure Clear (Container : in out Tree);

   function Element (Position : Cursor) return Element_Type;

   procedure Replace_Element
     (Container : in out Tree;
      Position  : Cursor;
      New_Item  : Element_Type);

   procedure Query_Element
     (Position : Cursor;
      Process  : not null access procedure (Element : Element_Type));

   procedure Update_Element
     (Container : in out Tree;
      Position  : Cursor;
      Process   : not null access procedure (Element : in out Element_Type));

   type Constant_Reference_Type
     (Element : not null access constant Element_Type) is private
        with Implicit_Dereference => Element;

   type Reference_Type
     (Element : not null access Element_Type) is private
        with Implicit_Dereference => Element;

   function Constant_Reference
     (Container : aliased Tree;
      Position  : Cursor) return Constant_Reference_Type;

   function Reference
     (Container : aliased in out Tree;
      Position  : Cursor) return Reference_Type;

   procedure Assign (Target : in out Tree; Source : Tree);

   function Copy (Source : Tree; Capacity : Count_Type := 0) return Tree;

   procedure Move (Target : in out Tree; Source : in out Tree);

   procedure Delete_Leaf
     (Container : in out Tree;
      Position  : in out Cursor);

   procedure Delete_Subtree
     (Container : in out Tree;
      Position  : in out Cursor);

   procedure Swap
     (Container : in out Tree;
      I, J      : Cursor);

   function Find
     (Container : Tree;
      Item      : Element_Type) return Cursor;

   --  This version of the AI:
   --   10-06-02  AI05-0136-1/07
   --  declares Find_In_Subtree this way:
   --
   --  function Find_In_Subtree
   --    (Container : Tree;
   --     Item      : Element_Type;
   --     Position  : Cursor) return Cursor;
   --
   --  It seems that the Container parameter is there by mistake, but we need
   --  an official ruling from the ARG. ???

   function Find_In_Subtree
     (Position : Cursor;
      Item     : Element_Type) return Cursor;

   --  This version of the AI:
   --   10-06-02  AI05-0136-1/07
   --  declares Ancestor_Find this way:
   --
   --  function Ancestor_Find
   --    (Container : Tree;
   --     Item      : Element_Type;
   --     Position  : Cursor) return Cursor;
   --
   --  It seems that the Container parameter is there by mistake, but we need
   --  an official ruling from the ARG. ???

   function Ancestor_Find
     (Position : Cursor;
      Item     : Element_Type) return Cursor;

   function Contains
     (Container : Tree;
      Item      : Element_Type) return Boolean;

   procedure Iterate
     (Container : Tree;
      Process   : not null access procedure (Position : Cursor));

   procedure Iterate_Subtree
     (Position  : Cursor;
      Process   : not null access procedure (Position : Cursor));

   function Iterate (Container : Tree)
     return Tree_Iterator_Interfaces.Forward_Iterator'Class;

   function Iterate_Subtree (Position : Cursor)
     return Tree_Iterator_Interfaces.Forward_Iterator'Class;

   function Iterate_Children
     (Container : Tree;
      Parent    : Cursor)
      return Tree_Iterator_Interfaces.Reversible_Iterator'Class;

   function Child_Count (Parent : Cursor) return Count_Type;

   function Child_Depth (Parent, Child : Cursor) return Count_Type;

   procedure Insert_Child
     (Container : in out Tree;
      Parent    : Cursor;
      Before    : Cursor;
      New_Item  : Element_Type;
      Count     : Count_Type := 1);

   procedure Insert_Child
     (Container : in out Tree;
      Parent    : Cursor;
      Before    : Cursor;
      New_Item  : Element_Type;
      Position  : out Cursor;
      Count     : Count_Type := 1);

   procedure Insert_Child
     (Container : in out Tree;
      Parent    : Cursor;
      Before    : Cursor;
      Position  : out Cursor;
      Count     : Count_Type := 1);

   procedure Prepend_Child
     (Container : in out Tree;
      Parent    : Cursor;
      New_Item  : Element_Type;
      Count     : Count_Type := 1);

   procedure Append_Child
     (Container : in out Tree;
      Parent    : Cursor;
      New_Item  : Element_Type;
      Count     : Count_Type := 1);

   procedure Delete_Children
     (Container : in out Tree;
      Parent    : Cursor);

   procedure Copy_Subtree
     (Target   : in out Tree;
      Parent   : Cursor;
      Before   : Cursor;
      Source   : Cursor);

   procedure Splice_Subtree
     (Target   : in out Tree;
      Parent   : Cursor;
      Before   : Cursor;
      Source   : in out Tree;
      Position : in out Cursor);

   procedure Splice_Subtree
     (Container : in out Tree;
      Parent    : Cursor;
      Before    : Cursor;
      Position  : Cursor);

   procedure Splice_Children
     (Target        : in out Tree;
      Target_Parent : Cursor;
      Before        : Cursor;
      Source        : in out Tree;
      Source_Parent : Cursor);

   procedure Splice_Children
     (Container       : in out Tree;
      Target_Parent   : Cursor;
      Before          : Cursor;
      Source_Parent   : Cursor);

   function Parent (Position : Cursor) return Cursor;

   function First_Child (Parent : Cursor) return Cursor;

   function First_Child_Element (Parent : Cursor) return Element_Type;

   function Last_Child (Parent : Cursor) return Cursor;

   function Last_Child_Element (Parent : Cursor) return Element_Type;

   function Next_Sibling (Position : Cursor) return Cursor;

   function Previous_Sibling (Position : Cursor) return Cursor;

   procedure Next_Sibling (Position : in out Cursor);

   procedure Previous_Sibling (Position : in out Cursor);

   --  This version of the AI:

   --   10-06-02  AI05-0136-1/07

   --  declares Iterate_Children this way:

   --  procedure Iterate_Children
   --    (Container : Tree;
   --     Parent    : Cursor;
   --     Process   : not null access procedure (Position : Cursor));

   --  It seems that the Container parameter is there by mistake, but we need
   --  an official ruling from the ARG. ???

   procedure Iterate_Children
     (Parent  : Cursor;
      Process : not null access procedure (Position : Cursor));

   procedure Reverse_Iterate_Children
     (Parent  : Cursor;
      Process : not null access procedure (Position : Cursor));

private
   use Ada.Streams;

   No_Node : constant Count_Type'Base := -1;
   --  Need to document all global declarations such as this ???

   --  Following decls also need much more documentation ???

   type Children_Type is record
      First : Count_Type'Base;
      Last  : Count_Type'Base;
   end record;

   type Tree_Node_Type is record
      Parent   : Count_Type'Base;
      Prev     : Count_Type'Base;
      Next     : Count_Type'Base;
      Children : Children_Type;
   end record;

   type Tree_Node_Array is array (Count_Type range <>) of Tree_Node_Type;
   type Element_Array is array (Count_Type range <>) of aliased Element_Type;

   type Tree (Capacity : Count_Type) is tagged record
      Nodes    : Tree_Node_Array (0 .. Capacity) := (others => <>);
      Elements : Element_Array (1 .. Capacity) := (others => <>);
      Free     : Count_Type'Base := No_Node;
      Busy     : Integer := 0;
      Lock     : Integer := 0;
      Count    : Count_Type := 0;
   end record;

   procedure Write
     (Stream    : not null access Root_Stream_Type'Class;
      Container : Tree);

   for Tree'Write use Write;

   procedure Read
     (Stream    : not null access Root_Stream_Type'Class;
      Container : out Tree);

   for Tree'Read use Read;

   type Tree_Access is access all Tree;
   for Tree_Access'Storage_Size use 0;

   type Cursor is record
      Container : Tree_Access;
      Node      : Count_Type'Base := No_Node;
   end record;

   procedure  Read
     (Stream   : not null access Root_Stream_Type'Class;
      Position : out Cursor);
   for Cursor'Read use Read;

   procedure Write
     (Stream   : not null access Root_Stream_Type'Class;
      Position : Cursor);
   for Cursor'Write use Write;

   type Constant_Reference_Type
     (Element : not null access constant Element_Type) is null record;

   procedure Write
     (Stream : not null access Root_Stream_Type'Class;
      Item   : Constant_Reference_Type);
   for Constant_Reference_Type'Write use Write;

   procedure Read
     (Stream : not null access Root_Stream_Type'Class;
      Item   : out Constant_Reference_Type);
   for Constant_Reference_Type'Read use Read;

   type Reference_Type
     (Element : not null access Element_Type) is null record;

   procedure Write
     (Stream : not null access Root_Stream_Type'Class;
      Item   : Reference_Type);
   for Reference_Type'Write use Write;

   procedure Read
     (Stream : not null access Root_Stream_Type'Class;
      Item   : out Reference_Type);
   for Reference_Type'Read use Read;

   Empty_Tree : constant Tree := (Capacity => 0, others => <>);

   No_Element : constant Cursor := Cursor'(others => <>);

end Ada.Containers.Bounded_Multiway_Trees;