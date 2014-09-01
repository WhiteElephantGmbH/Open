with GNATCOM.Dispinterface;

package winword.EmailOptions_Interface is

   type EmailOptions_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out EmailOptions_Type);

   function Pointer (This : EmailOptions_Type)
     return Pointer_To_EmailOptions;

   procedure Attach (This    : in out EmailOptions_Type;
                     Pointer : in     Pointer_To_EmailOptions);

   function Get_Application
     (This : EmailOptions_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : EmailOptions_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : EmailOptions_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_UseThemeStyle
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_UseThemeStyle
     (This : EmailOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_MarkCommentsWith
     (This : EmailOptions_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_MarkCommentsWith
     (This : EmailOptions_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_MarkComments
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_MarkComments
     (This : EmailOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_EmailSignature
     (This : EmailOptions_Type)
     return Pointer_To_EmailSignature;

   function Get_ComposeStyle
     (This : EmailOptions_Type)
     return Pointer_To_Style;

   function Get_ReplyStyle
     (This : EmailOptions_Type)
     return Pointer_To_Style;

   function Get_ThemeName
     (This : EmailOptions_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_ThemeName
     (This : EmailOptions_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_Dummy1
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   function Get_Dummy2
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Dummy3
     (This : EmailOptions_Type);

   function Get_NewColorOnReply
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_NewColorOnReply
     (This : EmailOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_PlainTextStyle
     (This : EmailOptions_Type)
     return Pointer_To_Style;

   function Get_UseThemeStyleOnReply
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_UseThemeStyleOnReply
     (This : EmailOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_AutoFormatAsYouTypeApplyHeadings
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_AutoFormatAsYouTypeApplyHeadings
     (This : EmailOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_AutoFormatAsYouTypeApplyBorders
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_AutoFormatAsYouTypeApplyBorders
     (This : EmailOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_AutoFormatAsYouTypeApplyBulletedLists
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_AutoFormatAsYouTypeApplyBulletedLists
     (This : EmailOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_AutoFormatAsYouTypeApplyNumberedLists
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_AutoFormatAsYouTypeApplyNumberedLists
     (This : EmailOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_AutoFormatAsYouTypeReplaceQuotes
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_AutoFormatAsYouTypeReplaceQuotes
     (This : EmailOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_AutoFormatAsYouTypeReplaceSymbols
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_AutoFormatAsYouTypeReplaceSymbols
     (This : EmailOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_AutoFormatAsYouTypeReplaceOrdinals
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_AutoFormatAsYouTypeReplaceOrdinals
     (This : EmailOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_AutoFormatAsYouTypeReplaceFractions
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_AutoFormatAsYouTypeReplaceFractions
     (This : EmailOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_AutoFormatAsYouTypeReplacePlainTextEmphasis
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_AutoFormatAsYouTypeReplacePlainTextEmphasis
     (This : EmailOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_AutoFormatAsYouTypeFormatListItemBeginning
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_AutoFormatAsYouTypeFormatListItemBeginning
     (This : EmailOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_AutoFormatAsYouTypeDefineStyles
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_AutoFormatAsYouTypeDefineStyles
     (This : EmailOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_AutoFormatAsYouTypeReplaceHyperlinks
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_AutoFormatAsYouTypeReplaceHyperlinks
     (This : EmailOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_AutoFormatAsYouTypeApplyTables
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_AutoFormatAsYouTypeApplyTables
     (This : EmailOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_AutoFormatAsYouTypeApplyFirstIndents
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_AutoFormatAsYouTypeApplyFirstIndents
     (This : EmailOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_AutoFormatAsYouTypeApplyDates
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_AutoFormatAsYouTypeApplyDates
     (This : EmailOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_AutoFormatAsYouTypeApplyClosings
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_AutoFormatAsYouTypeApplyClosings
     (This : EmailOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_AutoFormatAsYouTypeMatchParentheses
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_AutoFormatAsYouTypeMatchParentheses
     (This : EmailOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_AutoFormatAsYouTypeReplaceFarEastDashes
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_AutoFormatAsYouTypeReplaceFarEastDashes
     (This : EmailOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_AutoFormatAsYouTypeDeleteAutoSpaces
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_AutoFormatAsYouTypeDeleteAutoSpaces
     (This : EmailOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_AutoFormatAsYouTypeInsertClosings
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_AutoFormatAsYouTypeInsertClosings
     (This : EmailOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_AutoFormatAsYouTypeAutoLetterWizard
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_AutoFormatAsYouTypeAutoLetterWizard
     (This : EmailOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_AutoFormatAsYouTypeInsertOvers
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_AutoFormatAsYouTypeInsertOvers
     (This : EmailOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_RelyOnCSS
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_RelyOnCSS
     (This : EmailOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_HTMLFidelity
     (This : EmailOptions_Type)
     return WdEmailHTMLFidelity;

   procedure Put_HTMLFidelity
     (This : EmailOptions_Type;
      prop : WdEmailHTMLFidelity);

   function Get_EmbedSmartTag
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_EmbedSmartTag
     (This : EmailOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_TabIndentKey
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_TabIndentKey
     (This : EmailOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

end winword.EmailOptions_Interface;

