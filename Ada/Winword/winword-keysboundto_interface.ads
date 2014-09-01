with GNATCOM.Dispinterface;

package winword.KeysBoundTo_Interface is

   type KeysBoundTo_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out KeysBoundTo_Type);

   function Pointer (This : KeysBoundTo_Type)
     return Pointer_To_KeysBoundTo;

   procedure Attach (This    : in out KeysBoundTo_Type;
                     Pointer : in     Pointer_To_KeysBoundTo);

   function Get_Application
     (This : KeysBoundTo_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : KeysBoundTo_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : KeysBoundTo_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Getu_NewEnum
     (This : KeysBoundTo_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_Count
     (This : KeysBoundTo_Type)
     return Interfaces.C.long;

   function Get_KeyCategory
     (This : KeysBoundTo_Type)
     return WdKeyCategory;

   function Get_Command
     (This : KeysBoundTo_Type)
     return GNATCOM.Types.BSTR;

   function Get_CommandParameter
     (This : KeysBoundTo_Type)
     return GNATCOM.Types.BSTR;

   function Get_Context
     (This : KeysBoundTo_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Item
     (This  : KeysBoundTo_Type;
      Index : Interfaces.C.long)
     return Pointer_To_KeyBinding;

   function Key
     (This     : KeysBoundTo_Type;
      KeyCode  : Interfaces.C.long;
      KeyCode2 : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_KeyBinding;

end winword.KeysBoundTo_Interface;

