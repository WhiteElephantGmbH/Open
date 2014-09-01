with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.uRange_Interface is

   procedure Initialize (This : in out uRange_Type) is
   begin
      Set_IID (This, IID_uRange);
   end Initialize;

   function Pointer (This : uRange_Type)
     return Pointer_To_uRange
   is
   begin
      return To_Pointer_To_uRange (Address (This));
   end Pointer;

   procedure Attach (This    : in out uRange_Type;
                     Pointer : in     Pointer_To_uRange)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Text
     (This : uRange_Type)
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
     (This : uRange_Type;
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
     (This : uRange_Type)
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
     (This : uRange_Type;
      prop : Pointer_To_uRange)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_FormattedText
         (Pointer (This),
          prop));

   end Put_FormattedText;

   function Get_Start
     (This : uRange_Type)
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
     (This : uRange_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Start
         (Pointer (This),
          prop));

   end Put_Start;

   function Get_End
     (This : uRange_Type)
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
     (This : uRange_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_End
         (Pointer (This),
          prop));

   end Put_End;

   function Get_Font
     (This : uRange_Type)
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
     (This : uRange_Type;
      prop : Pointer_To_uFont)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Font
         (Pointer (This),
          prop));

   end Put_Font;

   function Get_Duplicate
     (This : uRange_Type)
     return Pointer_To_uRange
   is
       RetVal : aliased Pointer_To_uRange;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Duplicate
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Duplicate;

   function Get_StoryType
     (This : uRange_Type)
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

   function Get_Tables
     (This : uRange_Type)
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
     (This : uRange_Type)
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
     (This : uRange_Type)
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
     (This : uRange_Type)
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
     (This : uRange_Type)
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
     (This : uRange_Type)
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
     (This : uRange_Type)
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
     (This : uRange_Type)
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
     (This : uRange_Type)
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
     (This : uRange_Type)
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
     (This : uRange_Type)
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
     (This : uRange_Type;
      prop : Pointer_To_Borders)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Borders
         (Pointer (This),
          prop));

   end Put_Borders;

   function Get_Shading
     (This : uRange_Type)
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

   function Get_TextRetrievalMode
     (This : uRange_Type)
     return Pointer_To_TextRetrievalMode
   is
       RetVal : aliased Pointer_To_TextRetrievalMode;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_TextRetrievalMode
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_TextRetrievalMode;

   procedure Put_TextRetrievalMode
     (This : uRange_Type;
      prop : Pointer_To_TextRetrievalMode)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_TextRetrievalMode
         (Pointer (This),
          prop));

   end Put_TextRetrievalMode;

   function Get_Fields
     (This : uRange_Type)
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
     (This : uRange_Type)
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
     (This : uRange_Type)
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
     (This : uRange_Type)
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
     (This : uRange_Type;
      prop : Pointer_To_uParagraphFormat)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ParagraphFormat
         (Pointer (This),
          prop));

   end Put_ParagraphFormat;

   function Get_ListFormat
     (This : uRange_Type)
     return Pointer_To_ListFormat
   is
       RetVal : aliased Pointer_To_ListFormat;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ListFormat
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ListFormat;

   function Get_Bookmarks
     (This : uRange_Type)
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

   function Get_Application
     (This : uRange_Type)
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
     (This : uRange_Type)
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
     (This : uRange_Type)
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

   function Get_Bold
     (This : uRange_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Bold
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Bold;

   procedure Put_Bold
     (This : uRange_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Bold
         (Pointer (This),
          prop));

   end Put_Bold;

   function Get_Italic
     (This : uRange_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Italic
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Italic;

   procedure Put_Italic
     (This : uRange_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Italic
         (Pointer (This),
          prop));

   end Put_Italic;

   function Get_Underline
     (This : uRange_Type)
     return WdUnderline
   is
       RetVal : aliased WdUnderline;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Underline
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Underline;

   procedure Put_Underline
     (This : uRange_Type;
      prop : WdUnderline)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Underline
         (Pointer (This),
          prop));

   end Put_Underline;

   function Get_EmphasisMark
     (This : uRange_Type)
     return WdEmphasisMark
   is
       RetVal : aliased WdEmphasisMark;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_EmphasisMark
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_EmphasisMark;

   procedure Put_EmphasisMark
     (This : uRange_Type;
      prop : WdEmphasisMark)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_EmphasisMark
         (Pointer (This),
          prop));

   end Put_EmphasisMark;

   function Get_DisableCharacterSpaceGrid
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DisableCharacterSpaceGrid
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DisableCharacterSpaceGrid;

   procedure Put_DisableCharacterSpaceGrid
     (This : uRange_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DisableCharacterSpaceGrid
         (Pointer (This),
          prop));

   end Put_DisableCharacterSpaceGrid;

   function Get_Revisions
     (This : uRange_Type)
     return Pointer_To_Revisions
   is
       RetVal : aliased Pointer_To_Revisions;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Revisions
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Revisions;

   function Get_Style
     (This : uRange_Type)
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
     (This : uRange_Type;
      prop : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Style
         (Pointer (This),
          prop));

   end Put_Style;

   function Get_StoryLength
     (This : uRange_Type)
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
     (This : uRange_Type)
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
     (This : uRange_Type;
      prop : WdLanguageID)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_LanguageID
         (Pointer (This),
          prop));

   end Put_LanguageID;

   function Get_SynonymInfo
     (This : uRange_Type)
     return Pointer_To_SynonymInfo
   is
       RetVal : aliased Pointer_To_SynonymInfo;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SynonymInfo
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_SynonymInfo;

   function Get_Hyperlinks
     (This : uRange_Type)
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

   function Get_ListParagraphs
     (This : uRange_Type)
     return Pointer_To_ListParagraphs
   is
       RetVal : aliased Pointer_To_ListParagraphs;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ListParagraphs
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ListParagraphs;

   function Get_Subdocuments
     (This : uRange_Type)
     return Pointer_To_Subdocuments
   is
       RetVal : aliased Pointer_To_Subdocuments;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Subdocuments
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Subdocuments;

   function Get_GrammarChecked
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_GrammarChecked
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_GrammarChecked;

   procedure Put_GrammarChecked
     (This : uRange_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_GrammarChecked
         (Pointer (This),
          prop));

   end Put_GrammarChecked;

   function Get_SpellingChecked
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SpellingChecked
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_SpellingChecked;

   procedure Put_SpellingChecked
     (This : uRange_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_SpellingChecked
         (Pointer (This),
          prop));

   end Put_SpellingChecked;

   function Get_HighlightColorIndex
     (This : uRange_Type)
     return WdColorIndex
   is
       RetVal : aliased WdColorIndex;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_HighlightColorIndex
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_HighlightColorIndex;

   procedure Put_HighlightColorIndex
     (This : uRange_Type;
      prop : WdColorIndex)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_HighlightColorIndex
         (Pointer (This),
          prop));

   end Put_HighlightColorIndex;

   function Get_Columns
     (This : uRange_Type)
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
     (This : uRange_Type)
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

   function Get_CanEdit
     (This : uRange_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_CanEdit
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_CanEdit;

   function Get_CanPaste
     (This : uRange_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_CanPaste
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_CanPaste;

   function Get_IsEndOfRowMark
     (This : uRange_Type)
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
     (This : uRange_Type)
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
     (This : uRange_Type)
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
     (This : uRange_Type)
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

   function Get_PageSetup
     (This : uRange_Type)
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
     (This : uRange_Type;
      prop : Pointer_To_PageSetup)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_PageSetup
         (Pointer (This),
          prop));

   end Put_PageSetup;

   function Get_ShapeRange
     (This : uRange_Type)
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

   function Get_Case
     (This : uRange_Type)
     return WdCharacterCase
   is
       RetVal : aliased WdCharacterCase;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Case
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Case;

   procedure Put_Case
     (This : uRange_Type;
      prop : WdCharacterCase)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Case
         (Pointer (This),
          prop));

   end Put_Case;

   function Get_Information
     (This  : uRange_Type;
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

   function Get_ReadabilityStatistics
     (This : uRange_Type)
     return Pointer_To_ReadabilityStatistics
   is
       RetVal : aliased Pointer_To_ReadabilityStatistics;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ReadabilityStatistics
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ReadabilityStatistics;

   function Get_GrammaticalErrors
     (This : uRange_Type)
     return Pointer_To_ProofreadingErrors
   is
       RetVal : aliased Pointer_To_ProofreadingErrors;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_GrammaticalErrors
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_GrammaticalErrors;

   function Get_SpellingErrors
     (This : uRange_Type)
     return Pointer_To_ProofreadingErrors
   is
       RetVal : aliased Pointer_To_ProofreadingErrors;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SpellingErrors
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_SpellingErrors;

   function Get_Orientation
     (This : uRange_Type)
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
     (This : uRange_Type;
      prop : WdTextOrientation)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Orientation
         (Pointer (This),
          prop));

   end Put_Orientation;

   function Get_InlineShapes
     (This : uRange_Type)
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

   function Get_NextStoryRange
     (This : uRange_Type)
     return Pointer_To_uRange
   is
       RetVal : aliased Pointer_To_uRange;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_NextStoryRange
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_NextStoryRange;

   function Get_LanguageIDFarEast
     (This : uRange_Type)
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
     (This : uRange_Type;
      prop : WdLanguageID)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_LanguageIDFarEast
         (Pointer (This),
          prop));

   end Put_LanguageIDFarEast;

   function Get_LanguageIDOther
     (This : uRange_Type)
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
     (This : uRange_Type;
      prop : WdLanguageID)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_LanguageIDOther
         (Pointer (This),
          prop));

   end Put_LanguageIDOther;

   procedure uSelect
     (This : uRange_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.uSelect
         (Pointer (This)));

   end uSelect;

   procedure SetRange
     (This  : uRange_Type;
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
     (This      : uRange_Type;
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
     (This : uRange_Type;
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
     (This : uRange_Type;
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
     (This  : uRange_Type;
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
     (This  : uRange_Type;
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
     (This   : uRange_Type;
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
     (This   : uRange_Type;
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
     (This  : uRange_Type;
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
     (This  : uRange_Type;
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
     (This  : uRange_Type;
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
     (This  : uRange_Type;
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
     (This  : uRange_Type;
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
     (This  : uRange_Type;
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
     (This  : uRange_Type;
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
     (This  : uRange_Type;
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
     (This  : uRange_Type;
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
     (This : uRange_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Cut
         (Pointer (This)));

   end Cut;

   procedure Copy
     (This : uRange_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Copy
         (Pointer (This)));

   end Copy;

   procedure Paste
     (This : uRange_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Paste
         (Pointer (This)));

   end Paste;

   procedure InsertBreak
     (This  : uRange_Type;
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
     (This   : uRange_Type;
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
     (This   : uRange_Type;
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
     (This  : uRange_Type;
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

   procedure WholeStory
     (This : uRange_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.WholeStory
         (Pointer (This)));

   end WholeStory;

   function Expand
     (This : uRange_Type;
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
     (This : uRange_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.InsertParagraph
         (Pointer (This)));

   end InsertParagraph;

   procedure InsertParagraphAfter
     (This : uRange_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.InsertParagraphAfter
         (Pointer (This)));

   end InsertParagraphAfter;

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
     (This              : uRange_Type;
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
     (This            : uRange_Type;
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
     (This              : uRange_Type;
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
     (This          : uRange_Type;
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
     (This : uRange_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.CopyAsPicture
         (Pointer (This)));

   end CopyAsPicture;

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
     (This : uRange_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.SortAscending
         (Pointer (This)));

   end SortAscending;

   procedure SortDescending
     (This : uRange_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.SortDescending
         (Pointer (This)));

   end SortDescending;

   function IsEqual
     (This   : uRange_Type;
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
     (This : uRange_Type)
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
     (This  : uRange_Type;
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
     (This : uRange_Type;
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
     (This : uRange_Type;
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

   procedure LookupNameProperties
     (This : uRange_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.LookupNameProperties
         (Pointer (This)));

   end LookupNameProperties;

   function ComputeStatistics
     (This      : uRange_Type;
      Statistic : WdStatistic)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ComputeStatistics
         (Pointer (This),
          Statistic,
          RetVal'Unchecked_Access));

      return RetVal;
   end ComputeStatistics;

   procedure Relocate
     (This      : uRange_Type;
      Direction : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Relocate
         (Pointer (This),
          Direction));

   end Relocate;

   procedure CheckSynonyms
     (This : uRange_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.CheckSynonyms
         (Pointer (This)));

   end CheckSynonyms;

   procedure SubscribeTo
     (This    : uRange_Type;
      Edition : GNATCOM.Types.BSTR;
      Format  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Free    : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.SubscribeTo
         (Pointer (This),
          Edition,
          Format));

      if Free then
               GNATCOM.Interface.Free (Edition);
      
      end if;

   end SubscribeTo;

   procedure CreatePublisher
     (This         : uRange_Type;
      Edition      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ContainsPICT : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ContainsRTF  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ContainsText : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.CreatePublisher
         (Pointer (This),
          Edition,
          ContainsPICT,
          ContainsRTF,
          ContainsText));

   end CreatePublisher;

   procedure InsertAutoText
     (This : uRange_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.InsertAutoText
         (Pointer (This)));

   end InsertAutoText;

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
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.InsertDatabase
         (Pointer (This),
          Format,
          Style,
          LinkToSource,
          Connection,
          SQLStatement,
          SQLStatement1,
          PasswordDocument,
          PasswordTemplate,
          WritePasswordDocument,
          WritePasswordTemplate,
          DataSource,
          From,
          To,
          IncludeFields));

   end InsertDatabase;

   procedure AutoFormat
     (This : uRange_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.AutoFormat
         (Pointer (This)));

   end AutoFormat;

   procedure CheckGrammar
     (This : uRange_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.CheckGrammar
         (Pointer (This)));

   end CheckGrammar;

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
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.CheckSpelling
         (Pointer (This),
          CustomDictionary,
          IgnoreUppercase,
          AlwaysSuggest,
          CustomDictionary2,
          CustomDictionary3,
          CustomDictionary4,
          CustomDictionary5,
          CustomDictionary6,
          CustomDictionary7,
          CustomDictionary8,
          CustomDictionary9,
          CustomDictionary10));

   end CheckSpelling;

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
     return Pointer_To_SpellingSuggestions
   is
       RetVal : aliased Pointer_To_SpellingSuggestions;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.GetSpellingSuggestions
         (Pointer (This),
          CustomDictionary,
          IgnoreUppercase,
          MainDictionary,
          SuggestionMode,
          CustomDictionary2,
          CustomDictionary3,
          CustomDictionary4,
          CustomDictionary5,
          CustomDictionary6,
          CustomDictionary7,
          CustomDictionary8,
          CustomDictionary9,
          CustomDictionary10,
          RetVal'Unchecked_Access));

      return RetVal;
   end GetSpellingSuggestions;

   procedure InsertParagraphBefore
     (This : uRange_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.InsertParagraphBefore
         (Pointer (This)));

   end InsertParagraphBefore;

   procedure NextSubdocument
     (This : uRange_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.NextSubdocument
         (Pointer (This)));

   end NextSubdocument;

   procedure PreviousSubdocument
     (This : uRange_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.PreviousSubdocument
         (Pointer (This)));

   end PreviousSubdocument;

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
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ConvertHangulAndHanja
         (Pointer (This),
          ConversionsMode,
          FastConversion,
          CheckHangulEnding,
          EnableRecentOrdering,
          CustomDictionary));

   end ConvertHangulAndHanja;

   procedure PasteAsNestedTable
     (This : uRange_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.PasteAsNestedTable
         (Pointer (This)));

   end PasteAsNestedTable;

   procedure ModifyEnclosure
     (This         : uRange_Type;
      Style        : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Symbol       : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      EnclosedText : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ModifyEnclosure
         (Pointer (This),
          Style,
          Symbol,
          EnclosedText));

   end ModifyEnclosure;

   procedure PhoneticGuide
     (This      : uRange_Type;
      Text      : GNATCOM.Types.BSTR;
      Alignment : WdPhoneticGuideAlignmentType;
      uRaise    : Interfaces.C.long;
      FontSize  : Interfaces.C.long;
      FontName  : GNATCOM.Types.BSTR;
      Free      : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.PhoneticGuide
         (Pointer (This),
          Text,
          Alignment,
          uRaise,
          FontSize,
          FontName));

      if Free then
               GNATCOM.Interface.Free (Text);
               GNATCOM.Interface.Free (FontName);
      
      end if;

   end PhoneticGuide;

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
          LanguageID));

   end Sort;

   procedure DetectLanguage
     (This : uRange_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.DetectLanguage
         (Pointer (This)));

   end DetectLanguage;

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

   procedure TCSCConverter
     (This                     : uRange_Type;
      WdTCSCConverterDirection : winword.WdTCSCConverterDirection;
      CommonTerms              : GNATCOM.Types.VARIANT_BOOL;
      UseVariants              : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.TCSCConverter
         (Pointer (This),
          WdTCSCConverterDirection,
          CommonTerms,
          UseVariants));

   end TCSCConverter;

   function Get_LanguageDetected
     (This : uRange_Type)
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
     (This : uRange_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_LanguageDetected
         (Pointer (This),
          prop));

   end Put_LanguageDetected;

   function Get_FitTextWidth
     (This : uRange_Type)
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
     (This : uRange_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_FitTextWidth
         (Pointer (This),
          prop));

   end Put_FitTextWidth;

   function Get_HorizontalInVertical
     (This : uRange_Type)
     return WdHorizontalInVerticalType
   is
       RetVal : aliased WdHorizontalInVerticalType;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_HorizontalInVertical
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_HorizontalInVertical;

   procedure Put_HorizontalInVertical
     (This : uRange_Type;
      prop : WdHorizontalInVerticalType)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_HorizontalInVertical
         (Pointer (This),
          prop));

   end Put_HorizontalInVertical;

   function Get_TwoLinesInOne
     (This : uRange_Type)
     return WdTwoLinesInOneType
   is
       RetVal : aliased WdTwoLinesInOneType;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_TwoLinesInOne
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_TwoLinesInOne;

   procedure Put_TwoLinesInOne
     (This : uRange_Type;
      prop : WdTwoLinesInOneType)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_TwoLinesInOne
         (Pointer (This),
          prop));

   end Put_TwoLinesInOne;

   function Get_CombineCharacters
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_CombineCharacters
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_CombineCharacters;

   procedure Put_CombineCharacters
     (This : uRange_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_CombineCharacters
         (Pointer (This),
          prop));

   end Put_CombineCharacters;

   function Get_NoProofing
     (This : uRange_Type)
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
     (This : uRange_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_NoProofing
         (Pointer (This),
          prop));

   end Put_NoProofing;

   function Get_TopLevelTables
     (This : uRange_Type)
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

   function Get_Scripts
     (This : uRange_Type)
     return Pointer_To_Scripts
   is
       RetVal : aliased Pointer_To_Scripts;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Scripts
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Scripts;

   function Get_CharacterWidth
     (This : uRange_Type)
     return WdCharacterWidth
   is
       RetVal : aliased WdCharacterWidth;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_CharacterWidth
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_CharacterWidth;

   procedure Put_CharacterWidth
     (This : uRange_Type;
      prop : WdCharacterWidth)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_CharacterWidth
         (Pointer (This),
          prop));

   end Put_CharacterWidth;

   function Get_Kana
     (This : uRange_Type)
     return WdKana
   is
       RetVal : aliased WdKana;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Kana
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Kana;

   procedure Put_Kana
     (This : uRange_Type;
      prop : WdKana)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Kana
         (Pointer (This),
          prop));

   end Put_Kana;

   function Get_BoldBi
     (This : uRange_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_BoldBi
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_BoldBi;

   procedure Put_BoldBi
     (This : uRange_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_BoldBi
         (Pointer (This),
          prop));

   end Put_BoldBi;

   function Get_ItalicBi
     (This : uRange_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ItalicBi
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ItalicBi;

   procedure Put_ItalicBi
     (This : uRange_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ItalicBi
         (Pointer (This),
          prop));

   end Put_ItalicBi;

   function Get_ID
     (This : uRange_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ID
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ID;

   procedure Put_ID
     (This : uRange_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ID
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_ID;

   function Get_HTMLDivisions
     (This : uRange_Type)
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
     (This : uRange_Type)
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

   function Get_ShowAll
     (This : uRange_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ShowAll
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ShowAll;

   procedure Put_ShowAll
     (This : uRange_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ShowAll
         (Pointer (This),
          prop));

   end Put_ShowAll;

   function Get_Document
     (This : uRange_Type)
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

   function Get_FootnoteOptions
     (This : uRange_Type)
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
     (This : uRange_Type)
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

   procedure PasteAndFormat
     (This  : uRange_Type;
      uType : WdRecoveryType)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.PasteAndFormat
         (Pointer (This),
          uType));

   end PasteAndFormat;

   procedure PasteExcelTable
     (This           : uRange_Type;
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

   procedure PasteAppendTable
     (This : uRange_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.PasteAppendTable
         (Pointer (This)));

   end PasteAppendTable;

end winword.uRange_Interface;

