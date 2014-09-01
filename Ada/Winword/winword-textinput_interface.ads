with GNATCOM.Dispinterface;

package winword.TextInput_Interface is

   type TextInput_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out TextInput_Type);

   function Pointer (This : TextInput_Type)
     return Pointer_To_TextInput;

   procedure Attach (This    : in out TextInput_Type;
                     Pointer : in     Pointer_To_TextInput);

   function Get_Application
     (This : TextInput_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : TextInput_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : TextInput_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Valid
     (This : TextInput_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   function Get_Default
     (This : TextInput_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_Default
     (This : TextInput_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_Type
     (This : TextInput_Type)
     return WdTextFormFieldType;

   function Get_Format
     (This : TextInput_Type)
     return GNATCOM.Types.BSTR;

   function Get_Width
     (This : TextInput_Type)
     return Interfaces.C.long;

   procedure Put_Width
     (This : TextInput_Type;
      prop : Interfaces.C.long);

   procedure Clear
     (This : TextInput_Type);

   procedure EditType
     (This    : TextInput_Type;
      uType   : WdTextFormFieldType;
      Default : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Format  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Enabled : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

end winword.TextInput_Interface;

