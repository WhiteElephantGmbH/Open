package body winword.Selection_Object is

   function Get_Text
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Selection_Get_Text);
   end Get_Text;

   procedure Put_Text
     (This : Selection_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Selection_Put_Text,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Text;

   function Get_FormattedText
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Selection_Get_FormattedText);
   end Get_FormattedText;

   procedure Put_FormattedText
     (This : Selection_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Selection_Put_FormattedText,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_FormattedText;

   function Get_Start
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Selection_Get_Start);
   end Get_Start;

   procedure Put_Start
     (This : Selection_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Selection_Put_Start,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Start;

   function Get_End
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Selection_Get_End);
   end Get_End;

   procedure Put_End
     (This : Selection_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Selection_Put_End,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_End;

   function Get_Font
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Selection_Get_Font);
   end Get_Font;

   procedure Put_Font
     (This : Selection_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Selection_Put_Font,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Font;

   function Get_Type
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Selection_Get_Type);
   end Get_Type;

   function Get_StoryType
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Selection_Get_StoryType);
   end Get_StoryType;

   function Get_Style
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Selection_Get_Style);
   end Get_Style;

   procedure Put_Style
     (This : Selection_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Selection_Put_Style,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Style;

   function Get_Tables
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Selection_Get_Tables);
   end Get_Tables;

   function Get_Words
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Selection_Get_Words);
   end Get_Words;

   function Get_Sentences
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Selection_Get_Sentences);
   end Get_Sentences;

   function Get_Characters
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Selection_Get_Characters);
   end Get_Characters;

   function Get_Footnotes
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Selection_Get_Footnotes);
   end Get_Footnotes;

   function Get_Endnotes
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Selection_Get_Endnotes);
   end Get_Endnotes;

   function Get_Comments
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Selection_Get_Comments);
   end Get_Comments;

   function Get_Cells
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Selection_Get_Cells);
   end Get_Cells;

   function Get_Sections
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Selection_Get_Sections);
   end Get_Sections;

   function Get_Paragraphs
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Selection_Get_Paragraphs);
   end Get_Paragraphs;

   function Get_Borders
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Selection_Get_Borders);
   end Get_Borders;

   procedure Put_Borders
     (This : Selection_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Selection_Put_Borders,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Borders;

   function Get_Shading
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Selection_Get_Shading);
   end Get_Shading;

   function Get_Fields
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Selection_Get_Fields);
   end Get_Fields;

   function Get_FormFields
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Selection_Get_FormFields);
   end Get_FormFields;

   function Get_Frames
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Selection_Get_Frames);
   end Get_Frames;

   function Get_ParagraphFormat
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Selection_Get_ParagraphFormat);
   end Get_ParagraphFormat;

   procedure Put_ParagraphFormat
     (This : Selection_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Selection_Put_ParagraphFormat,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ParagraphFormat;

   function Get_PageSetup
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Selection_Get_PageSetup);
   end Get_PageSetup;

   procedure Put_PageSetup
     (This : Selection_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Selection_Put_PageSetup,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_PageSetup;

   function Get_Bookmarks
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Selection_Get_Bookmarks);
   end Get_Bookmarks;

   function Get_StoryLength
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Selection_Get_StoryLength);
   end Get_StoryLength;

   function Get_LanguageID
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Selection_Get_LanguageID);
   end Get_LanguageID;

   procedure Put_LanguageID
     (This : Selection_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Selection_Put_LanguageID,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_LanguageID;

   function Get_LanguageIDFarEast
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Selection_Get_LanguageIDFarEast);
   end Get_LanguageIDFarEast;

   procedure Put_LanguageIDFarEast
     (This : Selection_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Selection_Put_LanguageIDFarEast,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_LanguageIDFarEast;

   function Get_LanguageIDOther
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Selection_Get_LanguageIDOther);
   end Get_LanguageIDOther;

   procedure Put_LanguageIDOther
     (This : Selection_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Selection_Put_LanguageIDOther,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_LanguageIDOther;

   function Get_Hyperlinks
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Selection_Get_Hyperlinks);
   end Get_Hyperlinks;

   function Get_Columns
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Selection_Get_Columns);
   end Get_Columns;

   function Get_Rows
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Selection_Get_Rows);
   end Get_Rows;

   function Get_HeaderFooter
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Selection_Get_HeaderFooter);
   end Get_HeaderFooter;

   function Get_IsEndOfRowMark
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Selection_Get_IsEndOfRowMark);
   end Get_IsEndOfRowMark;

   function Get_BookmarkID
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Selection_Get_BookmarkID);
   end Get_BookmarkID;

   function Get_PreviousBookmarkID
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Selection_Get_PreviousBookmarkID);
   end Get_PreviousBookmarkID;

   function Get_Find
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Selection_Get_Find);
   end Get_Find;

   function Get_Range
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Selection_Get_Range);
   end Get_Range;

   function Get_Information
     (This  : Selection_Type;
      uType : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get
        (This,
         Selection_Get_Information,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => uType),
         Free);
   end Get_Information;

   function Get_Flags
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Selection_Get_Flags);
   end Get_Flags;

   procedure Put_Flags
     (This : Selection_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Selection_Put_Flags,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Flags;

   function Get_Active
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Selection_Get_Active);
   end Get_Active;

   function Get_StartIsActive
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Selection_Get_StartIsActive);
   end Get_StartIsActive;

   procedure Put_StartIsActive
     (This : Selection_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Selection_Put_StartIsActive,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_StartIsActive;

   function Get_IPAtEndOfLine
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Selection_Get_IPAtEndOfLine);
   end Get_IPAtEndOfLine;

   function Get_ExtendMode
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Selection_Get_ExtendMode);
   end Get_ExtendMode;

   procedure Put_ExtendMode
     (This : Selection_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Selection_Put_ExtendMode,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ExtendMode;

   function Get_ColumnSelectMode
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Selection_Get_ColumnSelectMode);
   end Get_ColumnSelectMode;

   procedure Put_ColumnSelectMode
     (This : Selection_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Selection_Put_ColumnSelectMode,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ColumnSelectMode;

   function Get_Orientation
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Selection_Get_Orientation);
   end Get_Orientation;

   procedure Put_Orientation
     (This : Selection_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Selection_Put_Orientation,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Orientation;

   function Get_InlineShapes
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Selection_Get_InlineShapes);
   end Get_InlineShapes;

   function Get_Application
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Selection_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Selection_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Selection_Get_Parent);
   end Get_Parent;

   function Get_Document
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Selection_Get_Document);
   end Get_Document;

   function Get_ShapeRange
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Selection_Get_ShapeRange);
   end Get_ShapeRange;

   procedure uSelect
     (This : Selection_Type)
   is
   begin
      Invoke (This, Selection_uSelect);
   end uSelect;

   procedure SetRange
     (This  : Selection_Type;
      Start : GNATCOM.Types.VARIANT;
      uEnd  : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
   is
   begin
      Invoke
        (This,
         Selection_SetRange,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => uEnd,
          2 => Start),
         Free);
   end SetRange;

   procedure Collapse
     (This      : Selection_Type;
      Direction : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free      : Boolean := True)
   is
   begin
      Invoke
        (This,
         Selection_Collapse,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Direction),
         Free);
   end Collapse;

   procedure InsertBefore
     (This : Selection_Type;
      Text : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Invoke
        (This,
         Selection_InsertBefore,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Text),
         Free);
   end InsertBefore;

   procedure InsertAfter
     (This : Selection_Type;
      Text : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Invoke
        (This,
         Selection_InsertAfter,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Text),
         Free);
   end InsertAfter;

   function Next
     (This  : Selection_Type;
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
         Selection_Next,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Count,
          2 => Unit),
         Free);
   end Next;

   function Previous
     (This  : Selection_Type;
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
         Selection_Previous,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Count,
          2 => Unit),
         Free);
   end Previous;

   function StartOf
     (This   : Selection_Type;
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
         Selection_StartOf,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Extend,
          2 => Unit),
         Free);
   end StartOf;

   function EndOf
     (This   : Selection_Type;
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
         Selection_EndOf,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Extend,
          2 => Unit),
         Free);
   end EndOf;

   function Move
     (This  : Selection_Type;
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
         Selection_Move,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Count,
          2 => Unit),
         Free);
   end Move;

   function MoveStart
     (This  : Selection_Type;
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
         Selection_MoveStart,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Count,
          2 => Unit),
         Free);
   end MoveStart;

   function MoveEnd
     (This  : Selection_Type;
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
         Selection_MoveEnd,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Count,
          2 => Unit),
         Free);
   end MoveEnd;

   function MoveWhile
     (This  : Selection_Type;
      Cset  : GNATCOM.Types.VARIANT;
      Count : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Selection_MoveWhile,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Count,
          2 => Cset),
         Free);
   end MoveWhile;

   function MoveStartWhile
     (This  : Selection_Type;
      Cset  : GNATCOM.Types.VARIANT;
      Count : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Selection_MoveStartWhile,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Count,
          2 => Cset),
         Free);
   end MoveStartWhile;

   function MoveEndWhile
     (This  : Selection_Type;
      Cset  : GNATCOM.Types.VARIANT;
      Count : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Selection_MoveEndWhile,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Count,
          2 => Cset),
         Free);
   end MoveEndWhile;

   function MoveUntil
     (This  : Selection_Type;
      Cset  : GNATCOM.Types.VARIANT;
      Count : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Selection_MoveUntil,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Count,
          2 => Cset),
         Free);
   end MoveUntil;

   function MoveStartUntil
     (This  : Selection_Type;
      Cset  : GNATCOM.Types.VARIANT;
      Count : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Selection_MoveStartUntil,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Count,
          2 => Cset),
         Free);
   end MoveStartUntil;

   function MoveEndUntil
     (This  : Selection_Type;
      Cset  : GNATCOM.Types.VARIANT;
      Count : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Selection_MoveEndUntil,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Count,
          2 => Cset),
         Free);
   end MoveEndUntil;

   procedure Cut
     (This : Selection_Type)
   is
   begin
      Invoke (This, Selection_Cut);
   end Cut;

   procedure Copy
     (This : Selection_Type)
   is
   begin
      Invoke (This, Selection_Copy);
   end Copy;

   procedure Paste
     (This : Selection_Type)
   is
   begin
      Invoke (This, Selection_Paste);
   end Paste;

   procedure InsertBreak
     (This  : Selection_Type;
      uType : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free  : Boolean := True)
   is
   begin
      Invoke
        (This,
         Selection_InsertBreak,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => uType),
         Free);
   end InsertBreak;

   procedure InsertFile
     (This               : Selection_Type;
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
         Selection_InsertFile,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Attachment,
          2 => Link,
          3 => ConfirmConversions,
          4 => uRange,
          5 => FileName),
         Free);
   end InsertFile;

   function InStory
     (This   : Selection_Type;
      uRange : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Selection_InStory,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => uRange),
         Free);
   end InStory;

   function InRange
     (This   : Selection_Type;
      uRange : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Selection_InRange,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => uRange),
         Free);
   end InRange;

   function Delete
     (This  : Selection_Type;
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
         Selection_Delete,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Count,
          2 => Unit),
         Free);
   end Delete;

   function Expand
     (This : Selection_Type;
      Unit : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Selection_Expand,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Unit),
         Free);
   end Expand;

   procedure InsertParagraph
     (This : Selection_Type)
   is
   begin
      Invoke (This, Selection_InsertParagraph);
   end InsertParagraph;

   procedure InsertParagraphAfter
     (This : Selection_Type)
   is
   begin
      Invoke (This, Selection_InsertParagraphAfter);
   end InsertParagraphAfter;

   function ConvertToTableOld
     (This               : Selection_Type;
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
         Selection_ConvertToTableOld,
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
     (This              : Selection_Type;
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
         Selection_InsertDateTimeOld,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => InsertAsFullWidth,
          2 => InsertAsField,
          3 => DateTimeFormat),
         Free);
   end InsertDateTimeOld;

   procedure InsertSymbol
     (This            : Selection_Type;
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
         Selection_InsertSymbol,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Bias,
          2 => Unicode,
          3 => Font,
          4 => CharacterNumber),
         Free);
   end InsertSymbol;

   procedure InsertCrossReference
     (This              : Selection_Type;
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
         Selection_InsertCrossReference,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => IncludePosition,
          2 => InsertAsHyperlink,
          3 => ReferenceItem,
          4 => ReferenceKind,
          5 => ReferenceType),
         Free);
   end InsertCrossReference;

   procedure InsertCaption
     (This          : Selection_Type;
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
         Selection_InsertCaption,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Position,
          2 => TitleAutoText,
          3 => Title,
          4 => Label),
         Free);
   end InsertCaption;

   procedure CopyAsPicture
     (This : Selection_Type)
   is
   begin
      Invoke (This, Selection_CopyAsPicture);
   end CopyAsPicture;

   procedure SortOld
     (This           : Selection_Type;
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
         Selection_SortOld,
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
     (This : Selection_Type)
   is
   begin
      Invoke (This, Selection_SortAscending);
   end SortAscending;

   procedure SortDescending
     (This : Selection_Type)
   is
   begin
      Invoke (This, Selection_SortDescending);
   end SortDescending;

   function IsEqual
     (This   : Selection_Type;
      uRange : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Selection_IsEqual,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => uRange),
         Free);
   end IsEqual;

   function Calculate
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke (This, Selection_Calculate);
   end Calculate;

   function uGoTo
     (This  : Selection_Type;
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
         Selection_uGoTo,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Name,
          2 => Count,
          3 => Which,
          4 => What),
         Free);
   end uGoTo;

   function GoToNext
     (This : Selection_Type;
      What : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Selection_GoToNext,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => What),
         Free);
   end GoToNext;

   function GoToPrevious
     (This : Selection_Type;
      What : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Selection_GoToPrevious,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => What),
         Free);
   end GoToPrevious;

   procedure PasteSpecial
     (This          : Selection_Type;
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
         Selection_PasteSpecial,
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

   function PreviousField
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke (This, Selection_PreviousField);
   end PreviousField;

   function NextField
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke (This, Selection_NextField);
   end NextField;

   procedure InsertParagraphBefore
     (This : Selection_Type)
   is
   begin
      Invoke (This, Selection_InsertParagraphBefore);
   end InsertParagraphBefore;

   procedure InsertCells
     (This       : Selection_Type;
      ShiftCells : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free       : Boolean := True)
   is
   begin
      Invoke
        (This,
         Selection_InsertCells,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => ShiftCells),
         Free);
   end InsertCells;

   procedure Extend
     (This      : Selection_Type;
      Character : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free      : Boolean := True)
   is
   begin
      Invoke
        (This,
         Selection_Extend,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Character),
         Free);
   end Extend;

   procedure Shrink
     (This : Selection_Type)
   is
   begin
      Invoke (This, Selection_Shrink);
   end Shrink;

   function MoveLeft
     (This   : Selection_Type;
      Unit   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Count  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Extend : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Selection_MoveLeft,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Extend,
          2 => Count,
          3 => Unit),
         Free);
   end MoveLeft;

   function MoveRight
     (This   : Selection_Type;
      Unit   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Count  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Extend : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Selection_MoveRight,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Extend,
          2 => Count,
          3 => Unit),
         Free);
   end MoveRight;

   function MoveUp
     (This   : Selection_Type;
      Unit   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Count  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Extend : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Selection_MoveUp,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Extend,
          2 => Count,
          3 => Unit),
         Free);
   end MoveUp;

   function MoveDown
     (This   : Selection_Type;
      Unit   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Count  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Extend : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Selection_MoveDown,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Extend,
          2 => Count,
          3 => Unit),
         Free);
   end MoveDown;

   function HomeKey
     (This   : Selection_Type;
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
         Selection_HomeKey,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Extend,
          2 => Unit),
         Free);
   end HomeKey;

   function EndKey
     (This   : Selection_Type;
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
         Selection_EndKey,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Extend,
          2 => Unit),
         Free);
   end EndKey;

   procedure EscapeKey
     (This : Selection_Type)
   is
   begin
      Invoke (This, Selection_EscapeKey);
   end EscapeKey;

   procedure TypeText
     (This : Selection_Type;
      Text : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Invoke
        (This,
         Selection_TypeText,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Text),
         Free);
   end TypeText;

   procedure CopyFormat
     (This : Selection_Type)
   is
   begin
      Invoke (This, Selection_CopyFormat);
   end CopyFormat;

   procedure PasteFormat
     (This : Selection_Type)
   is
   begin
      Invoke (This, Selection_PasteFormat);
   end PasteFormat;

   procedure TypeParagraph
     (This : Selection_Type)
   is
   begin
      Invoke (This, Selection_TypeParagraph);
   end TypeParagraph;

   procedure TypeBackspace
     (This : Selection_Type)
   is
   begin
      Invoke (This, Selection_TypeBackspace);
   end TypeBackspace;

   procedure NextSubdocument
     (This : Selection_Type)
   is
   begin
      Invoke (This, Selection_NextSubdocument);
   end NextSubdocument;

   procedure PreviousSubdocument
     (This : Selection_Type)
   is
   begin
      Invoke (This, Selection_PreviousSubdocument);
   end PreviousSubdocument;

   procedure SelectColumn
     (This : Selection_Type)
   is
   begin
      Invoke (This, Selection_SelectColumn);
   end SelectColumn;

   procedure SelectCurrentFont
     (This : Selection_Type)
   is
   begin
      Invoke (This, Selection_SelectCurrentFont);
   end SelectCurrentFont;

   procedure SelectCurrentAlignment
     (This : Selection_Type)
   is
   begin
      Invoke (This, Selection_SelectCurrentAlignment);
   end SelectCurrentAlignment;

   procedure SelectCurrentSpacing
     (This : Selection_Type)
   is
   begin
      Invoke (This, Selection_SelectCurrentSpacing);
   end SelectCurrentSpacing;

   procedure SelectCurrentIndent
     (This : Selection_Type)
   is
   begin
      Invoke (This, Selection_SelectCurrentIndent);
   end SelectCurrentIndent;

   procedure SelectCurrentTabs
     (This : Selection_Type)
   is
   begin
      Invoke (This, Selection_SelectCurrentTabs);
   end SelectCurrentTabs;

   procedure SelectCurrentColor
     (This : Selection_Type)
   is
   begin
      Invoke (This, Selection_SelectCurrentColor);
   end SelectCurrentColor;

   procedure CreateTextbox
     (This : Selection_Type)
   is
   begin
      Invoke (This, Selection_CreateTextbox);
   end CreateTextbox;

   procedure WholeStory
     (This : Selection_Type)
   is
   begin
      Invoke (This, Selection_WholeStory);
   end WholeStory;

   procedure SelectRow
     (This : Selection_Type)
   is
   begin
      Invoke (This, Selection_SelectRow);
   end SelectRow;

   procedure SplitTable
     (This : Selection_Type)
   is
   begin
      Invoke (This, Selection_SplitTable);
   end SplitTable;

   procedure InsertRows
     (This    : Selection_Type;
      NumRows : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free    : Boolean := True)
   is
   begin
      Invoke
        (This,
         Selection_InsertRows,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => NumRows),
         Free);
   end InsertRows;

   procedure InsertColumns
     (This : Selection_Type)
   is
   begin
      Invoke (This, Selection_InsertColumns);
   end InsertColumns;

   procedure InsertFormula
     (This         : Selection_Type;
      Formula      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      NumberFormat : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free         : Boolean := True)
   is
   begin
      Invoke
        (This,
         Selection_InsertFormula,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => NumberFormat,
          2 => Formula),
         Free);
   end InsertFormula;

   function NextRevision
     (This : Selection_Type;
      Wrap : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Selection_NextRevision,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Wrap),
         Free);
   end NextRevision;

   function PreviousRevision
     (This : Selection_Type;
      Wrap : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Selection_PreviousRevision,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Wrap),
         Free);
   end PreviousRevision;

   procedure PasteAsNestedTable
     (This : Selection_Type)
   is
   begin
      Invoke (This, Selection_PasteAsNestedTable);
   end PasteAsNestedTable;

   function CreateAutoTextEntry
     (This      : Selection_Type;
      Name      : GNATCOM.Types.VARIANT;
      StyleName : GNATCOM.Types.VARIANT;
      Free      : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Selection_CreateAutoTextEntry,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => StyleName,
          2 => Name),
         Free);
   end CreateAutoTextEntry;

   procedure DetectLanguage
     (This : Selection_Type)
   is
   begin
      Invoke (This, Selection_DetectLanguage);
   end DetectLanguage;

   procedure SelectCell
     (This : Selection_Type)
   is
   begin
      Invoke (This, Selection_SelectCell);
   end SelectCell;

   procedure InsertRowsBelow
     (This    : Selection_Type;
      NumRows : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free    : Boolean := True)
   is
   begin
      Invoke
        (This,
         Selection_InsertRowsBelow,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => NumRows),
         Free);
   end InsertRowsBelow;

   procedure InsertColumnsRight
     (This : Selection_Type)
   is
   begin
      Invoke (This, Selection_InsertColumnsRight);
   end InsertColumnsRight;

   procedure InsertRowsAbove
     (This    : Selection_Type;
      NumRows : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free    : Boolean := True)
   is
   begin
      Invoke
        (This,
         Selection_InsertRowsAbove,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => NumRows),
         Free);
   end InsertRowsAbove;

   procedure RtlRun
     (This : Selection_Type)
   is
   begin
      Invoke (This, Selection_RtlRun);
   end RtlRun;

   procedure LtrRun
     (This : Selection_Type)
   is
   begin
      Invoke (This, Selection_LtrRun);
   end LtrRun;

   procedure BoldRun
     (This : Selection_Type)
   is
   begin
      Invoke (This, Selection_BoldRun);
   end BoldRun;

   procedure ItalicRun
     (This : Selection_Type)
   is
   begin
      Invoke (This, Selection_ItalicRun);
   end ItalicRun;

   procedure RtlPara
     (This : Selection_Type)
   is
   begin
      Invoke (This, Selection_RtlPara);
   end RtlPara;

   procedure LtrPara
     (This : Selection_Type)
   is
   begin
      Invoke (This, Selection_LtrPara);
   end LtrPara;

   procedure InsertDateTime
     (This              : Selection_Type;
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
         Selection_InsertDateTime,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => CalendarType,
          2 => DateLanguage,
          3 => InsertAsFullWidth,
          4 => InsertAsField,
          5 => DateTimeFormat),
         Free);
   end InsertDateTime;

   procedure Sort2000
     (This             : Selection_Type;
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
         Selection_Sort2000,
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
   end Sort2000;

   function ConvertToTable
     (This                 : Selection_Type;
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
         Selection_ConvertToTable,
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

   function Get_NoProofing
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Selection_Get_NoProofing);
   end Get_NoProofing;

   procedure Put_NoProofing
     (This : Selection_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Selection_Put_NoProofing,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_NoProofing;

   function Get_TopLevelTables
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Selection_Get_TopLevelTables);
   end Get_TopLevelTables;

   function Get_LanguageDetected
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Selection_Get_LanguageDetected);
   end Get_LanguageDetected;

   procedure Put_LanguageDetected
     (This : Selection_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Selection_Put_LanguageDetected,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_LanguageDetected;

   function Get_FitTextWidth
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Selection_Get_FitTextWidth);
   end Get_FitTextWidth;

   procedure Put_FitTextWidth
     (This : Selection_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Selection_Put_FitTextWidth,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_FitTextWidth;

   procedure ClearFormatting
     (This : Selection_Type)
   is
   begin
      Invoke (This, Selection_ClearFormatting);
   end ClearFormatting;

   procedure PasteAppendTable
     (This : Selection_Type)
   is
   begin
      Invoke (This, Selection_PasteAppendTable);
   end PasteAppendTable;

   function Get_HTMLDivisions
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Selection_Get_HTMLDivisions);
   end Get_HTMLDivisions;

   function Get_SmartTags
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Selection_Get_SmartTags);
   end Get_SmartTags;

   function Get_ChildShapeRange
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Selection_Get_ChildShapeRange);
   end Get_ChildShapeRange;

   function Get_HasChildShapeRange
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Selection_Get_HasChildShapeRange);
   end Get_HasChildShapeRange;

   function Get_FootnoteOptions
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Selection_Get_FootnoteOptions);
   end Get_FootnoteOptions;

   function Get_EndnoteOptions
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Selection_Get_EndnoteOptions);
   end Get_EndnoteOptions;

   procedure ToggleCharacterCode
     (This : Selection_Type)
   is
   begin
      Invoke (This, Selection_ToggleCharacterCode);
   end ToggleCharacterCode;

   procedure PasteAndFormat
     (This  : Selection_Type;
      uType : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
   is
   begin
      Invoke
        (This,
         Selection_PasteAndFormat,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => uType),
         Free);
   end PasteAndFormat;

   procedure PasteExcelTable
     (This           : Selection_Type;
      LinkedToExcel  : GNATCOM.Types.VARIANT;
      WordFormatting : GNATCOM.Types.VARIANT;
      RTF            : GNATCOM.Types.VARIANT;
      Free           : Boolean := True)
   is
   begin
      Invoke
        (This,
         Selection_PasteExcelTable,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => RTF,
          2 => WordFormatting,
          3 => LinkedToExcel),
         Free);
   end PasteExcelTable;

   procedure ShrinkDiscontiguousSelection
     (This : Selection_Type)
   is
   begin
      Invoke (This, Selection_ShrinkDiscontiguousSelection);
   end ShrinkDiscontiguousSelection;

   procedure InsertStyleSeparator
     (This : Selection_Type)
   is
   begin
      Invoke (This, Selection_InsertStyleSeparator);
   end InsertStyleSeparator;

   procedure Sort
     (This             : Selection_Type;
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
      SubFieldNumber   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      SubFieldNumber2  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      SubFieldNumber3  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free             : Boolean := True)
   is
   begin
      Invoke
        (This,
         Selection_Sort,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => SubFieldNumber3,
          2 => SubFieldNumber2,
          3 => SubFieldNumber,
          4 => LanguageID,
          5 => IgnoreHe,
          6 => IgnoreDiacritics,
          7 => IgnoreKashida,
          8 => IgnoreThe,
          9 => BidiSort,
          10 => CaseSensitive,
          11 => Separator,
          12 => SortColumn,
          13 => SortOrder3,
          14 => SortFieldType3,
          15 => FieldNumber3,
          16 => SortOrder2,
          17 => SortFieldType2,
          18 => FieldNumber2,
          19 => SortOrder,
          20 => SortFieldType,
          21 => FieldNumber,
          22 => ExcludeHeader),
         Free);
   end Sort;

end winword.Selection_Object;

