package body winword.uLetterContent_Object is

   function Get_Application
     (This : uLetterContent_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uLetterContent_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : uLetterContent_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uLetterContent_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : uLetterContent_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uLetterContent_Get_Parent);
   end Get_Parent;

   function Get_Duplicate
     (This : uLetterContent_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uLetterContent_Get_Duplicate);
   end Get_Duplicate;

   function Get_DateFormat
     (This : uLetterContent_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uLetterContent_Get_DateFormat);
   end Get_DateFormat;

   procedure Put_DateFormat
     (This : uLetterContent_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uLetterContent_Put_DateFormat,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DateFormat;

   function Get_IncludeHeaderFooter
     (This : uLetterContent_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uLetterContent_Get_IncludeHeaderFooter);
   end Get_IncludeHeaderFooter;

   procedure Put_IncludeHeaderFooter
     (This : uLetterContent_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uLetterContent_Put_IncludeHeaderFooter,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_IncludeHeaderFooter;

   function Get_PageDesign
     (This : uLetterContent_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uLetterContent_Get_PageDesign);
   end Get_PageDesign;

   procedure Put_PageDesign
     (This : uLetterContent_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uLetterContent_Put_PageDesign,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_PageDesign;

   function Get_LetterStyle
     (This : uLetterContent_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uLetterContent_Get_LetterStyle);
   end Get_LetterStyle;

   procedure Put_LetterStyle
     (This : uLetterContent_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uLetterContent_Put_LetterStyle,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_LetterStyle;

   function Get_Letterhead
     (This : uLetterContent_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uLetterContent_Get_Letterhead);
   end Get_Letterhead;

   procedure Put_Letterhead
     (This : uLetterContent_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uLetterContent_Put_Letterhead,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Letterhead;

   function Get_LetterheadLocation
     (This : uLetterContent_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uLetterContent_Get_LetterheadLocation);
   end Get_LetterheadLocation;

   procedure Put_LetterheadLocation
     (This : uLetterContent_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uLetterContent_Put_LetterheadLocation,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_LetterheadLocation;

   function Get_LetterheadSize
     (This : uLetterContent_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uLetterContent_Get_LetterheadSize);
   end Get_LetterheadSize;

   procedure Put_LetterheadSize
     (This : uLetterContent_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uLetterContent_Put_LetterheadSize,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_LetterheadSize;

   function Get_RecipientName
     (This : uLetterContent_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uLetterContent_Get_RecipientName);
   end Get_RecipientName;

   procedure Put_RecipientName
     (This : uLetterContent_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uLetterContent_Put_RecipientName,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_RecipientName;

   function Get_RecipientAddress
     (This : uLetterContent_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uLetterContent_Get_RecipientAddress);
   end Get_RecipientAddress;

   procedure Put_RecipientAddress
     (This : uLetterContent_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uLetterContent_Put_RecipientAddress,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_RecipientAddress;

   function Get_Salutation
     (This : uLetterContent_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uLetterContent_Get_Salutation);
   end Get_Salutation;

   procedure Put_Salutation
     (This : uLetterContent_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uLetterContent_Put_Salutation,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Salutation;

   function Get_SalutationType
     (This : uLetterContent_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uLetterContent_Get_SalutationType);
   end Get_SalutationType;

   procedure Put_SalutationType
     (This : uLetterContent_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uLetterContent_Put_SalutationType,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_SalutationType;

   function Get_RecipientReference
     (This : uLetterContent_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uLetterContent_Get_RecipientReference);
   end Get_RecipientReference;

   procedure Put_RecipientReference
     (This : uLetterContent_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uLetterContent_Put_RecipientReference,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_RecipientReference;

   function Get_MailingInstructions
     (This : uLetterContent_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uLetterContent_Get_MailingInstructions);
   end Get_MailingInstructions;

   procedure Put_MailingInstructions
     (This : uLetterContent_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uLetterContent_Put_MailingInstructions,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_MailingInstructions;

   function Get_AttentionLine
     (This : uLetterContent_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uLetterContent_Get_AttentionLine);
   end Get_AttentionLine;

   procedure Put_AttentionLine
     (This : uLetterContent_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uLetterContent_Put_AttentionLine,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AttentionLine;

   function Get_Subject
     (This : uLetterContent_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uLetterContent_Get_Subject);
   end Get_Subject;

   procedure Put_Subject
     (This : uLetterContent_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uLetterContent_Put_Subject,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Subject;

   function Get_EnclosureNumber
     (This : uLetterContent_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uLetterContent_Get_EnclosureNumber);
   end Get_EnclosureNumber;

   procedure Put_EnclosureNumber
     (This : uLetterContent_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uLetterContent_Put_EnclosureNumber,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_EnclosureNumber;

   function Get_CCList
     (This : uLetterContent_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uLetterContent_Get_CCList);
   end Get_CCList;

   procedure Put_CCList
     (This : uLetterContent_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uLetterContent_Put_CCList,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_CCList;

   function Get_ReturnAddress
     (This : uLetterContent_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uLetterContent_Get_ReturnAddress);
   end Get_ReturnAddress;

   procedure Put_ReturnAddress
     (This : uLetterContent_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uLetterContent_Put_ReturnAddress,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ReturnAddress;

   function Get_SenderName
     (This : uLetterContent_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uLetterContent_Get_SenderName);
   end Get_SenderName;

   procedure Put_SenderName
     (This : uLetterContent_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uLetterContent_Put_SenderName,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_SenderName;

   function Get_Closing
     (This : uLetterContent_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uLetterContent_Get_Closing);
   end Get_Closing;

   procedure Put_Closing
     (This : uLetterContent_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uLetterContent_Put_Closing,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Closing;

   function Get_SenderCompany
     (This : uLetterContent_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uLetterContent_Get_SenderCompany);
   end Get_SenderCompany;

   procedure Put_SenderCompany
     (This : uLetterContent_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uLetterContent_Put_SenderCompany,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_SenderCompany;

   function Get_SenderJobTitle
     (This : uLetterContent_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uLetterContent_Get_SenderJobTitle);
   end Get_SenderJobTitle;

   procedure Put_SenderJobTitle
     (This : uLetterContent_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uLetterContent_Put_SenderJobTitle,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_SenderJobTitle;

   function Get_SenderInitials
     (This : uLetterContent_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uLetterContent_Get_SenderInitials);
   end Get_SenderInitials;

   procedure Put_SenderInitials
     (This : uLetterContent_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uLetterContent_Put_SenderInitials,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_SenderInitials;

   function Get_InfoBlock
     (This : uLetterContent_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uLetterContent_Get_InfoBlock);
   end Get_InfoBlock;

   procedure Put_InfoBlock
     (This : uLetterContent_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uLetterContent_Put_InfoBlock,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_InfoBlock;

   function Get_RecipientCode
     (This : uLetterContent_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uLetterContent_Get_RecipientCode);
   end Get_RecipientCode;

   procedure Put_RecipientCode
     (This : uLetterContent_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uLetterContent_Put_RecipientCode,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_RecipientCode;

   function Get_RecipientGender
     (This : uLetterContent_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uLetterContent_Get_RecipientGender);
   end Get_RecipientGender;

   procedure Put_RecipientGender
     (This : uLetterContent_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uLetterContent_Put_RecipientGender,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_RecipientGender;

   function Get_ReturnAddressShortForm
     (This : uLetterContent_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uLetterContent_Get_ReturnAddressShortForm);
   end Get_ReturnAddressShortForm;

   procedure Put_ReturnAddressShortForm
     (This : uLetterContent_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uLetterContent_Put_ReturnAddressShortForm,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ReturnAddressShortForm;

   function Get_SenderCity
     (This : uLetterContent_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uLetterContent_Get_SenderCity);
   end Get_SenderCity;

   procedure Put_SenderCity
     (This : uLetterContent_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uLetterContent_Put_SenderCity,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_SenderCity;

   function Get_SenderCode
     (This : uLetterContent_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uLetterContent_Get_SenderCode);
   end Get_SenderCode;

   procedure Put_SenderCode
     (This : uLetterContent_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uLetterContent_Put_SenderCode,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_SenderCode;

   function Get_SenderGender
     (This : uLetterContent_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uLetterContent_Get_SenderGender);
   end Get_SenderGender;

   procedure Put_SenderGender
     (This : uLetterContent_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uLetterContent_Put_SenderGender,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_SenderGender;

   function Get_SenderReference
     (This : uLetterContent_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uLetterContent_Get_SenderReference);
   end Get_SenderReference;

   procedure Put_SenderReference
     (This : uLetterContent_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uLetterContent_Put_SenderReference,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_SenderReference;

end winword.uLetterContent_Object;

