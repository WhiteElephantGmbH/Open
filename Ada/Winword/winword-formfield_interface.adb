with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.FormField_Interface is

   procedure Initialize (This : in out FormField_Type) is
   begin
      Set_IID (This, IID_FormField);
   end Initialize;

   function Pointer (This : FormField_Type)
     return Pointer_To_FormField
   is
   begin
      return To_Pointer_To_FormField (Address (This));
   end Pointer;

   procedure Attach (This    : in out FormField_Type;
                     Pointer : in     Pointer_To_FormField)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : FormField_Type)
     return Pointer_To_uApplication
   is
       RetVal : aliased Pointer_To_uApplication;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Application
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Application;

   function Get_Creator
     (This : FormField_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Creator
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Creator;

   function Get_Parent
     (This : FormField_Type)
     return GNATCOM.Types.Pointer_To_IDispatch
   is
       RetVal : aliased GNATCOM.Types.Pointer_To_IDispatch;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Parent
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Parent;

   function Get_Type
     (This : FormField_Type)
     return WdFieldType
   is
       RetVal : aliased WdFieldType;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Type
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Type;

   function Get_Name
     (This : FormField_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Name
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Name;

   procedure Put_Name
     (This : FormField_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Name
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_Name;

   function Get_EntryMacro
     (This : FormField_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_EntryMacro
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_EntryMacro;

   procedure Put_EntryMacro
     (This : FormField_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_EntryMacro
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_EntryMacro;

   function Get_ExitMacro
     (This : FormField_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ExitMacro
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ExitMacro;

   procedure Put_ExitMacro
     (This : FormField_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ExitMacro
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_ExitMacro;

   function Get_OwnHelp
     (This : FormField_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_OwnHelp
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_OwnHelp;

   procedure Put_OwnHelp
     (This : FormField_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_OwnHelp
         (Pointer (This),
          prop));

   end Put_OwnHelp;

   function Get_OwnStatus
     (This : FormField_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_OwnStatus
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_OwnStatus;

   procedure Put_OwnStatus
     (This : FormField_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_OwnStatus
         (Pointer (This),
          prop));

   end Put_OwnStatus;

   function Get_HelpText
     (This : FormField_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_HelpText
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_HelpText;

   procedure Put_HelpText
     (This : FormField_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_HelpText
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_HelpText;

   function Get_StatusText
     (This : FormField_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_StatusText
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_StatusText;

   procedure Put_StatusText
     (This : FormField_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_StatusText
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_StatusText;

   function Get_Enabled
     (This : FormField_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Enabled
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Enabled;

   procedure Put_Enabled
     (This : FormField_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Enabled
         (Pointer (This),
          prop));

   end Put_Enabled;

   function Get_Result
     (This : FormField_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Result
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Result;

   procedure Put_Result
     (This : FormField_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Result
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_Result;

   function Get_TextInput
     (This : FormField_Type)
     return Pointer_To_TextInput
   is
       RetVal : aliased Pointer_To_TextInput;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_TextInput
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_TextInput;

   function Get_CheckBox
     (This : FormField_Type)
     return Pointer_To_CheckBox
   is
       RetVal : aliased Pointer_To_CheckBox;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_CheckBox
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_CheckBox;

   function Get_DropDown
     (This : FormField_Type)
     return Pointer_To_DropDown
   is
       RetVal : aliased Pointer_To_DropDown;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DropDown
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DropDown;

   function Get_Next
     (This : FormField_Type)
     return Pointer_To_FormField
   is
       RetVal : aliased Pointer_To_FormField;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Next
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Next;

   function Get_Previous
     (This : FormField_Type)
     return Pointer_To_FormField
   is
       RetVal : aliased Pointer_To_FormField;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Previous
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Previous;

   function Get_CalculateOnExit
     (This : FormField_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_CalculateOnExit
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_CalculateOnExit;

   procedure Put_CalculateOnExit
     (This : FormField_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_CalculateOnExit
         (Pointer (This),
          prop));

   end Put_CalculateOnExit;

   function Get_Range
     (This : FormField_Type)
     return Pointer_To_uRange
   is
       RetVal : aliased Pointer_To_uRange;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Range
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Range;

   procedure uSelect
     (This : FormField_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.uSelect
         (Pointer (This)));

   end uSelect;

   procedure Copy
     (This : FormField_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Copy
         (Pointer (This)));

   end Copy;

   procedure Cut
     (This : FormField_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Cut
         (Pointer (This)));

   end Cut;

   procedure Delete
     (This : FormField_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Delete
         (Pointer (This)));

   end Delete;

end winword.FormField_Interface;

