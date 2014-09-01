with GNATCOM.Dispinterface;

package winword.Mailer_Object is

   type Mailer_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : Mailer_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : Mailer_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : Mailer_Type)
     return GNATCOM.Types.VARIANT;

   function Get_BCCRecipients
     (This : Mailer_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_BCCRecipients
     (This : Mailer_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_CCRecipients
     (This : Mailer_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_CCRecipients
     (This : Mailer_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Recipients
     (This : Mailer_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Recipients
     (This : Mailer_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Enclosures
     (This : Mailer_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Enclosures
     (This : Mailer_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Sender
     (This : Mailer_Type)
     return GNATCOM.Types.VARIANT;

   function Get_SendDateTime
     (This : Mailer_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Received
     (This : Mailer_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Subject
     (This : Mailer_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Subject
     (This : Mailer_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

end winword.Mailer_Object;

