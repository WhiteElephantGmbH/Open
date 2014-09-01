with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.AnswerWizard_Interface is

   procedure Initialize (This : in out AnswerWizard_Type) is
   begin
      Set_IID (This, IID_AnswerWizard);
   end Initialize;

   function Pointer (This : AnswerWizard_Type)
     return Pointer_To_AnswerWizard
   is
   begin
      return To_Pointer_To_AnswerWizard (Address (This));
   end Pointer;

   procedure Attach (This    : in out AnswerWizard_Type;
                     Pointer : in     Pointer_To_AnswerWizard)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This    : AnswerWizard_Type)
     return GNATCOM.Types.Pointer_To_IDispatch
   is
       RetVal : aliased GNATCOM.Types.Pointer_To_IDispatch;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Application
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Application;

   function Get_Creator
     (This      : AnswerWizard_Type)
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
     (This    : AnswerWizard_Type)
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

   function Get_Files
     (This  : AnswerWizard_Type)
     return Pointer_To_AnswerWizardFiles
   is
       RetVal : aliased Pointer_To_AnswerWizardFiles;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Files
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Files;

   procedure ClearFileList
     (This : AnswerWizard_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ClearFileList
         (Pointer (This)));

   end ClearFileList;

   procedure ResetFileList
     (This : AnswerWizard_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ResetFileList
         (Pointer (This)));

   end ResetFileList;

end winword.AnswerWizard_Interface;

