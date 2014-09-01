package body winword.CheckBox_Object is

   function Get_Application
     (This : CheckBox_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CheckBox_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : CheckBox_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CheckBox_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : CheckBox_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CheckBox_Get_Parent);
   end Get_Parent;

   function Get_Valid
     (This : CheckBox_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CheckBox_Get_Valid);
   end Get_Valid;

   function Get_AutoSize
     (This : CheckBox_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CheckBox_Get_AutoSize);
   end Get_AutoSize;

   procedure Put_AutoSize
     (This : CheckBox_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         CheckBox_Put_AutoSize,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AutoSize;

   function Get_Size
     (This : CheckBox_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CheckBox_Get_Size);
   end Get_Size;

   procedure Put_Size
     (This : CheckBox_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         CheckBox_Put_Size,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Size;

   function Get_Default
     (This : CheckBox_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CheckBox_Get_Default);
   end Get_Default;

   procedure Put_Default
     (This : CheckBox_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         CheckBox_Put_Default,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Default;

   function Get_Value
     (This : CheckBox_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CheckBox_Get_Value);
   end Get_Value;

   procedure Put_Value
     (This : CheckBox_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         CheckBox_Put_Value,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Value;

end winword.CheckBox_Object;

