with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.AnswerWizardFiles_Interface is

   procedure Initialize (This : in out AnswerWizardFiles_Type) is
   begin
      Set_IID (This, IID_AnswerWizardFiles);
   end Initialize;

   function Pointer (This : AnswerWizardFiles_Type)
     return Pointer_To_AnswerWizardFiles
   is
   begin
      return To_Pointer_To_AnswerWizardFiles (Address (This));
   end Pointer;

   procedure Attach (This    : in out AnswerWizardFiles_Type;
                     Pointer : in     Pointer_To_AnswerWizardFiles)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This    : AnswerWizardFiles_Type)
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
     (This      : AnswerWizardFiles_Type)
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
     (This    : AnswerWizardFiles_Type)
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

   function Get_Item
     (This  : AnswerWizardFiles_Type;
      Index : Interfaces.C.int)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Item
         (Pointer (This),
          Index,
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Item;

   function Get_Count
     (This   : AnswerWizardFiles_Type)
     return Interfaces.C.int
   is
       RetVal : aliased Interfaces.C.int;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Count
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Count;

   procedure Add
     (This     : AnswerWizardFiles_Type;
      FileName : GNATCOM.Types.BSTR;
      Free     : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Add
         (Pointer (This),
          FileName));

      if Free then
               GNATCOM.Interface.Free (FileName);
      
      end if;

   end Add;

   procedure Delete
     (This     : AnswerWizardFiles_Type;
      FileName : GNATCOM.Types.BSTR;
      Free     : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Delete
         (Pointer (This),
          FileName));

      if Free then
               GNATCOM.Interface.Free (FileName);
      
      end if;

   end Delete;

end winword.AnswerWizardFiles_Interface;

