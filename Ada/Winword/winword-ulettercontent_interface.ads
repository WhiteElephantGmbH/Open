with GNATCOM.Dispinterface;

package winword.uLetterContent_Interface is

   type uLetterContent_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out uLetterContent_Type);

   function Pointer (This : uLetterContent_Type)
     return Pointer_To_uLetterContent;

   procedure Attach (This    : in out uLetterContent_Type;
                     Pointer : in     Pointer_To_uLetterContent);

   function Get_Application
     (This : uLetterContent_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : uLetterContent_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : uLetterContent_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Duplicate
     (This : uLetterContent_Type)
     return Pointer_To_uLetterContent;

   function Get_DateFormat
     (This : uLetterContent_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_DateFormat
     (This : uLetterContent_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_IncludeHeaderFooter
     (This : uLetterContent_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_IncludeHeaderFooter
     (This : uLetterContent_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_PageDesign
     (This : uLetterContent_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_PageDesign
     (This : uLetterContent_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_LetterStyle
     (This : uLetterContent_Type)
     return WdLetterStyle;

   procedure Put_LetterStyle
     (This : uLetterContent_Type;
      prop : WdLetterStyle);

   function Get_Letterhead
     (This : uLetterContent_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_Letterhead
     (This : uLetterContent_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_LetterheadLocation
     (This : uLetterContent_Type)
     return WdLetterheadLocation;

   procedure Put_LetterheadLocation
     (This : uLetterContent_Type;
      prop : WdLetterheadLocation);

   function Get_LetterheadSize
     (This : uLetterContent_Type)
     return Interfaces.C.C_float;

   procedure Put_LetterheadSize
     (This : uLetterContent_Type;
      prop : Interfaces.C.C_float);

   function Get_RecipientName
     (This : uLetterContent_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_RecipientName
     (This : uLetterContent_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_RecipientAddress
     (This : uLetterContent_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_RecipientAddress
     (This : uLetterContent_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_Salutation
     (This : uLetterContent_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_Salutation
     (This : uLetterContent_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_SalutationType
     (This : uLetterContent_Type)
     return WdSalutationType;

   procedure Put_SalutationType
     (This : uLetterContent_Type;
      prop : WdSalutationType);

   function Get_RecipientReference
     (This : uLetterContent_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_RecipientReference
     (This : uLetterContent_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_MailingInstructions
     (This : uLetterContent_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_MailingInstructions
     (This : uLetterContent_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_AttentionLine
     (This : uLetterContent_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_AttentionLine
     (This : uLetterContent_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_Subject
     (This : uLetterContent_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_Subject
     (This : uLetterContent_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_EnclosureNumber
     (This : uLetterContent_Type)
     return Interfaces.C.long;

   procedure Put_EnclosureNumber
     (This : uLetterContent_Type;
      prop : Interfaces.C.long);

   function Get_CCList
     (This : uLetterContent_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_CCList
     (This : uLetterContent_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_ReturnAddress
     (This : uLetterContent_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_ReturnAddress
     (This : uLetterContent_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_SenderName
     (This : uLetterContent_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_SenderName
     (This : uLetterContent_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_Closing
     (This : uLetterContent_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_Closing
     (This : uLetterContent_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_SenderCompany
     (This : uLetterContent_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_SenderCompany
     (This : uLetterContent_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_SenderJobTitle
     (This : uLetterContent_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_SenderJobTitle
     (This : uLetterContent_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_SenderInitials
     (This : uLetterContent_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_SenderInitials
     (This : uLetterContent_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_InfoBlock
     (This : uLetterContent_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_InfoBlock
     (This : uLetterContent_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_RecipientCode
     (This : uLetterContent_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_RecipientCode
     (This : uLetterContent_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_RecipientGender
     (This : uLetterContent_Type)
     return WdSalutationGender;

   procedure Put_RecipientGender
     (This : uLetterContent_Type;
      prop : WdSalutationGender);

   function Get_ReturnAddressShortForm
     (This : uLetterContent_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_ReturnAddressShortForm
     (This : uLetterContent_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_SenderCity
     (This : uLetterContent_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_SenderCity
     (This : uLetterContent_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_SenderCode
     (This : uLetterContent_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_SenderCode
     (This : uLetterContent_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_SenderGender
     (This : uLetterContent_Type)
     return WdSalutationGender;

   procedure Put_SenderGender
     (This : uLetterContent_Type;
      prop : WdSalutationGender);

   function Get_SenderReference
     (This : uLetterContent_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_SenderReference
     (This : uLetterContent_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

end winword.uLetterContent_Interface;

