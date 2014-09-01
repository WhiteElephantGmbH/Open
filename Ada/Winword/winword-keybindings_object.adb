package body winword.KeyBindings_Object is

   function Get_Application
     (This : KeyBindings_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, KeyBindings_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : KeyBindings_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, KeyBindings_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : KeyBindings_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, KeyBindings_Get_Parent);
   end Get_Parent;

   function Getu_NewEnum
     (This : KeyBindings_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, KeyBindings_Getu_NewEnum);
   end Getu_NewEnum;

   function Get_Count
     (This : KeyBindings_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, KeyBindings_Get_Count);
   end Get_Count;

   function Get_Context
     (This : KeyBindings_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, KeyBindings_Get_Context);
   end Get_Context;

   function Item
     (This  : KeyBindings_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         KeyBindings_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

   function Add
     (This             : KeyBindings_Type;
      KeyCategory      : GNATCOM.Types.VARIANT;
      Command          : GNATCOM.Types.VARIANT;
      KeyCode          : GNATCOM.Types.VARIANT;
      KeyCode2         : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      CommandParameter : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free             : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         KeyBindings_Add,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => CommandParameter,
          2 => KeyCode2,
          3 => KeyCode,
          4 => Command,
          5 => KeyCategory),
         Free);
   end Add;

   procedure ClearAll
     (This : KeyBindings_Type)
   is
   begin
      Invoke (This, KeyBindings_ClearAll);
   end ClearAll;

   function Key
     (This     : KeyBindings_Type;
      KeyCode  : GNATCOM.Types.VARIANT;
      KeyCode2 : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         KeyBindings_Key,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => KeyCode2,
          2 => KeyCode),
         Free);
   end Key;

end winword.KeyBindings_Object;

