package body winword.ListLevels_Object is

   function Getu_NewEnum
     (This : ListLevels_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ListLevels_Getu_NewEnum);
   end Getu_NewEnum;

   function Get_Count
     (This : ListLevels_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ListLevels_Get_Count);
   end Get_Count;

   function Get_Application
     (This : ListLevels_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ListLevels_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : ListLevels_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ListLevels_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : ListLevels_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ListLevels_Get_Parent);
   end Get_Parent;

   function Item
     (This  : ListLevels_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         ListLevels_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

end winword.ListLevels_Object;

