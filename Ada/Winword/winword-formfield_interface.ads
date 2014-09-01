with GNATCOM.Dispinterface;

package winword.FormField_Interface is

   type FormField_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out FormField_Type);

   function Pointer (This : FormField_Type)
     return Pointer_To_FormField;

   procedure Attach (This    : in out FormField_Type;
                     Pointer : in     Pointer_To_FormField);

   function Get_Application
     (This : FormField_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : FormField_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : FormField_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Type
     (This : FormField_Type)
     return WdFieldType;

   function Get_Name
     (This : FormField_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_Name
     (This : FormField_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_EntryMacro
     (This : FormField_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_EntryMacro
     (This : FormField_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_ExitMacro
     (This : FormField_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_ExitMacro
     (This : FormField_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_OwnHelp
     (This : FormField_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_OwnHelp
     (This : FormField_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_OwnStatus
     (This : FormField_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_OwnStatus
     (This : FormField_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_HelpText
     (This : FormField_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_HelpText
     (This : FormField_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_StatusText
     (This : FormField_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_StatusText
     (This : FormField_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_Enabled
     (This : FormField_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_Enabled
     (This : FormField_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_Result
     (This : FormField_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_Result
     (This : FormField_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_TextInput
     (This : FormField_Type)
     return Pointer_To_TextInput;

   function Get_CheckBox
     (This : FormField_Type)
     return Pointer_To_CheckBox;

   function Get_DropDown
     (This : FormField_Type)
     return Pointer_To_DropDown;

   function Get_Next
     (This : FormField_Type)
     return Pointer_To_FormField;

   function Get_Previous
     (This : FormField_Type)
     return Pointer_To_FormField;

   function Get_CalculateOnExit
     (This : FormField_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_CalculateOnExit
     (This : FormField_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_Range
     (This : FormField_Type)
     return Pointer_To_uRange;

   procedure uSelect
     (This : FormField_Type);

   procedure Copy
     (This : FormField_Type);

   procedure Cut
     (This : FormField_Type);

   procedure Delete
     (This : FormField_Type);

end winword.FormField_Interface;

