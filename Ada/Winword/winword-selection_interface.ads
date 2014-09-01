with GNATCOM.Dispinterface;

package winword.Selection_Interface is

   type Selection_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Selection_Type);

   function Pointer (This : Selection_Type)
     return Pointer_To_Selection;

   procedure Attach (This    : in out Selection_Type;
                     Pointer : in     Pointer_To_Selection);

   function Get_Text
     (This : Selection_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_Text
     (This : Selection_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_FormattedText
     (This : Selection_Type)
     return Pointer_To_uRange;

   procedure Put_FormattedText
     (This : Selection_Type;
      prop : Pointer_To_uRange);

   function Get_Start
     (This : Selection_Type)
     return Interfaces.C.long;

   procedure Put_Start
     (This : Selection_Type;
      prop : Interfaces.C.long);

   function Get_End
     (This : Selection_Type)
     return Interfaces.C.long;

   procedure Put_End
     (This : Selection_Type;
      prop : Interfaces.C.long);

   function Get_Font
     (This : Selection_Type)
     return Pointer_To_uFont;

   procedure Put_Font
     (This : Selection_Type;
      prop : Pointer_To_uFont);

   function Get_Type
     (This : Selection_Type)
     return WdSelectionType;

   function Get_StoryType
     (This : Selection_Type)
     return WdStoryType;

   function Get_Style
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Style
     (This : Selection_Type;
      prop : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   function Get_Tables
     (This : Selection_Type)
     return Pointer_To_Tables;

   function Get_Words
     (This : Selection_Type)
     return Pointer_To_Words;

   function Get_Sentences
     (This : Selection_Type)
     return Pointer_To_Sentences;

   function Get_Characters
     (This : Selection_Type)
     return Pointer_To_Characters;

   function Get_Footnotes
     (This : Selection_Type)
     return Pointer_To_Footnotes;

   function Get_Endnotes
     (This : Selection_Type)
     return Pointer_To_Endnotes;

   function Get_Comments
     (This : Selection_Type)
     return Pointer_To_Comments;

   function Get_Cells
     (This : Selection_Type)
     return Pointer_To_Cells;

   function Get_Sections
     (This : Selection_Type)
     return Pointer_To_Sections;

   function Get_Paragraphs
     (This : Selection_Type)
     return Pointer_To_Paragraphs;

   function Get_Borders
     (This : Selection_Type)
     return Pointer_To_Borders;

   procedure Put_Borders
     (This : Selection_Type;
      prop : Pointer_To_Borders);

   function Get_Shading
     (This : Selection_Type)
     return Pointer_To_Shading;

   function Get_Fields
     (This : Selection_Type)
     return Pointer_To_Fields;

   function Get_FormFields
     (This : Selection_Type)
     return Pointer_To_FormFields;

   function Get_Frames
     (This : Selection_Type)
     return Pointer_To_Frames;

   function Get_ParagraphFormat
     (This : Selection_Type)
     return Pointer_To_uParagraphFormat;

   procedure Put_ParagraphFormat
     (This : Selection_Type;
      prop : Pointer_To_uParagraphFormat);

   function Get_PageSetup
     (This : Selection_Type)
     return Pointer_To_PageSetup;

   procedure Put_PageSetup
     (This : Selection_Type;
      prop : Pointer_To_PageSetup);

   function Get_Bookmarks
     (This : Selection_Type)
     return Pointer_To_Bookmarks;

   function Get_StoryLength
     (This : Selection_Type)
     return Interfaces.C.long;

   function Get_LanguageID
     (This : Selection_Type)
     return WdLanguageID;

   procedure Put_LanguageID
     (This : Selection_Type;
      prop : WdLanguageID);

   function Get_LanguageIDFarEast
     (This : Selection_Type)
     return WdLanguageID;

   procedure Put_LanguageIDFarEast
     (This : Selection_Type;
      prop : WdLanguageID);

   function Get_LanguageIDOther
     (This : Selection_Type)
     return WdLanguageID;

   procedure Put_LanguageIDOther
     (This : Selection_Type;
      prop : WdLanguageID);

   function Get_Hyperlinks
     (This : Selection_Type)
     return Pointer_To_Hyperlinks;

   function Get_Columns
     (This : Selection_Type)
     return Pointer_To_Columns;

   function Get_Rows
     (This : Selection_Type)
     return Pointer_To_Rows;

   function Get_HeaderFooter
     (This : Selection_Type)
     return Pointer_To_HeaderFooter;

   function Get_IsEndOfRowMark
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   function Get_BookmarkID
     (This : Selection_Type)
     return Interfaces.C.long;

   function Get_PreviousBookmarkID
     (This : Selection_Type)
     return Interfaces.C.long;

   function Get_Find
     (This : Selection_Type)
     return Pointer_To_Find;

   function Get_Range
     (This : Selection_Type)
     return Pointer_To_uRange;

   function Get_Information
     (This  : Selection_Type;
      uType : WdInformation)
     return GNATCOM.Types.VARIANT;

   function Get_Flags
     (This : Selection_Type)
     return WdSelectionFlags;

   procedure Put_Flags
     (This : Selection_Type;
      prop : WdSelectionFlags);

   function Get_Active
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   function Get_StartIsActive
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_StartIsActive
     (This : Selection_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_IPAtEndOfLine
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   function Get_ExtendMode
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_ExtendMode
     (This : Selection_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_ColumnSelectMode
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_ColumnSelectMode
     (This : Selection_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_Orientation
     (This : Selection_Type)
     return WdTextOrientation;

   procedure Put_Orientation
     (This : Selection_Type;
      prop : WdTextOrientation);

   function Get_InlineShapes
     (This : Selection_Type)
     return Pointer_To_InlineShapes;

   function Get_Application
     (This : Selection_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : Selection_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : Selection_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Document
     (This : Selection_Type)
     return Pointer_To_uDocument;

   function Get_ShapeRange
     (This : Selection_Type)
     return Pointer_To_ShapeRange;

   procedure uSelect
     (This : Selection_Type);

   procedure SetRange
     (This  : Selection_Type;
      Start : Interfaces.C.long;
      uEnd  : Interfaces.C.long);

   procedure Collapse
     (This      : Selection_Type;
      Direction : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   procedure InsertBefore
     (This : Selection_Type;
      Text : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   procedure InsertAfter
     (This : Selection_Type;
      Text : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Next
     (This  : Selection_Type;
      Unit  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Count : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_uRange;

   function Previous
     (This  : Selection_Type;
      Unit  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Count : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_uRange;

   function StartOf
     (This   : Selection_Type;
      Unit   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Extend : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Interfaces.C.long;

   function EndOf
     (This   : Selection_Type;
      Unit   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Extend : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Interfaces.C.long;

   function Move
     (This  : Selection_Type;
      Unit  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Count : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Interfaces.C.long;

   function MoveStart
     (This  : Selection_Type;
      Unit  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Count : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Interfaces.C.long;

   function MoveEnd
     (This  : Selection_Type;
      Unit  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Count : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Interfaces.C.long;

   function MoveWhile
     (This  : Selection_Type;
      Cset  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Count : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Interfaces.C.long;

   function MoveStartWhile
     (This  : Selection_Type;
      Cset  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Count : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Interfaces.C.long;

   function MoveEndWhile
     (This  : Selection_Type;
      Cset  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Count : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Interfaces.C.long;

   function MoveUntil
     (This  : Selection_Type;
      Cset  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Count : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Interfaces.C.long;

   function MoveStartUntil
     (This  : Selection_Type;
      Cset  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Count : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Interfaces.C.long;

   function MoveEndUntil
     (This  : Selection_Type;
      Cset  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Count : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Interfaces.C.long;

   procedure Cut
     (This : Selection_Type);

   procedure Copy
     (This : Selection_Type);

   procedure Paste
     (This : Selection_Type);

   procedure InsertBreak
     (This  : Selection_Type;
      uType : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   procedure InsertFile
     (This               : Selection_Type;
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
     (This   : Selection_Type;
      uRange : Pointer_To_uRange)
     return GNATCOM.Types.VARIANT_BOOL;

   function InRange
     (This   : Selection_Type;
      uRange : Pointer_To_uRange)
     return GNATCOM.Types.VARIANT_BOOL;

   function Delete
     (This  : Selection_Type;
      Unit  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Count : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Interfaces.C.long;

   function Expand
     (This : Selection_Type;
      Unit : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Interfaces.C.long;

   procedure InsertParagraph
     (This : Selection_Type);

   procedure InsertParagraphAfter
     (This : Selection_Type);

   function ConvertToTableOld
     (This               : Selection_Type;
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
     (This              : Selection_Type;
      DateTimeFormat    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      InsertAsField     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      InsertAsFullWidth : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   procedure InsertSymbol
     (This            : Selection_Type;
      CharacterNumber : Interfaces.C.long;
      Font            : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Unicode         : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Bias            : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   procedure InsertCrossReference
     (This              : Selection_Type;
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
     (This          : Selection_Type;
      Label         : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Title         : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      TitleAutoText : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Position      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   procedure CopyAsPicture
     (This : Selection_Type);

   procedure SortOld
     (This           : Selection_Type;
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
     (This : Selection_Type);

   procedure SortDescending
     (This : Selection_Type);

   function IsEqual
     (This   : Selection_Type;
      uRange : Pointer_To_uRange)
     return GNATCOM.Types.VARIANT_BOOL;

   function Calculate
     (This : Selection_Type)
     return Interfaces.C.C_float;

   function uGoTo
     (This  : Selection_Type;
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
     (This : Selection_Type;
      What : WdGoToItem)
     return Pointer_To_uRange;

   function GoToPrevious
     (This : Selection_Type;
      What : WdGoToItem)
     return Pointer_To_uRange;

   procedure PasteSpecial
     (This          : Selection_Type;
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

   function PreviousField
     (This : Selection_Type)
     return Pointer_To_Field;

   function NextField
     (This : Selection_Type)
     return Pointer_To_Field;

   procedure InsertParagraphBefore
     (This : Selection_Type);

   procedure InsertCells
     (This       : Selection_Type;
      ShiftCells : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   procedure Extend
     (This      : Selection_Type;
      Character : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   procedure Shrink
     (This : Selection_Type);

   function MoveLeft
     (This   : Selection_Type;
      Unit   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Count  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Extend : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Interfaces.C.long;

   function MoveRight
     (This   : Selection_Type;
      Unit   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Count  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Extend : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Interfaces.C.long;

   function MoveUp
     (This   : Selection_Type;
      Unit   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Count  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Extend : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Interfaces.C.long;

   function MoveDown
     (This   : Selection_Type;
      Unit   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Count  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Extend : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Interfaces.C.long;

   function HomeKey
     (This   : Selection_Type;
      Unit   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Extend : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Interfaces.C.long;

   function EndKey
     (This   : Selection_Type;
      Unit   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Extend : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Interfaces.C.long;

   procedure EscapeKey
     (This : Selection_Type);

   procedure TypeText
     (This : Selection_Type;
      Text : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   procedure CopyFormat
     (This : Selection_Type);

   procedure PasteFormat
     (This : Selection_Type);

   procedure TypeParagraph
     (This : Selection_Type);

   procedure TypeBackspace
     (This : Selection_Type);

   procedure NextSubdocument
     (This : Selection_Type);

   procedure PreviousSubdocument
     (This : Selection_Type);

   procedure SelectColumn
     (This : Selection_Type);

   procedure SelectCurrentFont
     (This : Selection_Type);

   procedure SelectCurrentAlignment
     (This : Selection_Type);

   procedure SelectCurrentSpacing
     (This : Selection_Type);

   procedure SelectCurrentIndent
     (This : Selection_Type);

   procedure SelectCurrentTabs
     (This : Selection_Type);

   procedure SelectCurrentColor
     (This : Selection_Type);

   procedure CreateTextbox
     (This : Selection_Type);

   procedure WholeStory
     (This : Selection_Type);

   procedure SelectRow
     (This : Selection_Type);

   procedure SplitTable
     (This : Selection_Type);

   procedure InsertRows
     (This    : Selection_Type;
      NumRows : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   procedure InsertColumns
     (This : Selection_Type);

   procedure InsertFormula
     (This         : Selection_Type;
      Formula      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      NumberFormat : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   function NextRevision
     (This : Selection_Type;
      Wrap : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Revision;

   function PreviousRevision
     (This : Selection_Type;
      Wrap : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Revision;

   procedure PasteAsNestedTable
     (This : Selection_Type);

   function CreateAutoTextEntry
     (This      : Selection_Type;
      Name      : GNATCOM.Types.BSTR;
      StyleName : GNATCOM.Types.BSTR;
      Free      : Boolean := True)
     return Pointer_To_AutoTextEntry;

   procedure DetectLanguage
     (This : Selection_Type);

   procedure SelectCell
     (This : Selection_Type);

   procedure InsertRowsBelow
     (This    : Selection_Type;
      NumRows : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   procedure InsertColumnsRight
     (This : Selection_Type);

   procedure InsertRowsAbove
     (This    : Selection_Type;
      NumRows : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   procedure RtlRun
     (This : Selection_Type);

   procedure LtrRun
     (This : Selection_Type);

   procedure BoldRun
     (This : Selection_Type);

   procedure ItalicRun
     (This : Selection_Type);

   procedure RtlPara
     (This : Selection_Type);

   procedure LtrPara
     (This : Selection_Type);

   procedure InsertDateTime
     (This              : Selection_Type;
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

   procedure Sort2000
     (This             : Selection_Type;
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

   function ConvertToTable
     (This                 : Selection_Type;
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

   function Get_NoProofing
     (This : Selection_Type)
     return Interfaces.C.long;

   procedure Put_NoProofing
     (This : Selection_Type;
      prop : Interfaces.C.long);

   function Get_TopLevelTables
     (This : Selection_Type)
     return Pointer_To_Tables;

   function Get_LanguageDetected
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_LanguageDetected
     (This : Selection_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_FitTextWidth
     (This : Selection_Type)
     return Interfaces.C.C_float;

   procedure Put_FitTextWidth
     (This : Selection_Type;
      prop : Interfaces.C.C_float);

   procedure ClearFormatting
     (This : Selection_Type);

   procedure PasteAppendTable
     (This : Selection_Type);

   function Get_HTMLDivisions
     (This : Selection_Type)
     return Pointer_To_HTMLDivisions;

   function Get_SmartTags
     (This : Selection_Type)
     return Pointer_To_SmartTags;

   function Get_ChildShapeRange
     (This : Selection_Type)
     return Pointer_To_ShapeRange;

   function Get_HasChildShapeRange
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   function Get_FootnoteOptions
     (This : Selection_Type)
     return Pointer_To_FootnoteOptions;

   function Get_EndnoteOptions
     (This : Selection_Type)
     return Pointer_To_EndnoteOptions;

   procedure ToggleCharacterCode
     (This : Selection_Type);

   procedure PasteAndFormat
     (This  : Selection_Type;
      uType : WdRecoveryType);

   procedure PasteExcelTable
     (This           : Selection_Type;
      LinkedToExcel  : GNATCOM.Types.VARIANT_BOOL;
      WordFormatting : GNATCOM.Types.VARIANT_BOOL;
      RTF            : GNATCOM.Types.VARIANT_BOOL);

   procedure ShrinkDiscontiguousSelection
     (This : Selection_Type);

   procedure InsertStyleSeparator
     (This : Selection_Type);

   procedure Sort
     (This             : Selection_Type;
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
        GNATCOM.Types.PVARIANT_MISSING;
      SubFieldNumber   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SubFieldNumber2  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SubFieldNumber3  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

end winword.Selection_Interface;

