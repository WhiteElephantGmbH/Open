package body winword.Mailer_Object is

   function Get_Application
     (This : Mailer_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Mailer_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : Mailer_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Mailer_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : Mailer_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Mailer_Get_Parent);
   end Get_Parent;

   function Get_BCCRecipients
     (This : Mailer_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Mailer_Get_BCCRecipients);
   end Get_BCCRecipients;

   procedure Put_BCCRecipients
     (This : Mailer_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Mailer_Put_BCCRecipients,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_BCCRecipients;

   function Get_CCRecipients
     (This : Mailer_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Mailer_Get_CCRecipients);
   end Get_CCRecipients;

   procedure Put_CCRecipients
     (This : Mailer_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Mailer_Put_CCRecipients,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_CCRecipients;

   function Get_Recipients
     (This : Mailer_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Mailer_Get_Recipients);
   end Get_Recipients;

   procedure Put_Recipients
     (This : Mailer_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Mailer_Put_Recipients,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Recipients;

   function Get_Enclosures
     (This : Mailer_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Mailer_Get_Enclosures);
   end Get_Enclosures;

   procedure Put_Enclosures
     (This : Mailer_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Mailer_Put_Enclosures,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Enclosures;

   function Get_Sender
     (This : Mailer_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Mailer_Get_Sender);
   end Get_Sender;

   function Get_SendDateTime
     (This : Mailer_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Mailer_Get_SendDateTime);
   end Get_SendDateTime;

   function Get_Received
     (This : Mailer_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Mailer_Get_Received);
   end Get_Received;

   function Get_Subject
     (This : Mailer_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Mailer_Get_Subject);
   end Get_Subject;

   procedure Put_Subject
     (This : Mailer_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Mailer_Put_Subject,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Subject;

end winword.Mailer_Object;

