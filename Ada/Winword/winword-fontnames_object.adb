package body winword.FontNames_Object is

   function Getu_NewEnum
     (This : FontNames_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FontNames_Getu_NewEnum);
   end Getu_NewEnum;

   function Get_Count
     (This : FontNames_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FontNames_Get_Count);
   end Get_Count;

   function Get_Application
     (This : FontNames_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FontNames_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : FontNames_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FontNames_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : FontNames_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FontNames_Get_Parent);
   end Get_Parent;

   function Item
     (This  : FontNames_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         FontNames_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

end winword.FontNames_Object;

