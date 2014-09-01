with GNATCOM.Dispinterface;

package winword.uDocument_Interface is

   type uDocument_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out uDocument_Type);

   function Pointer (This : uDocument_Type)
     return Pointer_To_uDocument;

   procedure Attach (This    : in out uDocument_Type;
                     Pointer : in     Pointer_To_uDocument);

   function Get_Name
     (This : uDocument_Type)
     return GNATCOM.Types.BSTR;

   function Get_Application
     (This : uDocument_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : uDocument_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : uDocument_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_BuiltInDocumentProperties
     (This : uDocument_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_CustomDocumentProperties
     (This : uDocument_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Path
     (This : uDocument_Type)
     return GNATCOM.Types.BSTR;

   function Get_Bookmarks
     (This : uDocument_Type)
     return Pointer_To_Bookmarks;

   function Get_Tables
     (This : uDocument_Type)
     return Pointer_To_Tables;

   function Get_Footnotes
     (This : uDocument_Type)
     return Pointer_To_Footnotes;

   function Get_Endnotes
     (This : uDocument_Type)
     return Pointer_To_Endnotes;

   function Get_Comments
     (This : uDocument_Type)
     return Pointer_To_Comments;

   function Get_Type
     (This : uDocument_Type)
     return WdDocumentType;

   function Get_AutoHyphenation
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_AutoHyphenation
     (This : uDocument_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_HyphenateCaps
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_HyphenateCaps
     (This : uDocument_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_HyphenationZone
     (This : uDocument_Type)
     return Interfaces.C.long;

   procedure Put_HyphenationZone
     (This : uDocument_Type;
      prop : Interfaces.C.long);

   function Get_ConsecutiveHyphensLimit
     (This : uDocument_Type)
     return Interfaces.C.long;

   procedure Put_ConsecutiveHyphensLimit
     (This : uDocument_Type;
      prop : Interfaces.C.long);

   function Get_Sections
     (This : uDocument_Type)
     return Pointer_To_Sections;

   function Get_Paragraphs
     (This : uDocument_Type)
     return Pointer_To_Paragraphs;

   function Get_Words
     (This : uDocument_Type)
     return Pointer_To_Words;

   function Get_Sentences
     (This : uDocument_Type)
     return Pointer_To_Sentences;

   function Get_Characters
     (This : uDocument_Type)
     return Pointer_To_Characters;

   function Get_Fields
     (This : uDocument_Type)
     return Pointer_To_Fields;

   function Get_FormFields
     (This : uDocument_Type)
     return Pointer_To_FormFields;

   function Get_Styles
     (This : uDocument_Type)
     return Pointer_To_Styles;

   function Get_Frames
     (This : uDocument_Type)
     return Pointer_To_Frames;

   function Get_TablesOfFigures
     (This : uDocument_Type)
     return Pointer_To_TablesOfFigures;

   function Get_Variables
     (This : uDocument_Type)
     return Pointer_To_Variables;

   function Get_MailMerge
     (This : uDocument_Type)
     return Pointer_To_MailMerge;

   function Get_Envelope
     (This : uDocument_Type)
     return Pointer_To_Envelope;

   function Get_FullName
     (This : uDocument_Type)
     return GNATCOM.Types.BSTR;

   function Get_Revisions
     (This : uDocument_Type)
     return Pointer_To_Revisions;

   function Get_TablesOfContents
     (This : uDocument_Type)
     return Pointer_To_TablesOfContents;

   function Get_TablesOfAuthorities
     (This : uDocument_Type)
     return Pointer_To_TablesOfAuthorities;

   function Get_PageSetup
     (This : uDocument_Type)
     return Pointer_To_PageSetup;

   procedure Put_PageSetup
     (This : uDocument_Type;
      prop : Pointer_To_PageSetup);

   function Get_Windows
     (This : uDocument_Type)
     return Pointer_To_Windows;

   function Get_HasRoutingSlip
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_HasRoutingSlip
     (This : uDocument_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_RoutingSlip
     (This : uDocument_Type)
     return Pointer_To_RoutingSlip;

   function Get_Routed
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   function Get_TablesOfAuthoritiesCategories
     (This : uDocument_Type)
     return Pointer_To_TablesOfAuthoritiesCategories;

   function Get_Indexes
     (This : uDocument_Type)
     return Pointer_To_Indexes;

   function Get_Saved
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_Saved
     (This : uDocument_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_Content
     (This : uDocument_Type)
     return Pointer_To_uRange;

   function Get_ActiveWindow
     (This : uDocument_Type)
     return Pointer_To_Window;

   function Get_Kind
     (This : uDocument_Type)
     return WdDocumentKind;

   procedure Put_Kind
     (This : uDocument_Type;
      prop : WdDocumentKind);

   function Get_ReadOnly
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   function Get_Subdocuments
     (This : uDocument_Type)
     return Pointer_To_Subdocuments;

   function Get_IsMasterDocument
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   function Get_DefaultTabStop
     (This : uDocument_Type)
     return Interfaces.C.C_float;

   procedure Put_DefaultTabStop
     (This : uDocument_Type;
      prop : Interfaces.C.C_float);

   function Get_EmbedTrueTypeFonts
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_EmbedTrueTypeFonts
     (This : uDocument_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_SaveFormsData
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_SaveFormsData
     (This : uDocument_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_ReadOnlyRecommended
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_ReadOnlyRecommended
     (This : uDocument_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_SaveSubsetFonts
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_SaveSubsetFonts
     (This : uDocument_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_Compatibility
     (This  : uDocument_Type;
      uType : WdCompatibility)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_Compatibility
     (This  : uDocument_Type;
      uType : WdCompatibility;
      prop  : GNATCOM.Types.VARIANT_BOOL);

   function Get_StoryRanges
     (This : uDocument_Type)
     return Pointer_To_StoryRanges;

   function Get_CommandBars
     (This : uDocument_Type)
     return Pointer_To_uCommandBars;

   function Get_IsSubdocument
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   function Get_SaveFormat
     (This : uDocument_Type)
     return Interfaces.C.long;

   function Get_ProtectionType
     (This : uDocument_Type)
     return WdProtectionType;

   function Get_Hyperlinks
     (This : uDocument_Type)
     return Pointer_To_Hyperlinks;

   function Get_Shapes
     (This : uDocument_Type)
     return Pointer_To_Shapes;

   function Get_ListTemplates
     (This : uDocument_Type)
     return Pointer_To_ListTemplates;

   function Get_Lists
     (This : uDocument_Type)
     return Pointer_To_Lists;

   function Get_UpdateStylesOnOpen
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_UpdateStylesOnOpen
     (This : uDocument_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_AttachedTemplate
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AttachedTemplate
     (This : uDocument_Type;
      prop : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   function Get_InlineShapes
     (This : uDocument_Type)
     return Pointer_To_InlineShapes;

   function Get_Background
     (This : uDocument_Type)
     return Pointer_To_Shape;

   procedure Put_Background
     (This : uDocument_Type;
      prop : Pointer_To_Shape);

   function Get_GrammarChecked
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_GrammarChecked
     (This : uDocument_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_SpellingChecked
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_SpellingChecked
     (This : uDocument_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_ShowGrammaticalErrors
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_ShowGrammaticalErrors
     (This : uDocument_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_ShowSpellingErrors
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_ShowSpellingErrors
     (This : uDocument_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_Versions
     (This : uDocument_Type)
     return Pointer_To_Versions;

   function Get_ShowSummary
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_ShowSummary
     (This : uDocument_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_SummaryViewMode
     (This : uDocument_Type)
     return WdSummaryMode;

   procedure Put_SummaryViewMode
     (This : uDocument_Type;
      prop : WdSummaryMode);

   function Get_SummaryLength
     (This : uDocument_Type)
     return Interfaces.C.long;

   procedure Put_SummaryLength
     (This : uDocument_Type;
      prop : Interfaces.C.long);

   function Get_PrintFractionalWidths
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_PrintFractionalWidths
     (This : uDocument_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_PrintPostScriptOverText
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_PrintPostScriptOverText
     (This : uDocument_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_Container
     (This : uDocument_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_PrintFormsData
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_PrintFormsData
     (This : uDocument_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_ListParagraphs
     (This : uDocument_Type)
     return Pointer_To_ListParagraphs;

   procedure Put_Password
     (This : uDocument_Type;
      P1   : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   procedure Put_WritePassword
     (This : uDocument_Type;
      P1   : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_HasPassword
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   function Get_WriteReserved
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   function Get_ActiveWritingStyle
     (This       : uDocument_Type;
      LanguageID : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return GNATCOM.Types.BSTR;

   procedure Put_ActiveWritingStyle
     (This       : uDocument_Type;
      LanguageID : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      prop       : GNATCOM.Types.BSTR;
      Free       : Boolean := True);

   function Get_UserControl
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_UserControl
     (This : uDocument_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_HasMailer
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_HasMailer
     (This : uDocument_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_Mailer
     (This : uDocument_Type)
     return Pointer_To_Mailer;

   function Get_ReadabilityStatistics
     (This : uDocument_Type)
     return Pointer_To_ReadabilityStatistics;

   function Get_GrammaticalErrors
     (This : uDocument_Type)
     return Pointer_To_ProofreadingErrors;

   function Get_SpellingErrors
     (This : uDocument_Type)
     return Pointer_To_ProofreadingErrors;

   function Get_VBProject
     (This : uDocument_Type)
     return Pointer_To_uVBProject;

   function Get_FormsDesign
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   function Getu_CodeName
     (This : uDocument_Type)
     return GNATCOM.Types.BSTR;

   procedure Putu_CodeName
     (This : uDocument_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_CodeName
     (This : uDocument_Type)
     return GNATCOM.Types.BSTR;

   function Get_SnapToGrid
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_SnapToGrid
     (This : uDocument_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_SnapToShapes
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_SnapToShapes
     (This : uDocument_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_GridDistanceHorizontal
     (This : uDocument_Type)
     return Interfaces.C.C_float;

   procedure Put_GridDistanceHorizontal
     (This : uDocument_Type;
      prop : Interfaces.C.C_float);

   function Get_GridDistanceVertical
     (This : uDocument_Type)
     return Interfaces.C.C_float;

   procedure Put_GridDistanceVertical
     (This : uDocument_Type;
      prop : Interfaces.C.C_float);

   function Get_GridOriginHorizontal
     (This : uDocument_Type)
     return Interfaces.C.C_float;

   procedure Put_GridOriginHorizontal
     (This : uDocument_Type;
      prop : Interfaces.C.C_float);

   function Get_GridOriginVertical
     (This : uDocument_Type)
     return Interfaces.C.C_float;

   procedure Put_GridOriginVertical
     (This : uDocument_Type;
      prop : Interfaces.C.C_float);

   function Get_GridSpaceBetweenHorizontalLines
     (This : uDocument_Type)
     return Interfaces.C.long;

   procedure Put_GridSpaceBetweenHorizontalLines
     (This : uDocument_Type;
      prop : Interfaces.C.long);

   function Get_GridSpaceBetweenVerticalLines
     (This : uDocument_Type)
     return Interfaces.C.long;

   procedure Put_GridSpaceBetweenVerticalLines
     (This : uDocument_Type;
      prop : Interfaces.C.long);

   function Get_GridOriginFromMargin
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_GridOriginFromMargin
     (This : uDocument_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_KerningByAlgorithm
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_KerningByAlgorithm
     (This : uDocument_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_JustificationMode
     (This : uDocument_Type)
     return WdJustificationMode;

   procedure Put_JustificationMode
     (This : uDocument_Type;
      prop : WdJustificationMode);

   function Get_FarEastLineBreakLevel
     (This : uDocument_Type)
     return WdFarEastLineBreakLevel;

   procedure Put_FarEastLineBreakLevel
     (This : uDocument_Type;
      prop : WdFarEastLineBreakLevel);

   function Get_NoLineBreakBefore
     (This : uDocument_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_NoLineBreakBefore
     (This : uDocument_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_NoLineBreakAfter
     (This : uDocument_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_NoLineBreakAfter
     (This : uDocument_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_TrackRevisions
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_TrackRevisions
     (This : uDocument_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_PrintRevisions
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_PrintRevisions
     (This : uDocument_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_ShowRevisions
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_ShowRevisions
     (This : uDocument_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   procedure Close
     (This           : uDocument_Type;
      SaveChanges    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      OriginalFormat : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      RouteDocument  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   procedure SaveAs2000
     (This                    : uDocument_Type;
      FileName                : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      FileFormat              : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      LockComments            : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Password                : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      AddToRecentFiles        : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      WritePassword           : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ReadOnlyRecommended     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      EmbedTrueTypeFonts      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SaveNativePictureFormat : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SaveFormsData           : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SaveAsAOCELetter        : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

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
      Background         : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Append             : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      uRange             : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      OutputFileName     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      From               : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      To                 : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Item               : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Copies             : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Pages              : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PageType           : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PrintToFile        : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Collate            : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ActivePrinterMacGX : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ManualDuplexPrint  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   procedure SendMail
     (This : uDocument_Type);

   function uRange
     (This  : uDocument_Type;
      Start : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      uEnd  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_uRange;

   procedure RunAutoMacro
     (This  : uDocument_Type;
      Which : WdAutoMacros);

   procedure Activate
     (This : uDocument_Type);

   procedure PrintPreview
     (This : uDocument_Type);

   function uGoTo
     (This  : uDocument_Type;
      What  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Which : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Count : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Name  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_uRange;

   function Undo
     (This  : uDocument_Type;
      Times : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return GNATCOM.Types.VARIANT_BOOL;

   function Redo
     (This  : uDocument_Type;
      Times : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return GNATCOM.Types.VARIANT_BOOL;

   function ComputeStatistics
     (This                        : uDocument_Type;
      Statistic                   : WdStatistic;
      IncludeFootnotesAndEndnotes : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Interfaces.C.long;

   procedure MakeCompatibilityDefault
     (This : uDocument_Type);

   procedure Protect
     (This     : uDocument_Type;
      uType    : WdProtectionType;
      NoReset  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Password : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   procedure Unprotect
     (This     : uDocument_Type;
      Password : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   procedure EditionOptions
     (This   : uDocument_Type;
      uType  : WdEditionType;
      Option : WdEditionOption;
      Name   : GNATCOM.Types.BSTR;
      Format : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Free   : Boolean := True);

   procedure RunLetterWizard
     (This          : uDocument_Type;
      LetterContent : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      WizardMode    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   function GetLetterContent
     (This : uDocument_Type)
     return Pointer_To_uLetterContent;

   procedure SetLetterContent
     (This          : uDocument_Type;
      LetterContent : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   procedure CopyStylesFromTemplate
     (This     : uDocument_Type;
      Template : GNATCOM.Types.BSTR;
      Free     : Boolean := True);

   procedure UpdateStyles
     (This : uDocument_Type);

   procedure CheckGrammar
     (This : uDocument_Type);

   procedure CheckSpelling
     (This               : uDocument_Type;
      CustomDictionary   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      IgnoreUppercase    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      AlwaysSuggest      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      CustomDictionary2  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      CustomDictionary3  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      CustomDictionary4  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      CustomDictionary5  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      CustomDictionary6  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      CustomDictionary7  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      CustomDictionary8  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      CustomDictionary9  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      CustomDictionary10 : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   procedure FollowHyperlink
     (This       : uDocument_Type;
      Address    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SubAddress : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      NewWindow  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      AddHistory : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ExtraInfo  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Method     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      HeaderInfo : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   procedure AddToFavorites
     (This : uDocument_Type);

   procedure Reload
     (This : uDocument_Type);

   function AutoSummarize
     (This             : uDocument_Type;
      Length           : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Mode             : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      UpdateProperties : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_uRange;

   procedure RemoveNumbers
     (This       : uDocument_Type;
      NumberType : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   procedure ConvertNumbersToText
     (This       : uDocument_Type;
      NumberType : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   function CountNumberedItems
     (This       : uDocument_Type;
      NumberType : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Level      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Interfaces.C.long;

   procedure Post
     (This : uDocument_Type);

   procedure ToggleFormsDesign
     (This : uDocument_Type);

   procedure Compare2000
     (This : uDocument_Type;
      Name : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   procedure UpdateSummaryProperties
     (This : uDocument_Type);

   function GetCrossReferenceItems
     (This          : uDocument_Type;
      ReferenceType : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
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
      FileFormat : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Priority   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   procedure UndoClear
     (This : uDocument_Type);

   procedure PresentIt
     (This : uDocument_Type);

   procedure SendFax
     (This    : uDocument_Type;
      Address : GNATCOM.Types.BSTR;
      Subject : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Free    : Boolean := True);

   procedure Merge2000
     (This     : uDocument_Type;
      FileName : GNATCOM.Types.BSTR;
      Free     : Boolean := True);

   procedure ClosePrintPreview
     (This : uDocument_Type);

   procedure CheckConsistency
     (This : uDocument_Type);

   function CreateLetterContent
     (This                   : uDocument_Type;
      DateFormat             : GNATCOM.Types.BSTR;
      IncludeHeaderFooter    : GNATCOM.Types.VARIANT_BOOL;
      PageDesign             : GNATCOM.Types.BSTR;
      LetterStyle            : WdLetterStyle;
      Letterhead             : GNATCOM.Types.VARIANT_BOOL;
      LetterheadLocation     : WdLetterheadLocation;
      LetterheadSize         : Interfaces.C.C_float;
      RecipientName          : GNATCOM.Types.BSTR;
      RecipientAddress       : GNATCOM.Types.BSTR;
      Salutation             : GNATCOM.Types.BSTR;
      SalutationType         : WdSalutationType;
      RecipientReference     : GNATCOM.Types.BSTR;
      MailingInstructions    : GNATCOM.Types.BSTR;
      AttentionLine          : GNATCOM.Types.BSTR;
      Subject                : GNATCOM.Types.BSTR;
      CCList                 : GNATCOM.Types.BSTR;
      ReturnAddress          : GNATCOM.Types.BSTR;
      SenderName             : GNATCOM.Types.BSTR;
      Closing                : GNATCOM.Types.BSTR;
      SenderCompany          : GNATCOM.Types.BSTR;
      SenderJobTitle         : GNATCOM.Types.BSTR;
      SenderInitials         : GNATCOM.Types.BSTR;
      EnclosureNumber        : Interfaces.C.long;
      InfoBlock              : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      RecipientCode          : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      RecipientGender        : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ReturnAddressShortForm : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SenderCity             : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SenderCode             : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SenderGender           : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SenderReference        : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Free                   : Boolean := True)
     return Pointer_To_uLetterContent;

   procedure AcceptAllRevisions
     (This : uDocument_Type);

   procedure RejectAllRevisions
     (This : uDocument_Type);

   procedure DetectLanguage
     (This : uDocument_Type);

   procedure ApplyTheme
     (This : uDocument_Type;
      Name : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   procedure RemoveTheme
     (This : uDocument_Type);

   procedure WebPagePreview
     (This : uDocument_Type);

   procedure ReloadAs
     (This     : uDocument_Type;
      Encoding : MsoEncoding);

   function Get_ActiveTheme
     (This : uDocument_Type)
     return GNATCOM.Types.BSTR;

   function Get_ActiveThemeDisplayName
     (This : uDocument_Type)
     return GNATCOM.Types.BSTR;

   function Get_Email
     (This : uDocument_Type)
     return Pointer_To_Email;

   function Get_Scripts
     (This : uDocument_Type)
     return Pointer_To_Scripts;

   function Get_LanguageDetected
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_LanguageDetected
     (This : uDocument_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_FarEastLineBreakLanguage
     (This : uDocument_Type)
     return WdFarEastLineBreakLanguageID;

   procedure Put_FarEastLineBreakLanguage
     (This : uDocument_Type;
      prop : WdFarEastLineBreakLanguageID);

   function Get_Frameset
     (This : uDocument_Type)
     return Pointer_To_Frameset;

   function Get_ClickAndTypeParagraphStyle
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ClickAndTypeParagraphStyle
     (This : uDocument_Type;
      prop : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   function Get_HTMLProject
     (This : uDocument_Type)
     return Pointer_To_HTMLProject;

   function Get_WebOptions
     (This : uDocument_Type)
     return Pointer_To_WebOptions;

   function Get_OpenEncoding
     (This : uDocument_Type)
     return MsoEncoding;

   function Get_SaveEncoding
     (This : uDocument_Type)
     return MsoEncoding;

   procedure Put_SaveEncoding
     (This : uDocument_Type;
      prop : MsoEncoding);

   function Get_OptimizeForWord97
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_OptimizeForWord97
     (This : uDocument_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_VBASigned
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure PrintOut2000
     (This                 : uDocument_Type;
      Background           : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Append               : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      uRange               : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      OutputFileName       : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      From                 : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      To                   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Item                 : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Copies               : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Pages                : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PageType             : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PrintToFile          : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Collate              : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ActivePrinterMacGX   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ManualDuplexPrint    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PrintZoomColumn      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PrintZoomRow         : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PrintZoomPaperWidth  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PrintZoomPaperHeight : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   procedure sblt
     (This : uDocument_Type;
      s    : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   procedure ConvertVietDoc
     (This           : uDocument_Type;
      CodePageOrigin : Interfaces.C.long);

   procedure PrintOut
     (This                 : uDocument_Type;
      Background           : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Append               : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      uRange               : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      OutputFileName       : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      From                 : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      To                   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Item                 : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Copies               : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Pages                : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PageType             : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PrintToFile          : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Collate              : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ActivePrinterMacGX   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ManualDuplexPrint    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PrintZoomColumn      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PrintZoomRow         : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PrintZoomPaperWidth  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PrintZoomPaperHeight : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   function Get_MailEnvelope
     (This : uDocument_Type)
     return Pointer_To_IMsoEnvelopeVB;

   function Get_DisableFeatures
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_DisableFeatures
     (This : uDocument_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_DoNotEmbedSystemFonts
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_DoNotEmbedSystemFonts
     (This : uDocument_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_Signatures
     (This : uDocument_Type)
     return Pointer_To_SignatureSet;

   function Get_DefaultTargetFrame
     (This : uDocument_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_DefaultTargetFrame
     (This : uDocument_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_HTMLDivisions
     (This : uDocument_Type)
     return Pointer_To_HTMLDivisions;

   function Get_DisableFeaturesIntroducedAfter
     (This : uDocument_Type)
     return WdDisableFeaturesIntroducedAfter;

   procedure Put_DisableFeaturesIntroducedAfter
     (This : uDocument_Type;
      prop : WdDisableFeaturesIntroducedAfter);

   function Get_RemovePersonalInformation
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_RemovePersonalInformation
     (This : uDocument_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_SmartTags
     (This : uDocument_Type)
     return Pointer_To_SmartTags;

   procedure Compare
     (This                        : uDocument_Type;
      Name                        : GNATCOM.Types.BSTR;
      AuthorName                  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      CompareTarget               : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      DetectFormatChanges         : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      IgnoreAllComparisonWarnings : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      AddToRecentFiles            : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Free                        : Boolean := True);

   procedure CheckIn
     (This        : uDocument_Type;
      SaveChanges : GNATCOM.Types.VARIANT_BOOL;
      Comments    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      MakePublic  : GNATCOM.Types.VARIANT_BOOL);

   function CanCheckin
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Merge
     (This                : uDocument_Type;
      FileName            : GNATCOM.Types.BSTR;
      MergeTarget         : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      DetectFormatChanges : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      UseFormattingFrom   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      AddToRecentFiles    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Free                : Boolean := True);

   function Get_EmbedSmartTags
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_EmbedSmartTags
     (This : uDocument_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_SmartTagsAsXMLProps
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_SmartTagsAsXMLProps
     (This : uDocument_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_TextEncoding
     (This : uDocument_Type)
     return MsoEncoding;

   procedure Put_TextEncoding
     (This : uDocument_Type;
      prop : MsoEncoding);

   function Get_TextLineEnding
     (This : uDocument_Type)
     return WdLineEndingType;

   procedure Put_TextLineEnding
     (This : uDocument_Type;
      prop : WdLineEndingType);

   procedure SendForReview
     (This              : uDocument_Type;
      Recipients        : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Subject           : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ShowMessage       : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      IncludeAttachment : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   procedure ReplyWithChanges
     (This        : uDocument_Type;
      ShowMessage : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   procedure EndReview
     (This : uDocument_Type);

   function Get_StyleSheets
     (This : uDocument_Type)
     return Pointer_To_StyleSheets;

   function Get_DefaultTableStyle
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_PasswordEncryptionProvider
     (This : uDocument_Type)
     return GNATCOM.Types.BSTR;

   function Get_PasswordEncryptionAlgorithm
     (This : uDocument_Type)
     return GNATCOM.Types.BSTR;

   function Get_PasswordEncryptionKeyLength
     (This : uDocument_Type)
     return Interfaces.C.long;

   function Get_PasswordEncryptionFileProperties
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure SetPasswordEncryptionOptions
     (This                             : uDocument_Type;
      PasswordEncryptionProvider       : GNATCOM.Types.BSTR;
      PasswordEncryptionAlgorithm      : GNATCOM.Types.BSTR;
      PasswordEncryptionKeyLength      : Interfaces.C.long;
      PasswordEncryptionFileProperties : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Free                             : Boolean := True);

   procedure RecheckSmartTags
     (This : uDocument_Type);

   procedure RemoveSmartTags
     (This : uDocument_Type);

   procedure SetDefaultTableStyle
     (This          : uDocument_Type;
      Style         : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SetInTemplate : GNATCOM.Types.VARIANT_BOOL);

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
      FileName                : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      FileFormat              : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      LockComments            : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Password                : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      AddToRecentFiles        : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      WritePassword           : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ReadOnlyRecommended     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      EmbedTrueTypeFonts      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SaveNativePictureFormat : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SaveFormsData           : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SaveAsAOCELetter        : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Encoding                : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      InsertLineBreaks        : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      AllowSubstitutions      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      LineEnding              : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      AddBiDiMarks            : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   function Get_EmbedLinguisticData
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_EmbedLinguisticData
     (This : uDocument_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_FormattingShowFont
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_FormattingShowFont
     (This : uDocument_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_FormattingShowClear
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_FormattingShowClear
     (This : uDocument_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_FormattingShowParagraph
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_FormattingShowParagraph
     (This : uDocument_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_FormattingShowNumbering
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_FormattingShowNumbering
     (This : uDocument_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_FormattingShowFilter
     (This : uDocument_Type)
     return WdShowFilter;

   procedure Put_FormattingShowFilter
     (This : uDocument_Type;
      prop : WdShowFilter);

   procedure CheckNewSmartTags
     (This : uDocument_Type);

end winword.uDocument_Interface;

