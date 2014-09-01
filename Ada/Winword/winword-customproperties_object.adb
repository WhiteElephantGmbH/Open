package body winword.CustomProperties_Object is

   function Getu_NewEnum
     (This : CustomProperties_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CustomProperties_Getu_NewEnum);
   end Getu_NewEnum;

   function Get_Count
     (This : CustomProperties_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CustomProperties_Get_Count);
   end Get_Count;

   function Get_Application
     (This : CustomProperties_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CustomProperties_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : CustomProperties_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CustomProperties_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : CustomProperties_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CustomProperties_Get_Parent);
   end Get_Parent;

   function Item
     (This  : CustomProperties_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         CustomProperties_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

   function Add
     (This  : CustomProperties_Type;
      Name  : GNATCOM.Types.VARIANT;
      Value : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         CustomProperties_Add,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Value,
          2 => Name),
         Free);
   end Add;

end winword.CustomProperties_Object;

