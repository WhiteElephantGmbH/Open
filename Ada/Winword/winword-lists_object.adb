package body winword.Lists_Object is

   function Getu_NewEnum
     (This : Lists_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Lists_Getu_NewEnum);
   end Getu_NewEnum;

   function Get_Count
     (This : Lists_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Lists_Get_Count);
   end Get_Count;

   function Get_Application
     (This : Lists_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Lists_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : Lists_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Lists_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : Lists_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Lists_Get_Parent);
   end Get_Parent;

   function Item
     (This  : Lists_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Lists_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

end winword.Lists_Object;

