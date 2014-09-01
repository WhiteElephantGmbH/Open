with GNATCOM.Dispinterface;

package winword.AnswerWizardFiles_Interface is

   type AnswerWizardFiles_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out AnswerWizardFiles_Type);

   function Pointer (This : AnswerWizardFiles_Type)
     return Pointer_To_AnswerWizardFiles;

   procedure Attach (This    : in out AnswerWizardFiles_Type;
                     Pointer : in     Pointer_To_AnswerWizardFiles);

   function Get_Application
     (This    : AnswerWizardFiles_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Creator
     (This      : AnswerWizardFiles_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This    : AnswerWizardFiles_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Item
     (This  : AnswerWizardFiles_Type;
      Index : Interfaces.C.int)
     return GNATCOM.Types.BSTR;

   function Get_Count
     (This   : AnswerWizardFiles_Type)
     return Interfaces.C.int;

   procedure Add
     (This     : AnswerWizardFiles_Type;
      FileName : GNATCOM.Types.BSTR;
      Free     : Boolean := True);

   procedure Delete
     (This     : AnswerWizardFiles_Type;
      FileName : GNATCOM.Types.BSTR;
      Free     : Boolean := True);

end winword.AnswerWizardFiles_Interface;

