package body winword.HTMLProjectItems_Object is

   function Get_Application
     (This : HTMLProjectItems_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HTMLProjectItems_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : HTMLProjectItems_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HTMLProjectItems_Get_Creator);
   end Get_Creator;

   function Item
     (This  : HTMLProjectItems_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         HTMLProjectItems_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

   function Get_Count
     (This : HTMLProjectItems_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HTMLProjectItems_Get_Count);
   end Get_Count;

   function Getu_NewEnum
     (This : HTMLProjectItems_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HTMLProjectItems_Getu_NewEnum);
   end Getu_NewEnum;

   function Get_Parent
     (This : HTMLProjectItems_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HTMLProjectItems_Get_Parent);
   end Get_Parent;

end winword.HTMLProjectItems_Object;

