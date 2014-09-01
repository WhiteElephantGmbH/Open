package body winword.MailMessage_Object is

   function Get_Application
     (This : MailMessage_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailMessage_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : MailMessage_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailMessage_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : MailMessage_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailMessage_Get_Parent);
   end Get_Parent;

   procedure CheckName
     (This : MailMessage_Type)
   is
   begin
      Invoke (This, MailMessage_CheckName);
   end CheckName;

   procedure Delete
     (This : MailMessage_Type)
   is
   begin
      Invoke (This, MailMessage_Delete);
   end Delete;

   procedure DisplayMoveDialog
     (This : MailMessage_Type)
   is
   begin
      Invoke (This, MailMessage_DisplayMoveDialog);
   end DisplayMoveDialog;

   procedure DisplayProperties
     (This : MailMessage_Type)
   is
   begin
      Invoke (This, MailMessage_DisplayProperties);
   end DisplayProperties;

   procedure DisplaySelectNamesDialog
     (This : MailMessage_Type)
   is
   begin
      Invoke (This, MailMessage_DisplaySelectNamesDialog);
   end DisplaySelectNamesDialog;

   procedure Forward
     (This : MailMessage_Type)
   is
   begin
      Invoke (This, MailMessage_Forward);
   end Forward;

   procedure GoToNext
     (This : MailMessage_Type)
   is
   begin
      Invoke (This, MailMessage_GoToNext);
   end GoToNext;

   procedure GoToPrevious
     (This : MailMessage_Type)
   is
   begin
      Invoke (This, MailMessage_GoToPrevious);
   end GoToPrevious;

   procedure Reply
     (This : MailMessage_Type)
   is
   begin
      Invoke (This, MailMessage_Reply);
   end Reply;

   procedure ReplyAll
     (This : MailMessage_Type)
   is
   begin
      Invoke (This, MailMessage_ReplyAll);
   end ReplyAll;

   procedure ToggleHeader
     (This : MailMessage_Type)
   is
   begin
      Invoke (This, MailMessage_ToggleHeader);
   end ToggleHeader;

end winword.MailMessage_Object;

