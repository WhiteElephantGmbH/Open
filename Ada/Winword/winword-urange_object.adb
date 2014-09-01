package body winword.uRange_Object is

   function Get_Text
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_Text);
   end Get_Text;

   procedure Put_Text
     (This : uRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uRange_Put_Text,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Text;

   function Get_FormattedText
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_FormattedText);
   end Get_FormattedText;

   procedure Put_FormattedText
     (This : uRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uRange_Put_FormattedText,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_FormattedText;

   function Get_Start
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_Start);
   end Get_Start;

   procedure Put_Start
     (This : uRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uRange_Put_Start,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Start;

   function Get_End
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_End);
   end Get_End;

   procedure Put_End
     (This : uRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uRange_Put_End,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_End;

   function Get_Font
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_Font);
   end Get_Font;

   procedure Put_Font
     (This : uRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uRange_Put_Font,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Font;

   function Get_Duplicate
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_Duplicate);
   end Get_Duplicate;

   function Get_StoryType
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_StoryType);
   end Get_StoryType;

   function Get_Tables
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_Tables);
   end Get_Tables;

   function Get_Words
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_Words);
   end Get_Words;

   function Get_Sentences
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_Sentences);
   end Get_Sentences;

   function Get_Characters
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_Characters);
   end Get_Characters;

   function Get_Footnotes
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_Footnotes);
   end Get_Footnotes;

   function Get_Endnotes
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_Endnotes);
   end Get_Endnotes;

   function Get_Comments
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_Comments);
   end Get_Comments;

   function Get_Cells
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_Cells);
   end Get_Cells;

   function Get_Sections
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_Sections);
   end Get_Sections;

   function Get_Paragraphs
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_Paragraphs);
   end Get_Paragraphs;

   function Get_Borders
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_Borders);
   end Get_Borders;

   procedure Put_Borders
     (This : uRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uRange_Put_Borders,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Borders;

   function Get_Shading
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_Shading);
   end Get_Shading;

   function Get_TextRetrievalMode
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_TextRetrievalMode);
   end Get_TextRetrievalMode;

   procedure Put_TextRetrievalMode
     (This : uRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uRange_Put_TextRetrievalMode,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_TextRetrievalMode;

   function Get_Fields
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_Fields);
   end Get_Fields;

   function Get_FormFields
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_FormFields);
   end Get_FormFields;

   function Get_Frames
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_Frames);
   end Get_Frames;

   function Get_ParagraphFormat
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_ParagraphFormat);
   end Get_ParagraphFormat;

   procedure Put_ParagraphFormat
     (This : uRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uRange_Put_ParagraphFormat,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ParagraphFormat;

   function Get_ListFormat
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_ListFormat);
   end Get_ListFormat;

   function Get_Bookmarks
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_Bookmarks);
   end Get_Bookmarks;

   function Get_Application
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_Parent);
   end Get_Parent;

   function Get_Bold
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_Bold);
   end Get_Bold;

   procedure Put_Bold
     (This : uRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uRange_Put_Bold,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Bold;

   function Get_Italic
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_Italic);
   end Get_Italic;

   procedure Put_Italic
     (This : uRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uRange_Put_Italic,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Italic;

   function Get_Underline
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_Underline);
   end Get_Underline;

   procedure Put_Underline
     (This : uRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uRange_Put_Underline,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Underline;

   function Get_EmphasisMark
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_EmphasisMark);
   end Get_EmphasisMark;

   procedure Put_EmphasisMark
     (This : uRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uRange_Put_EmphasisMark,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_EmphasisMark;

   function Get_DisableCharacterSpaceGrid
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_DisableCharacterSpaceGrid);
   end Get_DisableCharacterSpaceGrid;

   procedure Put_DisableCharacterSpaceGrid
     (This : uRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uRange_Put_DisableCharacterSpaceGrid,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DisableCharacterSpaceGrid;

   function Get_Revisions
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_Revisions);
   end Get_Revisions;

   function Get_Style
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_Style);
   end Get_Style;

   procedure Put_Style
     (This : uRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uRange_Put_Style,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Style;

   function Get_StoryLength
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_StoryLength);
   end Get_StoryLength;

   function Get_LanguageID
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_LanguageID);
   end Get_LanguageID;

   procedure Put_LanguageID
     (This : uRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uRange_Put_LanguageID,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_LanguageID;

   function Get_SynonymInfo
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_SynonymInfo);
   end Get_SynonymInfo;

   function Get_Hyperlinks
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_Hyperlinks);
   end Get_Hyperlinks;

   function Get_ListParagraphs
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_ListParagraphs);
   end Get_ListParagraphs;

   function Get_Subdocuments
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_Subdocuments);
   end Get_Subdocuments;

   function Get_GrammarChecked
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_GrammarChecked);
   end Get_GrammarChecked;

   procedure Put_GrammarChecked
     (This : uRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uRange_Put_GrammarChecked,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_GrammarChecked;

   function Get_SpellingChecked
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_SpellingChecked);
   end Get_SpellingChecked;

   procedure Put_SpellingChecked
     (This : uRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uRange_Put_SpellingChecked,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_SpellingChecked;

   function Get_HighlightColorIndex
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_HighlightColorIndex);
   end Get_HighlightColorIndex;

   procedure Put_HighlightColorIndex
     (This : uRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uRange_Put_HighlightColorIndex,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_HighlightColorIndex;

   function Get_Columns
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_Columns);
   end Get_Columns;

   function Get_Rows
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_Rows);
   end Get_Rows;

   function Get_CanEdit
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_CanEdit);
   end Get_CanEdit;

   function Get_CanPaste
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_CanPaste);
   end Get_CanPaste;

   function Get_IsEndOfRowMark
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_IsEndOfRowMark);
   end Get_IsEndOfRowMark;

   function Get_BookmarkID
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_BookmarkID);
   end Get_BookmarkID;

   function Get_PreviousBookmarkID
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_PreviousBookmarkID);
   end Get_PreviousBookmarkID;

   function Get_Find
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_Find);
   end Get_Find;

   function Get_PageSetup
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_PageSetup);
   end Get_PageSetup;

   procedure Put_PageSetup
     (This : uRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uRange_Put_PageSetup,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_PageSetup;

   function Get_ShapeRange
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_ShapeRange);
   end Get_ShapeRange;

   function Get_Case
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_Case);
   end Get_Case;

   procedure Put_Case
     (This : uRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uRange_Put_Case,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Case;

   function Get_Information
     (This  : uRange_Type;
      uType : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get
        (This,
         uRange_Get_Information,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => uType),
         Free);
   end Get_Information;

   function Get_ReadabilityStatistics
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_ReadabilityStatistics);
   end Get_ReadabilityStatistics;

   function Get_GrammaticalErrors
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_GrammaticalErrors);
   end Get_GrammaticalErrors;

   function Get_SpellingErrors
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_SpellingErrors);
   end Get_SpellingErrors;

   function Get_Orientation
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_Orientation);
   end Get_Orientation;

   procedure Put_Orientation
     (This : uRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uRange_Put_Orientation,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Orientation;

   function Get_InlineShapes
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_InlineShapes);
   end Get_InlineShapes;

   function Get_NextStoryRange
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_NextStoryRange);
   end Get_NextStoryRange;

   function Get_LanguageIDFarEast
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_LanguageIDFarEast);
   end Get_LanguageIDFarEast;

   procedure Put_LanguageIDFarEast
     (This : uRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uRange_Put_LanguageIDFarEast,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_LanguageIDFarEast;

   function Get_LanguageIDOther
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_LanguageIDOther);
   end Get_LanguageIDOther;

   procedure Put_LanguageIDOther
     (This : uRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uRange_Put_LanguageIDOther,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_LanguageIDOther;

   procedure uSelect
     (This : uRange_Type)
   is
   begin
      Invoke (This, uRange_uSelect);
   end uSelect;

   procedure SetRange
     (This  : uRange_Type;
      Start : GNATCOM.Types.VARIANT;
      uEnd  : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
   is
   begin
      Invoke
        (This,
         uRange_SetRange,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => uEnd,
          2 => Start),
         Free);
   end SetRange;

   procedure Collapse
     (This      : uRange_Type;
      Direction : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free      : Boolean := True)
   is
   begin
      Invoke
        (This,
         uRange_Collapse,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Direction),
         Free);
   end Collapse;

   procedure InsertBefore
     (This : uRange_Type;
      Text : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Invoke
        (This,
         uRange_InsertBefore,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Text),
         Free);
   end InsertBefore;

   procedure InsertAfter
     (This : uRange_Type;
      Text : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Invoke
        (This,
         uRange_InsertAfter,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Text),
         Free);
   end InsertAfter;

   function Next
     (This  : uRange_Type;
      Unit  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Count : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uRange_Next,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Count,
          2 => Unit),
         Free);
   end Next;

   function Previous
     (This  : uRange_Type;
      Unit  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Count : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uRange_Previous,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Count,
          2 => Unit),
         Free);
   end Previous;

   function StartOf
     (This   : uRange_Type;
      Unit   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Extend : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uRange_StartOf,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Extend,
          2 => Unit),
         Free);
   end StartOf;

   function EndOf
     (This   : uRange_Type;
      Unit   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Extend : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uRange_EndOf,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Extend,
          2 => Unit),
         Free);
   end EndOf;

   function Move
     (This  : uRange_Type;
      Unit  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Count : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uRange_Move,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Count,
          2 => Unit),
         Free);
   end Move;

   function MoveStart
     (This  : uRange_Type;
      Unit  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Count : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uRange_MoveStart,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Count,
          2 => Unit),
         Free);
   end MoveStart;

   function MoveEnd
     (This  : uRange_Type;
      Unit  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Count : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uRange_MoveEnd,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Count,
          2 => Unit),
         Free);
   end MoveEnd;

   function MoveWhile
     (This  : uRange_Type;
      Cset  : GNATCOM.Types.VARIANT;
      Count : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uRange_MoveWhile,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Count,
          2 => Cset),
         Free);
   end MoveWhile;

   function MoveStartWhile
     (This  : uRange_Type;
      Cset  : GNATCOM.Types.VARIANT;
      Count : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uRange_MoveStartWhile,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Count,
          2 => Cset),
         Free);
   end MoveStartWhile;

   function MoveEndWhile
     (This  : uRange_Type;
      Cset  : GNATCOM.Types.VARIANT;
      Count : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uRange_MoveEndWhile,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Count,
          2 => Cset),
         Free);
   end MoveEndWhile;

   function MoveUntil
     (This  : uRange_Type;
      Cset  : GNATCOM.Types.VARIANT;
      Count : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uRange_MoveUntil,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Count,
          2 => Cset),
         Free);
   end MoveUntil;

   function MoveStartUntil
     (This  : uRange_Type;
      Cset  : GNATCOM.Types.VARIANT;
      Count : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uRange_MoveStartUntil,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Count,
          2 => Cset),
         Free);
   end MoveStartUntil;

   function MoveEndUntil
     (This  : uRange_Type;
      Cset  : GNATCOM.Types.VARIANT;
      Count : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uRange_MoveEndUntil,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Count,
          2 => Cset),
         Free);
   end MoveEndUntil;

   procedure Cut
     (This : uRange_Type)
   is
   begin
      Invoke (This, uRange_Cut);
   end Cut;

   procedure Copy
     (This : uRange_Type)
   is
   begin
      Invoke (This, uRange_Copy);
   end Copy;

   procedure Paste
     (This : uRange_Type)
   is
   begin
      Invoke (This, uRange_Paste);
   end Paste;

   procedure InsertBreak
     (This  : uRange_Type;
      uType : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free  : Boolean := True)
   is
   begin
      Invoke
        (This,
         uRange_InsertBreak,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => uType),
         Free);
   end InsertBreak;

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
      Free               : Boolean := True)
   is
   begin
      Invoke
        (This,
         uRange_InsertFile,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Attachment,
          2 => Link,
          3 => ConfirmConversions,
          4 => uRange,
          5 => FileName),
         Free);
   end InsertFile;

   function InStory
     (This   : uRange_Type;
      uRange : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uRange_InStory,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => uRange),
         Free);
   end InStory;

   function InRange
     (This   : uRange_Type;
      uRange : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uRange_InRange,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => uRange),
         Free);
   end InRange;

   function Delete
     (This  : uRange_Type;
      Unit  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Count : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uRange_Delete,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Count,
          2 => Unit),
         Free);
   end Delete;

   procedure WholeStory
     (This : uRange_Type)
   is
   begin
      Invoke (This, uRange_WholeStory);
   end WholeStory;

   function Expand
     (This : uRange_Type;
      Unit : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uRange_Expand,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Unit),
         Free);
   end Expand;

   procedure InsertParagraph
     (This : uRange_Type)
   is
   begin
      Invoke (This, uRange_InsertParagraph);
   end InsertParagraph;

   procedure InsertParagraphAfter
     (This : uRange_Type)
   is
   begin
      Invoke (This, uRange_InsertParagraphAfter);
   end InsertParagraphAfter;

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
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uRange_ConvertToTableOld,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => AutoFit,
          2 => ApplyLastColumn,
          3 => ApplyFirstColumn,
          4 => ApplyLastRow,
          5 => ApplyHeadingRows,
          6 => ApplyColor,
          7 => ApplyFont,
          8 => ApplyShading,
          9 => ApplyBorders,
          10 => Format,
          11 => InitialColumnWidth,
          12 => NumColumns,
          13 => NumRows,
          14 => Separator),
         Free);
   end ConvertToTableOld;

   procedure InsertDateTimeOld
     (This              : uRange_Type;
      DateTimeFormat    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      InsertAsField     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      InsertAsFullWidth : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free              : Boolean := True)
   is
   begin
      Invoke
        (This,
         uRange_InsertDateTimeOld,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => InsertAsFullWidth,
          2 => InsertAsField,
          3 => DateTimeFormat),
         Free);
   end InsertDateTimeOld;

   procedure InsertSymbol
     (This            : uRange_Type;
      CharacterNumber : GNATCOM.Types.VARIANT;
      Font            : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Unicode         : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Bias            : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free            : Boolean := True)
   is
   begin
      Invoke
        (This,
         uRange_InsertSymbol,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Bias,
          2 => Unicode,
          3 => Font,
          4 => CharacterNumber),
         Free);
   end InsertSymbol;

   procedure InsertCrossReference
     (This              : uRange_Type;
      ReferenceType     : GNATCOM.Types.VARIANT;
      ReferenceKind     : GNATCOM.Types.VARIANT;
      ReferenceItem     : GNATCOM.Types.VARIANT;
      InsertAsHyperlink : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      IncludePosition   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free              : Boolean := True)
   is
   begin
      Invoke
        (This,
         uRange_InsertCrossReference,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => IncludePosition,
          2 => InsertAsHyperlink,
          3 => ReferenceItem,
          4 => ReferenceKind,
          5 => ReferenceType),
         Free);
   end InsertCrossReference;

   procedure InsertCaption
     (This          : uRange_Type;
      Label         : GNATCOM.Types.VARIANT;
      Title         : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      TitleAutoText : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Position      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free          : Boolean := True)
   is
   begin
      Invoke
        (This,
         uRange_InsertCaption,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Position,
          2 => TitleAutoText,
          3 => Title,
          4 => Label),
         Free);
   end InsertCaption;

   procedure CopyAsPicture
     (This : uRange_Type)
   is
   begin
      Invoke (This, uRange_CopyAsPicture);
   end CopyAsPicture;

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
      Free           : Boolean := True)
   is
   begin
      Invoke
        (This,
         uRange_SortOld,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => LanguageID,
          2 => CaseSensitive,
          3 => Separator,
          4 => SortColumn,
          5 => SortOrder3,
          6 => SortFieldType3,
          7 => FieldNumber3,
          8 => SortOrder2,
          9 => SortFieldType2,
          10 => FieldNumber2,
          11 => SortOrder,
          12 => SortFieldType,
          13 => FieldNumber,
          14 => ExcludeHeader),
         Free);
   end SortOld;

   procedure SortAscending
     (This : uRange_Type)
   is
   begin
      Invoke (This, uRange_SortAscending);
   end SortAscending;

   procedure SortDescending
     (This : uRange_Type)
   is
   begin
      Invoke (This, uRange_SortDescending);
   end SortDescending;

   function IsEqual
     (This   : uRange_Type;
      uRange : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uRange_IsEqual,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => uRange),
         Free);
   end IsEqual;

   function Calculate
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke (This, uRange_Calculate);
   end Calculate;

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
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uRange_uGoTo,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Name,
          2 => Count,
          3 => Which,
          4 => What),
         Free);
   end uGoTo;

   function GoToNext
     (This : uRange_Type;
      What : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uRange_GoToNext,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => What),
         Free);
   end GoToNext;

   function GoToPrevious
     (This : uRange_Type;
      What : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uRange_GoToPrevious,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => What),
         Free);
   end GoToPrevious;

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
      Free          : Boolean := True)
   is
   begin
      Invoke
        (This,
         uRange_PasteSpecial,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => IconLabel,
          2 => IconFileName,
          3 => DataType,
          4 => DisplayAsIcon,
          5 => Placement,
          6 => Link,
          7 => IconIndex),
         Free);
   end PasteSpecial;

   procedure LookupNameProperties
     (This : uRange_Type)
   is
   begin
      Invoke (This, uRange_LookupNameProperties);
   end LookupNameProperties;

   function ComputeStatistics
     (This      : uRange_Type;
      Statistic : GNATCOM.Types.VARIANT;
      Free      : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uRange_ComputeStatistics,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Statistic),
         Free);
   end ComputeStatistics;

   procedure Relocate
     (This      : uRange_Type;
      Direction : GNATCOM.Types.VARIANT;
      Free      : Boolean := True)
   is
   begin
      Invoke
        (This,
         uRange_Relocate,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Direction),
         Free);
   end Relocate;

   procedure CheckSynonyms
     (This : uRange_Type)
   is
   begin
      Invoke (This, uRange_CheckSynonyms);
   end CheckSynonyms;

   procedure SubscribeTo
     (This    : uRange_Type;
      Edition : GNATCOM.Types.VARIANT;
      Format  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free    : Boolean := True)
   is
   begin
      Invoke
        (This,
         uRange_SubscribeTo,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Format,
          2 => Edition),
         Free);
   end SubscribeTo;

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
      Free         : Boolean := True)
   is
   begin
      Invoke
        (This,
         uRange_CreatePublisher,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => ContainsText,
          2 => ContainsRTF,
          3 => ContainsPICT,
          4 => Edition),
         Free);
   end CreatePublisher;

   procedure InsertAutoText
     (This : uRange_Type)
   is
   begin
      Invoke (This, uRange_InsertAutoText);
   end InsertAutoText;

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
      Free                  : Boolean := True)
   is
   begin
      Invoke
        (This,
         uRange_InsertDatabase,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => IncludeFields,
          2 => To,
          3 => From,
          4 => DataSource,
          5 => WritePasswordTemplate,
          6 => WritePasswordDocument,
          7 => PasswordTemplate,
          8 => PasswordDocument,
          9 => SQLStatement1,
          10 => SQLStatement,
          11 => Connection,
          12 => LinkToSource,
          13 => Style,
          14 => Format),
         Free);
   end InsertDatabase;

   procedure AutoFormat
     (This : uRange_Type)
   is
   begin
      Invoke (This, uRange_AutoFormat);
   end AutoFormat;

   procedure CheckGrammar
     (This : uRange_Type)
   is
   begin
      Invoke (This, uRange_CheckGrammar);
   end CheckGrammar;

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
      Free               : Boolean := True)
   is
   begin
      Invoke
        (This,
         uRange_CheckSpelling,
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
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uRange_GetSpellingSuggestions,
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
          10 => SuggestionMode,
          11 => MainDictionary,
          12 => IgnoreUppercase,
          13 => CustomDictionary),
         Free);
   end GetSpellingSuggestions;

   procedure InsertParagraphBefore
     (This : uRange_Type)
   is
   begin
      Invoke (This, uRange_InsertParagraphBefore);
   end InsertParagraphBefore;

   procedure NextSubdocument
     (This : uRange_Type)
   is
   begin
      Invoke (This, uRange_NextSubdocument);
   end NextSubdocument;

   procedure PreviousSubdocument
     (This : uRange_Type)
   is
   begin
      Invoke (This, uRange_PreviousSubdocument);
   end PreviousSubdocument;

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
      Free                 : Boolean := True)
   is
   begin
      Invoke
        (This,
         uRange_ConvertHangulAndHanja,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => CustomDictionary,
          2 => EnableRecentOrdering,
          3 => CheckHangulEnding,
          4 => FastConversion,
          5 => ConversionsMode),
         Free);
   end ConvertHangulAndHanja;

   procedure PasteAsNestedTable
     (This : uRange_Type)
   is
   begin
      Invoke (This, uRange_PasteAsNestedTable);
   end PasteAsNestedTable;

   procedure ModifyEnclosure
     (This         : uRange_Type;
      Style        : GNATCOM.Types.VARIANT;
      Symbol       : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      EnclosedText : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free         : Boolean := True)
   is
   begin
      Invoke
        (This,
         uRange_ModifyEnclosure,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => EnclosedText,
          2 => Symbol,
          3 => Style),
         Free);
   end ModifyEnclosure;

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
      Free      : Boolean := True)
   is
   begin
      Invoke
        (This,
         uRange_PhoneticGuide,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => FontName,
          2 => FontSize,
          3 => uRaise,
          4 => Alignment,
          5 => Text),
         Free);
   end PhoneticGuide;

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
      Free              : Boolean := True)
   is
   begin
      Invoke
        (This,
         uRange_InsertDateTime,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => CalendarType,
          2 => DateLanguage,
          3 => InsertAsFullWidth,
          4 => InsertAsField,
          5 => DateTimeFormat),
         Free);
   end InsertDateTime;

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
      Free             : Boolean := True)
   is
   begin
      Invoke
        (This,
         uRange_Sort,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => LanguageID,
          2 => IgnoreHe,
          3 => IgnoreDiacritics,
          4 => IgnoreKashida,
          5 => IgnoreThe,
          6 => BidiSort,
          7 => CaseSensitive,
          8 => Separator,
          9 => SortColumn,
          10 => SortOrder3,
          11 => SortFieldType3,
          12 => FieldNumber3,
          13 => SortOrder2,
          14 => SortFieldType2,
          15 => FieldNumber2,
          16 => SortOrder,
          17 => SortFieldType,
          18 => FieldNumber,
          19 => ExcludeHeader),
         Free);
   end Sort;

   procedure DetectLanguage
     (This : uRange_Type)
   is
   begin
      Invoke (This, uRange_DetectLanguage);
   end DetectLanguage;

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
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uRange_ConvertToTable,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => DefaultTableBehavior,
          2 => AutoFitBehavior,
          3 => AutoFit,
          4 => ApplyLastColumn,
          5 => ApplyFirstColumn,
          6 => ApplyLastRow,
          7 => ApplyHeadingRows,
          8 => ApplyColor,
          9 => ApplyFont,
          10 => ApplyShading,
          11 => ApplyBorders,
          12 => Format,
          13 => InitialColumnWidth,
          14 => NumColumns,
          15 => NumRows,
          16 => Separator),
         Free);
   end ConvertToTable;

   procedure TCSCConverter
     (This                     : uRange_Type;
      WdTCSCConverterDirection : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      CommonTerms              : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      UseVariants              : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free                     : Boolean := True)
   is
   begin
      Invoke
        (This,
         uRange_TCSCConverter,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => UseVariants,
          2 => CommonTerms,
          3 => WdTCSCConverterDirection),
         Free);
   end TCSCConverter;

   function Get_LanguageDetected
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_LanguageDetected);
   end Get_LanguageDetected;

   procedure Put_LanguageDetected
     (This : uRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uRange_Put_LanguageDetected,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_LanguageDetected;

   function Get_FitTextWidth
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_FitTextWidth);
   end Get_FitTextWidth;

   procedure Put_FitTextWidth
     (This : uRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uRange_Put_FitTextWidth,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_FitTextWidth;

   function Get_HorizontalInVertical
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_HorizontalInVertical);
   end Get_HorizontalInVertical;

   procedure Put_HorizontalInVertical
     (This : uRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uRange_Put_HorizontalInVertical,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_HorizontalInVertical;

   function Get_TwoLinesInOne
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_TwoLinesInOne);
   end Get_TwoLinesInOne;

   procedure Put_TwoLinesInOne
     (This : uRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uRange_Put_TwoLinesInOne,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_TwoLinesInOne;

   function Get_CombineCharacters
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_CombineCharacters);
   end Get_CombineCharacters;

   procedure Put_CombineCharacters
     (This : uRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uRange_Put_CombineCharacters,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_CombineCharacters;

   function Get_NoProofing
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_NoProofing);
   end Get_NoProofing;

   procedure Put_NoProofing
     (This : uRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uRange_Put_NoProofing,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_NoProofing;

   function Get_TopLevelTables
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_TopLevelTables);
   end Get_TopLevelTables;

   function Get_Scripts
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_Scripts);
   end Get_Scripts;

   function Get_CharacterWidth
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_CharacterWidth);
   end Get_CharacterWidth;

   procedure Put_CharacterWidth
     (This : uRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uRange_Put_CharacterWidth,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_CharacterWidth;

   function Get_Kana
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_Kana);
   end Get_Kana;

   procedure Put_Kana
     (This : uRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uRange_Put_Kana,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Kana;

   function Get_BoldBi
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_BoldBi);
   end Get_BoldBi;

   procedure Put_BoldBi
     (This : uRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uRange_Put_BoldBi,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_BoldBi;

   function Get_ItalicBi
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_ItalicBi);
   end Get_ItalicBi;

   procedure Put_ItalicBi
     (This : uRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uRange_Put_ItalicBi,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ItalicBi;

   function Get_ID
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_ID);
   end Get_ID;

   procedure Put_ID
     (This : uRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uRange_Put_ID,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ID;

   function Get_HTMLDivisions
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_HTMLDivisions);
   end Get_HTMLDivisions;

   function Get_SmartTags
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_SmartTags);
   end Get_SmartTags;

   function Get_ShowAll
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_ShowAll);
   end Get_ShowAll;

   procedure Put_ShowAll
     (This : uRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uRange_Put_ShowAll,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ShowAll;

   function Get_Document
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_Document);
   end Get_Document;

   function Get_FootnoteOptions
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_FootnoteOptions);
   end Get_FootnoteOptions;

   function Get_EndnoteOptions
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uRange_Get_EndnoteOptions);
   end Get_EndnoteOptions;

   procedure PasteAndFormat
     (This  : uRange_Type;
      uType : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
   is
   begin
      Invoke
        (This,
         uRange_PasteAndFormat,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => uType),
         Free);
   end PasteAndFormat;

   procedure PasteExcelTable
     (This           : uRange_Type;
      LinkedToExcel  : GNATCOM.Types.VARIANT;
      WordFormatting : GNATCOM.Types.VARIANT;
      RTF            : GNATCOM.Types.VARIANT;
      Free           : Boolean := True)
   is
   begin
      Invoke
        (This,
         uRange_PasteExcelTable,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => RTF,
          2 => WordFormatting,
          3 => LinkedToExcel),
         Free);
   end PasteExcelTable;

   procedure PasteAppendTable
     (This : uRange_Type)
   is
   begin
      Invoke (This, uRange_PasteAppendTable);
   end PasteAppendTable;

end winword.uRange_Object;

