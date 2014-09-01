package body winword.AnswerWizardFiles_Object is

   function Get_Application
     (This : AnswerWizardFiles_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, AnswerWizardFiles_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : AnswerWizardFiles_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, AnswerWizardFiles_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : AnswerWizardFiles_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, AnswerWizardFiles_Get_Parent);
   end Get_Parent;

   function Get_Item
     (This  : AnswerWizardFiles_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get
        (This,
         AnswerWizardFiles_Get_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Get_Item;

   function Get_Count
     (This : AnswerWizardFiles_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, AnswerWizardFiles_Get_Count);
   end Get_Count;

   procedure Add
     (This     : AnswerWizardFiles_Type;
      FileName : GNATCOM.Types.VARIANT;
      Free     : Boolean := True)
   is
   begin
      Invoke
        (This,
         AnswerWizardFiles_Add,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => FileName),
         Free);
   end Add;

   procedure Delete
     (This     : AnswerWizardFiles_Type;
      FileName : GNATCOM.Types.VARIANT;
      Free     : Boolean := True)
   is
   begin
      Invoke
        (This,
         AnswerWizardFiles_Delete,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => FileName),
         Free);
   end Delete;

end winword.AnswerWizardFiles_Object;

