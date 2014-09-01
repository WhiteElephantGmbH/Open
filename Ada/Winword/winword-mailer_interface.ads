with GNATCOM.Dispinterface;

package winword.Mailer_Interface is

   type Mailer_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Mailer_Type);

   function Pointer (This : Mailer_Type)
     return Pointer_To_Mailer;

   procedure Attach (This    : in out Mailer_Type;
                     Pointer : in     Pointer_To_Mailer);

   function Get_Application
     (This : Mailer_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : Mailer_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : Mailer_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_BCCRecipients
     (This : Mailer_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_BCCRecipients
     (This : Mailer_Type;
      prop : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   function Get_CCRecipients
     (This : Mailer_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_CCRecipients
     (This : Mailer_Type;
      prop : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   function Get_Recipients
     (This : Mailer_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Recipients
     (This : Mailer_Type;
      prop : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   function Get_Enclosures
     (This : Mailer_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Enclosures
     (This : Mailer_Type;
      prop : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   function Get_Sender
     (This : Mailer_Type)
     return GNATCOM.Types.BSTR;

   function Get_SendDateTime
     (This : Mailer_Type)
     return GNATCOM.Types.DATE;

   function Get_Received
     (This : Mailer_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   function Get_Subject
     (This : Mailer_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_Subject
     (This : Mailer_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

end winword.Mailer_Interface;

