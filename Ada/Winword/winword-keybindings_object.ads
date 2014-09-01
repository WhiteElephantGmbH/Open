with GNATCOM.Dispinterface;

package winword.KeyBindings_Object is

   type KeyBindings_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : KeyBindings_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : KeyBindings_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : KeyBindings_Type)
     return GNATCOM.Types.VARIANT;

   function Getu_NewEnum
     (This : KeyBindings_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : KeyBindings_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Context
     (This : KeyBindings_Type)
     return GNATCOM.Types.VARIANT;

   function Item
     (This  : KeyBindings_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

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
     return GNATCOM.Types.VARIANT;

   procedure ClearAll
     (This : KeyBindings_Type);

   function Key
     (This     : KeyBindings_Type;
      KeyCode  : GNATCOM.Types.VARIANT;
      KeyCode2 : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT;

end winword.KeyBindings_Object;

