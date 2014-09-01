with GNATCOM.Dispinterface;

package winword.MailMessage_Object is

   type MailMessage_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : MailMessage_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : MailMessage_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : MailMessage_Type)
     return GNATCOM.Types.VARIANT;

   procedure CheckName
     (This : MailMessage_Type);

   procedure Delete
     (This : MailMessage_Type);

   procedure DisplayMoveDialog
     (This : MailMessage_Type);

   procedure DisplayProperties
     (This : MailMessage_Type);

   procedure DisplaySelectNamesDialog
     (This : MailMessage_Type);

   procedure Forward
     (This : MailMessage_Type);

   procedure GoToNext
     (This : MailMessage_Type);

   procedure GoToPrevious
     (This : MailMessage_Type);

   procedure Reply
     (This : MailMessage_Type);

   procedure ReplyAll
     (This : MailMessage_Type);

   procedure ToggleHeader
     (This : MailMessage_Type);

end winword.MailMessage_Object;

