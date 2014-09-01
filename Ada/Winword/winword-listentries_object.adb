package body winword.ListEntries_Object is

   function Get_Application
     (This : ListEntries_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ListEntries_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : ListEntries_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ListEntries_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : ListEntries_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ListEntries_Get_Parent);
   end Get_Parent;

   function Getu_NewEnum
     (This : ListEntries_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ListEntries_Getu_NewEnum);
   end Getu_NewEnum;

   function Get_Count
     (This : ListEntries_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ListEntries_Get_Count);
   end Get_Count;

   function Item
     (This  : ListEntries_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         ListEntries_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

   function Add
     (This  : ListEntries_Type;
      Name  : GNATCOM.Types.VARIANT;
      Index : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         ListEntries_Add,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index,
          2 => Name),
         Free);
   end Add;

   procedure Clear
     (This : ListEntries_Type)
   is
   begin
      Invoke (This, ListEntries_Clear);
   end Clear;

end winword.ListEntries_Object;

