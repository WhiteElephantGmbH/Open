package body winword.TablesOfAuthoritiesCategories_Object is

   function Get_Application
     (This : TablesOfAuthoritiesCategories_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TablesOfAuthoritiesCategories_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : TablesOfAuthoritiesCategories_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TablesOfAuthoritiesCategories_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : TablesOfAuthoritiesCategories_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TablesOfAuthoritiesCategories_Get_Parent);
   end Get_Parent;

   function Getu_NewEnum
     (This : TablesOfAuthoritiesCategories_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TablesOfAuthoritiesCategories_Getu_NewEnum);
   end Getu_NewEnum;

   function Get_Count
     (This : TablesOfAuthoritiesCategories_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TablesOfAuthoritiesCategories_Get_Count);
   end Get_Count;

   function Item
     (This  : TablesOfAuthoritiesCategories_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         TablesOfAuthoritiesCategories_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

end winword.TablesOfAuthoritiesCategories_Object;

