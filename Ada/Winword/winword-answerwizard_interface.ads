with GNATCOM.Dispinterface;

package winword.AnswerWizard_Interface is

   type AnswerWizard_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out AnswerWizard_Type);

   function Pointer (This : AnswerWizard_Type)
     return Pointer_To_AnswerWizard;

   procedure Attach (This    : in out AnswerWizard_Type;
                     Pointer : in     Pointer_To_AnswerWizard);

   function Get_Application
     (This    : AnswerWizard_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Creator
     (This      : AnswerWizard_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This    : AnswerWizard_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Files
     (This  : AnswerWizard_Type)
     return Pointer_To_AnswerWizardFiles;

   procedure ClearFileList
     (This : AnswerWizard_Type);

   procedure ResetFileList
     (This : AnswerWizard_Type);

end winword.AnswerWizard_Interface;

