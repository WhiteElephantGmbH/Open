with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.MailMessage_Interface is

   procedure Initialize (This : in out MailMessage_Type) is
   begin
      Set_IID (This, IID_MailMessage);
   end Initialize;

   function Pointer (This : MailMessage_Type)
     return Pointer_To_MailMessage
   is
   begin
      return To_Pointer_To_MailMessage (Address (This));
   end Pointer;

   procedure Attach (This    : in out MailMessage_Type;
                     Pointer : in     Pointer_To_MailMessage)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : MailMessage_Type)
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
     (This : MailMessage_Type)
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
     (This : MailMessage_Type)
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

   procedure CheckName
     (This : MailMessage_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.CheckName
         (Pointer (This)));

   end CheckName;

   procedure Delete
     (This : MailMessage_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Delete
         (Pointer (This)));

   end Delete;

   procedure DisplayMoveDialog
     (This : MailMessage_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.DisplayMoveDialog
         (Pointer (This)));

   end DisplayMoveDialog;

   procedure DisplayProperties
     (This : MailMessage_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.DisplayProperties
         (Pointer (This)));

   end DisplayProperties;

   procedure DisplaySelectNamesDialog
     (This : MailMessage_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.DisplaySelectNamesDialog
         (Pointer (This)));

   end DisplaySelectNamesDialog;

   procedure Forward
     (This : MailMessage_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Forward
         (Pointer (This)));

   end Forward;

   procedure GoToNext
     (This : MailMessage_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.GoToNext
         (Pointer (This)));

   end GoToNext;

   procedure GoToPrevious
     (This : MailMessage_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.GoToPrevious
         (Pointer (This)));

   end GoToPrevious;

   procedure Reply
     (This : MailMessage_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Reply
         (Pointer (This)));

   end Reply;

   procedure ReplyAll
     (This : MailMessage_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ReplyAll
         (Pointer (This)));

   end ReplyAll;

   procedure ToggleHeader
     (This : MailMessage_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ToggleHeader
         (Pointer (This)));

   end ToggleHeader;

end winword.MailMessage_Interface;

