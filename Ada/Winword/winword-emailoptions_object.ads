with GNATCOM.Dispinterface;

package winword.EmailOptions_Object is

   type EmailOptions_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT;

   function Get_UseThemeStyle
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_UseThemeStyle
     (This : EmailOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_MarkCommentsWith
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_MarkCommentsWith
     (This : EmailOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_MarkComments
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_MarkComments
     (This : EmailOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_EmailSignature
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ComposeStyle
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ReplyStyle
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ThemeName
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ThemeName
     (This : EmailOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Dummy1
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Dummy2
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT;

   procedure Dummy3
     (This : EmailOptions_Type);

   function Get_NewColorOnReply
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_NewColorOnReply
     (This : EmailOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_PlainTextStyle
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT;

   function Get_UseThemeStyleOnReply
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_UseThemeStyleOnReply
     (This : EmailOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AutoFormatAsYouTypeApplyHeadings
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AutoFormatAsYouTypeApplyHeadings
     (This : EmailOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AutoFormatAsYouTypeApplyBorders
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AutoFormatAsYouTypeApplyBorders
     (This : EmailOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AutoFormatAsYouTypeApplyBulletedLists
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AutoFormatAsYouTypeApplyBulletedLists
     (This : EmailOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AutoFormatAsYouTypeApplyNumberedLists
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AutoFormatAsYouTypeApplyNumberedLists
     (This : EmailOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AutoFormatAsYouTypeReplaceQuotes
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AutoFormatAsYouTypeReplaceQuotes
     (This : EmailOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AutoFormatAsYouTypeReplaceSymbols
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AutoFormatAsYouTypeReplaceSymbols
     (This : EmailOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AutoFormatAsYouTypeReplaceOrdinals
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AutoFormatAsYouTypeReplaceOrdinals
     (This : EmailOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AutoFormatAsYouTypeReplaceFractions
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AutoFormatAsYouTypeReplaceFractions
     (This : EmailOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AutoFormatAsYouTypeReplacePlainTextEmphasis
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AutoFormatAsYouTypeReplacePlainTextEmphasis
     (This : EmailOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AutoFormatAsYouTypeFormatListItemBeginning
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AutoFormatAsYouTypeFormatListItemBeginning
     (This : EmailOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AutoFormatAsYouTypeDefineStyles
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AutoFormatAsYouTypeDefineStyles
     (This : EmailOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AutoFormatAsYouTypeReplaceHyperlinks
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AutoFormatAsYouTypeReplaceHyperlinks
     (This : EmailOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AutoFormatAsYouTypeApplyTables
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AutoFormatAsYouTypeApplyTables
     (This : EmailOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AutoFormatAsYouTypeApplyFirstIndents
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AutoFormatAsYouTypeApplyFirstIndents
     (This : EmailOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AutoFormatAsYouTypeApplyDates
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AutoFormatAsYouTypeApplyDates
     (This : EmailOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AutoFormatAsYouTypeApplyClosings
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AutoFormatAsYouTypeApplyClosings
     (This : EmailOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AutoFormatAsYouTypeMatchParentheses
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AutoFormatAsYouTypeMatchParentheses
     (This : EmailOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AutoFormatAsYouTypeReplaceFarEastDashes
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AutoFormatAsYouTypeReplaceFarEastDashes
     (This : EmailOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AutoFormatAsYouTypeDeleteAutoSpaces
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AutoFormatAsYouTypeDeleteAutoSpaces
     (This : EmailOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AutoFormatAsYouTypeInsertClosings
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AutoFormatAsYouTypeInsertClosings
     (This : EmailOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AutoFormatAsYouTypeAutoLetterWizard
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AutoFormatAsYouTypeAutoLetterWizard
     (This : EmailOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AutoFormatAsYouTypeInsertOvers
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AutoFormatAsYouTypeInsertOvers
     (This : EmailOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_RelyOnCSS
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_RelyOnCSS
     (This : EmailOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_HTMLFidelity
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_HTMLFidelity
     (This : EmailOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_EmbedSmartTag
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_EmbedSmartTag
     (This : EmailOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_TabIndentKey
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_TabIndentKey
     (This : EmailOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

end winword.EmailOptions_Object;

