with GNATCOM.Dispinterface;

package winword.KeyBinding_Object is

   type KeyBinding_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : KeyBinding_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : KeyBinding_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : KeyBinding_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Command
     (This : KeyBinding_Type)
     return GNATCOM.Types.VARIANT;

   function Get_KeyString
     (This : KeyBinding_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Protected
     (This : KeyBinding_Type)
     return GNATCOM.Types.VARIANT;

   function Get_KeyCategory
     (This : KeyBinding_Type)
     return GNATCOM.Types.VARIANT;

   function Get_KeyCode
     (This : KeyBinding_Type)
     return GNATCOM.Types.VARIANT;

   function Get_KeyCode2
     (This : KeyBinding_Type)
     return GNATCOM.Types.VARIANT;

   function Get_CommandParameter
     (This : KeyBinding_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Context
     (This : KeyBinding_Type)
     return GNATCOM.Types.VARIANT;

   procedure Clear
     (This : KeyBinding_Type);

   procedure Disable
     (This : KeyBinding_Type);

   procedure Execute
     (This : KeyBinding_Type);

   procedure Rebind
     (This             : KeyBinding_Type;
      KeyCategory      : GNATCOM.Types.VARIANT;
      Command          : GNATCOM.Types.VARIANT;
      CommandParameter : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free             : Boolean := True);

end winword.KeyBinding_Object;

