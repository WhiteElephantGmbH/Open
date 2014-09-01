with GNATCOM.Dispinterface;

package winword.uDocument_Object is

   type uDocument_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Name
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Application
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_BuiltInDocumentProperties
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_CustomDocumentProperties
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Path
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Bookmarks
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Tables
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Footnotes
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Endnotes
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Comments
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Type
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_AutoHyphenation
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AutoHyphenation
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_HyphenateCaps
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_HyphenateCaps
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_HyphenationZone
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_HyphenationZone
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ConsecutiveHyphensLimit
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ConsecutiveHyphensLimit
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Sections
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Paragraphs
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Words
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Sentences
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Characters
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Fields
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_FormFields
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Styles
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Frames
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_TablesOfFigures
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Variables
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_MailMerge
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Envelope
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_FullName
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Revisions
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_TablesOfContents
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_TablesOfAuthorities
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_PageSetup
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_PageSetup
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Windows
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_HasRoutingSlip
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_HasRoutingSlip
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_RoutingSlip
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Routed
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_TablesOfAuthoritiesCategories
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Indexes
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Saved
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Saved
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Content
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ActiveWindow
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Kind
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Kind
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ReadOnly
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Subdocuments
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_IsMasterDocument
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_DefaultTabStop
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DefaultTabStop
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_EmbedTrueTypeFonts
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_EmbedTrueTypeFonts
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_SaveFormsData
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_SaveFormsData
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ReadOnlyRecommended
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ReadOnlyRecommended
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_SaveSubsetFonts
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_SaveSubsetFonts
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Compatibility
     (This  : uDocument_Type;
      uType : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure Put_Compatibility
     (This  : uDocument_Type;
      uType : GNATCOM.Types.VARIANT;
      P2    : GNATCOM.Types.VARIANT;
      Free  : Boolean := True);

   function Get_StoryRanges
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_CommandBars
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_IsSubdocument
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_SaveFormat
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ProtectionType
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Hyperlinks
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Shapes
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ListTemplates
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Lists
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_UpdateStylesOnOpen
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_UpdateStylesOnOpen
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AttachedTemplate
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AttachedTemplate
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_InlineShapes
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Background
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Background
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_GrammarChecked
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_GrammarChecked
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_SpellingChecked
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_SpellingChecked
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ShowGrammaticalErrors
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ShowGrammaticalErrors
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ShowSpellingErrors
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ShowSpellingErrors
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Versions
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ShowSummary
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ShowSummary
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_SummaryViewMode
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_SummaryViewMode
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_SummaryLength
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_SummaryLength
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_PrintFractionalWidths
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_PrintFractionalWidths
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_PrintPostScriptOverText
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_PrintPostScriptOverText
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Container
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_PrintFormsData
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_PrintFormsData
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ListParagraphs
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Password
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure Put_WritePassword
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_HasPassword
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_WriteReserved
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ActiveWritingStyle
     (This       : uDocument_Type;
      LanguageID : GNATCOM.Types.VARIANT;
      Free       : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure Put_ActiveWritingStyle
     (This       : uDocument_Type;
      LanguageID : GNATCOM.Types.VARIANT;
      P2         : GNATCOM.Types.VARIANT;
      Free       : Boolean := True);

   function Get_UserControl
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_UserControl
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_HasMailer
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_HasMailer
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Mailer
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ReadabilityStatistics
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_GrammaticalErrors
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_SpellingErrors
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_VBProject
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_FormsDesign
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   function Getu_CodeName
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   procedure Putu_CodeName
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_CodeName
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_SnapToGrid
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_SnapToGrid
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_SnapToShapes
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_SnapToShapes
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_GridDistanceHorizontal
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_GridDistanceHorizontal
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_GridDistanceVertical
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_GridDistanceVertical
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_GridOriginHorizontal
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_GridOriginHorizontal
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_GridOriginVertical
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_GridOriginVertical
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_GridSpaceBetweenHorizontalLines
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_GridSpaceBetweenHorizontalLines
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_GridSpaceBetweenVerticalLines
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_GridSpaceBetweenVerticalLines
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_GridOriginFromMargin
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_GridOriginFromMargin
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_KerningByAlgorithm
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_KerningByAlgorithm
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_JustificationMode
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_JustificationMode
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_FarEastLineBreakLevel
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_FarEastLineBreakLevel
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_NoLineBreakBefore
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_NoLineBreakBefore
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_NoLineBreakAfter
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_NoLineBreakAfter
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_TrackRevisions
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_TrackRevisions
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_PrintRevisions
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_PrintRevisions
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ShowRevisions
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ShowRevisions
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure Close
     (This           : uDocument_Type;
      SaveChanges    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      OriginalFormat : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      RouteDocument  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free           : Boolean := True);

   procedure SaveAs2000
     (This                    : uDocument_Type;
      FileName                : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      FileFormat              : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      LockComments            : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Password                : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      AddToRecentFiles        : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      WritePassword           : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ReadOnlyRecommended     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      EmbedTrueTypeFonts      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      SaveNativePictureFormat : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      SaveFormsData           : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      SaveAsAOCELetter        : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free                    : Boolean := True);

   procedure Repaginate
     (This : uDocument_Type);

   procedure FitToPages
     (This : uDocument_Type);

   procedure ManualHyphenation
     (This : uDocument_Type);

   procedure uSelect
     (This : uDocument_Type);

   procedure DataForm
     (This : uDocument_Type);

   procedure Route
     (This : uDocument_Type);

   procedure Save
     (This : uDocument_Type);

   procedure PrintOutOld
     (This               : uDocument_Type;
      Background         : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Append             : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      uRange             : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      OutputFileName     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      From               : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      To                 : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Item               : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Copies             : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Pages              : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      PageType           : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      PrintToFile        : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Collate            : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ActivePrinterMacGX : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ManualDuplexPrint  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free               : Boolean := True);

   procedure SendMail
     (This : uDocument_Type);

   function uRange
     (This  : uDocument_Type;
      Start : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      uEnd  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure RunAutoMacro
     (This  : uDocument_Type;
      Which : GNATCOM.Types.VARIANT;
      Free  : Boolean := True);

   procedure Activate
     (This : uDocument_Type);

   procedure PrintPreview
     (This : uDocument_Type);

   function uGoTo
     (This  : uDocument_Type;
      What  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Which : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Count : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Name  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Undo
     (This  : uDocument_Type;
      Times : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Redo
     (This  : uDocument_Type;
      Times : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function ComputeStatistics
     (This                        : uDocument_Type;
      Statistic                   : GNATCOM.Types.VARIANT;
      IncludeFootnotesAndEndnotes : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free                        : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure MakeCompatibilityDefault
     (This : uDocument_Type);

   procedure Protect
     (This     : uDocument_Type;
      uType    : GNATCOM.Types.VARIANT;
      NoReset  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Password : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True);

   procedure Unprotect
     (This     : uDocument_Type;
      Password : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True);

   procedure EditionOptions
     (This   : uDocument_Type;
      uType  : GNATCOM.Types.VARIANT;
      Option : GNATCOM.Types.VARIANT;
      Name   : GNATCOM.Types.VARIANT;
      Format : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free   : Boolean := True);

   procedure RunLetterWizard
     (This          : uDocument_Type;
      LetterContent : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      WizardMode    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free          : Boolean := True);

   function GetLetterContent
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   procedure SetLetterContent
     (This          : uDocument_Type;
      LetterContent : GNATCOM.Types.VARIANT;
      Free          : Boolean := True);

   procedure CopyStylesFromTemplate
     (This     : uDocument_Type;
      Template : GNATCOM.Types.VARIANT;
      Free     : Boolean := True);

   procedure UpdateStyles
     (This : uDocument_Type);

   procedure CheckGrammar
     (This : uDocument_Type);

   procedure CheckSpelling
     (This               : uDocument_Type;
      CustomDictionary   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      IgnoreUppercase    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      AlwaysSuggest      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      CustomDictionary2  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      CustomDictionary3  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      CustomDictionary4  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      CustomDictionary5  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      CustomDictionary6  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      CustomDictionary7  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      CustomDictionary8  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      CustomDictionary9  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      CustomDictionary10 : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free               : Boolean := True);

   procedure FollowHyperlink
     (This       : uDocument_Type;
      Address    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      SubAddress : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      NewWindow  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      AddHistory : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ExtraInfo  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Method     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      HeaderInfo : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free       : Boolean := True);

   procedure AddToFavorites
     (This : uDocument_Type);

   procedure Reload
     (This : uDocument_Type);

   function AutoSummarize
     (This             : uDocument_Type;
      Length           : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Mode             : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      UpdateProperties : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free             : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure RemoveNumbers
     (This       : uDocument_Type;
      NumberType : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free       : Boolean := True);

   procedure ConvertNumbersToText
     (This       : uDocument_Type;
      NumberType : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free       : Boolean := True);

   function CountNumberedItems
     (This       : uDocument_Type;
      NumberType : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Level      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free       : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure Post
     (This : uDocument_Type);

   procedure ToggleFormsDesign
     (This : uDocument_Type);

   procedure Compare2000
     (This : uDocument_Type;
      Name : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure UpdateSummaryProperties
     (This : uDocument_Type);

   function GetCrossReferenceItems
     (This          : uDocument_Type;
      ReferenceType : GNATCOM.Types.VARIANT;
      Free          : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure AutoFormat
     (This : uDocument_Type);

   procedure ViewCode
     (This : uDocument_Type);

   procedure ViewPropertyBrowser
     (This : uDocument_Type);

   procedure ForwardMailer
     (This : uDocument_Type);

   procedure Reply
     (This : uDocument_Type);

   procedure ReplyAll
     (This : uDocument_Type);

   procedure SendMailer
     (This       : uDocument_Type;
      FileFormat : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Priority   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free       : Boolean := True);

   procedure UndoClear
     (This : uDocument_Type);

   procedure PresentIt
     (This : uDocument_Type);

   procedure SendFax
     (This    : uDocument_Type;
      Address : GNATCOM.Types.VARIANT;
      Subject : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free    : Boolean := True);

   procedure Merge2000
     (This     : uDocument_Type;
      FileName : GNATCOM.Types.VARIANT;
      Free     : Boolean := True);

   procedure ClosePrintPreview
     (This : uDocument_Type);

   procedure CheckConsistency
     (This : uDocument_Type);

   function CreateLetterContent
     (This                   : uDocument_Type;
      DateFormat             : GNATCOM.Types.VARIANT;
      IncludeHeaderFooter    : GNATCOM.Types.VARIANT;
      PageDesign             : GNATCOM.Types.VARIANT;
      LetterStyle            : GNATCOM.Types.VARIANT;
      Letterhead             : GNATCOM.Types.VARIANT;
      LetterheadLocation     : GNATCOM.Types.VARIANT;
      LetterheadSize         : GNATCOM.Types.VARIANT;
      RecipientName          : GNATCOM.Types.VARIANT;
      RecipientAddress       : GNATCOM.Types.VARIANT;
      Salutation             : GNATCOM.Types.VARIANT;
      SalutationType         : GNATCOM.Types.VARIANT;
      RecipientReference     : GNATCOM.Types.VARIANT;
      MailingInstructions    : GNATCOM.Types.VARIANT;
      AttentionLine          : GNATCOM.Types.VARIANT;
      Subject                : GNATCOM.Types.VARIANT;
      CCList                 : GNATCOM.Types.VARIANT;
      ReturnAddress          : GNATCOM.Types.VARIANT;
      SenderName             : GNATCOM.Types.VARIANT;
      Closing                : GNATCOM.Types.VARIANT;
      SenderCompany          : GNATCOM.Types.VARIANT;
      SenderJobTitle         : GNATCOM.Types.VARIANT;
      SenderInitials         : GNATCOM.Types.VARIANT;
      EnclosureNumber        : GNATCOM.Types.VARIANT;
      InfoBlock              : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      RecipientCode          : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      RecipientGender        : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ReturnAddressShortForm : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      SenderCity             : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      SenderCode             : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      SenderGender           : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      SenderReference        : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free                   : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure AcceptAllRevisions
     (This : uDocument_Type);

   procedure RejectAllRevisions
     (This : uDocument_Type);

   procedure DetectLanguage
     (This : uDocument_Type);

   procedure ApplyTheme
     (This : uDocument_Type;
      Name : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure RemoveTheme
     (This : uDocument_Type);

   procedure WebPagePreview
     (This : uDocument_Type);

   procedure ReloadAs
     (This     : uDocument_Type;
      Encoding : GNATCOM.Types.VARIANT;
      Free     : Boolean := True);

   function Get_ActiveTheme
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ActiveThemeDisplayName
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Email
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Scripts
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_LanguageDetected
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_LanguageDetected
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_FarEastLineBreakLanguage
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_FarEastLineBreakLanguage
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Frameset
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ClickAndTypeParagraphStyle
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ClickAndTypeParagraphStyle
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_HTMLProject
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_WebOptions
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_OpenEncoding
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_SaveEncoding
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_SaveEncoding
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_OptimizeForWord97
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_OptimizeForWord97
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_VBASigned
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   procedure PrintOut2000
     (This                 : uDocument_Type;
      Background           : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Append               : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      uRange               : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      OutputFileName       : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      From                 : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      To                   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Item                 : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Copies               : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Pages                : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      PageType             : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      PrintToFile          : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Collate              : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ActivePrinterMacGX   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ManualDuplexPrint    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      PrintZoomColumn      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      PrintZoomRow         : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      PrintZoomPaperWidth  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      PrintZoomPaperHeight : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free                 : Boolean := True);

   procedure sblt
     (This : uDocument_Type;
      s    : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure ConvertVietDoc
     (This           : uDocument_Type;
      CodePageOrigin : GNATCOM.Types.VARIANT;
      Free           : Boolean := True);

   procedure PrintOut
     (This                 : uDocument_Type;
      Background           : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Append               : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      uRange               : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      OutputFileName       : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      From                 : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      To                   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Item                 : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Copies               : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Pages                : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      PageType             : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      PrintToFile          : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Collate              : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ActivePrinterMacGX   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ManualDuplexPrint    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      PrintZoomColumn      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      PrintZoomRow         : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      PrintZoomPaperWidth  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      PrintZoomPaperHeight : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free                 : Boolean := True);

   function Get_MailEnvelope
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_DisableFeatures
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DisableFeatures
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_DoNotEmbedSystemFonts
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DoNotEmbedSystemFonts
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Signatures
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_DefaultTargetFrame
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DefaultTargetFrame
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_HTMLDivisions
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_DisableFeaturesIntroducedAfter
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DisableFeaturesIntroducedAfter
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_RemovePersonalInformation
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_RemovePersonalInformation
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_SmartTags
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   procedure Compare
     (This                        : uDocument_Type;
      Name                        : GNATCOM.Types.VARIANT;
      AuthorName                  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      CompareTarget               : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      DetectFormatChanges         : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      IgnoreAllComparisonWarnings : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      AddToRecentFiles            : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free                        : Boolean := True);

   procedure CheckIn
     (This        : uDocument_Type;
      SaveChanges : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Comments    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      MakePublic  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free        : Boolean := True);

   function CanCheckin
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   procedure Merge
     (This                : uDocument_Type;
      FileName            : GNATCOM.Types.VARIANT;
      MergeTarget         : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      DetectFormatChanges : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      UseFormattingFrom   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      AddToRecentFiles    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free                : Boolean := True);

   function Get_EmbedSmartTags
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_EmbedSmartTags
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_SmartTagsAsXMLProps
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_SmartTagsAsXMLProps
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_TextEncoding
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_TextEncoding
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_TextLineEnding
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_TextLineEnding
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure SendForReview
     (This              : uDocument_Type;
      Recipients        : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Subject           : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ShowMessage       : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      IncludeAttachment : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free              : Boolean := True);

   procedure ReplyWithChanges
     (This        : uDocument_Type;
      ShowMessage : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free        : Boolean := True);

   procedure EndReview
     (This : uDocument_Type);

   function Get_StyleSheets
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_DefaultTableStyle
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_PasswordEncryptionProvider
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_PasswordEncryptionAlgorithm
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_PasswordEncryptionKeyLength
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_PasswordEncryptionFileProperties
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   procedure SetPasswordEncryptionOptions
     (This                             : uDocument_Type;
      PasswordEncryptionProvider       : GNATCOM.Types.VARIANT;
      PasswordEncryptionAlgorithm      : GNATCOM.Types.VARIANT;
      PasswordEncryptionKeyLength      : GNATCOM.Types.VARIANT;
      PasswordEncryptionFileProperties : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free                             : Boolean := True);

   procedure RecheckSmartTags
     (This : uDocument_Type);

   procedure RemoveSmartTags
     (This : uDocument_Type);

   procedure SetDefaultTableStyle
     (This          : uDocument_Type;
      Style         : GNATCOM.Types.VARIANT;
      SetInTemplate : GNATCOM.Types.VARIANT;
      Free          : Boolean := True);

   procedure DeleteAllComments
     (This : uDocument_Type);

   procedure AcceptAllRevisionsShown
     (This : uDocument_Type);

   procedure RejectAllRevisionsShown
     (This : uDocument_Type);

   procedure DeleteAllCommentsShown
     (This : uDocument_Type);

   procedure ResetFormFields
     (This : uDocument_Type);

   procedure SaveAs
     (This                    : uDocument_Type;
      FileName                : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      FileFormat              : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      LockComments            : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Password                : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      AddToRecentFiles        : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      WritePassword           : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ReadOnlyRecommended     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      EmbedTrueTypeFonts      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      SaveNativePictureFormat : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      SaveFormsData           : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      SaveAsAOCELetter        : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Encoding                : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      InsertLineBreaks        : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      AllowSubstitutions      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      LineEnding              : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      AddBiDiMarks            : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free                    : Boolean := True);

   function Get_EmbedLinguisticData
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_EmbedLinguisticData
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_FormattingShowFont
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_FormattingShowFont
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_FormattingShowClear
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_FormattingShowClear
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_FormattingShowParagraph
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_FormattingShowParagraph
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_FormattingShowNumbering
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_FormattingShowNumbering
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_FormattingShowFilter
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_FormattingShowFilter
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure CheckNewSmartTags
     (This : uDocument_Type);

end winword.uDocument_Object;

