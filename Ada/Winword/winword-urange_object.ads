with GNATCOM.Dispinterface;

package winword.uRange_Object is

   type uRange_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Text
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Text
     (This : uRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_FormattedText
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_FormattedText
     (This : uRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Start
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Start
     (This : uRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_End
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_End
     (This : uRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Font
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Font
     (This : uRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Duplicate
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   function Get_StoryType
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Tables
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Words
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Sentences
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Characters
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Footnotes
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Endnotes
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Comments
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Cells
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Sections
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Paragraphs
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Borders
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Borders
     (This : uRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Shading
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   function Get_TextRetrievalMode
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_TextRetrievalMode
     (This : uRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Fields
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   function Get_FormFields
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Frames
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ParagraphFormat
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ParagraphFormat
     (This : uRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ListFormat
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Bookmarks
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Application
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Bold
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Bold
     (This : uRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Italic
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Italic
     (This : uRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Underline
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Underline
     (This : uRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_EmphasisMark
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_EmphasisMark
     (This : uRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_DisableCharacterSpaceGrid
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DisableCharacterSpaceGrid
     (This : uRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Revisions
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Style
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Style
     (This : uRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_StoryLength
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   function Get_LanguageID
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_LanguageID
     (This : uRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_SynonymInfo
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Hyperlinks
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ListParagraphs
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Subdocuments
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   function Get_GrammarChecked
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_GrammarChecked
     (This : uRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_SpellingChecked
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_SpellingChecked
     (This : uRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_HighlightColorIndex
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_HighlightColorIndex
     (This : uRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Columns
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Rows
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   function Get_CanEdit
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   function Get_CanPaste
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   function Get_IsEndOfRowMark
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   function Get_BookmarkID
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   function Get_PreviousBookmarkID
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Find
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   function Get_PageSetup
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_PageSetup
     (This : uRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ShapeRange
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Case
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Case
     (This : uRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Information
     (This  : uRange_Type;
      uType : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Get_ReadabilityStatistics
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   function Get_GrammaticalErrors
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   function Get_SpellingErrors
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Orientation
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Orientation
     (This : uRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_InlineShapes
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   function Get_NextStoryRange
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   function Get_LanguageIDFarEast
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_LanguageIDFarEast
     (This : uRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_LanguageIDOther
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_LanguageIDOther
     (This : uRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure uSelect
     (This : uRange_Type);

   procedure SetRange
     (This  : uRange_Type;
      Start : GNATCOM.Types.VARIANT;
      uEnd  : GNATCOM.Types.VARIANT;
      Free  : Boolean := True);

   procedure Collapse
     (This      : uRange_Type;
      Direction : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free      : Boolean := True);

   procedure InsertBefore
     (This : uRange_Type;
      Text : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure InsertAfter
     (This : uRange_Type;
      Text : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Next
     (This  : uRange_Type;
      Unit  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Count : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Previous
     (This  : uRange_Type;
      Unit  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Count : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function StartOf
     (This   : uRange_Type;
      Unit   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Extend : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function EndOf
     (This   : uRange_Type;
      Unit   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Extend : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Move
     (This  : uRange_Type;
      Unit  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Count : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function MoveStart
     (This  : uRange_Type;
      Unit  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Count : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function MoveEnd
     (This  : uRange_Type;
      Unit  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Count : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function MoveWhile
     (This  : uRange_Type;
      Cset  : GNATCOM.Types.VARIANT;
      Count : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function MoveStartWhile
     (This  : uRange_Type;
      Cset  : GNATCOM.Types.VARIANT;
      Count : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function MoveEndWhile
     (This  : uRange_Type;
      Cset  : GNATCOM.Types.VARIANT;
      Count : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function MoveUntil
     (This  : uRange_Type;
      Cset  : GNATCOM.Types.VARIANT;
      Count : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function MoveStartUntil
     (This  : uRange_Type;
      Cset  : GNATCOM.Types.VARIANT;
      Count : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function MoveEndUntil
     (This  : uRange_Type;
      Cset  : GNATCOM.Types.VARIANT;
      Count : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure Cut
     (This : uRange_Type);

   procedure Copy
     (This : uRange_Type);

   procedure Paste
     (This : uRange_Type);

   procedure InsertBreak
     (This  : uRange_Type;
      uType : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free  : Boolean := True);

   procedure InsertFile
     (This               : uRange_Type;
      FileName           : GNATCOM.Types.VARIANT;
      uRange             : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ConfirmConversions : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Link               : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Attachment         : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free               : Boolean := True);

   function InStory
     (This   : uRange_Type;
      uRange : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function InRange
     (This   : uRange_Type;
      uRange : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Delete
     (This  : uRange_Type;
      Unit  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Count : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure WholeStory
     (This : uRange_Type);

   function Expand
     (This : uRange_Type;
      Unit : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure InsertParagraph
     (This : uRange_Type);

   procedure InsertParagraphAfter
     (This : uRange_Type);

   function ConvertToTableOld
     (This               : uRange_Type;
      Separator          : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      NumRows            : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      NumColumns         : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      InitialColumnWidth : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Format             : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ApplyBorders       : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ApplyShading       : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ApplyFont          : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ApplyColor         : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ApplyHeadingRows   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ApplyLastRow       : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ApplyFirstColumn   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ApplyLastColumn    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      AutoFit            : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free               : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure InsertDateTimeOld
     (This              : uRange_Type;
      DateTimeFormat    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      InsertAsField     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      InsertAsFullWidth : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free              : Boolean := True);

   procedure InsertSymbol
     (This            : uRange_Type;
      CharacterNumber : GNATCOM.Types.VARIANT;
      Font            : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Unicode         : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Bias            : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free            : Boolean := True);

   procedure InsertCrossReference
     (This              : uRange_Type;
      ReferenceType     : GNATCOM.Types.VARIANT;
      ReferenceKind     : GNATCOM.Types.VARIANT;
      ReferenceItem     : GNATCOM.Types.VARIANT;
      InsertAsHyperlink : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      IncludePosition   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free              : Boolean := True);

   procedure InsertCaption
     (This          : uRange_Type;
      Label         : GNATCOM.Types.VARIANT;
      Title         : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      TitleAutoText : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Position      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free          : Boolean := True);

   procedure CopyAsPicture
     (This : uRange_Type);

   procedure SortOld
     (This           : uRange_Type;
      ExcludeHeader  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      FieldNumber    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      SortFieldType  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      SortOrder      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      FieldNumber2   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      SortFieldType2 : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      SortOrder2     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      FieldNumber3   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      SortFieldType3 : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      SortOrder3     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      SortColumn     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Separator      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      CaseSensitive  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      LanguageID     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free           : Boolean := True);

   procedure SortAscending
     (This : uRange_Type);

   procedure SortDescending
     (This : uRange_Type);

   function IsEqual
     (This   : uRange_Type;
      uRange : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Calculate
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   function uGoTo
     (This  : uRange_Type;
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

   function GoToNext
     (This : uRange_Type;
      What : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function GoToPrevious
     (This : uRange_Type;
      What : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure PasteSpecial
     (This          : uRange_Type;
      IconIndex     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Link          : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Placement     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      DisplayAsIcon : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      DataType      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      IconFileName  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      IconLabel     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free          : Boolean := True);

   procedure LookupNameProperties
     (This : uRange_Type);

   function ComputeStatistics
     (This      : uRange_Type;
      Statistic : GNATCOM.Types.VARIANT;
      Free      : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure Relocate
     (This      : uRange_Type;
      Direction : GNATCOM.Types.VARIANT;
      Free      : Boolean := True);

   procedure CheckSynonyms
     (This : uRange_Type);

   procedure SubscribeTo
     (This    : uRange_Type;
      Edition : GNATCOM.Types.VARIANT;
      Format  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free    : Boolean := True);

   procedure CreatePublisher
     (This         : uRange_Type;
      Edition      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ContainsPICT : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ContainsRTF  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ContainsText : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free         : Boolean := True);

   procedure InsertAutoText
     (This : uRange_Type);

   procedure InsertDatabase
     (This                  : uRange_Type;
      Format                : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Style                 : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      LinkToSource          : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Connection            : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      SQLStatement          : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      SQLStatement1         : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      PasswordDocument      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      PasswordTemplate      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      WritePasswordDocument : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      WritePasswordTemplate : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      DataSource            : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      From                  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      To                    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      IncludeFields         : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free                  : Boolean := True);

   procedure AutoFormat
     (This : uRange_Type);

   procedure CheckGrammar
     (This : uRange_Type);

   procedure CheckSpelling
     (This               : uRange_Type;
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

   function GetSpellingSuggestions
     (This               : uRange_Type;
      CustomDictionary   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      IgnoreUppercase    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      MainDictionary     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      SuggestionMode     : GNATCOM.Types.VARIANT
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
     return GNATCOM.Types.VARIANT;

   procedure InsertParagraphBefore
     (This : uRange_Type);

   procedure NextSubdocument
     (This : uRange_Type);

   procedure PreviousSubdocument
     (This : uRange_Type);

   procedure ConvertHangulAndHanja
     (This                 : uRange_Type;
      ConversionsMode      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      FastConversion       : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      CheckHangulEnding    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      EnableRecentOrdering : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      CustomDictionary     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free                 : Boolean := True);

   procedure PasteAsNestedTable
     (This : uRange_Type);

   procedure ModifyEnclosure
     (This         : uRange_Type;
      Style        : GNATCOM.Types.VARIANT;
      Symbol       : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      EnclosedText : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free         : Boolean := True);

   procedure PhoneticGuide
     (This      : uRange_Type;
      Text      : GNATCOM.Types.VARIANT;
      Alignment : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      uRaise    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      FontSize  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      FontName  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free      : Boolean := True);

   procedure InsertDateTime
     (This              : uRange_Type;
      DateTimeFormat    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      InsertAsField     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      InsertAsFullWidth : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      DateLanguage      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      CalendarType      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free              : Boolean := True);

   procedure Sort
     (This             : uRange_Type;
      ExcludeHeader    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      FieldNumber      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      SortFieldType    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      SortOrder        : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      FieldNumber2     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      SortFieldType2   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      SortOrder2       : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      FieldNumber3     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      SortFieldType3   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      SortOrder3       : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      SortColumn       : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Separator        : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      CaseSensitive    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      BidiSort         : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      IgnoreThe        : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      IgnoreKashida    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      IgnoreDiacritics : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      IgnoreHe         : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      LanguageID       : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free             : Boolean := True);

   procedure DetectLanguage
     (This : uRange_Type);

   function ConvertToTable
     (This                 : uRange_Type;
      Separator            : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      NumRows              : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      NumColumns           : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      InitialColumnWidth   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Format               : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ApplyBorders         : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ApplyShading         : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ApplyFont            : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ApplyColor           : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ApplyHeadingRows     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ApplyLastRow         : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ApplyFirstColumn     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ApplyLastColumn      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      AutoFit              : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      AutoFitBehavior      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      DefaultTableBehavior : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free                 : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure TCSCConverter
     (This                     : uRange_Type;
      WdTCSCConverterDirection : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      CommonTerms              : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      UseVariants              : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free                     : Boolean := True);

   function Get_LanguageDetected
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_LanguageDetected
     (This : uRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_FitTextWidth
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_FitTextWidth
     (This : uRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_HorizontalInVertical
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_HorizontalInVertical
     (This : uRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_TwoLinesInOne
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_TwoLinesInOne
     (This : uRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_CombineCharacters
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_CombineCharacters
     (This : uRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_NoProofing
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_NoProofing
     (This : uRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_TopLevelTables
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Scripts
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   function Get_CharacterWidth
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_CharacterWidth
     (This : uRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Kana
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Kana
     (This : uRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_BoldBi
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_BoldBi
     (This : uRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ItalicBi
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ItalicBi
     (This : uRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ID
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ID
     (This : uRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_HTMLDivisions
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   function Get_SmartTags
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ShowAll
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ShowAll
     (This : uRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Document
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   function Get_FootnoteOptions
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   function Get_EndnoteOptions
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT;

   procedure PasteAndFormat
     (This  : uRange_Type;
      uType : GNATCOM.Types.VARIANT;
      Free  : Boolean := True);

   procedure PasteExcelTable
     (This           : uRange_Type;
      LinkedToExcel  : GNATCOM.Types.VARIANT;
      WordFormatting : GNATCOM.Types.VARIANT;
      RTF            : GNATCOM.Types.VARIANT;
      Free           : Boolean := True);

   procedure PasteAppendTable
     (This : uRange_Type);

end winword.uRange_Object;

