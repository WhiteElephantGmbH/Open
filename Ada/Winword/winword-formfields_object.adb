package body winword.FormFields_Object is

   function Get_Application
     (This : FormFields_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FormFields_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : FormFields_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FormFields_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : FormFields_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FormFields_Get_Parent);
   end Get_Parent;

   function Get_Count
     (This : FormFields_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FormFields_Get_Count);
   end Get_Count;

   function Get_Shaded
     (This : FormFields_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FormFields_Get_Shaded);
   end Get_Shaded;

   procedure Put_Shaded
     (This : FormFields_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         FormFields_Put_Shaded,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Shaded;

   function Getu_NewEnum
     (This : FormFields_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FormFields_Getu_NewEnum);
   end Getu_NewEnum;

   function Item
     (This  : FormFields_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         FormFields_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

   function Add
     (This   : FormFields_Type;
      uRange : GNATCOM.Types.VARIANT;
      uType  : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         FormFields_Add,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => uType,
          2 => uRange),
         Free);
   end Add;

end winword.FormFields_Object;

