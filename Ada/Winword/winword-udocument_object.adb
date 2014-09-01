package body winword.uDocument_Object is

   function Get_Name
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_Name);
   end Get_Name;

   function Get_Application
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_Parent);
   end Get_Parent;

   function Get_BuiltInDocumentProperties
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_BuiltInDocumentProperties);
   end Get_BuiltInDocumentProperties;

   function Get_CustomDocumentProperties
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_CustomDocumentProperties);
   end Get_CustomDocumentProperties;

   function Get_Path
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_Path);
   end Get_Path;

   function Get_Bookmarks
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_Bookmarks);
   end Get_Bookmarks;

   function Get_Tables
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_Tables);
   end Get_Tables;

   function Get_Footnotes
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_Footnotes);
   end Get_Footnotes;

   function Get_Endnotes
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_Endnotes);
   end Get_Endnotes;

   function Get_Comments
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_Comments);
   end Get_Comments;

   function Get_Type
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_Type);
   end Get_Type;

   function Get_AutoHyphenation
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_AutoHyphenation);
   end Get_AutoHyphenation;

   procedure Put_AutoHyphenation
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uDocument_Put_AutoHyphenation,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AutoHyphenation;

   function Get_HyphenateCaps
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_HyphenateCaps);
   end Get_HyphenateCaps;

   procedure Put_HyphenateCaps
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uDocument_Put_HyphenateCaps,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_HyphenateCaps;

   function Get_HyphenationZone
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_HyphenationZone);
   end Get_HyphenationZone;

   procedure Put_HyphenationZone
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uDocument_Put_HyphenationZone,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_HyphenationZone;

   function Get_ConsecutiveHyphensLimit
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_ConsecutiveHyphensLimit);
   end Get_ConsecutiveHyphensLimit;

   procedure Put_ConsecutiveHyphensLimit
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uDocument_Put_ConsecutiveHyphensLimit,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ConsecutiveHyphensLimit;

   function Get_Sections
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_Sections);
   end Get_Sections;

   function Get_Paragraphs
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_Paragraphs);
   end Get_Paragraphs;

   function Get_Words
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_Words);
   end Get_Words;

   function Get_Sentences
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_Sentences);
   end Get_Sentences;

   function Get_Characters
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_Characters);
   end Get_Characters;

   function Get_Fields
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_Fields);
   end Get_Fields;

   function Get_FormFields
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_FormFields);
   end Get_FormFields;

   function Get_Styles
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_Styles);
   end Get_Styles;

   function Get_Frames
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_Frames);
   end Get_Frames;

   function Get_TablesOfFigures
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_TablesOfFigures);
   end Get_TablesOfFigures;

   function Get_Variables
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_Variables);
   end Get_Variables;

   function Get_MailMerge
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_MailMerge);
   end Get_MailMerge;

   function Get_Envelope
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_Envelope);
   end Get_Envelope;

   function Get_FullName
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_FullName);
   end Get_FullName;

   function Get_Revisions
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_Revisions);
   end Get_Revisions;

   function Get_TablesOfContents
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_TablesOfContents);
   end Get_TablesOfContents;

   function Get_TablesOfAuthorities
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_TablesOfAuthorities);
   end Get_TablesOfAuthorities;

   function Get_PageSetup
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_PageSetup);
   end Get_PageSetup;

   procedure Put_PageSetup
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uDocument_Put_PageSetup,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_PageSetup;

   function Get_Windows
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_Windows);
   end Get_Windows;

   function Get_HasRoutingSlip
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_HasRoutingSlip);
   end Get_HasRoutingSlip;

   procedure Put_HasRoutingSlip
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uDocument_Put_HasRoutingSlip,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_HasRoutingSlip;

   function Get_RoutingSlip
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_RoutingSlip);
   end Get_RoutingSlip;

   function Get_Routed
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_Routed);
   end Get_Routed;

   function Get_TablesOfAuthoritiesCategories
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_TablesOfAuthoritiesCategories);
   end Get_TablesOfAuthoritiesCategories;

   function Get_Indexes
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_Indexes);
   end Get_Indexes;

   function Get_Saved
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_Saved);
   end Get_Saved;

   procedure Put_Saved
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uDocument_Put_Saved,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Saved;

   function Get_Content
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_Content);
   end Get_Content;

   function Get_ActiveWindow
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_ActiveWindow);
   end Get_ActiveWindow;

   function Get_Kind
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_Kind);
   end Get_Kind;

   procedure Put_Kind
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uDocument_Put_Kind,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Kind;

   function Get_ReadOnly
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_ReadOnly);
   end Get_ReadOnly;

   function Get_Subdocuments
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_Subdocuments);
   end Get_Subdocuments;

   function Get_IsMasterDocument
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_IsMasterDocument);
   end Get_IsMasterDocument;

   function Get_DefaultTabStop
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_DefaultTabStop);
   end Get_DefaultTabStop;

   procedure Put_DefaultTabStop
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uDocument_Put_DefaultTabStop,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DefaultTabStop;

   function Get_EmbedTrueTypeFonts
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_EmbedTrueTypeFonts);
   end Get_EmbedTrueTypeFonts;

   procedure Put_EmbedTrueTypeFonts
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uDocument_Put_EmbedTrueTypeFonts,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_EmbedTrueTypeFonts;

   function Get_SaveFormsData
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_SaveFormsData);
   end Get_SaveFormsData;

   procedure Put_SaveFormsData
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uDocument_Put_SaveFormsData,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_SaveFormsData;

   function Get_ReadOnlyRecommended
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_ReadOnlyRecommended);
   end Get_ReadOnlyRecommended;

   procedure Put_ReadOnlyRecommended
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uDocument_Put_ReadOnlyRecommended,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ReadOnlyRecommended;

   function Get_SaveSubsetFonts
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_SaveSubsetFonts);
   end Get_SaveSubsetFonts;

   procedure Put_SaveSubsetFonts
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uDocument_Put_SaveSubsetFonts,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_SaveSubsetFonts;

   function Get_Compatibility
     (This  : uDocument_Type;
      uType : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get
        (This,
         uDocument_Get_Compatibility,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => uType),
         Free);
   end Get_Compatibility;

   procedure Put_Compatibility
     (This  : uDocument_Type;
      uType : GNATCOM.Types.VARIANT;
      P2    : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
   is
   begin
      Put
        (This,
         uDocument_Put_Compatibility,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P2,
          2 => uType),
         Free);
   end Put_Compatibility;

   function Get_StoryRanges
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_StoryRanges);
   end Get_StoryRanges;

   function Get_CommandBars
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_CommandBars);
   end Get_CommandBars;

   function Get_IsSubdocument
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_IsSubdocument);
   end Get_IsSubdocument;

   function Get_SaveFormat
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_SaveFormat);
   end Get_SaveFormat;

   function Get_ProtectionType
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_ProtectionType);
   end Get_ProtectionType;

   function Get_Hyperlinks
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_Hyperlinks);
   end Get_Hyperlinks;

   function Get_Shapes
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_Shapes);
   end Get_Shapes;

   function Get_ListTemplates
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_ListTemplates);
   end Get_ListTemplates;

   function Get_Lists
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_Lists);
   end Get_Lists;

   function Get_UpdateStylesOnOpen
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_UpdateStylesOnOpen);
   end Get_UpdateStylesOnOpen;

   procedure Put_UpdateStylesOnOpen
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uDocument_Put_UpdateStylesOnOpen,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_UpdateStylesOnOpen;

   function Get_AttachedTemplate
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_AttachedTemplate);
   end Get_AttachedTemplate;

   procedure Put_AttachedTemplate
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uDocument_Put_AttachedTemplate,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AttachedTemplate;

   function Get_InlineShapes
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_InlineShapes);
   end Get_InlineShapes;

   function Get_Background
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_Background);
   end Get_Background;

   procedure Put_Background
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uDocument_Put_Background,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Background;

   function Get_GrammarChecked
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_GrammarChecked);
   end Get_GrammarChecked;

   procedure Put_GrammarChecked
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uDocument_Put_GrammarChecked,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_GrammarChecked;

   function Get_SpellingChecked
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_SpellingChecked);
   end Get_SpellingChecked;

   procedure Put_SpellingChecked
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uDocument_Put_SpellingChecked,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_SpellingChecked;

   function Get_ShowGrammaticalErrors
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_ShowGrammaticalErrors);
   end Get_ShowGrammaticalErrors;

   procedure Put_ShowGrammaticalErrors
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uDocument_Put_ShowGrammaticalErrors,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ShowGrammaticalErrors;

   function Get_ShowSpellingErrors
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_ShowSpellingErrors);
   end Get_ShowSpellingErrors;

   procedure Put_ShowSpellingErrors
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uDocument_Put_ShowSpellingErrors,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ShowSpellingErrors;

   function Get_Versions
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_Versions);
   end Get_Versions;

   function Get_ShowSummary
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_ShowSummary);
   end Get_ShowSummary;

   procedure Put_ShowSummary
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uDocument_Put_ShowSummary,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ShowSummary;

   function Get_SummaryViewMode
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_SummaryViewMode);
   end Get_SummaryViewMode;

   procedure Put_SummaryViewMode
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uDocument_Put_SummaryViewMode,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_SummaryViewMode;

   function Get_SummaryLength
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_SummaryLength);
   end Get_SummaryLength;

   procedure Put_SummaryLength
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uDocument_Put_SummaryLength,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_SummaryLength;

   function Get_PrintFractionalWidths
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_PrintFractionalWidths);
   end Get_PrintFractionalWidths;

   procedure Put_PrintFractionalWidths
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uDocument_Put_PrintFractionalWidths,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_PrintFractionalWidths;

   function Get_PrintPostScriptOverText
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_PrintPostScriptOverText);
   end Get_PrintPostScriptOverText;

   procedure Put_PrintPostScriptOverText
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uDocument_Put_PrintPostScriptOverText,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_PrintPostScriptOverText;

   function Get_Container
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_Container);
   end Get_Container;

   function Get_PrintFormsData
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_PrintFormsData);
   end Get_PrintFormsData;

   procedure Put_PrintFormsData
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uDocument_Put_PrintFormsData,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_PrintFormsData;

   function Get_ListParagraphs
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_ListParagraphs);
   end Get_ListParagraphs;

   procedure Put_Password
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uDocument_Put_Password,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Password;

   procedure Put_WritePassword
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uDocument_Put_WritePassword,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_WritePassword;

   function Get_HasPassword
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_HasPassword);
   end Get_HasPassword;

   function Get_WriteReserved
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_WriteReserved);
   end Get_WriteReserved;

   function Get_ActiveWritingStyle
     (This       : uDocument_Type;
      LanguageID : GNATCOM.Types.VARIANT;
      Free       : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get
        (This,
         uDocument_Get_ActiveWritingStyle,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => LanguageID),
         Free);
   end Get_ActiveWritingStyle;

   procedure Put_ActiveWritingStyle
     (This       : uDocument_Type;
      LanguageID : GNATCOM.Types.VARIANT;
      P2         : GNATCOM.Types.VARIANT;
      Free       : Boolean := True)
   is
   begin
      Put
        (This,
         uDocument_Put_ActiveWritingStyle,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P2,
          2 => LanguageID),
         Free);
   end Put_ActiveWritingStyle;

   function Get_UserControl
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_UserControl);
   end Get_UserControl;

   procedure Put_UserControl
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uDocument_Put_UserControl,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_UserControl;

   function Get_HasMailer
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_HasMailer);
   end Get_HasMailer;

   procedure Put_HasMailer
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uDocument_Put_HasMailer,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_HasMailer;

   function Get_Mailer
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_Mailer);
   end Get_Mailer;

   function Get_ReadabilityStatistics
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_ReadabilityStatistics);
   end Get_ReadabilityStatistics;

   function Get_GrammaticalErrors
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_GrammaticalErrors);
   end Get_GrammaticalErrors;

   function Get_SpellingErrors
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_SpellingErrors);
   end Get_SpellingErrors;

   function Get_VBProject
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_VBProject);
   end Get_VBProject;

   function Get_FormsDesign
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_FormsDesign);
   end Get_FormsDesign;

   function Getu_CodeName
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Getu_CodeName);
   end Getu_CodeName;

   procedure Putu_CodeName
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uDocument_Putu_CodeName,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Putu_CodeName;

   function Get_CodeName
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_CodeName);
   end Get_CodeName;

   function Get_SnapToGrid
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_SnapToGrid);
   end Get_SnapToGrid;

   procedure Put_SnapToGrid
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uDocument_Put_SnapToGrid,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_SnapToGrid;

   function Get_SnapToShapes
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_SnapToShapes);
   end Get_SnapToShapes;

   procedure Put_SnapToShapes
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uDocument_Put_SnapToShapes,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_SnapToShapes;

   function Get_GridDistanceHorizontal
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_GridDistanceHorizontal);
   end Get_GridDistanceHorizontal;

   procedure Put_GridDistanceHorizontal
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uDocument_Put_GridDistanceHorizontal,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_GridDistanceHorizontal;

   function Get_GridDistanceVertical
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_GridDistanceVertical);
   end Get_GridDistanceVertical;

   procedure Put_GridDistanceVertical
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uDocument_Put_GridDistanceVertical,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_GridDistanceVertical;

   function Get_GridOriginHorizontal
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_GridOriginHorizontal);
   end Get_GridOriginHorizontal;

   procedure Put_GridOriginHorizontal
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uDocument_Put_GridOriginHorizontal,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_GridOriginHorizontal;

   function Get_GridOriginVertical
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_GridOriginVertical);
   end Get_GridOriginVertical;

   procedure Put_GridOriginVertical
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uDocument_Put_GridOriginVertical,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_GridOriginVertical;

   function Get_GridSpaceBetweenHorizontalLines
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_GridSpaceBetweenHorizontalLines);
   end Get_GridSpaceBetweenHorizontalLines;

   procedure Put_GridSpaceBetweenHorizontalLines
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uDocument_Put_GridSpaceBetweenHorizontalLines,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_GridSpaceBetweenHorizontalLines;

   function Get_GridSpaceBetweenVerticalLines
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_GridSpaceBetweenVerticalLines);
   end Get_GridSpaceBetweenVerticalLines;

   procedure Put_GridSpaceBetweenVerticalLines
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uDocument_Put_GridSpaceBetweenVerticalLines,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_GridSpaceBetweenVerticalLines;

   function Get_GridOriginFromMargin
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_GridOriginFromMargin);
   end Get_GridOriginFromMargin;

   procedure Put_GridOriginFromMargin
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uDocument_Put_GridOriginFromMargin,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_GridOriginFromMargin;

   function Get_KerningByAlgorithm
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_KerningByAlgorithm);
   end Get_KerningByAlgorithm;

   procedure Put_KerningByAlgorithm
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uDocument_Put_KerningByAlgorithm,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_KerningByAlgorithm;

   function Get_JustificationMode
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_JustificationMode);
   end Get_JustificationMode;

   procedure Put_JustificationMode
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uDocument_Put_JustificationMode,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_JustificationMode;

   function Get_FarEastLineBreakLevel
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_FarEastLineBreakLevel);
   end Get_FarEastLineBreakLevel;

   procedure Put_FarEastLineBreakLevel
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uDocument_Put_FarEastLineBreakLevel,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_FarEastLineBreakLevel;

   function Get_NoLineBreakBefore
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_NoLineBreakBefore);
   end Get_NoLineBreakBefore;

   procedure Put_NoLineBreakBefore
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uDocument_Put_NoLineBreakBefore,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_NoLineBreakBefore;

   function Get_NoLineBreakAfter
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_NoLineBreakAfter);
   end Get_NoLineBreakAfter;

   procedure Put_NoLineBreakAfter
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uDocument_Put_NoLineBreakAfter,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_NoLineBreakAfter;

   function Get_TrackRevisions
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_TrackRevisions);
   end Get_TrackRevisions;

   procedure Put_TrackRevisions
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uDocument_Put_TrackRevisions,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_TrackRevisions;

   function Get_PrintRevisions
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_PrintRevisions);
   end Get_PrintRevisions;

   procedure Put_PrintRevisions
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uDocument_Put_PrintRevisions,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_PrintRevisions;

   function Get_ShowRevisions
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_ShowRevisions);
   end Get_ShowRevisions;

   procedure Put_ShowRevisions
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uDocument_Put_ShowRevisions,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ShowRevisions;

   procedure Close
     (This           : uDocument_Type;
      SaveChanges    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      OriginalFormat : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      RouteDocument  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free           : Boolean := True)
   is
   begin
      Invoke
        (This,
         uDocument_Close,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => RouteDocument,
          2 => OriginalFormat,
          3 => SaveChanges),
         Free);
   end Close;

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
      Free                    : Boolean := True)
   is
   begin
      Invoke
        (This,
         uDocument_SaveAs2000,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => SaveAsAOCELetter,
          2 => SaveFormsData,
          3 => SaveNativePictureFormat,
          4 => EmbedTrueTypeFonts,
          5 => ReadOnlyRecommended,
          6 => WritePassword,
          7 => AddToRecentFiles,
          8 => Password,
          9 => LockComments,
          10 => FileFormat,
          11 => FileName),
         Free);
   end SaveAs2000;

   procedure Repaginate
     (This : uDocument_Type)
   is
   begin
      Invoke (This, uDocument_Repaginate);
   end Repaginate;

   procedure FitToPages
     (This : uDocument_Type)
   is
   begin
      Invoke (This, uDocument_FitToPages);
   end FitToPages;

   procedure ManualHyphenation
     (This : uDocument_Type)
   is
   begin
      Invoke (This, uDocument_ManualHyphenation);
   end ManualHyphenation;

   procedure uSelect
     (This : uDocument_Type)
   is
   begin
      Invoke (This, uDocument_uSelect);
   end uSelect;

   procedure DataForm
     (This : uDocument_Type)
   is
   begin
      Invoke (This, uDocument_DataForm);
   end DataForm;

   procedure Route
     (This : uDocument_Type)
   is
   begin
      Invoke (This, uDocument_Route);
   end Route;

   procedure Save
     (This : uDocument_Type)
   is
   begin
      Invoke (This, uDocument_Save);
   end Save;

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
      Free               : Boolean := True)
   is
   begin
      Invoke
        (This,
         uDocument_PrintOutOld,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => ManualDuplexPrint,
          2 => ActivePrinterMacGX,
          3 => Collate,
          4 => PrintToFile,
          5 => PageType,
          6 => Pages,
          7 => Copies,
          8 => Item,
          9 => To,
          10 => From,
          11 => OutputFileName,
          12 => uRange,
          13 => Append,
          14 => Background),
         Free);
   end PrintOutOld;

   procedure SendMail
     (This : uDocument_Type)
   is
   begin
      Invoke (This, uDocument_SendMail);
   end SendMail;

   function uRange
     (This  : uDocument_Type;
      Start : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      uEnd  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uDocument_uRange,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => uEnd,
          2 => Start),
         Free);
   end uRange;

   procedure RunAutoMacro
     (This  : uDocument_Type;
      Which : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
   is
   begin
      Invoke
        (This,
         uDocument_RunAutoMacro,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Which),
         Free);
   end RunAutoMacro;

   procedure Activate
     (This : uDocument_Type)
   is
   begin
      Invoke (This, uDocument_Activate);
   end Activate;

   procedure PrintPreview
     (This : uDocument_Type)
   is
   begin
      Invoke (This, uDocument_PrintPreview);
   end PrintPreview;

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
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uDocument_uGoTo,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Name,
          2 => Count,
          3 => Which,
          4 => What),
         Free);
   end uGoTo;

   function Undo
     (This  : uDocument_Type;
      Times : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uDocument_Undo,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Times),
         Free);
   end Undo;

   function Redo
     (This  : uDocument_Type;
      Times : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uDocument_Redo,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Times),
         Free);
   end Redo;

   function ComputeStatistics
     (This                        : uDocument_Type;
      Statistic                   : GNATCOM.Types.VARIANT;
      IncludeFootnotesAndEndnotes : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free                        : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uDocument_ComputeStatistics,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => IncludeFootnotesAndEndnotes,
          2 => Statistic),
         Free);
   end ComputeStatistics;

   procedure MakeCompatibilityDefault
     (This : uDocument_Type)
   is
   begin
      Invoke (This, uDocument_MakeCompatibilityDefault);
   end MakeCompatibilityDefault;

   procedure Protect
     (This     : uDocument_Type;
      uType    : GNATCOM.Types.VARIANT;
      NoReset  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Password : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
   is
   begin
      Invoke
        (This,
         uDocument_Protect,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Password,
          2 => NoReset,
          3 => uType),
         Free);
   end Protect;

   procedure Unprotect
     (This     : uDocument_Type;
      Password : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
   is
   begin
      Invoke
        (This,
         uDocument_Unprotect,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Password),
         Free);
   end Unprotect;

   procedure EditionOptions
     (This   : uDocument_Type;
      uType  : GNATCOM.Types.VARIANT;
      Option : GNATCOM.Types.VARIANT;
      Name   : GNATCOM.Types.VARIANT;
      Format : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free   : Boolean := True)
   is
   begin
      Invoke
        (This,
         uDocument_EditionOptions,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Format,
          2 => Name,
          3 => Option,
          4 => uType),
         Free);
   end EditionOptions;

   procedure RunLetterWizard
     (This          : uDocument_Type;
      LetterContent : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      WizardMode    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free          : Boolean := True)
   is
   begin
      Invoke
        (This,
         uDocument_RunLetterWizard,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => WizardMode,
          2 => LetterContent),
         Free);
   end RunLetterWizard;

   function GetLetterContent
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke (This, uDocument_GetLetterContent);
   end GetLetterContent;

   procedure SetLetterContent
     (This          : uDocument_Type;
      LetterContent : GNATCOM.Types.VARIANT;
      Free          : Boolean := True)
   is
   begin
      Invoke
        (This,
         uDocument_SetLetterContent,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => LetterContent),
         Free);
   end SetLetterContent;

   procedure CopyStylesFromTemplate
     (This     : uDocument_Type;
      Template : GNATCOM.Types.VARIANT;
      Free     : Boolean := True)
   is
   begin
      Invoke
        (This,
         uDocument_CopyStylesFromTemplate,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Template),
         Free);
   end CopyStylesFromTemplate;

   procedure UpdateStyles
     (This : uDocument_Type)
   is
   begin
      Invoke (This, uDocument_UpdateStyles);
   end UpdateStyles;

   procedure CheckGrammar
     (This : uDocument_Type)
   is
   begin
      Invoke (This, uDocument_CheckGrammar);
   end CheckGrammar;

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
      Free               : Boolean := True)
   is
   begin
      Invoke
        (This,
         uDocument_CheckSpelling,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => CustomDictionary10,
          2 => CustomDictionary9,
          3 => CustomDictionary8,
          4 => CustomDictionary7,
          5 => CustomDictionary6,
          6 => CustomDictionary5,
          7 => CustomDictionary4,
          8 => CustomDictionary3,
          9 => CustomDictionary2,
          10 => AlwaysSuggest,
          11 => IgnoreUppercase,
          12 => CustomDictionary),
         Free);
   end CheckSpelling;

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
      Free       : Boolean := True)
   is
   begin
      Invoke
        (This,
         uDocument_FollowHyperlink,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => HeaderInfo,
          2 => Method,
          3 => ExtraInfo,
          4 => AddHistory,
          5 => NewWindow,
          6 => SubAddress,
          7 => Address),
         Free);
   end FollowHyperlink;

   procedure AddToFavorites
     (This : uDocument_Type)
   is
   begin
      Invoke (This, uDocument_AddToFavorites);
   end AddToFavorites;

   procedure Reload
     (This : uDocument_Type)
   is
   begin
      Invoke (This, uDocument_Reload);
   end Reload;

   function AutoSummarize
     (This             : uDocument_Type;
      Length           : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Mode             : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      UpdateProperties : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free             : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uDocument_AutoSummarize,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => UpdateProperties,
          2 => Mode,
          3 => Length),
         Free);
   end AutoSummarize;

   procedure RemoveNumbers
     (This       : uDocument_Type;
      NumberType : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free       : Boolean := True)
   is
   begin
      Invoke
        (This,
         uDocument_RemoveNumbers,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => NumberType),
         Free);
   end RemoveNumbers;

   procedure ConvertNumbersToText
     (This       : uDocument_Type;
      NumberType : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free       : Boolean := True)
   is
   begin
      Invoke
        (This,
         uDocument_ConvertNumbersToText,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => NumberType),
         Free);
   end ConvertNumbersToText;

   function CountNumberedItems
     (This       : uDocument_Type;
      NumberType : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Level      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free       : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uDocument_CountNumberedItems,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Level,
          2 => NumberType),
         Free);
   end CountNumberedItems;

   procedure Post
     (This : uDocument_Type)
   is
   begin
      Invoke (This, uDocument_Post);
   end Post;

   procedure ToggleFormsDesign
     (This : uDocument_Type)
   is
   begin
      Invoke (This, uDocument_ToggleFormsDesign);
   end ToggleFormsDesign;

   procedure Compare2000
     (This : uDocument_Type;
      Name : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Invoke
        (This,
         uDocument_Compare2000,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Name),
         Free);
   end Compare2000;

   procedure UpdateSummaryProperties
     (This : uDocument_Type)
   is
   begin
      Invoke (This, uDocument_UpdateSummaryProperties);
   end UpdateSummaryProperties;

   function GetCrossReferenceItems
     (This          : uDocument_Type;
      ReferenceType : GNATCOM.Types.VARIANT;
      Free          : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uDocument_GetCrossReferenceItems,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => ReferenceType),
         Free);
   end GetCrossReferenceItems;

   procedure AutoFormat
     (This : uDocument_Type)
   is
   begin
      Invoke (This, uDocument_AutoFormat);
   end AutoFormat;

   procedure ViewCode
     (This : uDocument_Type)
   is
   begin
      Invoke (This, uDocument_ViewCode);
   end ViewCode;

   procedure ViewPropertyBrowser
     (This : uDocument_Type)
   is
   begin
      Invoke (This, uDocument_ViewPropertyBrowser);
   end ViewPropertyBrowser;

   procedure ForwardMailer
     (This : uDocument_Type)
   is
   begin
      Invoke (This, uDocument_ForwardMailer);
   end ForwardMailer;

   procedure Reply
     (This : uDocument_Type)
   is
   begin
      Invoke (This, uDocument_Reply);
   end Reply;

   procedure ReplyAll
     (This : uDocument_Type)
   is
   begin
      Invoke (This, uDocument_ReplyAll);
   end ReplyAll;

   procedure SendMailer
     (This       : uDocument_Type;
      FileFormat : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Priority   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free       : Boolean := True)
   is
   begin
      Invoke
        (This,
         uDocument_SendMailer,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Priority,
          2 => FileFormat),
         Free);
   end SendMailer;

   procedure UndoClear
     (This : uDocument_Type)
   is
   begin
      Invoke (This, uDocument_UndoClear);
   end UndoClear;

   procedure PresentIt
     (This : uDocument_Type)
   is
   begin
      Invoke (This, uDocument_PresentIt);
   end PresentIt;

   procedure SendFax
     (This    : uDocument_Type;
      Address : GNATCOM.Types.VARIANT;
      Subject : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free    : Boolean := True)
   is
   begin
      Invoke
        (This,
         uDocument_SendFax,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Subject,
          2 => Address),
         Free);
   end SendFax;

   procedure Merge2000
     (This     : uDocument_Type;
      FileName : GNATCOM.Types.VARIANT;
      Free     : Boolean := True)
   is
   begin
      Invoke
        (This,
         uDocument_Merge2000,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => FileName),
         Free);
   end Merge2000;

   procedure ClosePrintPreview
     (This : uDocument_Type)
   is
   begin
      Invoke (This, uDocument_ClosePrintPreview);
   end ClosePrintPreview;

   procedure CheckConsistency
     (This : uDocument_Type)
   is
   begin
      Invoke (This, uDocument_CheckConsistency);
   end CheckConsistency;

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
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uDocument_CreateLetterContent,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => SenderReference,
          2 => SenderGender,
          3 => SenderCode,
          4 => SenderCity,
          5 => ReturnAddressShortForm,
          6 => RecipientGender,
          7 => RecipientCode,
          8 => InfoBlock,
          9 => EnclosureNumber,
          10 => SenderInitials,
          11 => SenderJobTitle,
          12 => SenderCompany,
          13 => Closing,
          14 => SenderName,
          15 => ReturnAddress,
          16 => CCList,
          17 => Subject,
          18 => AttentionLine,
          19 => MailingInstructions,
          20 => RecipientReference,
          21 => SalutationType,
          22 => Salutation,
          23 => RecipientAddress,
          24 => RecipientName,
          25 => LetterheadSize,
          26 => LetterheadLocation,
          27 => Letterhead,
          28 => LetterStyle,
          29 => PageDesign,
          30 => IncludeHeaderFooter,
          31 => DateFormat),
         Free);
   end CreateLetterContent;

   procedure AcceptAllRevisions
     (This : uDocument_Type)
   is
   begin
      Invoke (This, uDocument_AcceptAllRevisions);
   end AcceptAllRevisions;

   procedure RejectAllRevisions
     (This : uDocument_Type)
   is
   begin
      Invoke (This, uDocument_RejectAllRevisions);
   end RejectAllRevisions;

   procedure DetectLanguage
     (This : uDocument_Type)
   is
   begin
      Invoke (This, uDocument_DetectLanguage);
   end DetectLanguage;

   procedure ApplyTheme
     (This : uDocument_Type;
      Name : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Invoke
        (This,
         uDocument_ApplyTheme,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Name),
         Free);
   end ApplyTheme;

   procedure RemoveTheme
     (This : uDocument_Type)
   is
   begin
      Invoke (This, uDocument_RemoveTheme);
   end RemoveTheme;

   procedure WebPagePreview
     (This : uDocument_Type)
   is
   begin
      Invoke (This, uDocument_WebPagePreview);
   end WebPagePreview;

   procedure ReloadAs
     (This     : uDocument_Type;
      Encoding : GNATCOM.Types.VARIANT;
      Free     : Boolean := True)
   is
   begin
      Invoke
        (This,
         uDocument_ReloadAs,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Encoding),
         Free);
   end ReloadAs;

   function Get_ActiveTheme
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_ActiveTheme);
   end Get_ActiveTheme;

   function Get_ActiveThemeDisplayName
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_ActiveThemeDisplayName);
   end Get_ActiveThemeDisplayName;

   function Get_Email
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_Email);
   end Get_Email;

   function Get_Scripts
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_Scripts);
   end Get_Scripts;

   function Get_LanguageDetected
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_LanguageDetected);
   end Get_LanguageDetected;

   procedure Put_LanguageDetected
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uDocument_Put_LanguageDetected,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_LanguageDetected;

   function Get_FarEastLineBreakLanguage
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_FarEastLineBreakLanguage);
   end Get_FarEastLineBreakLanguage;

   procedure Put_FarEastLineBreakLanguage
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uDocument_Put_FarEastLineBreakLanguage,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_FarEastLineBreakLanguage;

   function Get_Frameset
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_Frameset);
   end Get_Frameset;

   function Get_ClickAndTypeParagraphStyle
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_ClickAndTypeParagraphStyle);
   end Get_ClickAndTypeParagraphStyle;

   procedure Put_ClickAndTypeParagraphStyle
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uDocument_Put_ClickAndTypeParagraphStyle,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ClickAndTypeParagraphStyle;

   function Get_HTMLProject
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_HTMLProject);
   end Get_HTMLProject;

   function Get_WebOptions
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_WebOptions);
   end Get_WebOptions;

   function Get_OpenEncoding
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_OpenEncoding);
   end Get_OpenEncoding;

   function Get_SaveEncoding
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_SaveEncoding);
   end Get_SaveEncoding;

   procedure Put_SaveEncoding
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uDocument_Put_SaveEncoding,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_SaveEncoding;

   function Get_OptimizeForWord97
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_OptimizeForWord97);
   end Get_OptimizeForWord97;

   procedure Put_OptimizeForWord97
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uDocument_Put_OptimizeForWord97,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_OptimizeForWord97;

   function Get_VBASigned
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_VBASigned);
   end Get_VBASigned;

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
      Free                 : Boolean := True)
   is
   begin
      Invoke
        (This,
         uDocument_PrintOut2000,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => PrintZoomPaperHeight,
          2 => PrintZoomPaperWidth,
          3 => PrintZoomRow,
          4 => PrintZoomColumn,
          5 => ManualDuplexPrint,
          6 => ActivePrinterMacGX,
          7 => Collate,
          8 => PrintToFile,
          9 => PageType,
          10 => Pages,
          11 => Copies,
          12 => Item,
          13 => To,
          14 => From,
          15 => OutputFileName,
          16 => uRange,
          17 => Append,
          18 => Background),
         Free);
   end PrintOut2000;

   procedure sblt
     (This : uDocument_Type;
      s    : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Invoke
        (This,
         uDocument_sblt,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => s),
         Free);
   end sblt;

   procedure ConvertVietDoc
     (This           : uDocument_Type;
      CodePageOrigin : GNATCOM.Types.VARIANT;
      Free           : Boolean := True)
   is
   begin
      Invoke
        (This,
         uDocument_ConvertVietDoc,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => CodePageOrigin),
         Free);
   end ConvertVietDoc;

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
      Free                 : Boolean := True)
   is
   begin
      Invoke
        (This,
         uDocument_PrintOut,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => PrintZoomPaperHeight,
          2 => PrintZoomPaperWidth,
          3 => PrintZoomRow,
          4 => PrintZoomColumn,
          5 => ManualDuplexPrint,
          6 => ActivePrinterMacGX,
          7 => Collate,
          8 => PrintToFile,
          9 => PageType,
          10 => Pages,
          11 => Copies,
          12 => Item,
          13 => To,
          14 => From,
          15 => OutputFileName,
          16 => uRange,
          17 => Append,
          18 => Background),
         Free);
   end PrintOut;

   function Get_MailEnvelope
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_MailEnvelope);
   end Get_MailEnvelope;

   function Get_DisableFeatures
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_DisableFeatures);
   end Get_DisableFeatures;

   procedure Put_DisableFeatures
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uDocument_Put_DisableFeatures,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DisableFeatures;

   function Get_DoNotEmbedSystemFonts
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_DoNotEmbedSystemFonts);
   end Get_DoNotEmbedSystemFonts;

   procedure Put_DoNotEmbedSystemFonts
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uDocument_Put_DoNotEmbedSystemFonts,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DoNotEmbedSystemFonts;

   function Get_Signatures
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_Signatures);
   end Get_Signatures;

   function Get_DefaultTargetFrame
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_DefaultTargetFrame);
   end Get_DefaultTargetFrame;

   procedure Put_DefaultTargetFrame
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uDocument_Put_DefaultTargetFrame,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DefaultTargetFrame;

   function Get_HTMLDivisions
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_HTMLDivisions);
   end Get_HTMLDivisions;

   function Get_DisableFeaturesIntroducedAfter
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_DisableFeaturesIntroducedAfter);
   end Get_DisableFeaturesIntroducedAfter;

   procedure Put_DisableFeaturesIntroducedAfter
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uDocument_Put_DisableFeaturesIntroducedAfter,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DisableFeaturesIntroducedAfter;

   function Get_RemovePersonalInformation
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_RemovePersonalInformation);
   end Get_RemovePersonalInformation;

   procedure Put_RemovePersonalInformation
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uDocument_Put_RemovePersonalInformation,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_RemovePersonalInformation;

   function Get_SmartTags
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_SmartTags);
   end Get_SmartTags;

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
      Free                        : Boolean := True)
   is
   begin
      Invoke
        (This,
         uDocument_Compare,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => AddToRecentFiles,
          2 => IgnoreAllComparisonWarnings,
          3 => DetectFormatChanges,
          4 => CompareTarget,
          5 => AuthorName,
          6 => Name),
         Free);
   end Compare;

   procedure CheckIn
     (This        : uDocument_Type;
      SaveChanges : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Comments    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      MakePublic  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free        : Boolean := True)
   is
   begin
      Invoke
        (This,
         uDocument_CheckIn,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => MakePublic,
          2 => Comments,
          3 => SaveChanges),
         Free);
   end CheckIn;

   function CanCheckin
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke (This, uDocument_CanCheckin);
   end CanCheckin;

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
      Free                : Boolean := True)
   is
   begin
      Invoke
        (This,
         uDocument_Merge,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => AddToRecentFiles,
          2 => UseFormattingFrom,
          3 => DetectFormatChanges,
          4 => MergeTarget,
          5 => FileName),
         Free);
   end Merge;

   function Get_EmbedSmartTags
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_EmbedSmartTags);
   end Get_EmbedSmartTags;

   procedure Put_EmbedSmartTags
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uDocument_Put_EmbedSmartTags,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_EmbedSmartTags;

   function Get_SmartTagsAsXMLProps
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_SmartTagsAsXMLProps);
   end Get_SmartTagsAsXMLProps;

   procedure Put_SmartTagsAsXMLProps
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uDocument_Put_SmartTagsAsXMLProps,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_SmartTagsAsXMLProps;

   function Get_TextEncoding
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_TextEncoding);
   end Get_TextEncoding;

   procedure Put_TextEncoding
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uDocument_Put_TextEncoding,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_TextEncoding;

   function Get_TextLineEnding
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_TextLineEnding);
   end Get_TextLineEnding;

   procedure Put_TextLineEnding
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uDocument_Put_TextLineEnding,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_TextLineEnding;

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
      Free              : Boolean := True)
   is
   begin
      Invoke
        (This,
         uDocument_SendForReview,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => IncludeAttachment,
          2 => ShowMessage,
          3 => Subject,
          4 => Recipients),
         Free);
   end SendForReview;

   procedure ReplyWithChanges
     (This        : uDocument_Type;
      ShowMessage : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free        : Boolean := True)
   is
   begin
      Invoke
        (This,
         uDocument_ReplyWithChanges,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => ShowMessage),
         Free);
   end ReplyWithChanges;

   procedure EndReview
     (This : uDocument_Type)
   is
   begin
      Invoke (This, uDocument_EndReview);
   end EndReview;

   function Get_StyleSheets
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_StyleSheets);
   end Get_StyleSheets;

   function Get_DefaultTableStyle
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_DefaultTableStyle);
   end Get_DefaultTableStyle;

   function Get_PasswordEncryptionProvider
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_PasswordEncryptionProvider);
   end Get_PasswordEncryptionProvider;

   function Get_PasswordEncryptionAlgorithm
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_PasswordEncryptionAlgorithm);
   end Get_PasswordEncryptionAlgorithm;

   function Get_PasswordEncryptionKeyLength
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_PasswordEncryptionKeyLength);
   end Get_PasswordEncryptionKeyLength;

   function Get_PasswordEncryptionFileProperties
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_PasswordEncryptionFileProperties);
   end Get_PasswordEncryptionFileProperties;

   procedure SetPasswordEncryptionOptions
     (This                             : uDocument_Type;
      PasswordEncryptionProvider       : GNATCOM.Types.VARIANT;
      PasswordEncryptionAlgorithm      : GNATCOM.Types.VARIANT;
      PasswordEncryptionKeyLength      : GNATCOM.Types.VARIANT;
      PasswordEncryptionFileProperties : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free                             : Boolean := True)
   is
   begin
      Invoke
        (This,
         uDocument_SetPasswordEncryptionOptions,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => PasswordEncryptionFileProperties,
          2 => PasswordEncryptionKeyLength,
          3 => PasswordEncryptionAlgorithm,
          4 => PasswordEncryptionProvider),
         Free);
   end SetPasswordEncryptionOptions;

   procedure RecheckSmartTags
     (This : uDocument_Type)
   is
   begin
      Invoke (This, uDocument_RecheckSmartTags);
   end RecheckSmartTags;

   procedure RemoveSmartTags
     (This : uDocument_Type)
   is
   begin
      Invoke (This, uDocument_RemoveSmartTags);
   end RemoveSmartTags;

   procedure SetDefaultTableStyle
     (This          : uDocument_Type;
      Style         : GNATCOM.Types.VARIANT;
      SetInTemplate : GNATCOM.Types.VARIANT;
      Free          : Boolean := True)
   is
   begin
      Invoke
        (This,
         uDocument_SetDefaultTableStyle,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => SetInTemplate,
          2 => Style),
         Free);
   end SetDefaultTableStyle;

   procedure DeleteAllComments
     (This : uDocument_Type)
   is
   begin
      Invoke (This, uDocument_DeleteAllComments);
   end DeleteAllComments;

   procedure AcceptAllRevisionsShown
     (This : uDocument_Type)
   is
   begin
      Invoke (This, uDocument_AcceptAllRevisionsShown);
   end AcceptAllRevisionsShown;

   procedure RejectAllRevisionsShown
     (This : uDocument_Type)
   is
   begin
      Invoke (This, uDocument_RejectAllRevisionsShown);
   end RejectAllRevisionsShown;

   procedure DeleteAllCommentsShown
     (This : uDocument_Type)
   is
   begin
      Invoke (This, uDocument_DeleteAllCommentsShown);
   end DeleteAllCommentsShown;

   procedure ResetFormFields
     (This : uDocument_Type)
   is
   begin
      Invoke (This, uDocument_ResetFormFields);
   end ResetFormFields;

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
      Free                    : Boolean := True)
   is
   begin
      Invoke
        (This,
         uDocument_SaveAs,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => AddBiDiMarks,
          2 => LineEnding,
          3 => AllowSubstitutions,
          4 => InsertLineBreaks,
          5 => Encoding,
          6 => SaveAsAOCELetter,
          7 => SaveFormsData,
          8 => SaveNativePictureFormat,
          9 => EmbedTrueTypeFonts,
          10 => ReadOnlyRecommended,
          11 => WritePassword,
          12 => AddToRecentFiles,
          13 => Password,
          14 => LockComments,
          15 => FileFormat,
          16 => FileName),
         Free);
   end SaveAs;

   function Get_EmbedLinguisticData
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_EmbedLinguisticData);
   end Get_EmbedLinguisticData;

   procedure Put_EmbedLinguisticData
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uDocument_Put_EmbedLinguisticData,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_EmbedLinguisticData;

   function Get_FormattingShowFont
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_FormattingShowFont);
   end Get_FormattingShowFont;

   procedure Put_FormattingShowFont
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uDocument_Put_FormattingShowFont,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_FormattingShowFont;

   function Get_FormattingShowClear
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_FormattingShowClear);
   end Get_FormattingShowClear;

   procedure Put_FormattingShowClear
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uDocument_Put_FormattingShowClear,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_FormattingShowClear;

   function Get_FormattingShowParagraph
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_FormattingShowParagraph);
   end Get_FormattingShowParagraph;

   procedure Put_FormattingShowParagraph
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uDocument_Put_FormattingShowParagraph,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_FormattingShowParagraph;

   function Get_FormattingShowNumbering
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_FormattingShowNumbering);
   end Get_FormattingShowNumbering;

   procedure Put_FormattingShowNumbering
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uDocument_Put_FormattingShowNumbering,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_FormattingShowNumbering;

   function Get_FormattingShowFilter
     (This : uDocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uDocument_Get_FormattingShowFilter);
   end Get_FormattingShowFilter;

   procedure Put_FormattingShowFilter
     (This : uDocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uDocument_Put_FormattingShowFilter,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_FormattingShowFilter;

   procedure CheckNewSmartTags
     (This : uDocument_Type)
   is
   begin
      Invoke (This, uDocument_CheckNewSmartTags);
   end CheckNewSmartTags;

end winword.uDocument_Object;

