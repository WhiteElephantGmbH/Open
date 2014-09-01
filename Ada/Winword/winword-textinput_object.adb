package body winword.TextInput_Object is

   function Get_Application
     (This : TextInput_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TextInput_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : TextInput_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TextInput_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : TextInput_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TextInput_Get_Parent);
   end Get_Parent;

   function Get_Valid
     (This : TextInput_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TextInput_Get_Valid);
   end Get_Valid;

   function Get_Default
     (This : TextInput_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TextInput_Get_Default);
   end Get_Default;

   procedure Put_Default
     (This : TextInput_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TextInput_Put_Default,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Default;

   function Get_Type
     (This : TextInput_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TextInput_Get_Type);
   end Get_Type;

   function Get_Format
     (This : TextInput_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TextInput_Get_Format);
   end Get_Format;

   function Get_Width
     (This : TextInput_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TextInput_Get_Width);
   end Get_Width;

   procedure Put_Width
     (This : TextInput_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TextInput_Put_Width,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Width;

   procedure Clear
     (This : TextInput_Type)
   is
   begin
      Invoke (This, TextInput_Clear);
   end Clear;

   procedure EditType
     (This    : TextInput_Type;
      uType   : GNATCOM.Types.VARIANT;
      Default : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Format  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Enabled : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free    : Boolean := True)
   is
   begin
      Invoke
        (This,
         TextInput_EditType,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Enabled,
          2 => Format,
          3 => Default,
          4 => uType),
         Free);
   end EditType;

end winword.TextInput_Object;

