with GNATCOM.Dispinterface;

package winword.AnswerWizard_Object is

   type AnswerWizard_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : AnswerWizard_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : AnswerWizard_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : AnswerWizard_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Files
     (This : AnswerWizard_Type)
     return GNATCOM.Types.VARIANT;

   procedure ClearFileList
     (This : AnswerWizard_Type);

   procedure ResetFileList
     (This : AnswerWizard_Type);

end winword.AnswerWizard_Object;

