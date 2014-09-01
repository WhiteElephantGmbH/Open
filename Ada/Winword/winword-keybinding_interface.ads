with GNATCOM.Dispinterface;

package winword.KeyBinding_Interface is

   type KeyBinding_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out KeyBinding_Type);

   function Pointer (This : KeyBinding_Type)
     return Pointer_To_KeyBinding;

   procedure Attach (This    : in out KeyBinding_Type;
                     Pointer : in     Pointer_To_KeyBinding);

   function Get_Application
     (This : KeyBinding_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : KeyBinding_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : KeyBinding_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Command
     (This : KeyBinding_Type)
     return GNATCOM.Types.BSTR;

   function Get_KeyString
     (This : KeyBinding_Type)
     return GNATCOM.Types.BSTR;

   function Get_Protected
     (This : KeyBinding_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   function Get_KeyCategory
     (This : KeyBinding_Type)
     return WdKeyCategory;

   function Get_KeyCode
     (This : KeyBinding_Type)
     return Interfaces.C.long;

   function Get_KeyCode2
     (This : KeyBinding_Type)
     return Interfaces.C.long;

   function Get_CommandParameter
     (This : KeyBinding_Type)
     return GNATCOM.Types.BSTR;

   function Get_Context
     (This : KeyBinding_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   procedure Clear
     (This : KeyBinding_Type);

   procedure Disable
     (This : KeyBinding_Type);

   procedure Execute
     (This : KeyBinding_Type);

   procedure Rebind
     (This             : KeyBinding_Type;
      KeyCategory      : WdKeyCategory;
      Command          : GNATCOM.Types.BSTR;
      CommandParameter : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Free             : Boolean := True);

end winword.KeyBinding_Interface;

