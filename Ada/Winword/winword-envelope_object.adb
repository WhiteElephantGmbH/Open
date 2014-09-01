package body winword.Envelope_Object is

   function Get_Application
     (This : Envelope_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Envelope_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : Envelope_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Envelope_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : Envelope_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Envelope_Get_Parent);
   end Get_Parent;

   function Get_Address
     (This : Envelope_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Envelope_Get_Address);
   end Get_Address;

   function Get_ReturnAddress
     (This : Envelope_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Envelope_Get_ReturnAddress);
   end Get_ReturnAddress;

   function Get_DefaultPrintBarCode
     (This : Envelope_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Envelope_Get_DefaultPrintBarCode);
   end Get_DefaultPrintBarCode;

   procedure Put_DefaultPrintBarCode
     (This : Envelope_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Envelope_Put_DefaultPrintBarCode,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DefaultPrintBarCode;

   function Get_DefaultPrintFIMA
     (This : Envelope_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Envelope_Get_DefaultPrintFIMA);
   end Get_DefaultPrintFIMA;

   procedure Put_DefaultPrintFIMA
     (This : Envelope_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Envelope_Put_DefaultPrintFIMA,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DefaultPrintFIMA;

   function Get_DefaultHeight
     (This : Envelope_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Envelope_Get_DefaultHeight);
   end Get_DefaultHeight;

   procedure Put_DefaultHeight
     (This : Envelope_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Envelope_Put_DefaultHeight,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DefaultHeight;

   function Get_DefaultWidth
     (This : Envelope_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Envelope_Get_DefaultWidth);
   end Get_DefaultWidth;

   procedure Put_DefaultWidth
     (This : Envelope_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Envelope_Put_DefaultWidth,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DefaultWidth;

   function Get_DefaultSize
     (This : Envelope_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Envelope_Get_DefaultSize);
   end Get_DefaultSize;

   procedure Put_DefaultSize
     (This : Envelope_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Envelope_Put_DefaultSize,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DefaultSize;

   function Get_DefaultOmitReturnAddress
     (This : Envelope_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Envelope_Get_DefaultOmitReturnAddress);
   end Get_DefaultOmitReturnAddress;

   procedure Put_DefaultOmitReturnAddress
     (This : Envelope_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Envelope_Put_DefaultOmitReturnAddress,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DefaultOmitReturnAddress;

   function Get_FeedSource
     (This : Envelope_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Envelope_Get_FeedSource);
   end Get_FeedSource;

   procedure Put_FeedSource
     (This : Envelope_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Envelope_Put_FeedSource,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_FeedSource;

   function Get_AddressFromLeft
     (This : Envelope_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Envelope_Get_AddressFromLeft);
   end Get_AddressFromLeft;

   procedure Put_AddressFromLeft
     (This : Envelope_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Envelope_Put_AddressFromLeft,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AddressFromLeft;

   function Get_AddressFromTop
     (This : Envelope_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Envelope_Get_AddressFromTop);
   end Get_AddressFromTop;

   procedure Put_AddressFromTop
     (This : Envelope_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Envelope_Put_AddressFromTop,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AddressFromTop;

   function Get_ReturnAddressFromLeft
     (This : Envelope_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Envelope_Get_ReturnAddressFromLeft);
   end Get_ReturnAddressFromLeft;

   procedure Put_ReturnAddressFromLeft
     (This : Envelope_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Envelope_Put_ReturnAddressFromLeft,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ReturnAddressFromLeft;

   function Get_ReturnAddressFromTop
     (This : Envelope_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Envelope_Get_ReturnAddressFromTop);
   end Get_ReturnAddressFromTop;

   procedure Put_ReturnAddressFromTop
     (This : Envelope_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Envelope_Put_ReturnAddressFromTop,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ReturnAddressFromTop;

   function Get_AddressStyle
     (This : Envelope_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Envelope_Get_AddressStyle);
   end Get_AddressStyle;

   function Get_ReturnAddressStyle
     (This : Envelope_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Envelope_Get_ReturnAddressStyle);
   end Get_ReturnAddressStyle;

   function Get_DefaultOrientation
     (This : Envelope_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Envelope_Get_DefaultOrientation);
   end Get_DefaultOrientation;

   procedure Put_DefaultOrientation
     (This : Envelope_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Envelope_Put_DefaultOrientation,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DefaultOrientation;

   function Get_DefaultFaceUp
     (This : Envelope_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Envelope_Get_DefaultFaceUp);
   end Get_DefaultFaceUp;

   procedure Put_DefaultFaceUp
     (This : Envelope_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Envelope_Put_DefaultFaceUp,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DefaultFaceUp;

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
      Free                  : Boolean := True)
   is
   begin
      Invoke
        (This,
         Envelope_Insert2000,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => DefaultOrientation,
          2 => DefaultFaceUp,
          3 => ReturnAddressFromTop,
          4 => ReturnAddressFromLeft,
          5 => AddressFromTop,
          6 => AddressFromLeft,
          7 => FeedSource,
          8 => Width,
          9 => Height,
          10 => Size,
          11 => PrintFIMA,
          12 => PrintBarCode,
          13 => ReturnAutoText,
          14 => ReturnAddress,
          15 => OmitReturnAddress,
          16 => AutoText,
          17 => Address,
          18 => ExtractAddress),
         Free);
   end Insert2000;

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
      Free                  : Boolean := True)
   is
   begin
      Invoke
        (This,
         Envelope_PrintOut2000,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => DefaultOrientation,
          2 => DefaultFaceUp,
          3 => ReturnAddressFromTop,
          4 => ReturnAddressFromLeft,
          5 => AddressFromTop,
          6 => AddressFromLeft,
          7 => FeedSource,
          8 => Width,
          9 => Height,
          10 => Size,
          11 => PrintFIMA,
          12 => PrintBarCode,
          13 => ReturnAutoText,
          14 => ReturnAddress,
          15 => OmitReturnAddress,
          16 => AutoText,
          17 => Address,
          18 => ExtractAddress),
         Free);
   end PrintOut2000;

   procedure UpdateDocument
     (This : Envelope_Type)
   is
   begin
      Invoke (This, Envelope_UpdateDocument);
   end UpdateDocument;

   procedure Options
     (This : Envelope_Type)
   is
   begin
      Invoke (This, Envelope_Options);
   end Options;

   function Get_Vertical
     (This : Envelope_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Envelope_Get_Vertical);
   end Get_Vertical;

   procedure Put_Vertical
     (This : Envelope_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Envelope_Put_Vertical,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Vertical;

   function Get_RecipientNamefromLeft
     (This : Envelope_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Envelope_Get_RecipientNamefromLeft);
   end Get_RecipientNamefromLeft;

   procedure Put_RecipientNamefromLeft
     (This : Envelope_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Envelope_Put_RecipientNamefromLeft,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_RecipientNamefromLeft;

   function Get_RecipientNamefromTop
     (This : Envelope_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Envelope_Get_RecipientNamefromTop);
   end Get_RecipientNamefromTop;

   procedure Put_RecipientNamefromTop
     (This : Envelope_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Envelope_Put_RecipientNamefromTop,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_RecipientNamefromTop;

   function Get_RecipientPostalfromLeft
     (This : Envelope_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Envelope_Get_RecipientPostalfromLeft);
   end Get_RecipientPostalfromLeft;

   procedure Put_RecipientPostalfromLeft
     (This : Envelope_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Envelope_Put_RecipientPostalfromLeft,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_RecipientPostalfromLeft;

   function Get_RecipientPostalfromTop
     (This : Envelope_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Envelope_Get_RecipientPostalfromTop);
   end Get_RecipientPostalfromTop;

   procedure Put_RecipientPostalfromTop
     (This : Envelope_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Envelope_Put_RecipientPostalfromTop,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_RecipientPostalfromTop;

   function Get_SenderNamefromLeft
     (This : Envelope_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Envelope_Get_SenderNamefromLeft);
   end Get_SenderNamefromLeft;

   procedure Put_SenderNamefromLeft
     (This : Envelope_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Envelope_Put_SenderNamefromLeft,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_SenderNamefromLeft;

   function Get_SenderNamefromTop
     (This : Envelope_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Envelope_Get_SenderNamefromTop);
   end Get_SenderNamefromTop;

   procedure Put_SenderNamefromTop
     (This : Envelope_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Envelope_Put_SenderNamefromTop,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_SenderNamefromTop;

   function Get_SenderPostalfromLeft
     (This : Envelope_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Envelope_Get_SenderPostalfromLeft);
   end Get_SenderPostalfromLeft;

   procedure Put_SenderPostalfromLeft
     (This : Envelope_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Envelope_Put_SenderPostalfromLeft,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_SenderPostalfromLeft;

   function Get_SenderPostalfromTop
     (This : Envelope_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Envelope_Get_SenderPostalfromTop);
   end Get_SenderPostalfromTop;

   procedure Put_SenderPostalfromTop
     (This : Envelope_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Envelope_Put_SenderPostalfromTop,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_SenderPostalfromTop;

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
      Free                    : Boolean := True)
   is
   begin
      Invoke
        (This,
         Envelope_Insert,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => SenderPostalfromTop,
          2 => SenderPostalfromLeft,
          3 => SenderNamefromTop,
          4 => SenderNamefromLeft,
          5 => RecipientPostalfromTop,
          6 => RecipientPostalfromLeft,
          7 => RecipientNamefromTop,
          8 => RecipientNamefromLeft,
          9 => Vertical,
          10 => PrintEPostage,
          11 => DefaultOrientation,
          12 => DefaultFaceUp,
          13 => ReturnAddressFromTop,
          14 => ReturnAddressFromLeft,
          15 => AddressFromTop,
          16 => AddressFromLeft,
          17 => FeedSource,
          18 => Width,
          19 => Height,
          20 => Size,
          21 => PrintFIMA,
          22 => PrintBarCode,
          23 => ReturnAutoText,
          24 => ReturnAddress,
          25 => OmitReturnAddress,
          26 => AutoText,
          27 => Address,
          28 => ExtractAddress),
         Free);
   end Insert;

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
      Free                    : Boolean := True)
   is
   begin
      Invoke
        (This,
         Envelope_PrintOut,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => SenderPostalfromTop,
          2 => SenderPostalfromLeft,
          3 => SenderNamefromTop,
          4 => SenderNamefromLeft,
          5 => RecipientPostalfromTop,
          6 => RecipientPostalfromLeft,
          7 => RecipientNamefromTop,
          8 => RecipientNamefromLeft,
          9 => Vertical,
          10 => PrintEPostage,
          11 => DefaultOrientation,
          12 => DefaultFaceUp,
          13 => ReturnAddressFromTop,
          14 => ReturnAddressFromLeft,
          15 => AddressFromTop,
          16 => AddressFromLeft,
          17 => FeedSource,
          18 => Width,
          19 => Height,
          20 => Size,
          21 => PrintFIMA,
          22 => PrintBarCode,
          23 => ReturnAutoText,
          24 => ReturnAddress,
          25 => OmitReturnAddress,
          26 => AutoText,
          27 => Address,
          28 => ExtractAddress),
         Free);
   end PrintOut;

end winword.Envelope_Object;

