package body winword.KeysBoundTo_Object is

   function Get_Application
     (This : KeysBoundTo_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, KeysBoundTo_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : KeysBoundTo_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, KeysBoundTo_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : KeysBoundTo_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, KeysBoundTo_Get_Parent);
   end Get_Parent;

   function Getu_NewEnum
     (This : KeysBoundTo_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, KeysBoundTo_Getu_NewEnum);
   end Getu_NewEnum;

   function Get_Count
     (This : KeysBoundTo_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, KeysBoundTo_Get_Count);
   end Get_Count;

   function Get_KeyCategory
     (This : KeysBoundTo_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, KeysBoundTo_Get_KeyCategory);
   end Get_KeyCategory;

   function Get_Command
     (This : KeysBoundTo_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, KeysBoundTo_Get_Command);
   end Get_Command;

   function Get_CommandParameter
     (This : KeysBoundTo_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, KeysBoundTo_Get_CommandParameter);
   end Get_CommandParameter;

   function Get_Context
     (This : KeysBoundTo_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, KeysBoundTo_Get_Context);
   end Get_Context;

   function Item
     (This  : KeysBoundTo_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         KeysBoundTo_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

   function Key
     (This     : KeysBoundTo_Type;
      KeyCode  : GNATCOM.Types.VARIANT;
      KeyCode2 : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         KeysBoundTo_Key,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => KeyCode2,
          2 => KeyCode),
         Free);
   end Key;

end winword.KeysBoundTo_Object;

