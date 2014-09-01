package body winword.MappedDataFields_Object is

   function Get_Application
     (This : MappedDataFields_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MappedDataFields_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : MappedDataFields_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MappedDataFields_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : MappedDataFields_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MappedDataFields_Get_Parent);
   end Get_Parent;

   function Get_Count
     (This : MappedDataFields_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MappedDataFields_Get_Count);
   end Get_Count;

   function Getu_NewEnum
     (This : MappedDataFields_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MappedDataFields_Getu_NewEnum);
   end Getu_NewEnum;

   function Item
     (This  : MappedDataFields_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         MappedDataFields_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

end winword.MappedDataFields_Object;

