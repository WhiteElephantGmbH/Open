package body winword.FormField_Object is

   function Get_Application
     (This : FormField_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FormField_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : FormField_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FormField_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : FormField_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FormField_Get_Parent);
   end Get_Parent;

   function Get_Type
     (This : FormField_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FormField_Get_Type);
   end Get_Type;

   function Get_Name
     (This : FormField_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FormField_Get_Name);
   end Get_Name;

   procedure Put_Name
     (This : FormField_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         FormField_Put_Name,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Name;

   function Get_EntryMacro
     (This : FormField_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FormField_Get_EntryMacro);
   end Get_EntryMacro;

   procedure Put_EntryMacro
     (This : FormField_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         FormField_Put_EntryMacro,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_EntryMacro;

   function Get_ExitMacro
     (This : FormField_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FormField_Get_ExitMacro);
   end Get_ExitMacro;

   procedure Put_ExitMacro
     (This : FormField_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         FormField_Put_ExitMacro,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ExitMacro;

   function Get_OwnHelp
     (This : FormField_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FormField_Get_OwnHelp);
   end Get_OwnHelp;

   procedure Put_OwnHelp
     (This : FormField_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         FormField_Put_OwnHelp,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_OwnHelp;

   function Get_OwnStatus
     (This : FormField_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FormField_Get_OwnStatus);
   end Get_OwnStatus;

   procedure Put_OwnStatus
     (This : FormField_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         FormField_Put_OwnStatus,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_OwnStatus;

   function Get_HelpText
     (This : FormField_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FormField_Get_HelpText);
   end Get_HelpText;

   procedure Put_HelpText
     (This : FormField_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         FormField_Put_HelpText,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_HelpText;

   function Get_StatusText
     (This : FormField_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FormField_Get_StatusText);
   end Get_StatusText;

   procedure Put_StatusText
     (This : FormField_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         FormField_Put_StatusText,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_StatusText;

   function Get_Enabled
     (This : FormField_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FormField_Get_Enabled);
   end Get_Enabled;

   procedure Put_Enabled
     (This : FormField_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         FormField_Put_Enabled,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Enabled;

   function Get_Result
     (This : FormField_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FormField_Get_Result);
   end Get_Result;

   procedure Put_Result
     (This : FormField_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         FormField_Put_Result,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Result;

   function Get_TextInput
     (This : FormField_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FormField_Get_TextInput);
   end Get_TextInput;

   function Get_CheckBox
     (This : FormField_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FormField_Get_CheckBox);
   end Get_CheckBox;

   function Get_DropDown
     (This : FormField_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FormField_Get_DropDown);
   end Get_DropDown;

   function Get_Next
     (This : FormField_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FormField_Get_Next);
   end Get_Next;

   function Get_Previous
     (This : FormField_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FormField_Get_Previous);
   end Get_Previous;

   function Get_CalculateOnExit
     (This : FormField_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FormField_Get_CalculateOnExit);
   end Get_CalculateOnExit;

   procedure Put_CalculateOnExit
     (This : FormField_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         FormField_Put_CalculateOnExit,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_CalculateOnExit;

   function Get_Range
     (This : FormField_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FormField_Get_Range);
   end Get_Range;

   procedure uSelect
     (This : FormField_Type)
   is
   begin
      Invoke (This, FormField_uSelect);
   end uSelect;

   procedure Copy
     (This : FormField_Type)
   is
   begin
      Invoke (This, FormField_Copy);
   end Copy;

   procedure Cut
     (This : FormField_Type)
   is
   begin
      Invoke (This, FormField_Cut);
   end Cut;

   procedure Delete
     (This : FormField_Type)
   is
   begin
      Invoke (This, FormField_Delete);
   end Delete;

end winword.FormField_Object;

