package body winword.KeyBinding_Object is

   function Get_Application
     (This : KeyBinding_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, KeyBinding_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : KeyBinding_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, KeyBinding_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : KeyBinding_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, KeyBinding_Get_Parent);
   end Get_Parent;

   function Get_Command
     (This : KeyBinding_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, KeyBinding_Get_Command);
   end Get_Command;

   function Get_KeyString
     (This : KeyBinding_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, KeyBinding_Get_KeyString);
   end Get_KeyString;

   function Get_Protected
     (This : KeyBinding_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, KeyBinding_Get_Protected);
   end Get_Protected;

   function Get_KeyCategory
     (This : KeyBinding_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, KeyBinding_Get_KeyCategory);
   end Get_KeyCategory;

   function Get_KeyCode
     (This : KeyBinding_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, KeyBinding_Get_KeyCode);
   end Get_KeyCode;

   function Get_KeyCode2
     (This : KeyBinding_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, KeyBinding_Get_KeyCode2);
   end Get_KeyCode2;

   function Get_CommandParameter
     (This : KeyBinding_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, KeyBinding_Get_CommandParameter);
   end Get_CommandParameter;

   function Get_Context
     (This : KeyBinding_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, KeyBinding_Get_Context);
   end Get_Context;

   procedure Clear
     (This : KeyBinding_Type)
   is
   begin
      Invoke (This, KeyBinding_Clear);
   end Clear;

   procedure Disable
     (This : KeyBinding_Type)
   is
   begin
      Invoke (This, KeyBinding_Disable);
   end Disable;

   procedure Execute
     (This : KeyBinding_Type)
   is
   begin
      Invoke (This, KeyBinding_Execute);
   end Execute;

   procedure Rebind
     (This             : KeyBinding_Type;
      KeyCategory      : GNATCOM.Types.VARIANT;
      Command          : GNATCOM.Types.VARIANT;
      CommandParameter : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free             : Boolean := True)
   is
   begin
      Invoke
        (This,
         KeyBinding_Rebind,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => CommandParameter,
          2 => Command,
          3 => KeyCategory),
         Free);
   end Rebind;

end winword.KeyBinding_Object;

