with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.Selection_Interface is

   procedure Initialize (This : in out Selection_Type) is
   begin
      Set_IID (This, IID_Selection);
   end Initialize;

   function Pointer (This : Selection_Type)
     return Pointer_To_Selection
   is
   begin
      return To_Pointer_To_Selection (Address (This));
   end Pointer;

   procedure Attach (This    : in out Selection_Type;
                     Pointer : in     Pointer_To_Selection)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Text
     (This : Selection_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Text
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Text;

   procedure Put_Text
     (This : Selection_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Text
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_Text;

   function Get_FormattedText
     (This : Selection_Type)
     return Pointer_To_uRange
   is
       RetVal : aliased Pointer_To_uRange;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_FormattedText
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_FormattedText;

   procedure Put_FormattedText
     (This : Selection_Type;
      prop : Pointer_To_uRange)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_FormattedText
         (Pointer (This),
          prop));

   end Put_FormattedText;

   function Get_Start
     (This : Selection_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Start
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Start;

   procedure Put_Start
     (This : Selection_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Start
         (Pointer (This),
          prop));

   end Put_Start;

   function Get_End
     (This : Selection_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_End
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_End;

   procedure Put_End
     (This : Selection_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_End
         (Pointer (This),
          prop));

   end Put_End;

   function Get_Font
     (This : Selection_Type)
     return Pointer_To_uFont
   is
       RetVal : aliased Pointer_To_uFont;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Font
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Font;

   procedure Put_Font
     (This : Selection_Type;
      prop : Pointer_To_uFont)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Font
         (Pointer (This),
          prop));

   end Put_Font;

   function Get_Type
     (This : Selection_Type)
     return WdSelectionType
   is
       RetVal : aliased WdSelectionType;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Type
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Type;

   function Get_StoryType
     (This : Selection_Type)
     return WdStoryType
   is
       RetVal : aliased WdStoryType;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_StoryType
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_StoryType;

   function Get_Style
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT
   is
       RetVal : aliased GNATCOM.Types.VARIANT;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Style
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Style;

   procedure Put_Style
     (This : Selection_Type;
      prop : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Style
         (Pointer (This),
          prop));

   end Put_Style;

   function Get_Tables
     (This : Selection_Type)
     return Pointer_To_Tables
   is
       RetVal : aliased Pointer_To_Tables;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Tables
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Tables;

   function Get_Words
     (This : Selection_Type)
     return Pointer_To_Words
   is
       RetVal : aliased Pointer_To_Words;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Words
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Words;

   function Get_Sentences
     (This : Selection_Type)
     return Pointer_To_Sentences
   is
       RetVal : aliased Pointer_To_Sentences;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Sentences
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Sentences;

   function Get_Characters
     (This : Selection_Type)
     return Pointer_To_Characters
   is
       RetVal : aliased Pointer_To_Characters;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Characters
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Characters;

   function Get_Footnotes
     (This : Selection_Type)
     return Pointer_To_Footnotes
   is
       RetVal : aliased Pointer_To_Footnotes;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Footnotes
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Footnotes;

   function Get_Endnotes
     (This : Selection_Type)
     return Pointer_To_Endnotes
   is
       RetVal : aliased Pointer_To_Endnotes;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Endnotes
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Endnotes;

   function Get_Comments
     (This : Selection_Type)
     return Pointer_To_Comments
   is
       RetVal : aliased Pointer_To_Comments;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Comments
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Comments;

   function Get_Cells
     (This : Selection_Type)
     return Pointer_To_Cells
   is
       RetVal : aliased Pointer_To_Cells;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Cells
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Cells;

   function Get_Sections
     (This : Selection_Type)
     return Pointer_To_Sections
   is
       RetVal : aliased Pointer_To_Sections;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Sections
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Sections;

   function Get_Paragraphs
     (This : Selection_Type)
     return Pointer_To_Paragraphs
   is
       RetVal : aliased Pointer_To_Paragraphs;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Paragraphs
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Paragraphs;

   function Get_Borders
     (This : Selection_Type)
     return Pointer_To_Borders
   is
       RetVal : aliased Pointer_To_Borders;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Borders
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Borders;

   procedure Put_Borders
     (This : Selection_Type;
      prop : Pointer_To_Borders)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Borders
         (Pointer (This),
          prop));

   end Put_Borders;

   function Get_Shading
     (This : Selection_Type)
     return Pointer_To_Shading
   is
       RetVal : aliased Pointer_To_Shading;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Shading
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Shading;

   function Get_Fields
     (This : Selection_Type)
     return Pointer_To_Fields
   is
       RetVal : aliased Pointer_To_Fields;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Fields
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Fields;

   function Get_FormFields
     (This : Selection_Type)
     return Pointer_To_FormFields
   is
       RetVal : aliased Pointer_To_FormFields;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_FormFields
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_FormFields;

   function Get_Frames
     (This : Selection_Type)
     return Pointer_To_Frames
   is
       RetVal : aliased Pointer_To_Frames;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Frames
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Frames;

   function Get_ParagraphFormat
     (This : Selection_Type)
     return Pointer_To_uParagraphFormat
   is
       RetVal : aliased Pointer_To_uParagraphFormat;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ParagraphFormat
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ParagraphFormat;

   procedure Put_ParagraphFormat
     (This : Selection_Type;
      prop : Pointer_To_uParagraphFormat)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ParagraphFormat
         (Pointer (This),
          prop));

   end Put_ParagraphFormat;

   function Get_PageSetup
     (This : Selection_Type)
     return Pointer_To_PageSetup
   is
       RetVal : aliased Pointer_To_PageSetup;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_PageSetup
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_PageSetup;

   procedure Put_PageSetup
     (This : Selection_Type;
      prop : Pointer_To_PageSetup)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_PageSetup
         (Pointer (This),
          prop));

   end Put_PageSetup;

   function Get_Bookmarks
     (This : Selection_Type)
     return Pointer_To_Bookmarks
   is
       RetVal : aliased Pointer_To_Bookmarks;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Bookmarks
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Bookmarks;

   function Get_StoryLength
     (This : Selection_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_StoryLength
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_StoryLength;

   function Get_LanguageID
     (This : Selection_Type)
     return WdLanguageID
   is
       RetVal : aliased WdLanguageID;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_LanguageID
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_LanguageID;

   procedure Put_LanguageID
     (This : Selection_Type;
      prop : WdLanguageID)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_LanguageID
         (Pointer (This),
          prop));

   end Put_LanguageID;

   function Get_LanguageIDFarEast
     (This : Selection_Type)
     return WdLanguageID
   is
       RetVal : aliased WdLanguageID;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_LanguageIDFarEast
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_LanguageIDFarEast;

   procedure Put_LanguageIDFarEast
     (This : Selection_Type;
      prop : WdLanguageID)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_LanguageIDFarEast
         (Pointer (This),
          prop));

   end Put_LanguageIDFarEast;

   function Get_LanguageIDOther
     (This : Selection_Type)
     return WdLanguageID
   is
       RetVal : aliased WdLanguageID;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_LanguageIDOther
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_LanguageIDOther;

   procedure Put_LanguageIDOther
     (This : Selection_Type;
      prop : WdLanguageID)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_LanguageIDOther
         (Pointer (This),
          prop));

   end Put_LanguageIDOther;

   function Get_Hyperlinks
     (This : Selection_Type)
     return Pointer_To_Hyperlinks
   is
       RetVal : aliased Pointer_To_Hyperlinks;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Hyperlinks
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Hyperlinks;

   function Get_Columns
     (This : Selection_Type)
     return Pointer_To_Columns
   is
       RetVal : aliased Pointer_To_Columns;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Columns
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Columns;

   function Get_Rows
     (This : Selection_Type)
     return Pointer_To_Rows
   is
       RetVal : aliased Pointer_To_Rows;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Rows
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Rows;

   function Get_HeaderFooter
     (This : Selection_Type)
     return Pointer_To_HeaderFooter
   is
       RetVal : aliased Pointer_To_HeaderFooter;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_HeaderFooter
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_HeaderFooter;

   function Get_IsEndOfRowMark
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_IsEndOfRowMark
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_IsEndOfRowMark;

   function Get_BookmarkID
     (This : Selection_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_BookmarkID
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_BookmarkID;

   function Get_PreviousBookmarkID
     (This : Selection_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_PreviousBookmarkID
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_PreviousBookmarkID;

   function Get_Find
     (This : Selection_Type)
     return Pointer_To_Find
   is
       RetVal : aliased Pointer_To_Find;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Find
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Find;

   function Get_Range
     (This : Selection_Type)
     return Pointer_To_uRange
   is
       RetVal : aliased Pointer_To_uRange;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Range
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Range;

   function Get_Information
     (This  : Selection_Type;
      uType : WdInformation)
     return GNATCOM.Types.VARIANT
   is
       RetVal : aliased GNATCOM.Types.VARIANT;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Information
         (Pointer (This),
          uType,
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Information;

   function Get_Flags
     (This : Selection_Type)
     return WdSelectionFlags
   is
       RetVal : aliased WdSelectionFlags;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Flags
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Flags;

   procedure Put_Flags
     (This : Selection_Type;
      prop : WdSelectionFlags)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Flags
         (Pointer (This),
          prop));

   end Put_Flags;

   function Get_Active
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Active
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Active;

   function Get_StartIsActive
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_StartIsActive
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_StartIsActive;

   procedure Put_StartIsActive
     (This : Selection_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_StartIsActive
         (Pointer (This),
          prop));

   end Put_StartIsActive;

   function Get_IPAtEndOfLine
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_IPAtEndOfLine
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_IPAtEndOfLine;

   function Get_ExtendMode
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ExtendMode
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ExtendMode;

   procedure Put_ExtendMode
     (This : Selection_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ExtendMode
         (Pointer (This),
          prop));

   end Put_ExtendMode;

   function Get_ColumnSelectMode
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ColumnSelectMode
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ColumnSelectMode;

   procedure Put_ColumnSelectMode
     (This : Selection_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ColumnSelectMode
         (Pointer (This),
          prop));

   end Put_ColumnSelectMode;

   function Get_Orientation
     (This : Selection_Type)
     return WdTextOrientation
   is
       RetVal : aliased WdTextOrientation;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Orientation
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Orientation;

   procedure Put_Orientation
     (This : Selection_Type;
      prop : WdTextOrientation)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Orientation
         (Pointer (This),
          prop));

   end Put_Orientation;

   function Get_InlineShapes
     (This : Selection_Type)
     return Pointer_To_InlineShapes
   is
       RetVal : aliased Pointer_To_InlineShapes;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_InlineShapes
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_InlineShapes;

   function Get_Application
     (This : Selection_Type)
     return Pointer_To_uApplication
   is
       RetVal : aliased Pointer_To_uApplication;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Application
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Application;

   function Get_Creator
     (This : Selection_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Creator
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Creator;

   function Get_Parent
     (This : Selection_Type)
     return GNATCOM.Types.Pointer_To_IDispatch
   is
       RetVal : aliased GNATCOM.Types.Pointer_To_IDispatch;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Parent
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Parent;

   function Get_Document
     (This : Selection_Type)
     return Pointer_To_uDocument
   is
       RetVal : aliased Pointer_To_uDocument;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Document
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Document;

   function Get_ShapeRange
     (This : Selection_Type)
     return Pointer_To_ShapeRange
   is
       RetVal : aliased Pointer_To_ShapeRange;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ShapeRange
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ShapeRange;

   procedure uSelect
     (This : Selection_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.uSelect
         (Pointer (This)));

   end uSelect;

   procedure SetRange
     (This  : Selection_Type;
      Start : Interfaces.C.long;
      uEnd  : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.SetRange
         (Pointer (This),
          Start,
          uEnd));

   end SetRange;

   procedure Collapse
     (This      : Selection_Type;
      Direction : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Collapse
         (Pointer (This),
          Direction));

   end Collapse;

   procedure InsertBefore
     (This : Selection_Type;
      Text : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.InsertBefore
         (Pointer (This),
          Text));

      if Free then
               GNATCOM.Interface.Free (Text);
      
      end if;

   end InsertBefore;

   procedure InsertAfter
     (This : Selection_Type;
      Text : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.InsertAfter
         (Pointer (This),
          Text));

      if Free then
               GNATCOM.Interface.Free (Text);
      
      end if;

   end InsertAfter;

   function Next
     (This  : Selection_Type;
      Unit  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Count : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_uRange
   is
       RetVal : aliased Pointer_To_uRange;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Next
         (Pointer (This),
          Unit,
          Count,
          RetVal'Unchecked_Access));

      return RetVal;
   end Next;

   function Previous
     (This  : Selection_Type;
      Unit  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Count : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_uRange
   is
       RetVal : aliased Pointer_To_uRange;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Previous
         (Pointer (This),
          Unit,
          Count,
          RetVal'Unchecked_Access));

      return RetVal;
   end Previous;

   function StartOf
     (This   : Selection_Type;
      Unit   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Extend : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.StartOf
         (Pointer (This),
          Unit,
          Extend,
          RetVal'Unchecked_Access));

      return RetVal;
   end StartOf;

   function EndOf
     (This   : Selection_Type;
      Unit   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Extend : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.EndOf
         (Pointer (This),
          Unit,
          Extend,
          RetVal'Unchecked_Access));

      return RetVal;
   end EndOf;

   function Move
     (This  : Selection_Type;
      Unit  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Count : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Move
         (Pointer (This),
          Unit,
          Count,
          RetVal'Unchecked_Access));

      return RetVal;
   end Move;

   function MoveStart
     (This  : Selection_Type;
      Unit  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Count : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.MoveStart
         (Pointer (This),
          Unit,
          Count,
          RetVal'Unchecked_Access));

      return RetVal;
   end MoveStart;

   function MoveEnd
     (This  : Selection_Type;
      Unit  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Count : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.MoveEnd
         (Pointer (This),
          Unit,
          Count,
          RetVal'Unchecked_Access));

      return RetVal;
   end MoveEnd;

   function MoveWhile
     (This  : Selection_Type;
      Cset  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Count : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.MoveWhile
         (Pointer (This),
          Cset,
          Count,
          RetVal'Unchecked_Access));

      return RetVal;
   end MoveWhile;

   function MoveStartWhile
     (This  : Selection_Type;
      Cset  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Count : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.MoveStartWhile
         (Pointer (This),
          Cset,
          Count,
          RetVal'Unchecked_Access));

      return RetVal;
   end MoveStartWhile;

   function MoveEndWhile
     (This  : Selection_Type;
      Cset  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Count : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.MoveEndWhile
         (Pointer (This),
          Cset,
          Count,
          RetVal'Unchecked_Access));

      return RetVal;
   end MoveEndWhile;

   function MoveUntil
     (This  : Selection_Type;
      Cset  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Count : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.MoveUntil
         (Pointer (This),
          Cset,
          Count,
          RetVal'Unchecked_Access));

      return RetVal;
   end MoveUntil;

   function MoveStartUntil
     (This  : Selection_Type;
      Cset  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Count : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.MoveStartUntil
         (Pointer (This),
          Cset,
          Count,
          RetVal'Unchecked_Access));

      return RetVal;
   end MoveStartUntil;

   function MoveEndUntil
     (This  : Selection_Type;
      Cset  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Count : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.MoveEndUntil
         (Pointer (This),
          Cset,
          Count,
          RetVal'Unchecked_Access));

      return RetVal;
   end MoveEndUntil;

   procedure Cut
     (This : Selection_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Cut
         (Pointer (This)));

   end Cut;

   procedure Copy
     (This : Selection_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Copy
         (Pointer (This)));

   end Copy;

   procedure Paste
     (This : Selection_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Paste
         (Pointer (This)));

   end Paste;

   procedure InsertBreak
     (This  : Selection_Type;
      uType : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.InsertBreak
         (Pointer (This),
          uType));

   end InsertBreak;

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
      Free               : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.InsertFile
         (Pointer (This),
          FileName,
          uRange,
          ConfirmConversions,
          Link,
          Attachment));

      if Free then
               GNATCOM.Interface.Free (FileName);
      
      end if;

   end InsertFile;

   function InStory
     (This   : Selection_Type;
      uRange : Pointer_To_uRange)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.InStory
         (Pointer (This),
          uRange,
          RetVal'Unchecked_Access));

      return RetVal;
   end InStory;

   function InRange
     (This   : Selection_Type;
      uRange : Pointer_To_uRange)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.InRange
         (Pointer (This),
          uRange,
          RetVal'Unchecked_Access));

      return RetVal;
   end InRange;

   function Delete
     (This  : Selection_Type;
      Unit  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Count : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Delete
         (Pointer (This),
          Unit,
          Count,
          RetVal'Unchecked_Access));

      return RetVal;
   end Delete;

   function Expand
     (This : Selection_Type;
      Unit : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Expand
         (Pointer (This),
          Unit,
          RetVal'Unchecked_Access));

      return RetVal;
   end Expand;

   procedure InsertParagraph
     (This : Selection_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.InsertParagraph
         (Pointer (This)));

   end InsertParagraph;

   procedure InsertParagraphAfter
     (This : Selection_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.InsertParagraphAfter
         (Pointer (This)));

   end InsertParagraphAfter;

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
     return Pointer_To_Table
   is
       RetVal : aliased Pointer_To_Table;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ConvertToTableOld
         (Pointer (This),
          Separator,
          NumRows,
          NumColumns,
          InitialColumnWidth,
          Format,
          ApplyBorders,
          ApplyShading,
          ApplyFont,
          ApplyColor,
          ApplyHeadingRows,
          ApplyLastRow,
          ApplyFirstColumn,
          ApplyLastColumn,
          AutoFit,
          RetVal'Unchecked_Access));

      return RetVal;
   end ConvertToTableOld;

   procedure InsertDateTimeOld
     (This              : Selection_Type;
      DateTimeFormat    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      InsertAsField     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      InsertAsFullWidth : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.InsertDateTimeOld
         (Pointer (This),
          DateTimeFormat,
          InsertAsField,
          InsertAsFullWidth));

   end InsertDateTimeOld;

   procedure InsertSymbol
     (This            : Selection_Type;
      CharacterNumber : Interfaces.C.long;
      Font            : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Unicode         : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Bias            : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.InsertSymbol
         (Pointer (This),
          CharacterNumber,
          Font,
          Unicode,
          Bias));

   end InsertSymbol;

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
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.InsertCrossReference
         (Pointer (This),
          ReferenceType,
          ReferenceKind,
          ReferenceItem,
          InsertAsHyperlink,
          IncludePosition));

   end InsertCrossReference;

   procedure InsertCaption
     (This          : Selection_Type;
      Label         : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Title         : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      TitleAutoText : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Position      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.InsertCaption
         (Pointer (This),
          Label,
          Title,
          TitleAutoText,
          Position));

   end InsertCaption;

   procedure CopyAsPicture
     (This : Selection_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.CopyAsPicture
         (Pointer (This)));

   end CopyAsPicture;

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
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.SortOld
         (Pointer (This),
          ExcludeHeader,
          FieldNumber,
          SortFieldType,
          SortOrder,
          FieldNumber2,
          SortFieldType2,
          SortOrder2,
          FieldNumber3,
          SortFieldType3,
          SortOrder3,
          SortColumn,
          Separator,
          CaseSensitive,
          LanguageID));

   end SortOld;

   procedure SortAscending
     (This : Selection_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.SortAscending
         (Pointer (This)));

   end SortAscending;

   procedure SortDescending
     (This : Selection_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.SortDescending
         (Pointer (This)));

   end SortDescending;

   function IsEqual
     (This   : Selection_Type;
      uRange : Pointer_To_uRange)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.IsEqual
         (Pointer (This),
          uRange,
          RetVal'Unchecked_Access));

      return RetVal;
   end IsEqual;

   function Calculate
     (This : Selection_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Calculate
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Calculate;

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
     return Pointer_To_uRange
   is
       RetVal : aliased Pointer_To_uRange;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.uGoTo
         (Pointer (This),
          What,
          Which,
          Count,
          Name,
          RetVal'Unchecked_Access));

      return RetVal;
   end uGoTo;

   function GoToNext
     (This : Selection_Type;
      What : WdGoToItem)
     return Pointer_To_uRange
   is
       RetVal : aliased Pointer_To_uRange;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.GoToNext
         (Pointer (This),
          What,
          RetVal'Unchecked_Access));

      return RetVal;
   end GoToNext;

   function GoToPrevious
     (This : Selection_Type;
      What : WdGoToItem)
     return Pointer_To_uRange
   is
       RetVal : aliased Pointer_To_uRange;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.GoToPrevious
         (Pointer (This),
          What,
          RetVal'Unchecked_Access));

      return RetVal;
   end GoToPrevious;

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
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.PasteSpecial
         (Pointer (This),
          IconIndex,
          Link,
          Placement,
          DisplayAsIcon,
          DataType,
          IconFileName,
          IconLabel));

   end PasteSpecial;

   function PreviousField
     (This : Selection_Type)
     return Pointer_To_Field
   is
       RetVal : aliased Pointer_To_Field;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.PreviousField
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end PreviousField;

   function NextField
     (This : Selection_Type)
     return Pointer_To_Field
   is
       RetVal : aliased Pointer_To_Field;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.NextField
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end NextField;

   procedure InsertParagraphBefore
     (This : Selection_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.InsertParagraphBefore
         (Pointer (This)));

   end InsertParagraphBefore;

   procedure InsertCells
     (This       : Selection_Type;
      ShiftCells : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.InsertCells
         (Pointer (This),
          ShiftCells));

   end InsertCells;

   procedure Extend
     (This      : Selection_Type;
      Character : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Extend
         (Pointer (This),
          Character));

   end Extend;

   procedure Shrink
     (This : Selection_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Shrink
         (Pointer (This)));

   end Shrink;

   function MoveLeft
     (This   : Selection_Type;
      Unit   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Count  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Extend : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.MoveLeft
         (Pointer (This),
          Unit,
          Count,
          Extend,
          RetVal'Unchecked_Access));

      return RetVal;
   end MoveLeft;

   function MoveRight
     (This   : Selection_Type;
      Unit   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Count  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Extend : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.MoveRight
         (Pointer (This),
          Unit,
          Count,
          Extend,
          RetVal'Unchecked_Access));

      return RetVal;
   end MoveRight;

   function MoveUp
     (This   : Selection_Type;
      Unit   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Count  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Extend : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.MoveUp
         (Pointer (This),
          Unit,
          Count,
          Extend,
          RetVal'Unchecked_Access));

      return RetVal;
   end MoveUp;

   function MoveDown
     (This   : Selection_Type;
      Unit   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Count  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Extend : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.MoveDown
         (Pointer (This),
          Unit,
          Count,
          Extend,
          RetVal'Unchecked_Access));

      return RetVal;
   end MoveDown;

   function HomeKey
     (This   : Selection_Type;
      Unit   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Extend : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.HomeKey
         (Pointer (This),
          Unit,
          Extend,
          RetVal'Unchecked_Access));

      return RetVal;
   end HomeKey;

   function EndKey
     (This   : Selection_Type;
      Unit   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Extend : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.EndKey
         (Pointer (This),
          Unit,
          Extend,
          RetVal'Unchecked_Access));

      return RetVal;
   end EndKey;

   procedure EscapeKey
     (This : Selection_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.EscapeKey
         (Pointer (This)));

   end EscapeKey;

   procedure TypeText
     (This : Selection_Type;
      Text : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.TypeText
         (Pointer (This),
          Text));

      if Free then
               GNATCOM.Interface.Free (Text);
      
      end if;

   end TypeText;

   procedure CopyFormat
     (This : Selection_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.CopyFormat
         (Pointer (This)));

   end CopyFormat;

   procedure PasteFormat
     (This : Selection_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.PasteFormat
         (Pointer (This)));

   end PasteFormat;

   procedure TypeParagraph
     (This : Selection_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.TypeParagraph
         (Pointer (This)));

   end TypeParagraph;

   procedure TypeBackspace
     (This : Selection_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.TypeBackspace
         (Pointer (This)));

   end TypeBackspace;

   procedure NextSubdocument
     (This : Selection_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.NextSubdocument
         (Pointer (This)));

   end NextSubdocument;

   procedure PreviousSubdocument
     (This : Selection_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.PreviousSubdocument
         (Pointer (This)));

   end PreviousSubdocument;

   procedure SelectColumn
     (This : Selection_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.SelectColumn
         (Pointer (This)));

   end SelectColumn;

   procedure SelectCurrentFont
     (This : Selection_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.SelectCurrentFont
         (Pointer (This)));

   end SelectCurrentFont;

   procedure SelectCurrentAlignment
     (This : Selection_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.SelectCurrentAlignment
         (Pointer (This)));

   end SelectCurrentAlignment;

   procedure SelectCurrentSpacing
     (This : Selection_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.SelectCurrentSpacing
         (Pointer (This)));

   end SelectCurrentSpacing;

   procedure SelectCurrentIndent
     (This : Selection_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.SelectCurrentIndent
         (Pointer (This)));

   end SelectCurrentIndent;

   procedure SelectCurrentTabs
     (This : Selection_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.SelectCurrentTabs
         (Pointer (This)));

   end SelectCurrentTabs;

   procedure SelectCurrentColor
     (This : Selection_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.SelectCurrentColor
         (Pointer (This)));

   end SelectCurrentColor;

   procedure CreateTextbox
     (This : Selection_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.CreateTextbox
         (Pointer (This)));

   end CreateTextbox;

   procedure WholeStory
     (This : Selection_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.WholeStory
         (Pointer (This)));

   end WholeStory;

   procedure SelectRow
     (This : Selection_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.SelectRow
         (Pointer (This)));

   end SelectRow;

   procedure SplitTable
     (This : Selection_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.SplitTable
         (Pointer (This)));

   end SplitTable;

   procedure InsertRows
     (This    : Selection_Type;
      NumRows : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.InsertRows
         (Pointer (This),
          NumRows));

   end InsertRows;

   procedure InsertColumns
     (This : Selection_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.InsertColumns
         (Pointer (This)));

   end InsertColumns;

   procedure InsertFormula
     (This         : Selection_Type;
      Formula      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      NumberFormat : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.InsertFormula
         (Pointer (This),
          Formula,
          NumberFormat));

   end InsertFormula;

   function NextRevision
     (This : Selection_Type;
      Wrap : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Revision
   is
       RetVal : aliased Pointer_To_Revision;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.NextRevision
         (Pointer (This),
          Wrap,
          RetVal'Unchecked_Access));

      return RetVal;
   end NextRevision;

   function PreviousRevision
     (This : Selection_Type;
      Wrap : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Revision
   is
       RetVal : aliased Pointer_To_Revision;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.PreviousRevision
         (Pointer (This),
          Wrap,
          RetVal'Unchecked_Access));

      return RetVal;
   end PreviousRevision;

   procedure PasteAsNestedTable
     (This : Selection_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.PasteAsNestedTable
         (Pointer (This)));

   end PasteAsNestedTable;

   function CreateAutoTextEntry
     (This      : Selection_Type;
      Name      : GNATCOM.Types.BSTR;
      StyleName : GNATCOM.Types.BSTR;
      Free      : Boolean := True)
     return Pointer_To_AutoTextEntry
   is
       RetVal : aliased Pointer_To_AutoTextEntry;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.CreateAutoTextEntry
         (Pointer (This),
          Name,
          StyleName,
          RetVal'Unchecked_Access));

      if Free then
               GNATCOM.Interface.Free (Name);
               GNATCOM.Interface.Free (StyleName);
      
      end if;

      return RetVal;
   end CreateAutoTextEntry;

   procedure DetectLanguage
     (This : Selection_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.DetectLanguage
         (Pointer (This)));

   end DetectLanguage;

   procedure SelectCell
     (This : Selection_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.SelectCell
         (Pointer (This)));

   end SelectCell;

   procedure InsertRowsBelow
     (This    : Selection_Type;
      NumRows : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.InsertRowsBelow
         (Pointer (This),
          NumRows));

   end InsertRowsBelow;

   procedure InsertColumnsRight
     (This : Selection_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.InsertColumnsRight
         (Pointer (This)));

   end InsertColumnsRight;

   procedure InsertRowsAbove
     (This    : Selection_Type;
      NumRows : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.InsertRowsAbove
         (Pointer (This),
          NumRows));

   end InsertRowsAbove;

   procedure RtlRun
     (This : Selection_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.RtlRun
         (Pointer (This)));

   end RtlRun;

   procedure LtrRun
     (This : Selection_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.LtrRun
         (Pointer (This)));

   end LtrRun;

   procedure BoldRun
     (This : Selection_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.BoldRun
         (Pointer (This)));

   end BoldRun;

   procedure ItalicRun
     (This : Selection_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ItalicRun
         (Pointer (This)));

   end ItalicRun;

   procedure RtlPara
     (This : Selection_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.RtlPara
         (Pointer (This)));

   end RtlPara;

   procedure LtrPara
     (This : Selection_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.LtrPara
         (Pointer (This)));

   end LtrPara;

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
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.InsertDateTime
         (Pointer (This),
          DateTimeFormat,
          InsertAsField,
          InsertAsFullWidth,
          DateLanguage,
          CalendarType));

   end InsertDateTime;

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
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Sort2000
         (Pointer (This),
          ExcludeHeader,
          FieldNumber,
          SortFieldType,
          SortOrder,
          FieldNumber2,
          SortFieldType2,
          SortOrder2,
          FieldNumber3,
          SortFieldType3,
          SortOrder3,
          SortColumn,
          Separator,
          CaseSensitive,
          BidiSort,
          IgnoreThe,
          IgnoreKashida,
          IgnoreDiacritics,
          IgnoreHe,
          LanguageID));

   end Sort2000;

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
     return Pointer_To_Table
   is
       RetVal : aliased Pointer_To_Table;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ConvertToTable
         (Pointer (This),
          Separator,
          NumRows,
          NumColumns,
          InitialColumnWidth,
          Format,
          ApplyBorders,
          ApplyShading,
          ApplyFont,
          ApplyColor,
          ApplyHeadingRows,
          ApplyLastRow,
          ApplyFirstColumn,
          ApplyLastColumn,
          AutoFit,
          AutoFitBehavior,
          DefaultTableBehavior,
          RetVal'Unchecked_Access));

      return RetVal;
   end ConvertToTable;

   function Get_NoProofing
     (This : Selection_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_NoProofing
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_NoProofing;

   procedure Put_NoProofing
     (This : Selection_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_NoProofing
         (Pointer (This),
          prop));

   end Put_NoProofing;

   function Get_TopLevelTables
     (This : Selection_Type)
     return Pointer_To_Tables
   is
       RetVal : aliased Pointer_To_Tables;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_TopLevelTables
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_TopLevelTables;

   function Get_LanguageDetected
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_LanguageDetected
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_LanguageDetected;

   procedure Put_LanguageDetected
     (This : Selection_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_LanguageDetected
         (Pointer (This),
          prop));

   end Put_LanguageDetected;

   function Get_FitTextWidth
     (This : Selection_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_FitTextWidth
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_FitTextWidth;

   procedure Put_FitTextWidth
     (This : Selection_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_FitTextWidth
         (Pointer (This),
          prop));

   end Put_FitTextWidth;

   procedure ClearFormatting
     (This : Selection_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ClearFormatting
         (Pointer (This)));

   end ClearFormatting;

   procedure PasteAppendTable
     (This : Selection_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.PasteAppendTable
         (Pointer (This)));

   end PasteAppendTable;

   function Get_HTMLDivisions
     (This : Selection_Type)
     return Pointer_To_HTMLDivisions
   is
       RetVal : aliased Pointer_To_HTMLDivisions;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_HTMLDivisions
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_HTMLDivisions;

   function Get_SmartTags
     (This : Selection_Type)
     return Pointer_To_SmartTags
   is
       RetVal : aliased Pointer_To_SmartTags;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SmartTags
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_SmartTags;

   function Get_ChildShapeRange
     (This : Selection_Type)
     return Pointer_To_ShapeRange
   is
       RetVal : aliased Pointer_To_ShapeRange;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ChildShapeRange
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ChildShapeRange;

   function Get_HasChildShapeRange
     (This : Selection_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_HasChildShapeRange
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_HasChildShapeRange;

   function Get_FootnoteOptions
     (This : Selection_Type)
     return Pointer_To_FootnoteOptions
   is
       RetVal : aliased Pointer_To_FootnoteOptions;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_FootnoteOptions
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_FootnoteOptions;

   function Get_EndnoteOptions
     (This : Selection_Type)
     return Pointer_To_EndnoteOptions
   is
       RetVal : aliased Pointer_To_EndnoteOptions;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_EndnoteOptions
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_EndnoteOptions;

   procedure ToggleCharacterCode
     (This : Selection_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ToggleCharacterCode
         (Pointer (This)));

   end ToggleCharacterCode;

   procedure PasteAndFormat
     (This  : Selection_Type;
      uType : WdRecoveryType)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.PasteAndFormat
         (Pointer (This),
          uType));

   end PasteAndFormat;

   procedure PasteExcelTable
     (This           : Selection_Type;
      LinkedToExcel  : GNATCOM.Types.VARIANT_BOOL;
      WordFormatting : GNATCOM.Types.VARIANT_BOOL;
      RTF            : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.PasteExcelTable
         (Pointer (This),
          LinkedToExcel,
          WordFormatting,
          RTF));

   end PasteExcelTable;

   procedure ShrinkDiscontiguousSelection
     (This : Selection_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ShrinkDiscontiguousSelection
         (Pointer (This)));

   end ShrinkDiscontiguousSelection;

   procedure InsertStyleSeparator
     (This : Selection_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.InsertStyleSeparator
         (Pointer (This)));

   end InsertStyleSeparator;

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
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Sort
         (Pointer (This),
          ExcludeHeader,
          FieldNumber,
          SortFieldType,
          SortOrder,
          FieldNumber2,
          SortFieldType2,
          SortOrder2,
          FieldNumber3,
          SortFieldType3,
          SortOrder3,
          SortColumn,
          Separator,
          CaseSensitive,
          BidiSort,
          IgnoreThe,
          IgnoreKashida,
          IgnoreDiacritics,
          IgnoreHe,
          LanguageID,
          SubFieldNumber,
          SubFieldNumber2,
          SubFieldNumber3));

   end Sort;

end winword.Selection_Interface;

