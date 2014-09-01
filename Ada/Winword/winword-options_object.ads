with GNATCOM.Dispinterface;

package winword.Options_Object is

   type Options_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   function Get_AllowAccentedUppercase
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AllowAccentedUppercase
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_WPHelp
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_WPHelp
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_WPDocNavKeys
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_WPDocNavKeys
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Pagination
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Pagination
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_BlueScreen
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_BlueScreen
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_EnableSound
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_EnableSound
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ConfirmConversions
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ConfirmConversions
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_UpdateLinksAtOpen
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_UpdateLinksAtOpen
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_SendMailAttach
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_SendMailAttach
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_MeasurementUnit
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_MeasurementUnit
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ButtonFieldClicks
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ButtonFieldClicks
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ShortMenuNames
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ShortMenuNames
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_RTFInClipboard
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_RTFInClipboard
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_UpdateFieldsAtPrint
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_UpdateFieldsAtPrint
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_PrintProperties
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_PrintProperties
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_PrintFieldCodes
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_PrintFieldCodes
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_PrintComments
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_PrintComments
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_PrintHiddenText
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_PrintHiddenText
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_EnvelopeFeederInstalled
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   function Get_UpdateLinksAtPrint
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_UpdateLinksAtPrint
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_PrintBackground
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_PrintBackground
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_PrintDrawingObjects
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_PrintDrawingObjects
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_DefaultTray
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DefaultTray
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_DefaultTrayID
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DefaultTrayID
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_CreateBackup
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_CreateBackup
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AllowFastSave
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AllowFastSave
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_SavePropertiesPrompt
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_SavePropertiesPrompt
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_SaveNormalPrompt
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_SaveNormalPrompt
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_SaveInterval
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_SaveInterval
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_BackgroundSave
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_BackgroundSave
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_InsertedTextMark
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_InsertedTextMark
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_DeletedTextMark
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DeletedTextMark
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_RevisedLinesMark
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_RevisedLinesMark
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_InsertedTextColor
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_InsertedTextColor
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_DeletedTextColor
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DeletedTextColor
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_RevisedLinesColor
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_RevisedLinesColor
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_DefaultFilePath
     (This : Options_Type;
      Path : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure Put_DefaultFilePath
     (This : Options_Type;
      Path : GNATCOM.Types.VARIANT;
      P2   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Overtype
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Overtype
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ReplaceSelection
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ReplaceSelection
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AllowDragAndDrop
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AllowDragAndDrop
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AutoWordSelection
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AutoWordSelection
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_INSKeyForPaste
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_INSKeyForPaste
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_SmartCutPaste
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_SmartCutPaste
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_TabIndentKey
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_TabIndentKey
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_PictureEditor
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_PictureEditor
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AnimateScreenMovements
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AnimateScreenMovements
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_VirusProtection
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_VirusProtection
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_RevisedPropertiesMark
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_RevisedPropertiesMark
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_RevisedPropertiesColor
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_RevisedPropertiesColor
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_SnapToGrid
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_SnapToGrid
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_SnapToShapes
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_SnapToShapes
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_GridDistanceHorizontal
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_GridDistanceHorizontal
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_GridDistanceVertical
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_GridDistanceVertical
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_GridOriginHorizontal
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_GridOriginHorizontal
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_GridOriginVertical
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_GridOriginVertical
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_InlineConversion
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_InlineConversion
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_IMEAutomaticControl
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_IMEAutomaticControl
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AutoFormatApplyHeadings
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AutoFormatApplyHeadings
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AutoFormatApplyLists
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AutoFormatApplyLists
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AutoFormatApplyBulletedLists
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AutoFormatApplyBulletedLists
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AutoFormatApplyOtherParas
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AutoFormatApplyOtherParas
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AutoFormatReplaceQuotes
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AutoFormatReplaceQuotes
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AutoFormatReplaceSymbols
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AutoFormatReplaceSymbols
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AutoFormatReplaceOrdinals
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AutoFormatReplaceOrdinals
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AutoFormatReplaceFractions
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AutoFormatReplaceFractions
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AutoFormatReplacePlainTextEmphasis
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AutoFormatReplacePlainTextEmphasis
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AutoFormatPreserveStyles
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AutoFormatPreserveStyles
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AutoFormatAsYouTypeApplyHeadings
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AutoFormatAsYouTypeApplyHeadings
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AutoFormatAsYouTypeApplyBorders
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AutoFormatAsYouTypeApplyBorders
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AutoFormatAsYouTypeApplyBulletedLists
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AutoFormatAsYouTypeApplyBulletedLists
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AutoFormatAsYouTypeApplyNumberedLists
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AutoFormatAsYouTypeApplyNumberedLists
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AutoFormatAsYouTypeReplaceQuotes
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AutoFormatAsYouTypeReplaceQuotes
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AutoFormatAsYouTypeReplaceSymbols
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AutoFormatAsYouTypeReplaceSymbols
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AutoFormatAsYouTypeReplaceOrdinals
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AutoFormatAsYouTypeReplaceOrdinals
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AutoFormatAsYouTypeReplaceFractions
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AutoFormatAsYouTypeReplaceFractions
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AutoFormatAsYouTypeReplacePlainTextEmphasis
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AutoFormatAsYouTypeReplacePlainTextEmphasis
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AutoFormatAsYouTypeFormatListItemBeginning
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AutoFormatAsYouTypeFormatListItemBeginning
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AutoFormatAsYouTypeDefineStyles
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AutoFormatAsYouTypeDefineStyles
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AutoFormatPlainTextWordMail
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AutoFormatPlainTextWordMail
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AutoFormatAsYouTypeReplaceHyperlinks
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AutoFormatAsYouTypeReplaceHyperlinks
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AutoFormatReplaceHyperlinks
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AutoFormatReplaceHyperlinks
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_DefaultHighlightColorIndex
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DefaultHighlightColorIndex
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_DefaultBorderLineStyle
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DefaultBorderLineStyle
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_CheckSpellingAsYouType
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_CheckSpellingAsYouType
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_CheckGrammarAsYouType
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_CheckGrammarAsYouType
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_IgnoreInternetAndFileAddresses
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_IgnoreInternetAndFileAddresses
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ShowReadabilityStatistics
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ShowReadabilityStatistics
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_IgnoreUppercase
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_IgnoreUppercase
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_IgnoreMixedDigits
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_IgnoreMixedDigits
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_SuggestFromMainDictionaryOnly
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_SuggestFromMainDictionaryOnly
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_SuggestSpellingCorrections
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_SuggestSpellingCorrections
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_DefaultBorderLineWidth
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DefaultBorderLineWidth
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_CheckGrammarWithSpelling
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_CheckGrammarWithSpelling
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_DefaultOpenFormat
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DefaultOpenFormat
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_PrintDraft
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_PrintDraft
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_PrintReverse
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_PrintReverse
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_MapPaperSize
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_MapPaperSize
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AutoFormatAsYouTypeApplyTables
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AutoFormatAsYouTypeApplyTables
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AutoFormatApplyFirstIndents
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AutoFormatApplyFirstIndents
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AutoFormatMatchParentheses
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AutoFormatMatchParentheses
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AutoFormatReplaceFarEastDashes
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AutoFormatReplaceFarEastDashes
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AutoFormatDeleteAutoSpaces
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AutoFormatDeleteAutoSpaces
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AutoFormatAsYouTypeApplyFirstIndents
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AutoFormatAsYouTypeApplyFirstIndents
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AutoFormatAsYouTypeApplyDates
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AutoFormatAsYouTypeApplyDates
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AutoFormatAsYouTypeApplyClosings
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AutoFormatAsYouTypeApplyClosings
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AutoFormatAsYouTypeMatchParentheses
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AutoFormatAsYouTypeMatchParentheses
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AutoFormatAsYouTypeReplaceFarEastDashes
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AutoFormatAsYouTypeReplaceFarEastDashes
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AutoFormatAsYouTypeDeleteAutoSpaces
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AutoFormatAsYouTypeDeleteAutoSpaces
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AutoFormatAsYouTypeInsertClosings
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AutoFormatAsYouTypeInsertClosings
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AutoFormatAsYouTypeAutoLetterWizard
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AutoFormatAsYouTypeAutoLetterWizard
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AutoFormatAsYouTypeInsertOvers
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AutoFormatAsYouTypeInsertOvers
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_DisplayGridLines
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DisplayGridLines
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_MatchFuzzyCase
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_MatchFuzzyCase
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_MatchFuzzyByte
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_MatchFuzzyByte
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_MatchFuzzyHiragana
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_MatchFuzzyHiragana
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_MatchFuzzySmallKana
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_MatchFuzzySmallKana
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_MatchFuzzyDash
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_MatchFuzzyDash
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_MatchFuzzyIterationMark
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_MatchFuzzyIterationMark
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_MatchFuzzyKanji
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_MatchFuzzyKanji
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_MatchFuzzyOldKana
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_MatchFuzzyOldKana
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_MatchFuzzyProlongedSoundMark
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_MatchFuzzyProlongedSoundMark
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_MatchFuzzyDZ
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_MatchFuzzyDZ
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_MatchFuzzyBV
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_MatchFuzzyBV
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_MatchFuzzyTC
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_MatchFuzzyTC
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_MatchFuzzyHF
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_MatchFuzzyHF
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_MatchFuzzyZJ
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_MatchFuzzyZJ
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_MatchFuzzyAY
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_MatchFuzzyAY
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_MatchFuzzyKiKu
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_MatchFuzzyKiKu
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_MatchFuzzyPunctuation
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_MatchFuzzyPunctuation
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_MatchFuzzySpace
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_MatchFuzzySpace
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ApplyFarEastFontsToAscii
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ApplyFarEastFontsToAscii
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ConvertHighAnsiToFarEast
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ConvertHighAnsiToFarEast
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_PrintOddPagesInAscendingOrder
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_PrintOddPagesInAscendingOrder
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_PrintEvenPagesInAscendingOrder
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_PrintEvenPagesInAscendingOrder
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_DefaultBorderColorIndex
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DefaultBorderColorIndex
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_EnableMisusedWordsDictionary
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_EnableMisusedWordsDictionary
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AllowCombinedAuxiliaryForms
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AllowCombinedAuxiliaryForms
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_HangulHanjaFastConversion
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_HangulHanjaFastConversion
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_CheckHangulEndings
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_CheckHangulEndings
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_EnableHangulHanjaRecentOrdering
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_EnableHangulHanjaRecentOrdering
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_MultipleWordConversionsMode
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_MultipleWordConversionsMode
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure SetWPHelpOptions
     (This              : Options_Type;
      CommandKeyHelp    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      DocNavigationKeys : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      MouseSimulation   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      DemoGuidance      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      DemoSpeed         : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      HelpType          : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free              : Boolean := True);

   function Get_DefaultBorderColor
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DefaultBorderColor
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AllowPixelUnits
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AllowPixelUnits
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_UseCharacterUnit
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_UseCharacterUnit
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AllowCompoundNounProcessing
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AllowCompoundNounProcessing
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AutoKeyboardSwitching
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AutoKeyboardSwitching
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_DocumentViewDirection
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DocumentViewDirection
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ArabicNumeral
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ArabicNumeral
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_MonthNames
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_MonthNames
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_CursorMovement
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_CursorMovement
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_VisualSelection
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_VisualSelection
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ShowDiacritics
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ShowDiacritics
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ShowControlCharacters
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ShowControlCharacters
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AddControlCharacters
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AddControlCharacters
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AddBiDirectionalMarksWhenSavingTextFile
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AddBiDirectionalMarksWhenSavingTextFile
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_StrictInitialAlefHamza
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_StrictInitialAlefHamza
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_StrictFinalYaa
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_StrictFinalYaa
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_HebrewMode
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_HebrewMode
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ArabicMode
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ArabicMode
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AllowClickAndTypeMouse
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AllowClickAndTypeMouse
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_UseGermanSpellingReform
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_UseGermanSpellingReform
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_InterpretHighAnsi
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_InterpretHighAnsi
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AddHebDoubleQuote
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AddHebDoubleQuote
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_UseDiffDiacColor
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_UseDiffDiacColor
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_DiacriticColorVal
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DiacriticColorVal
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_OptimizeForWord97byDefault
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_OptimizeForWord97byDefault
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_LocalNetworkFile
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_LocalNetworkFile
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_TypeNReplace
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_TypeNReplace
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_SequenceCheck
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_SequenceCheck
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_BackgroundOpen
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_BackgroundOpen
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_DisableFeaturesbyDefault
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DisableFeaturesbyDefault
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_PasteAdjustWordSpacing
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_PasteAdjustWordSpacing
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_PasteAdjustParagraphSpacing
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_PasteAdjustParagraphSpacing
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_PasteAdjustTableFormatting
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_PasteAdjustTableFormatting
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_PasteSmartStyleBehavior
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_PasteSmartStyleBehavior
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_PasteMergeFromPPT
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_PasteMergeFromPPT
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_PasteMergeFromXL
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_PasteMergeFromXL
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_CtrlClickHyperlinkToOpen
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_CtrlClickHyperlinkToOpen
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_PictureWrapType
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_PictureWrapType
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_DisableFeaturesIntroducedAfterbyDefault
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DisableFeaturesIntroducedAfterbyDefault
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_PasteSmartCutPaste
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_PasteSmartCutPaste
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_DisplayPasteOptions
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DisplayPasteOptions
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_PromptUpdateStyle
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_PromptUpdateStyle
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_DefaultEPostageApp
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DefaultEPostageApp
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_DefaultTextEncoding
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DefaultTextEncoding
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_LabelSmartTags
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_LabelSmartTags
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_DisplaySmartTagButtons
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DisplaySmartTagButtons
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_WarnBeforeSavingPrintingSendingMarkup
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_WarnBeforeSavingPrintingSendingMarkup
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_StoreRSIDOnSave
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_StoreRSIDOnSave
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ShowFormatError
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ShowFormatError
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_FormatScanning
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_FormatScanning
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_PasteMergeLists
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_PasteMergeLists
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AutoCreateNewDrawings
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AutoCreateNewDrawings
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_SmartParaSelection
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_SmartParaSelection
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_RevisionsBalloonPrintOrientation
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_RevisionsBalloonPrintOrientation
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_CommentsColor
     (This : Options_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_CommentsColor
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

end winword.Options_Object;

