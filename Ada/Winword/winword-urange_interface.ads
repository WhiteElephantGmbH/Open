with GNATCOM.Dispinterface;

package winword.uRange_Interface is

   type uRange_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out uRange_Type);

   function Pointer (This : uRange_Type)
     return Pointer_To_uRange;

   procedure Attach (This    : in out uRange_Type;
                     Pointer : in     Pointer_To_uRange);

   function Get_Text
     (This : uRange_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_Text
     (This : uRange_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_FormattedText
     (This : uRange_Type)
     return Pointer_To_uRange;

   procedure Put_FormattedText
     (This : uRange_Type;
      prop : Pointer_To_uRange);

   function Get_Start
     (This : uRange_Type)
     return Interfaces.C.long;

   procedure Put_Start
     (This : uRange_Type;
      prop : Interfaces.C.long);

   function Get_End
     (This : uRange_Type)
     return Interfaces.C.long;

   procedure Put_End
     (This : uRange_Type;
      prop : Interfaces.C.long);

   function Get_Font
     (This : uRange_Type)
     return Pointer_To_uFont;

   procedure Put_Font
     (This : uRange_Type;
      prop : Pointer_To_uFont);

   function Get_Duplicate
     (This : uRange_Type)
     return Pointer_To_uRange;

   function Get_StoryType
     (This : uRange_Type)
     return WdStoryType;

   function Get_Tables
     (This : uRange_Type)
     return Pointer_To_Tables;

   function Get_Words
     (This : uRange_Type)
     return Pointer_To_Words;

   function Get_Sentences
     (This : uRange_Type)
     return Pointer_To_Sentences;

   function Get_Characters
     (This : uRange_Type)
     return Pointer_To_Characters;

   function Get_Footnotes
     (This : uRange_Type)
     return Pointer_To_Footnotes;

   function Get_Endnotes
     (This : uRange_Type)
     return Pointer_To_Endnotes;

   function Get_Comments
     (This : uRange_Type)
     return Pointer_To_Comments;

   function Get_Cells
     (This : uRange_Type)
     return Pointer_To_Cells;

   function Get_Sections
     (This : uRange_Type)
     return Pointer_To_Sections;

   function Get_Paragraphs
     (This : uRange_Type)
     return Pointer_To_Paragraphs;

   function Get_Borders
     (This : uRange_Type)
     return Pointer_To_Borders;

   procedure Put_Borders
     (This : uRange_Type;
      prop : Pointer_To_Borders);

   function Get_Shading
     (This : uRange_Type)
     return Pointer_To_Shading;

   function Get_TextRetrievalMode
     (This : uRange_Type)
     return Pointer_To_TextRetrievalMode;

   procedure Put_TextRetrievalMode
     (This : uRange_Type;
      prop : Pointer_To_TextRetrievalMode);

   function Get_Fields
     (This : uRange_Type)
     return Pointer_To_Fields;

   function Get_FormFields
     (This : uRange_Type)
     return Pointer_To_FormFields;

   function Get_Frames
     (This : uRange_Type)
     return Pointer_To_Frames;

   function Get_ParagraphFormat
     (This : uRange_Type)
     return Pointer_To_uParagraphFormat;

   procedure Put_ParagraphFormat
     (This : uRange_Type;
      prop : Pointer_To_uParagraphFormat);

   function Get_ListFormat
     (This : uRange_Type)
     return Pointer_To_ListFormat;

   function Get_Bookmarks
     (This : uRange_Type)
     return Pointer_To_Bookmarks;

   function Get_Application
     (This : uRange_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : uRange_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : uRange_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Bold
     (This : uRange_Type)
     return Interfaces.C.long;

   procedure Put_Bold
     (This : uRange_Type;
      prop : Interfaces.C.long);

   function Get_Italic
     (This : uRange_Type)
     return Interfaces.C.long;

   procedure Put_Italic
     (This : uRange_Type;
      prop : Interfaces.C.long);

   function Get_Underline
     (This : uRange_Type)
     return WdUnderline;

   procedure Put_Underline
     (This : uRange_Type;
      prop : WdUnderline);

   function Get_EmphasisMark
     (This : uRange_Type)
     return WdEmphasisMark;

   procedure Put_EmphasisMark
     (This : uRange_Type;
      prop : WdEmphasisMark);

   function Get_DisableCharacterSpaceGrid
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_DisableCharacterSpaceGrid
     (This : uRange_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_Revisions
     (This : uRange_Type)
     return Pointer_To_Revisions;

   function Get_Style
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Style
     (This : uRange_Type;
      prop : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   function Get_StoryLength
     (This : uRange_Type)
     return Interfaces.C.long;

   function Get_LanguageID
     (This : uRange_Type)
     return WdLanguageID;

   procedure Put_LanguageID
     (This : uRange_Type;
      prop : WdLanguageID);

   function Get_SynonymInfo
     (This : uRange_Type)
     return Pointer_To_SynonymInfo;

   function Get_Hyperlinks
     (This : uRange_Type)
     return Pointer_To_Hyperlinks;

   function Get_ListParagraphs
     (This : uRange_Type)
     return Pointer_To_ListParagraphs;

   function Get_Subdocuments
     (This : uRange_Type)
     return Pointer_To_Subdocuments;

   function Get_GrammarChecked
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_GrammarChecked
     (This : uRange_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_SpellingChecked
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_SpellingChecked
     (This : uRange_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_HighlightColorIndex
     (This : uRange_Type)
     return WdColorIndex;

   procedure Put_HighlightColorIndex
     (This : uRange_Type;
      prop : WdColorIndex);

   function Get_Columns
     (This : uRange_Type)
     return Pointer_To_Columns;

   function Get_Rows
     (This : uRange_Type)
     return Pointer_To_Rows;

   function Get_CanEdit
     (This : uRange_Type)
     return Interfaces.C.long;

   function Get_CanPaste
     (This : uRange_Type)
     return Interfaces.C.long;

   function Get_IsEndOfRowMark
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   function Get_BookmarkID
     (This : uRange_Type)
     return Interfaces.C.long;

   function Get_PreviousBookmarkID
     (This : uRange_Type)
     return Interfaces.C.long;

   function Get_Find
     (This : uRange_Type)
     return Pointer_To_Find;

   function Get_PageSetup
     (This : uRange_Type)
     return Pointer_To_PageSetup;

   procedure Put_PageSetup
     (This : uRange_Type;
      prop : Pointer_To_PageSetup);

   function Get_ShapeRange
     (This : uRange_Type)
     return Pointer_To_ShapeRange;

   function Get_Case
     (This : uRange_Type)
     return WdCharacterCase;

   procedure Put_Case
     (This : uRange_Type;
      prop : WdCharacterCase);

   function Get_Information
     (This  : uRange_Type;
      uType : WdInformation)
     return GNATCOM.Types.VARIANT;

   function Get_ReadabilityStatistics
     (This : uRange_Type)
     return Pointer_To_ReadabilityStatistics;

   function Get_GrammaticalErrors
     (This : uRange_Type)
     return Pointer_To_ProofreadingErrors;

   function Get_SpellingErrors
     (This : uRange_Type)
     return Pointer_To_ProofreadingErrors;

   function Get_Orientation
     (This : uRange_Type)
     return WdTextOrientation;

   procedure Put_Orientation
     (This : uRange_Type;
      prop : WdTextOrientation);

   function Get_InlineShapes
     (This : uRange_Type)
     return Pointer_To_InlineShapes;

   function Get_NextStoryRange
     (This : uRange_Type)
     return Pointer_To_uRange;

   function Get_LanguageIDFarEast
     (This : uRange_Type)
     return WdLanguageID;

   procedure Put_LanguageIDFarEast
     (This : uRange_Type;
      prop : WdLanguageID);

   function Get_LanguageIDOther
     (This : uRange_Type)
     return WdLanguageID;

   procedure Put_LanguageIDOther
     (This : uRange_Type;
      prop : WdLanguageID);

   procedure uSelect
     (This : uRange_Type);

   procedure SetRange
     (This  : uRange_Type;
      Start : Interfaces.C.long;
      uEnd  : Interfaces.C.long);

   procedure Collapse
     (This      : uRange_Type;
      Direction : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   procedure InsertBefore
     (This : uRange_Type;
      Text : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   procedure InsertAfter
     (This : uRange_Type;
      Text : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Next
     (This  : uRange_Type;
      Unit  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Count : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_uRange;

   function Previous
     (This  : uRange_Type;
      Unit  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Count : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_uRange;

   function StartOf
     (This   : uRange_Type;
      Unit   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Extend : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Interfaces.C.long;

   function EndOf
     (This   : uRange_Type;
      Unit   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Extend : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Interfaces.C.long;

   function Move
     (This  : uRange_Type;
      Unit  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Count : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Interfaces.C.long;

   function MoveStart
     (This  : uRange_Type;
      Unit  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Count : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Interfaces.C.long;

   function MoveEnd
     (This  : uRange_Type;
      Unit  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Count : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Interfaces.C.long;

   function MoveWhile
     (This  : uRange_Type;
      Cset  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Count : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Interfaces.C.long;

   function MoveStartWhile
     (This  : uRange_Type;
      Cset  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Count : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Interfaces.C.long;

   function MoveEndWhile
     (This  : uRange_Type;
      Cset  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Count : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Interfaces.C.long;

   function MoveUntil
     (This  : uRange_Type;
      Cset  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Count : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Interfaces.C.long;

   function MoveStartUntil
     (This  : uRange_Type;
      Cset  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Count : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Interfaces.C.long;

   function MoveEndUntil
     (This  : uRange_Type;
      Cset  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Count : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Interfaces.C.long;

   procedure Cut
     (This : uRange_Type);

   procedure Copy
     (This : uRange_Type);

   procedure Paste
     (This : uRange_Type);

   procedure InsertBreak
     (This  : uRange_Type;
      uType : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   procedure InsertFile
     (This               : uRange_Type;
      FileName           : GNATCOM.Types.BSTR;
      uRange             : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ConfirmConversions : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Link               : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Attachment         : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Free               : Boolean := True);

   function InStory
     (This   : uRange_Type;
      uRange : Pointer_To_uRange)
     return GNATCOM.Types.VARIANT_BOOL;

   function InRange
     (This   : uRange_Type;
      uRange : Pointer_To_uRange)
     return GNATCOM.Types.VARIANT_BOOL;

   function Delete
     (This  : uRange_Type;
      Unit  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Count : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Interfaces.C.long;

   procedure WholeStory
     (This : uRange_Type);

   function Expand
     (This : uRange_Type;
      Unit : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Interfaces.C.long;

   procedure InsertParagraph
     (This : uRange_Type);

   procedure InsertParagraphAfter
     (This : uRange_Type);

   function ConvertToTableOld
     (This               : uRange_Type;
      Separator          : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      NumRows            : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      NumColumns         : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      InitialColumnWidth : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Format             : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ApplyBorders       : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ApplyShading       : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ApplyFont          : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ApplyColor         : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ApplyHeadingRows   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ApplyLastRow       : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ApplyFirstColumn   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ApplyLastColumn    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      AutoFit            : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Table;

   procedure InsertDateTimeOld
     (This              : uRange_Type;
      DateTimeFormat    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      InsertAsField     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      InsertAsFullWidth : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   procedure InsertSymbol
     (This            : uRange_Type;
      CharacterNumber : Interfaces.C.long;
      Font            : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Unicode         : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Bias            : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   procedure InsertCrossReference
     (This              : uRange_Type;
      ReferenceType     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ReferenceKind     : WdReferenceKind;
      ReferenceItem     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      InsertAsHyperlink : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      IncludePosition   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   procedure InsertCaption
     (This          : uRange_Type;
      Label         : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Title         : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      TitleAutoText : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Position      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   procedure CopyAsPicture
     (This : uRange_Type);

   procedure SortOld
     (This           : uRange_Type;
      ExcludeHeader  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      FieldNumber    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SortFieldType  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SortOrder      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      FieldNumber2   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SortFieldType2 : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SortOrder2     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      FieldNumber3   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SortFieldType3 : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SortOrder3     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SortColumn     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Separator      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      CaseSensitive  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      LanguageID     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   procedure SortAscending
     (This : uRange_Type);

   procedure SortDescending
     (This : uRange_Type);

   function IsEqual
     (This   : uRange_Type;
      uRange : Pointer_To_uRange)
     return GNATCOM.Types.VARIANT_BOOL;

   function Calculate
     (This : uRange_Type)
     return Interfaces.C.C_float;

   function uGoTo
     (This  : uRange_Type;
      What  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Which : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Count : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Name  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_uRange;

   function GoToNext
     (This : uRange_Type;
      What : WdGoToItem)
     return Pointer_To_uRange;

   function GoToPrevious
     (This : uRange_Type;
      What : WdGoToItem)
     return Pointer_To_uRange;

   procedure PasteSpecial
     (This          : uRange_Type;
      IconIndex     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Link          : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Placement     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      DisplayAsIcon : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      DataType      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      IconFileName  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      IconLabel     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   procedure LookupNameProperties
     (This : uRange_Type);

   function ComputeStatistics
     (This      : uRange_Type;
      Statistic : WdStatistic)
     return Interfaces.C.long;

   procedure Relocate
     (This      : uRange_Type;
      Direction : Interfaces.C.long);

   procedure CheckSynonyms
     (This : uRange_Type);

   procedure SubscribeTo
     (This    : uRange_Type;
      Edition : GNATCOM.Types.BSTR;
      Format  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Free    : Boolean := True);

   procedure CreatePublisher
     (This         : uRange_Type;
      Edition      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ContainsPICT : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ContainsRTF  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ContainsText : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   procedure InsertAutoText
     (This : uRange_Type);

   procedure InsertDatabase
     (This                  : uRange_Type;
      Format                : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Style                 : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      LinkToSource          : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Connection            : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SQLStatement          : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SQLStatement1         : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PasswordDocument      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PasswordTemplate      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      WritePasswordDocument : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      WritePasswordTemplate : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      DataSource            : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      From                  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      To                    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      IncludeFields         : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   procedure AutoFormat
     (This : uRange_Type);

   procedure CheckGrammar
     (This : uRange_Type);

   procedure CheckSpelling
     (This               : uRange_Type;
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

   function GetSpellingSuggestions
     (This               : uRange_Type;
      CustomDictionary   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      IgnoreUppercase    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      MainDictionary     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SuggestionMode     : access GNATCOM.Types.VARIANT :=
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
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_SpellingSuggestions;

   procedure InsertParagraphBefore
     (This : uRange_Type);

   procedure NextSubdocument
     (This : uRange_Type);

   procedure PreviousSubdocument
     (This : uRange_Type);

   procedure ConvertHangulAndHanja
     (This                 : uRange_Type;
      ConversionsMode      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      FastConversion       : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      CheckHangulEnding    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      EnableRecentOrdering : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      CustomDictionary     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   procedure PasteAsNestedTable
     (This : uRange_Type);

   procedure ModifyEnclosure
     (This         : uRange_Type;
      Style        : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Symbol       : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      EnclosedText : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   procedure PhoneticGuide
     (This      : uRange_Type;
      Text      : GNATCOM.Types.BSTR;
      Alignment : WdPhoneticGuideAlignmentType;
      uRaise    : Interfaces.C.long;
      FontSize  : Interfaces.C.long;
      FontName  : GNATCOM.Types.BSTR;
      Free      : Boolean := True);

   procedure InsertDateTime
     (This              : uRange_Type;
      DateTimeFormat    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      InsertAsField     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      InsertAsFullWidth : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      DateLanguage      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      CalendarType      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   procedure Sort
     (This             : uRange_Type;
      ExcludeHeader    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      FieldNumber      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SortFieldType    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SortOrder        : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      FieldNumber2     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SortFieldType2   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SortOrder2       : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      FieldNumber3     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SortFieldType3   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SortOrder3       : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SortColumn       : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Separator        : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      CaseSensitive    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      BidiSort         : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      IgnoreThe        : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      IgnoreKashida    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      IgnoreDiacritics : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      IgnoreHe         : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      LanguageID       : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   procedure DetectLanguage
     (This : uRange_Type);

   function ConvertToTable
     (This                 : uRange_Type;
      Separator            : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      NumRows              : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      NumColumns           : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      InitialColumnWidth   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Format               : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ApplyBorders         : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ApplyShading         : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ApplyFont            : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ApplyColor           : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ApplyHeadingRows     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ApplyLastRow         : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ApplyFirstColumn     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ApplyLastColumn      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      AutoFit              : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      AutoFitBehavior      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      DefaultTableBehavior : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Table;

   procedure TCSCConverter
     (This                     : uRange_Type;
      WdTCSCConverterDirection : winword.WdTCSCConverterDirection;
      CommonTerms              : GNATCOM.Types.VARIANT_BOOL;
      UseVariants              : GNATCOM.Types.VARIANT_BOOL);

   function Get_LanguageDetected
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_LanguageDetected
     (This : uRange_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_FitTextWidth
     (This : uRange_Type)
     return Interfaces.C.C_float;

   procedure Put_FitTextWidth
     (This : uRange_Type;
      prop : Interfaces.C.C_float);

   function Get_HorizontalInVertical
     (This : uRange_Type)
     return WdHorizontalInVerticalType;

   procedure Put_HorizontalInVertical
     (This : uRange_Type;
      prop : WdHorizontalInVerticalType);

   function Get_TwoLinesInOne
     (This : uRange_Type)
     return WdTwoLinesInOneType;

   procedure Put_TwoLinesInOne
     (This : uRange_Type;
      prop : WdTwoLinesInOneType);

   function Get_CombineCharacters
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_CombineCharacters
     (This : uRange_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_NoProofing
     (This : uRange_Type)
     return Interfaces.C.long;

   procedure Put_NoProofing
     (This : uRange_Type;
      prop : Interfaces.C.long);

   function Get_TopLevelTables
     (This : uRange_Type)
     return Pointer_To_Tables;

   function Get_Scripts
     (This : uRange_Type)
     return Pointer_To_Scripts;

   function Get_CharacterWidth
     (This : uRange_Type)
     return WdCharacterWidth;

   procedure Put_CharacterWidth
     (This : uRange_Type;
      prop : WdCharacterWidth);

   function Get_Kana
     (This : uRange_Type)
     return WdKana;

   procedure Put_Kana
     (This : uRange_Type;
      prop : WdKana);

   function Get_BoldBi
     (This : uRange_Type)
     return Interfaces.C.long;

   procedure Put_BoldBi
     (This : uRange_Type;
      prop : Interfaces.C.long);

   function Get_ItalicBi
     (This : uRange_Type)
     return Interfaces.C.long;

   procedure Put_ItalicBi
     (This : uRange_Type;
      prop : Interfaces.C.long);

   function Get_ID
     (This : uRange_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_ID
     (This : uRange_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_HTMLDivisions
     (This : uRange_Type)
     return Pointer_To_HTMLDivisions;

   function Get_SmartTags
     (This : uRange_Type)
     return Pointer_To_SmartTags;

   function Get_ShowAll
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_ShowAll
     (This : uRange_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_Document
     (This : uRange_Type)
     return Pointer_To_uDocument;

   function Get_FootnoteOptions
     (This : uRange_Type)
     return Pointer_To_FootnoteOptions;

   function Get_EndnoteOptions
     (This : uRange_Type)
     return Pointer_To_EndnoteOptions;

   procedure PasteAndFormat
     (This  : uRange_Type;
      uType : WdRecoveryType);

   procedure PasteExcelTable
     (This           : uRange_Type;
      LinkedToExcel  : GNATCOM.Types.VARIANT_BOOL;
      WordFormatting : GNATCOM.Types.VARIANT_BOOL;
      RTF            : GNATCOM.Types.VARIANT_BOOL);

   procedure PasteAppendTable
     (This : uRange_Type);

end winword.uRange_Interface;

