package body winword.ListTemplates_Object is

   function Getu_NewEnum
     (This : ListTemplates_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ListTemplates_Getu_NewEnum);
   end Getu_NewEnum;

   function Get_Count
     (This : ListTemplates_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ListTemplates_Get_Count);
   end Get_Count;

   function Get_Application
     (This : ListTemplates_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ListTemplates_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : ListTemplates_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ListTemplates_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : ListTemplates_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ListTemplates_Get_Parent);
   end Get_Parent;

   function Item
     (This  : ListTemplates_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         ListTemplates_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

   function Add
     (This            : ListTemplates_Type;
      OutlineNumbered : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Name            : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free            : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         ListTemplates_Add,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Name,
          2 => OutlineNumbered),
         Free);
   end Add;

end winword.ListTemplates_Object;

