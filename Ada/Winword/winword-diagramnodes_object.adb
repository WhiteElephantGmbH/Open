package body winword.DiagramNodes_Object is

   function Get_Application
     (This : DiagramNodes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, DiagramNodes_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : DiagramNodes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, DiagramNodes_Get_Creator);
   end Get_Creator;

   function Getu_NewEnum
     (This : DiagramNodes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, DiagramNodes_Getu_NewEnum);
   end Getu_NewEnum;

   function Item
     (This  : DiagramNodes_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         DiagramNodes_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

   procedure SelectAll
     (This : DiagramNodes_Type)
   is
   begin
      Invoke (This, DiagramNodes_SelectAll);
   end SelectAll;

   function Get_Parent
     (This : DiagramNodes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, DiagramNodes_Get_Parent);
   end Get_Parent;

   function Get_Count
     (This : DiagramNodes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, DiagramNodes_Get_Count);
   end Get_Count;

end winword.DiagramNodes_Object;

