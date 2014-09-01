with GNATCOM.Dispinterface;

package winword.KeyBindings_Interface is

   type KeyBindings_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out KeyBindings_Type);

   function Pointer (This : KeyBindings_Type)
     return Pointer_To_KeyBindings;

   procedure Attach (This    : in out KeyBindings_Type;
                     Pointer : in     Pointer_To_KeyBindings);

   function Get_Application
     (This : KeyBindings_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : KeyBindings_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : KeyBindings_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Getu_NewEnum
     (This : KeyBindings_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_Count
     (This : KeyBindings_Type)
     return Interfaces.C.long;

   function Get_Context
     (This : KeyBindings_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Item
     (This  : KeyBindings_Type;
      Index : Interfaces.C.long)
     return Pointer_To_KeyBinding;

   function Add
     (This             : KeyBindings_Type;
      KeyCategory      : WdKeyCategory;
      Command          : GNATCOM.Types.BSTR;
      KeyCode          : Interfaces.C.long;
      KeyCode2         : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      CommandParameter : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Free             : Boolean := True)
     return Pointer_To_KeyBinding;

   procedure ClearAll
     (This : KeyBindings_Type);

   function Key
     (This     : KeyBindings_Type;
      KeyCode  : Interfaces.C.long;
      KeyCode2 : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_KeyBinding;

end winword.KeyBindings_Interface;

