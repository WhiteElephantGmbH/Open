package body winword.SearchScopes_Object is

   function Get_Application
     (This : SearchScopes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, SearchScopes_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : SearchScopes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, SearchScopes_Get_Creator);
   end Get_Creator;

   function Get_Item
     (This  : SearchScopes_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get
        (This,
         SearchScopes_Get_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Get_Item;

   function Get_Count
     (This : SearchScopes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, SearchScopes_Get_Count);
   end Get_Count;

   function Getu_NewEnum
     (This : SearchScopes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, SearchScopes_Getu_NewEnum);
   end Getu_NewEnum;

end winword.SearchScopes_Object;

