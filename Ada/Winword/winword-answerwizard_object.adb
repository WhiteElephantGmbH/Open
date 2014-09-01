package body winword.AnswerWizard_Object is

   function Get_Application
     (This : AnswerWizard_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, AnswerWizard_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : AnswerWizard_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, AnswerWizard_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : AnswerWizard_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, AnswerWizard_Get_Parent);
   end Get_Parent;

   function Get_Files
     (This : AnswerWizard_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, AnswerWizard_Get_Files);
   end Get_Files;

   procedure ClearFileList
     (This : AnswerWizard_Type)
   is
   begin
      Invoke (This, AnswerWizard_ClearFileList);
   end ClearFileList;

   procedure ResetFileList
     (This : AnswerWizard_Type)
   is
   begin
      Invoke (This, AnswerWizard_ResetFileList);
   end ResetFileList;

end winword.AnswerWizard_Object;

