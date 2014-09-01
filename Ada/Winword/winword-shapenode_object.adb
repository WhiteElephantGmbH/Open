package body winword.ShapeNode_Object is

   function Get_Application
     (This : ShapeNode_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ShapeNode_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : ShapeNode_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ShapeNode_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : ShapeNode_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ShapeNode_Get_Parent);
   end Get_Parent;

   function Get_EditingType
     (This : ShapeNode_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ShapeNode_Get_EditingType);
   end Get_EditingType;

   function Get_Points
     (This : ShapeNode_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ShapeNode_Get_Points);
   end Get_Points;

   function Get_SegmentType
     (This : ShapeNode_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ShapeNode_Get_SegmentType);
   end Get_SegmentType;

end winword.ShapeNode_Object;

