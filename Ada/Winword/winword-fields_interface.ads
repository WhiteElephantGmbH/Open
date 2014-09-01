with GNATCOM.Dispinterface;

package winword.Fields_Interface is

   type Fields_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Fields_Type);

   function Pointer (This : Fields_Type)
     return Pointer_To_Fields;

   procedure Attach (This    : in out Fields_Type;
                     Pointer : in     Pointer_To_Fields);

   function Get_Application
     (This : Fields_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : Fields_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : Fields_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Count
     (This : Fields_Type)
     return Interfaces.C.long;

   function Get_Locked
     (This : Fields_Type)
     return Interfaces.C.long;

   procedure Put_Locked
     (This : Fields_Type;
      prop : Interfaces.C.long);

   function Getu_NewEnum
     (This : Fields_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Item
     (This  : Fields_Type;
      Index : Interfaces.C.long)
     return Pointer_To_Field;

   procedure ToggleShowCodes
     (This : Fields_Type);

   function Update
     (This : Fields_Type)
     return Interfaces.C.long;

   procedure Unlink
     (This : Fields_Type);

   procedure UpdateSource
     (This : Fields_Type);

   function Add
     (This               : Fields_Type;
      uRange             : Pointer_To_uRange;
      uType              : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Text               : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PreserveFormatting : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Field;

end winword.Fields_Interface;

