with GNATCOM.Dispinterface;

package winword.FormField_Object is

   type FormField_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : FormField_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : FormField_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : FormField_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Type
     (This : FormField_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Name
     (This : FormField_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Name
     (This : FormField_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_EntryMacro
     (This : FormField_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_EntryMacro
     (This : FormField_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ExitMacro
     (This : FormField_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ExitMacro
     (This : FormField_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_OwnHelp
     (This : FormField_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_OwnHelp
     (This : FormField_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_OwnStatus
     (This : FormField_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_OwnStatus
     (This : FormField_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_HelpText
     (This : FormField_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_HelpText
     (This : FormField_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_StatusText
     (This : FormField_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_StatusText
     (This : FormField_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Enabled
     (This : FormField_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Enabled
     (This : FormField_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Result
     (This : FormField_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Result
     (This : FormField_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_TextInput
     (This : FormField_Type)
     return GNATCOM.Types.VARIANT;

   function Get_CheckBox
     (This : FormField_Type)
     return GNATCOM.Types.VARIANT;

   function Get_DropDown
     (This : FormField_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Next
     (This : FormField_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Previous
     (This : FormField_Type)
     return GNATCOM.Types.VARIANT;

   function Get_CalculateOnExit
     (This : FormField_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_CalculateOnExit
     (This : FormField_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Range
     (This : FormField_Type)
     return GNATCOM.Types.VARIANT;

   procedure uSelect
     (This : FormField_Type);

   procedure Copy
     (This : FormField_Type);

   procedure Cut
     (This : FormField_Type);

   procedure Delete
     (This : FormField_Type);

end winword.FormField_Object;

