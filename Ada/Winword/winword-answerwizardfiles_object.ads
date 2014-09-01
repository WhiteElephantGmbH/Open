with GNATCOM.Dispinterface;

package winword.AnswerWizardFiles_Object is

   type AnswerWizardFiles_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : AnswerWizardFiles_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : AnswerWizardFiles_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : AnswerWizardFiles_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Item
     (This  : AnswerWizardFiles_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : AnswerWizardFiles_Type)
     return GNATCOM.Types.VARIANT;

   procedure Add
     (This     : AnswerWizardFiles_Type;
      FileName : GNATCOM.Types.VARIANT;
      Free     : Boolean := True);

   procedure Delete
     (This     : AnswerWizardFiles_Type;
      FileName : GNATCOM.Types.VARIANT;
      Free     : Boolean := True);

end winword.AnswerWizardFiles_Object;

