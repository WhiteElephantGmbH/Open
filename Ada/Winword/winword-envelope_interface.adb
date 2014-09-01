with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.Envelope_Interface is

   procedure Initialize (This : in out Envelope_Type) is
   begin
      Set_IID (This, IID_Envelope);
   end Initialize;

   function Pointer (This : Envelope_Type)
     return Pointer_To_Envelope
   is
   begin
      return To_Pointer_To_Envelope (Address (This));
   end Pointer;

   procedure Attach (This    : in out Envelope_Type;
                     Pointer : in     Pointer_To_Envelope)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : Envelope_Type)
     return Pointer_To_uApplication
   is
       RetVal : aliased Pointer_To_uApplication;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Application
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Application;

   function Get_Creator
     (This : Envelope_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Creator
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Creator;

   function Get_Parent
     (This : Envelope_Type)
     return GNATCOM.Types.Pointer_To_IDispatch
   is
       RetVal : aliased GNATCOM.Types.Pointer_To_IDispatch;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Parent
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Parent;

   function Get_Address
     (This : Envelope_Type)
     return Pointer_To_uRange
   is
       RetVal : aliased Pointer_To_uRange;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Address
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Address;

   function Get_ReturnAddress
     (This : Envelope_Type)
     return Pointer_To_uRange
   is
       RetVal : aliased Pointer_To_uRange;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ReturnAddress
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ReturnAddress;

   function Get_DefaultPrintBarCode
     (This : Envelope_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DefaultPrintBarCode
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DefaultPrintBarCode;

   procedure Put_DefaultPrintBarCode
     (This : Envelope_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DefaultPrintBarCode
         (Pointer (This),
          prop));

   end Put_DefaultPrintBarCode;

   function Get_DefaultPrintFIMA
     (This : Envelope_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DefaultPrintFIMA
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DefaultPrintFIMA;

   procedure Put_DefaultPrintFIMA
     (This : Envelope_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DefaultPrintFIMA
         (Pointer (This),
          prop));

   end Put_DefaultPrintFIMA;

   function Get_DefaultHeight
     (This : Envelope_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DefaultHeight
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DefaultHeight;

   procedure Put_DefaultHeight
     (This : Envelope_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DefaultHeight
         (Pointer (This),
          prop));

   end Put_DefaultHeight;

   function Get_DefaultWidth
     (This : Envelope_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DefaultWidth
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DefaultWidth;

   procedure Put_DefaultWidth
     (This : Envelope_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DefaultWidth
         (Pointer (This),
          prop));

   end Put_DefaultWidth;

   function Get_DefaultSize
     (This : Envelope_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DefaultSize
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DefaultSize;

   procedure Put_DefaultSize
     (This : Envelope_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DefaultSize
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_DefaultSize;

   function Get_DefaultOmitReturnAddress
     (This : Envelope_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DefaultOmitReturnAddress
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DefaultOmitReturnAddress;

   procedure Put_DefaultOmitReturnAddress
     (This : Envelope_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DefaultOmitReturnAddress
         (Pointer (This),
          prop));

   end Put_DefaultOmitReturnAddress;

   function Get_FeedSource
     (This : Envelope_Type)
     return WdPaperTray
   is
       RetVal : aliased WdPaperTray;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_FeedSource
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_FeedSource;

   procedure Put_FeedSource
     (This : Envelope_Type;
      prop : WdPaperTray)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_FeedSource
         (Pointer (This),
          prop));

   end Put_FeedSource;

   function Get_AddressFromLeft
     (This : Envelope_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AddressFromLeft
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AddressFromLeft;

   procedure Put_AddressFromLeft
     (This : Envelope_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AddressFromLeft
         (Pointer (This),
          prop));

   end Put_AddressFromLeft;

   function Get_AddressFromTop
     (This : Envelope_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AddressFromTop
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AddressFromTop;

   procedure Put_AddressFromTop
     (This : Envelope_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AddressFromTop
         (Pointer (This),
          prop));

   end Put_AddressFromTop;

   function Get_ReturnAddressFromLeft
     (This : Envelope_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ReturnAddressFromLeft
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ReturnAddressFromLeft;

   procedure Put_ReturnAddressFromLeft
     (This : Envelope_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ReturnAddressFromLeft
         (Pointer (This),
          prop));

   end Put_ReturnAddressFromLeft;

   function Get_ReturnAddressFromTop
     (This : Envelope_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ReturnAddressFromTop
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ReturnAddressFromTop;

   procedure Put_ReturnAddressFromTop
     (This : Envelope_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ReturnAddressFromTop
         (Pointer (This),
          prop));

   end Put_ReturnAddressFromTop;

   function Get_AddressStyle
     (This : Envelope_Type)
     return Pointer_To_Style
   is
       RetVal : aliased Pointer_To_Style;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AddressStyle
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AddressStyle;

   function Get_ReturnAddressStyle
     (This : Envelope_Type)
     return Pointer_To_Style
   is
       RetVal : aliased Pointer_To_Style;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ReturnAddressStyle
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ReturnAddressStyle;

   function Get_DefaultOrientation
     (This : Envelope_Type)
     return WdEnvelopeOrientation
   is
       RetVal : aliased WdEnvelopeOrientation;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DefaultOrientation
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DefaultOrientation;

   procedure Put_DefaultOrientation
     (This : Envelope_Type;
      prop : WdEnvelopeOrientation)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DefaultOrientation
         (Pointer (This),
          prop));

   end Put_DefaultOrientation;

   function Get_DefaultFaceUp
     (This : Envelope_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DefaultFaceUp
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DefaultFaceUp;

   procedure Put_DefaultFaceUp
     (This : Envelope_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DefaultFaceUp
         (Pointer (This),
          prop));

   end Put_DefaultFaceUp;

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
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Insert2000
         (Pointer (This),
          ExtractAddress,
          Address,
          AutoText,
          OmitReturnAddress,
          ReturnAddress,
          ReturnAutoText,
          PrintBarCode,
          PrintFIMA,
          Size,
          Height,
          Width,
          FeedSource,
          AddressFromLeft,
          AddressFromTop,
          ReturnAddressFromLeft,
          ReturnAddressFromTop,
          DefaultFaceUp,
          DefaultOrientation));

   end Insert2000;

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
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.PrintOut2000
         (Pointer (This),
          ExtractAddress,
          Address,
          AutoText,
          OmitReturnAddress,
          ReturnAddress,
          ReturnAutoText,
          PrintBarCode,
          PrintFIMA,
          Size,
          Height,
          Width,
          FeedSource,
          AddressFromLeft,
          AddressFromTop,
          ReturnAddressFromLeft,
          ReturnAddressFromTop,
          DefaultFaceUp,
          DefaultOrientation));

   end PrintOut2000;

   procedure UpdateDocument
     (This : Envelope_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.UpdateDocument
         (Pointer (This)));

   end UpdateDocument;

   procedure Options
     (This : Envelope_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Options
         (Pointer (This)));

   end Options;

   function Get_Vertical
     (This : Envelope_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Vertical
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Vertical;

   procedure Put_Vertical
     (This : Envelope_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Vertical
         (Pointer (This),
          prop));

   end Put_Vertical;

   function Get_RecipientNamefromLeft
     (This : Envelope_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_RecipientNamefromLeft
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_RecipientNamefromLeft;

   procedure Put_RecipientNamefromLeft
     (This : Envelope_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_RecipientNamefromLeft
         (Pointer (This),
          prop));

   end Put_RecipientNamefromLeft;

   function Get_RecipientNamefromTop
     (This : Envelope_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_RecipientNamefromTop
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_RecipientNamefromTop;

   procedure Put_RecipientNamefromTop
     (This : Envelope_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_RecipientNamefromTop
         (Pointer (This),
          prop));

   end Put_RecipientNamefromTop;

   function Get_RecipientPostalfromLeft
     (This : Envelope_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_RecipientPostalfromLeft
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_RecipientPostalfromLeft;

   procedure Put_RecipientPostalfromLeft
     (This : Envelope_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_RecipientPostalfromLeft
         (Pointer (This),
          prop));

   end Put_RecipientPostalfromLeft;

   function Get_RecipientPostalfromTop
     (This : Envelope_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_RecipientPostalfromTop
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_RecipientPostalfromTop;

   procedure Put_RecipientPostalfromTop
     (This : Envelope_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_RecipientPostalfromTop
         (Pointer (This),
          prop));

   end Put_RecipientPostalfromTop;

   function Get_SenderNamefromLeft
     (This : Envelope_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SenderNamefromLeft
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_SenderNamefromLeft;

   procedure Put_SenderNamefromLeft
     (This : Envelope_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_SenderNamefromLeft
         (Pointer (This),
          prop));

   end Put_SenderNamefromLeft;

   function Get_SenderNamefromTop
     (This : Envelope_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SenderNamefromTop
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_SenderNamefromTop;

   procedure Put_SenderNamefromTop
     (This : Envelope_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_SenderNamefromTop
         (Pointer (This),
          prop));

   end Put_SenderNamefromTop;

   function Get_SenderPostalfromLeft
     (This : Envelope_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SenderPostalfromLeft
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_SenderPostalfromLeft;

   procedure Put_SenderPostalfromLeft
     (This : Envelope_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_SenderPostalfromLeft
         (Pointer (This),
          prop));

   end Put_SenderPostalfromLeft;

   function Get_SenderPostalfromTop
     (This : Envelope_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SenderPostalfromTop
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_SenderPostalfromTop;

   procedure Put_SenderPostalfromTop
     (This : Envelope_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_SenderPostalfromTop
         (Pointer (This),
          prop));

   end Put_SenderPostalfromTop;

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
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Insert
         (Pointer (This),
          ExtractAddress,
          Address,
          AutoText,
          OmitReturnAddress,
          ReturnAddress,
          ReturnAutoText,
          PrintBarCode,
          PrintFIMA,
          Size,
          Height,
          Width,
          FeedSource,
          AddressFromLeft,
          AddressFromTop,
          ReturnAddressFromLeft,
          ReturnAddressFromTop,
          DefaultFaceUp,
          DefaultOrientation,
          PrintEPostage,
          Vertical,
          RecipientNamefromLeft,
          RecipientNamefromTop,
          RecipientPostalfromLeft,
          RecipientPostalfromTop,
          SenderNamefromLeft,
          SenderNamefromTop,
          SenderPostalfromLeft,
          SenderPostalfromTop));

   end Insert;

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
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.PrintOut
         (Pointer (This),
          ExtractAddress,
          Address,
          AutoText,
          OmitReturnAddress,
          ReturnAddress,
          ReturnAutoText,
          PrintBarCode,
          PrintFIMA,
          Size,
          Height,
          Width,
          FeedSource,
          AddressFromLeft,
          AddressFromTop,
          ReturnAddressFromLeft,
          ReturnAddressFromTop,
          DefaultFaceUp,
          DefaultOrientation,
          PrintEPostage,
          Vertical,
          RecipientNamefromLeft,
          RecipientNamefromTop,
          RecipientPostalfromLeft,
          RecipientPostalfromTop,
          SenderNamefromLeft,
          SenderNamefromTop,
          SenderPostalfromLeft,
          SenderPostalfromTop));

   end PrintOut;

end winword.Envelope_Interface;

