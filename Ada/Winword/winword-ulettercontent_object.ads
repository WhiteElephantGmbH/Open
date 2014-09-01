with GNATCOM.Dispinterface;

package winword.uLetterContent_Object is

   type uLetterContent_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : uLetterContent_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : uLetterContent_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : uLetterContent_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Duplicate
     (This : uLetterContent_Type)
     return GNATCOM.Types.VARIANT;

   function Get_DateFormat
     (This : uLetterContent_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DateFormat
     (This : uLetterContent_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_IncludeHeaderFooter
     (This : uLetterContent_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_IncludeHeaderFooter
     (This : uLetterContent_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_PageDesign
     (This : uLetterContent_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_PageDesign
     (This : uLetterContent_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_LetterStyle
     (This : uLetterContent_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_LetterStyle
     (This : uLetterContent_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Letterhead
     (This : uLetterContent_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Letterhead
     (This : uLetterContent_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_LetterheadLocation
     (This : uLetterContent_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_LetterheadLocation
     (This : uLetterContent_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_LetterheadSize
     (This : uLetterContent_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_LetterheadSize
     (This : uLetterContent_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_RecipientName
     (This : uLetterContent_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_RecipientName
     (This : uLetterContent_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_RecipientAddress
     (This : uLetterContent_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_RecipientAddress
     (This : uLetterContent_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Salutation
     (This : uLetterContent_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Salutation
     (This : uLetterContent_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_SalutationType
     (This : uLetterContent_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_SalutationType
     (This : uLetterContent_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_RecipientReference
     (This : uLetterContent_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_RecipientReference
     (This : uLetterContent_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_MailingInstructions
     (This : uLetterContent_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_MailingInstructions
     (This : uLetterContent_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AttentionLine
     (This : uLetterContent_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AttentionLine
     (This : uLetterContent_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Subject
     (This : uLetterContent_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Subject
     (This : uLetterContent_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_EnclosureNumber
     (This : uLetterContent_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_EnclosureNumber
     (This : uLetterContent_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_CCList
     (This : uLetterContent_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_CCList
     (This : uLetterContent_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ReturnAddress
     (This : uLetterContent_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ReturnAddress
     (This : uLetterContent_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_SenderName
     (This : uLetterContent_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_SenderName
     (This : uLetterContent_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Closing
     (This : uLetterContent_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Closing
     (This : uLetterContent_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_SenderCompany
     (This : uLetterContent_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_SenderCompany
     (This : uLetterContent_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_SenderJobTitle
     (This : uLetterContent_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_SenderJobTitle
     (This : uLetterContent_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_SenderInitials
     (This : uLetterContent_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_SenderInitials
     (This : uLetterContent_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_InfoBlock
     (This : uLetterContent_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_InfoBlock
     (This : uLetterContent_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_RecipientCode
     (This : uLetterContent_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_RecipientCode
     (This : uLetterContent_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_RecipientGender
     (This : uLetterContent_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_RecipientGender
     (This : uLetterContent_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ReturnAddressShortForm
     (This : uLetterContent_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ReturnAddressShortForm
     (This : uLetterContent_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_SenderCity
     (This : uLetterContent_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_SenderCity
     (This : uLetterContent_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_SenderCode
     (This : uLetterContent_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_SenderCode
     (This : uLetterContent_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_SenderGender
     (This : uLetterContent_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_SenderGender
     (This : uLetterContent_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_SenderReference
     (This : uLetterContent_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_SenderReference
     (This : uLetterContent_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

end winword.uLetterContent_Object;

