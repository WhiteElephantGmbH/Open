package body winword.Characters_Object is

   function Getu_NewEnum
     (This : Characters_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Characters_Getu_NewEnum);
   end Getu_NewEnum;

   function Get_Count
     (This : Characters_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Characters_Get_Count);
   end Get_Count;

   function Get_First
     (This : Characters_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Characters_Get_First);
   end Get_First;

   function Get_Last
     (This : Characters_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Characters_Get_Last);
   end Get_Last;

   function Get_Application
     (This : Characters_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Characters_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : Characters_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Characters_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : Characters_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Characters_Get_Parent);
   end Get_Parent;

   function Item
     (This  : Characters_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Characters_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

end winword.Characters_Object;

