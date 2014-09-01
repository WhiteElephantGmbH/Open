package body winword.CustomLabels_Object is

   function Get_Application
     (This : CustomLabels_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CustomLabels_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : CustomLabels_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CustomLabels_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : CustomLabels_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CustomLabels_Get_Parent);
   end Get_Parent;

   function Getu_NewEnum
     (This : CustomLabels_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CustomLabels_Getu_NewEnum);
   end Getu_NewEnum;

   function Get_Count
     (This : CustomLabels_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CustomLabels_Get_Count);
   end Get_Count;

   function Item
     (This  : CustomLabels_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         CustomLabels_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

   function Add
     (This      : CustomLabels_Type;
      Name      : GNATCOM.Types.VARIANT;
      DotMatrix : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free      : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         CustomLabels_Add,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => DotMatrix,
          2 => Name),
         Free);
   end Add;

end winword.CustomLabels_Object;

