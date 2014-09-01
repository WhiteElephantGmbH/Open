package body winword.Words_Object is

   function Getu_NewEnum
     (This : Words_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Words_Getu_NewEnum);
   end Getu_NewEnum;

   function Get_Count
     (This : Words_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Words_Get_Count);
   end Get_Count;

   function Get_First
     (This : Words_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Words_Get_First);
   end Get_First;

   function Get_Last
     (This : Words_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Words_Get_Last);
   end Get_Last;

   function Get_Application
     (This : Words_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Words_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : Words_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Words_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : Words_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Words_Get_Parent);
   end Get_Parent;

   function Item
     (This  : Words_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Words_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

end winword.Words_Object;

