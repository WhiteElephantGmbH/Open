package body winword.Variables_Object is

   function Getu_NewEnum
     (This : Variables_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Variables_Getu_NewEnum);
   end Getu_NewEnum;

   function Get_Count
     (This : Variables_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Variables_Get_Count);
   end Get_Count;

   function Get_Application
     (This : Variables_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Variables_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : Variables_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Variables_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : Variables_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Variables_Get_Parent);
   end Get_Parent;

   function Item
     (This  : Variables_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Variables_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

   function Add
     (This  : Variables_Type;
      Name  : GNATCOM.Types.VARIANT;
      Value : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Variables_Add,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Value,
          2 => Name),
         Free);
   end Add;

end winword.Variables_Object;

