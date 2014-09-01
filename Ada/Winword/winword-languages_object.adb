package body winword.Languages_Object is

   function Getu_NewEnum
     (This : Languages_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Languages_Getu_NewEnum);
   end Getu_NewEnum;

   function Get_Count
     (This : Languages_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Languages_Get_Count);
   end Get_Count;

   function Get_Application
     (This : Languages_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Languages_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : Languages_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Languages_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : Languages_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Languages_Get_Parent);
   end Get_Parent;

   function Item
     (This  : Languages_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Languages_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

end winword.Languages_Object;

