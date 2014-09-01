with GNATCOM.Dispinterface;

package winword.Selection_Object is

   type Selection_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Text
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Text
     (This : Selection_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_FormattedText
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_FormattedText
     (This : Selection_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Start
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Start
     (This : Selection_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_End
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_End
     (This : Selection_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Font
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Font
     (This : Selection_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Type
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT;

   function Get_StoryType
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Style
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Style
     (This : Selection_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Tables
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Words
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Sentences
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Characters
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Footnotes
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Endnotes
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Comments
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Cells
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Sections
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Paragraphs
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Borders
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Borders
     (This : Selection_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Shading
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Fields
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT;

   function Get_FormFields
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Frames
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ParagraphFormat
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ParagraphFormat
     (This : Selection_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_PageSetup
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_PageSetup
     (This : Selection_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Bookmarks
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT;

   function Get_StoryLength
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT;

   function Get_LanguageID
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_LanguageID
     (This : Selection_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_LanguageIDFarEast
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_LanguageIDFarEast
     (This : Selection_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_LanguageIDOther
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_LanguageIDOther
     (This : Selection_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Hyperlinks
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Columns
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Rows
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT;

   function Get_HeaderFooter
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT;

   function Get_IsEndOfRowMark
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT;

   function Get_BookmarkID
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT;

   function Get_PreviousBookmarkID
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Find
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Range
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Information
     (This  : Selection_Type;
      uType : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Get_Flags
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Flags
     (This : Selection_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Active
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT;

   function Get_StartIsActive
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_StartIsActive
     (This : Selection_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_IPAtEndOfLine
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ExtendMode
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ExtendMode
     (This : Selection_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ColumnSelectMode
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ColumnSelectMode
     (This : Selection_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Orientation
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Orientation
     (This : Selection_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_InlineShapes
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Application
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Document
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ShapeRange
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT;

   procedure uSelect
     (This : Selection_Type);

   procedure SetRange
     (This  : Selection_Type;
      Start : GNATCOM.Types.VARIANT;
      uEnd  : GNATCOM.Types.VARIANT;
      Free  : Boolean := True);

   procedure Collapse
     (This      : Selection_Type;
      Direction : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free      : Boolean := True);

   procedure InsertBefore
     (This : Selection_Type;
      Text : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure InsertAfter
     (This : Selection_Type;
      Text : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Next
     (This  : Selection_Type;
      Unit  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Count : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Previous
     (This  : Selection_Type;
      Unit  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Count : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function StartOf
     (This   : Selection_Type;
      Unit   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Extend : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function EndOf
     (This   : Selection_Type;
      Unit   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Extend : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Move
     (This  : Selection_Type;
      Unit  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Count : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function MoveStart
     (This  : Selection_Type;
      Unit  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Count : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function MoveEnd
     (This  : Selection_Type;
      Unit  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Count : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function MoveWhile
     (This  : Selection_Type;
      Cset  : GNATCOM.Types.VARIANT;
      Count : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function MoveStartWhile
     (This  : Selection_Type;
      Cset  : GNATCOM.Types.VARIANT;
      Count : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function MoveEndWhile
     (This  : Selection_Type;
      Cset  : GNATCOM.Types.VARIANT;
      Count : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function MoveUntil
     (This  : Selection_Type;
      Cset  : GNATCOM.Types.VARIANT;
      Count : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function MoveStartUntil
     (This  : Selection_Type;
      Cset  : GNATCOM.Types.VARIANT;
      Count : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function MoveEndUntil
     (This  : Selection_Type;
      Cset  : GNATCOM.Types.VARIANT;
      Count : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure Cut
     (This : Selection_Type);

   procedure Copy
     (This : Selection_Type);

   procedure Paste
     (This : Selection_Type);

   procedure InsertBreak
     (This  : Selection_Type;
      uType : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free  : Boolean := True);

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
      Free               : Boolean := True);

   function InStory
     (This   : Selection_Type;
      uRange : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function InRange
     (This   : Selection_Type;
      uRange : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Delete
     (This  : Selection_Type;
      Unit  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Count : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Expand
     (This : Selection_Type;
      Unit : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure InsertParagraph
     (This : Selection_Type);

   procedure InsertParagraphAfter
     (This : Selection_Type);

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
     return GNATCOM.Types.VARIANT;

   procedure InsertDateTimeOld
     (This              : Selection_Type;
      DateTimeFormat    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      InsertAsField     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      InsertAsFullWidth : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free              : Boolean := True);

   procedure InsertSymbol
     (This            : Selection_Type;
      CharacterNumber : GNATCOM.Types.VARIANT;
      Font            : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Unicode         : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Bias            : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free            : Boolean := True);

   procedure InsertCrossReference
     (This              : Selection_Type;
      ReferenceType     : GNATCOM.Types.VARIANT;
      ReferenceKind     : GNATCOM.Types.VARIANT;
      ReferenceItem     : GNATCOM.Types.VARIANT;
      InsertAsHyperlink : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      IncludePosition   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free              : Boolean := True);

   procedure InsertCaption
     (This          : Selection_Type;
      Label         : GNATCOM.Types.VARIANT;
      Title         : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      TitleAutoText : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Position      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free          : Boolean := True);

   procedure CopyAsPicture
     (This : Selection_Type);

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
      Free           : Boolean := True);

   procedure SortAscending
     (This : Selection_Type);

   procedure SortDescending
     (This : Selection_Type);

   function IsEqual
     (This   : Selection_Type;
      uRange : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Calculate
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT;

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
     return GNATCOM.Types.VARIANT;

   function GoToNext
     (This : Selection_Type;
      What : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function GoToPrevious
     (This : Selection_Type;
      What : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
     return GNATCOM.Types.VARIANT;

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
      Free          : Boolean := True);

   function PreviousField
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT;

   function NextField
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT;

   procedure InsertParagraphBefore
     (This : Selection_Type);

   procedure InsertCells
     (This       : Selection_Type;
      ShiftCells : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free       : Boolean := True);

   procedure Extend
     (This      : Selection_Type;
      Character : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free      : Boolean := True);

   procedure Shrink
     (This : Selection_Type);

   function MoveLeft
     (This   : Selection_Type;
      Unit   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Count  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Extend : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function MoveRight
     (This   : Selection_Type;
      Unit   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Count  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Extend : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function MoveUp
     (This   : Selection_Type;
      Unit   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Count  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Extend : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function MoveDown
     (This   : Selection_Type;
      Unit   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Count  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Extend : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function HomeKey
     (This   : Selection_Type;
      Unit   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Extend : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function EndKey
     (This   : Selection_Type;
      Unit   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Extend : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure EscapeKey
     (This : Selection_Type);

   procedure TypeText
     (This : Selection_Type;
      Text : GNATCOM.Types.VARIANT;
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
      NumRows : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free    : Boolean := True);

   procedure InsertColumns
     (This : Selection_Type);

   procedure InsertFormula
     (This         : Selection_Type;
      Formula      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      NumberFormat : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free         : Boolean := True);

   function NextRevision
     (This : Selection_Type;
      Wrap : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function PreviousRevision
     (This : Selection_Type;
      Wrap : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure PasteAsNestedTable
     (This : Selection_Type);

   function CreateAutoTextEntry
     (This      : Selection_Type;
      Name      : GNATCOM.Types.VARIANT;
      StyleName : GNATCOM.Types.VARIANT;
      Free      : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure DetectLanguage
     (This : Selection_Type);

   procedure SelectCell
     (This : Selection_Type);

   procedure InsertRowsBelow
     (This    : Selection_Type;
      NumRows : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free    : Boolean := True);

   procedure InsertColumnsRight
     (This : Selection_Type);

   procedure InsertRowsAbove
     (This    : Selection_Type;
      NumRows : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free    : Boolean := True);

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
      Free             : Boolean := True);

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
     return GNATCOM.Types.VARIANT;

   function Get_NoProofing
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_NoProofing
     (This : Selection_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_TopLevelTables
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT;

   function Get_LanguageDetected
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_LanguageDetected
     (This : Selection_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_FitTextWidth
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_FitTextWidth
     (This : Selection_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure ClearFormatting
     (This : Selection_Type);

   procedure PasteAppendTable
     (This : Selection_Type);

   function Get_HTMLDivisions
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT;

   function Get_SmartTags
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ChildShapeRange
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT;

   function Get_HasChildShapeRange
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT;

   function Get_FootnoteOptions
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT;

   function Get_EndnoteOptions
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT;

   procedure ToggleCharacterCode
     (This : Selection_Type);

   procedure PasteAndFormat
     (This  : Selection_Type;
      uType : GNATCOM.Types.VARIANT;
      Free  : Boolean := True);

   procedure PasteExcelTable
     (This           : Selection_Type;
      LinkedToExcel  : GNATCOM.Types.VARIANT;
      WordFormatting : GNATCOM.Types.VARIANT;
      RTF            : GNATCOM.Types.VARIANT;
      Free           : Boolean := True);

   procedure ShrinkDiscontiguousSelection
     (This : Selection_Type);

   procedure InsertStyleSeparator
     (This : Selection_Type);

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
      Free             : Boolean := True);

end winword.Selection_Object;

