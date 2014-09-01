with GNATCOM.Dispinterface;

package winword.TextInput_Object is

   type TextInput_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : TextInput_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : TextInput_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : TextInput_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Valid
     (This : TextInput_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Default
     (This : TextInput_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Default
     (This : TextInput_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Type
     (This : TextInput_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Format
     (This : TextInput_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Width
     (This : TextInput_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Width
     (This : TextInput_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure Clear
     (This : TextInput_Type);

   procedure EditType
     (This    : TextInput_Type;
      uType   : GNATCOM.Types.VARIANT;
      Default : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Format  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Enabled : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free    : Boolean := True);

end winword.TextInput_Object;

