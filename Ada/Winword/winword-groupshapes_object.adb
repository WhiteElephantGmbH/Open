package body winword.GroupShapes_Object is

   function Get_Application
     (This : GroupShapes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, GroupShapes_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : GroupShapes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, GroupShapes_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : GroupShapes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, GroupShapes_Get_Parent);
   end Get_Parent;

   function Get_Count
     (This : GroupShapes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, GroupShapes_Get_Count);
   end Get_Count;

   function Getu_NewEnum
     (This : GroupShapes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, GroupShapes_Getu_NewEnum);
   end Getu_NewEnum;

   function Item
     (This  : GroupShapes_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         GroupShapes_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

   function uRange
     (This  : GroupShapes_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         GroupShapes_uRange,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end uRange;

end winword.GroupShapes_Object;

