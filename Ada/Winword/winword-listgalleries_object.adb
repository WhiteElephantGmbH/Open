package body winword.ListGalleries_Object is

   function Getu_NewEnum
     (This : ListGalleries_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ListGalleries_Getu_NewEnum);
   end Getu_NewEnum;

   function Get_Count
     (This : ListGalleries_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ListGalleries_Get_Count);
   end Get_Count;

   function Get_Application
     (This : ListGalleries_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ListGalleries_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : ListGalleries_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ListGalleries_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : ListGalleries_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ListGalleries_Get_Parent);
   end Get_Parent;

   function Item
     (This  : ListGalleries_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         ListGalleries_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

end winword.ListGalleries_Object;

