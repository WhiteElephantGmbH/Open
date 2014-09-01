with GNATCOM.Dispinterface;

package winword.Envelope_Object is

   type Envelope_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : Envelope_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : Envelope_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : Envelope_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Address
     (This : Envelope_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ReturnAddress
     (This : Envelope_Type)
     return GNATCOM.Types.VARIANT;

   function Get_DefaultPrintBarCode
     (This : Envelope_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DefaultPrintBarCode
     (This : Envelope_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_DefaultPrintFIMA
     (This : Envelope_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DefaultPrintFIMA
     (This : Envelope_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_DefaultHeight
     (This : Envelope_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DefaultHeight
     (This : Envelope_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_DefaultWidth
     (This : Envelope_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DefaultWidth
     (This : Envelope_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_DefaultSize
     (This : Envelope_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DefaultSize
     (This : Envelope_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_DefaultOmitReturnAddress
     (This : Envelope_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DefaultOmitReturnAddress
     (This : Envelope_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_FeedSource
     (This : Envelope_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_FeedSource
     (This : Envelope_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AddressFromLeft
     (This : Envelope_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AddressFromLeft
     (This : Envelope_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AddressFromTop
     (This : Envelope_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AddressFromTop
     (This : Envelope_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ReturnAddressFromLeft
     (This : Envelope_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ReturnAddressFromLeft
     (This : Envelope_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ReturnAddressFromTop
     (This : Envelope_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ReturnAddressFromTop
     (This : Envelope_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AddressStyle
     (This : Envelope_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ReturnAddressStyle
     (This : Envelope_Type)
     return GNATCOM.Types.VARIANT;

   function Get_DefaultOrientation
     (This : Envelope_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DefaultOrientation
     (This : Envelope_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_DefaultFaceUp
     (This : Envelope_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DefaultFaceUp
     (This : Envelope_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure Insert2000
     (This                  : Envelope_Type;
      ExtractAddress        : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Address               : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      AutoText              : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      OmitReturnAddress     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ReturnAddress         : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ReturnAutoText        : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      PrintBarCode          : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      PrintFIMA             : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Size                  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Height                : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Width                 : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      FeedSource            : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      AddressFromLeft       : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      AddressFromTop        : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ReturnAddressFromLeft : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ReturnAddressFromTop  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      DefaultFaceUp         : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      DefaultOrientation    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free                  : Boolean := True);

   procedure PrintOut2000
     (This                  : Envelope_Type;
      ExtractAddress        : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Address               : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      AutoText              : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      OmitReturnAddress     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ReturnAddress         : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ReturnAutoText        : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      PrintBarCode          : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      PrintFIMA             : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Size                  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Height                : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Width                 : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      FeedSource            : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      AddressFromLeft       : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      AddressFromTop        : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ReturnAddressFromLeft : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ReturnAddressFromTop  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      DefaultFaceUp         : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      DefaultOrientation    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free                  : Boolean := True);

   procedure UpdateDocument
     (This : Envelope_Type);

   procedure Options
     (This : Envelope_Type);

   function Get_Vertical
     (This : Envelope_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Vertical
     (This : Envelope_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_RecipientNamefromLeft
     (This : Envelope_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_RecipientNamefromLeft
     (This : Envelope_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_RecipientNamefromTop
     (This : Envelope_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_RecipientNamefromTop
     (This : Envelope_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_RecipientPostalfromLeft
     (This : Envelope_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_RecipientPostalfromLeft
     (This : Envelope_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_RecipientPostalfromTop
     (This : Envelope_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_RecipientPostalfromTop
     (This : Envelope_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_SenderNamefromLeft
     (This : Envelope_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_SenderNamefromLeft
     (This : Envelope_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_SenderNamefromTop
     (This : Envelope_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_SenderNamefromTop
     (This : Envelope_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_SenderPostalfromLeft
     (This : Envelope_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_SenderPostalfromLeft
     (This : Envelope_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_SenderPostalfromTop
     (This : Envelope_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_SenderPostalfromTop
     (This : Envelope_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure Insert
     (This                    : Envelope_Type;
      ExtractAddress          : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Address                 : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      AutoText                : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      OmitReturnAddress       : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ReturnAddress           : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ReturnAutoText          : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      PrintBarCode            : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      PrintFIMA               : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Size                    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Height                  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Width                   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      FeedSource              : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      AddressFromLeft         : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      AddressFromTop          : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ReturnAddressFromLeft   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ReturnAddressFromTop    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      DefaultFaceUp           : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      DefaultOrientation      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      PrintEPostage           : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Vertical                : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      RecipientNamefromLeft   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      RecipientNamefromTop    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      RecipientPostalfromLeft : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      RecipientPostalfromTop  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      SenderNamefromLeft      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      SenderNamefromTop       : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      SenderPostalfromLeft    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      SenderPostalfromTop     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free                    : Boolean := True);

   procedure PrintOut
     (This                    : Envelope_Type;
      ExtractAddress          : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Address                 : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      AutoText                : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      OmitReturnAddress       : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ReturnAddress           : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ReturnAutoText          : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      PrintBarCode            : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      PrintFIMA               : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Size                    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Height                  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Width                   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      FeedSource              : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      AddressFromLeft         : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      AddressFromTop          : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ReturnAddressFromLeft   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ReturnAddressFromTop    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      DefaultFaceUp           : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      DefaultOrientation      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      PrintEPostage           : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Vertical                : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      RecipientNamefromLeft   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      RecipientNamefromTop    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      RecipientPostalfromLeft : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      RecipientPostalfromTop  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      SenderNamefromLeft      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      SenderNamefromTop       : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      SenderPostalfromLeft    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      SenderPostalfromTop     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free                    : Boolean := True);

end winword.Envelope_Object;

