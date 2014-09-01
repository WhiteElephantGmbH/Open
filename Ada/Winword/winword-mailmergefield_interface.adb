with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.MailMergeField_Interface is

   procedure Initialize (This : in out MailMergeField_Type) is
   begin
      Set_IID (This, IID_MailMergeField);
   end Initialize;

   function Pointer (This : MailMergeField_Type)
     return Pointer_To_MailMergeField
   is
   begin
      return To_Pointer_To_MailMergeField (Address (This));
   end Pointer;

   procedure Attach (This    : in out MailMergeField_Type;
                     Pointer : in     Pointer_To_MailMergeField)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : MailMergeField_Type)
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
     (This : MailMergeField_Type)
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
     (This : MailMergeField_Type)
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
     (This : MailMergeField_Type)
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

   function Get_Locked
     (This : MailMergeField_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Locked
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Locked;

   procedure Put_Locked
     (This : MailMergeField_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Locked
         (Pointer (This),
          prop));

   end Put_Locked;

   function Get_Code
     (This : MailMergeField_Type)
     return Pointer_To_uRange
   is
       RetVal : aliased Pointer_To_uRange;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Code
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Code;

   procedure Put_Code
     (This : MailMergeField_Type;
      prop : Pointer_To_uRange)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Code
         (Pointer (This),
          prop));

   end Put_Code;

   function Get_Next
     (This : MailMergeField_Type)
     return Pointer_To_MailMergeField
   is
       RetVal : aliased Pointer_To_MailMergeField;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Next
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Next;

   function Get_Previous
     (This : MailMergeField_Type)
     return Pointer_To_MailMergeField
   is
       RetVal : aliased Pointer_To_MailMergeField;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Previous
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Previous;

   procedure uSelect
     (This : MailMergeField_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.uSelect
         (Pointer (This)));

   end uSelect;

   procedure Copy
     (This : MailMergeField_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Copy
         (Pointer (This)));

   end Copy;

   procedure Cut
     (This : MailMergeField_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Cut
         (Pointer (This)));

   end Cut;

   procedure Delete
     (This : MailMergeField_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Delete
         (Pointer (This)));

   end Delete;

end winword.MailMergeField_Interface;

