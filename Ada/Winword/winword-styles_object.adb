package body winword.Styles_Object is

   function Get_Application
     (This : Styles_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Styles_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : Styles_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Styles_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : Styles_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Styles_Get_Parent);
   end Get_Parent;

   function Getu_NewEnum
     (This : Styles_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Styles_Getu_NewEnum);
   end Getu_NewEnum;

   function Get_Count
     (This : Styles_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Styles_Get_Count);
   end Get_Count;

   function Item
     (This  : Styles_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Styles_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

   function Add
     (This  : Styles_Type;
      Name  : GNATCOM.Types.VARIANT;
      uType : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Styles_Add,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => uType,
          2 => Name),
         Free);
   end Add;

end winword.Styles_Object;

