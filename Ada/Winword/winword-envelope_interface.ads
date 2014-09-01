with GNATCOM.Dispinterface;

package winword.Envelope_Interface is

   type Envelope_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Envelope_Type);

   function Pointer (This : Envelope_Type)
     return Pointer_To_Envelope;

   procedure Attach (This    : in out Envelope_Type;
                     Pointer : in     Pointer_To_Envelope);

   function Get_Application
     (This : Envelope_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : Envelope_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : Envelope_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Address
     (This : Envelope_Type)
     return Pointer_To_uRange;

   function Get_ReturnAddress
     (This : Envelope_Type)
     return Pointer_To_uRange;

   function Get_DefaultPrintBarCode
     (This : Envelope_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_DefaultPrintBarCode
     (This : Envelope_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_DefaultPrintFIMA
     (This : Envelope_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_DefaultPrintFIMA
     (This : Envelope_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_DefaultHeight
     (This : Envelope_Type)
     return Interfaces.C.C_float;

   procedure Put_DefaultHeight
     (This : Envelope_Type;
      prop : Interfaces.C.C_float);

   function Get_DefaultWidth
     (This : Envelope_Type)
     return Interfaces.C.C_float;

   procedure Put_DefaultWidth
     (This : Envelope_Type;
      prop : Interfaces.C.C_float);

   function Get_DefaultSize
     (This : Envelope_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_DefaultSize
     (This : Envelope_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_DefaultOmitReturnAddress
     (This : Envelope_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_DefaultOmitReturnAddress
     (This : Envelope_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_FeedSource
     (This : Envelope_Type)
     return WdPaperTray;

   procedure Put_FeedSource
     (This : Envelope_Type;
      prop : WdPaperTray);

   function Get_AddressFromLeft
     (This : Envelope_Type)
     return Interfaces.C.C_float;

   procedure Put_AddressFromLeft
     (This : Envelope_Type;
      prop : Interfaces.C.C_float);

   function Get_AddressFromTop
     (This : Envelope_Type)
     return Interfaces.C.C_float;

   procedure Put_AddressFromTop
     (This : Envelope_Type;
      prop : Interfaces.C.C_float);

   function Get_ReturnAddressFromLeft
     (This : Envelope_Type)
     return Interfaces.C.C_float;

   procedure Put_ReturnAddressFromLeft
     (This : Envelope_Type;
      prop : Interfaces.C.C_float);

   function Get_ReturnAddressFromTop
     (This : Envelope_Type)
     return Interfaces.C.C_float;

   procedure Put_ReturnAddressFromTop
     (This : Envelope_Type;
      prop : Interfaces.C.C_float);

   function Get_AddressStyle
     (This : Envelope_Type)
     return Pointer_To_Style;

   function Get_ReturnAddressStyle
     (This : Envelope_Type)
     return Pointer_To_Style;

   function Get_DefaultOrientation
     (This : Envelope_Type)
     return WdEnvelopeOrientation;

   procedure Put_DefaultOrientation
     (This : Envelope_Type;
      prop : WdEnvelopeOrientation);

   function Get_DefaultFaceUp
     (This : Envelope_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_DefaultFaceUp
     (This : Envelope_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   procedure Insert2000
     (This                  : Envelope_Type;
      ExtractAddress        : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Address               : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      AutoText              : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      OmitReturnAddress     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ReturnAddress         : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ReturnAutoText        : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PrintBarCode          : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PrintFIMA             : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Size                  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Height                : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Width                 : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      FeedSource            : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      AddressFromLeft       : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      AddressFromTop        : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ReturnAddressFromLeft : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ReturnAddressFromTop  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      DefaultFaceUp         : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      DefaultOrientation    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   procedure PrintOut2000
     (This                  : Envelope_Type;
      ExtractAddress        : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Address               : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      AutoText              : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      OmitReturnAddress     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ReturnAddress         : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ReturnAutoText        : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PrintBarCode          : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PrintFIMA             : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Size                  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Height                : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Width                 : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      FeedSource            : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      AddressFromLeft       : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      AddressFromTop        : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ReturnAddressFromLeft : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ReturnAddressFromTop  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      DefaultFaceUp         : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      DefaultOrientation    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   procedure UpdateDocument
     (This : Envelope_Type);

   procedure Options
     (This : Envelope_Type);

   function Get_Vertical
     (This : Envelope_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_Vertical
     (This : Envelope_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_RecipientNamefromLeft
     (This : Envelope_Type)
     return Interfaces.C.C_float;

   procedure Put_RecipientNamefromLeft
     (This : Envelope_Type;
      prop : Interfaces.C.C_float);

   function Get_RecipientNamefromTop
     (This : Envelope_Type)
     return Interfaces.C.C_float;

   procedure Put_RecipientNamefromTop
     (This : Envelope_Type;
      prop : Interfaces.C.C_float);

   function Get_RecipientPostalfromLeft
     (This : Envelope_Type)
     return Interfaces.C.C_float;

   procedure Put_RecipientPostalfromLeft
     (This : Envelope_Type;
      prop : Interfaces.C.C_float);

   function Get_RecipientPostalfromTop
     (This : Envelope_Type)
     return Interfaces.C.C_float;

   procedure Put_RecipientPostalfromTop
     (This : Envelope_Type;
      prop : Interfaces.C.C_float);

   function Get_SenderNamefromLeft
     (This : Envelope_Type)
     return Interfaces.C.C_float;

   procedure Put_SenderNamefromLeft
     (This : Envelope_Type;
      prop : Interfaces.C.C_float);

   function Get_SenderNamefromTop
     (This : Envelope_Type)
     return Interfaces.C.C_float;

   procedure Put_SenderNamefromTop
     (This : Envelope_Type;
      prop : Interfaces.C.C_float);

   function Get_SenderPostalfromLeft
     (This : Envelope_Type)
     return Interfaces.C.C_float;

   procedure Put_SenderPostalfromLeft
     (This : Envelope_Type;
      prop : Interfaces.C.C_float);

   function Get_SenderPostalfromTop
     (This : Envelope_Type)
     return Interfaces.C.C_float;

   procedure Put_SenderPostalfromTop
     (This : Envelope_Type;
      prop : Interfaces.C.C_float);

   procedure Insert
     (This                    : Envelope_Type;
      ExtractAddress          : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Address                 : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      AutoText                : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      OmitReturnAddress       : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ReturnAddress           : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ReturnAutoText          : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PrintBarCode            : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PrintFIMA               : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Size                    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Height                  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Width                   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      FeedSource              : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      AddressFromLeft         : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      AddressFromTop          : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ReturnAddressFromLeft   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ReturnAddressFromTop    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      DefaultFaceUp           : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      DefaultOrientation      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PrintEPostage           : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Vertical                : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      RecipientNamefromLeft   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      RecipientNamefromTop    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      RecipientPostalfromLeft : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      RecipientPostalfromTop  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SenderNamefromLeft      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SenderNamefromTop       : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SenderPostalfromLeft    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SenderPostalfromTop     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   procedure PrintOut
     (This                    : Envelope_Type;
      ExtractAddress          : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Address                 : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      AutoText                : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      OmitReturnAddress       : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ReturnAddress           : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ReturnAutoText          : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PrintBarCode            : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PrintFIMA               : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Size                    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Height                  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Width                   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      FeedSource              : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      AddressFromLeft         : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      AddressFromTop          : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ReturnAddressFromLeft   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ReturnAddressFromTop    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      DefaultFaceUp           : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      DefaultOrientation      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PrintEPostage           : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Vertical                : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      RecipientNamefromLeft   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      RecipientNamefromTop    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      RecipientPostalfromLeft : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      RecipientPostalfromTop  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SenderNamefromLeft      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SenderNamefromTop       : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SenderPostalfromLeft    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SenderPostalfromTop     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

end winword.Envelope_Interface;

