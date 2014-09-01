package body winword.Templates_Object is

   function Get_Application
     (This : Templates_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Templates_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : Templates_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Templates_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : Templates_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Templates_Get_Parent);
   end Get_Parent;

   function Get_Count
     (This : Templates_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Templates_Get_Count);
   end Get_Count;

   function Getu_NewEnum
     (This : Templates_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Templates_Getu_NewEnum);
   end Getu_NewEnum;

   function Item
     (This  : Templates_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Templates_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

end winword.Templates_Object;

