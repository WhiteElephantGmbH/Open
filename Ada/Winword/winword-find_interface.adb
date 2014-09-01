with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.Find_Interface is

   procedure Initialize (This : in out Find_Type) is
   begin
      Set_IID (This, IID_Find);
   end Initialize;

   function Pointer (This : Find_Type)
     return Pointer_To_Find
   is
   begin
      return To_Pointer_To_Find (Address (This));
   end Pointer;

   procedure Attach (This    : in out Find_Type;
                     Pointer : in     Pointer_To_Find)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : Find_Type)
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
     (This : Find_Type)
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
     (This : Find_Type)
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

   function Get_Forward
     (This : Find_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Forward
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Forward;

   procedure Put_Forward
     (This : Find_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Forward
         (Pointer (This),
          prop));

   end Put_Forward;

   function Get_Font
     (This : Find_Type)
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
     (This : Find_Type;
      prop : Pointer_To_uFont)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Font
         (Pointer (This),
          prop));

   end Put_Font;

   function Get_Found
     (This : Find_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Found
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Found;

   function Get_MatchAllWordForms
     (This : Find_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_MatchAllWordForms
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_MatchAllWordForms;

   procedure Put_MatchAllWordForms
     (This : Find_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_MatchAllWordForms
         (Pointer (This),
          prop));

   end Put_MatchAllWordForms;

   function Get_MatchCase
     (This : Find_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_MatchCase
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_MatchCase;

   procedure Put_MatchCase
     (This : Find_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_MatchCase
         (Pointer (This),
          prop));

   end Put_MatchCase;

   function Get_MatchWildcards
     (This : Find_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_MatchWildcards
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_MatchWildcards;

   procedure Put_MatchWildcards
     (This : Find_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_MatchWildcards
         (Pointer (This),
          prop));

   end Put_MatchWildcards;

   function Get_MatchSoundsLike
     (This : Find_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_MatchSoundsLike
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_MatchSoundsLike;

   procedure Put_MatchSoundsLike
     (This : Find_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_MatchSoundsLike
         (Pointer (This),
          prop));

   end Put_MatchSoundsLike;

   function Get_MatchWholeWord
     (This : Find_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_MatchWholeWord
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_MatchWholeWord;

   procedure Put_MatchWholeWord
     (This : Find_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_MatchWholeWord
         (Pointer (This),
          prop));

   end Put_MatchWholeWord;

   function Get_MatchFuzzy
     (This : Find_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_MatchFuzzy
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_MatchFuzzy;

   procedure Put_MatchFuzzy
     (This : Find_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_MatchFuzzy
         (Pointer (This),
          prop));

   end Put_MatchFuzzy;

   function Get_MatchByte
     (This : Find_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_MatchByte
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_MatchByte;

   procedure Put_MatchByte
     (This : Find_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_MatchByte
         (Pointer (This),
          prop));

   end Put_MatchByte;

   function Get_ParagraphFormat
     (This : Find_Type)
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
     (This : Find_Type;
      prop : Pointer_To_uParagraphFormat)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ParagraphFormat
         (Pointer (This),
          prop));

   end Put_ParagraphFormat;

   function Get_Style
     (This : Find_Type)
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
     (This : Find_Type;
      prop : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Style
         (Pointer (This),
          prop));

   end Put_Style;

   function Get_Text
     (This : Find_Type)
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
     (This : Find_Type;
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

   function Get_LanguageID
     (This : Find_Type)
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
     (This : Find_Type;
      prop : WdLanguageID)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_LanguageID
         (Pointer (This),
          prop));

   end Put_LanguageID;

   function Get_Highlight
     (This : Find_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Highlight
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Highlight;

   procedure Put_Highlight
     (This : Find_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Highlight
         (Pointer (This),
          prop));

   end Put_Highlight;

   function Get_Replacement
     (This : Find_Type)
     return Pointer_To_Replacement
   is
       RetVal : aliased Pointer_To_Replacement;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Replacement
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Replacement;

   function Get_Frame
     (This : Find_Type)
     return Pointer_To_Frame
   is
       RetVal : aliased Pointer_To_Frame;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Frame
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Frame;

   function Get_Wrap
     (This : Find_Type)
     return WdFindWrap
   is
       RetVal : aliased WdFindWrap;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Wrap
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Wrap;

   procedure Put_Wrap
     (This : Find_Type;
      prop : WdFindWrap)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Wrap
         (Pointer (This),
          prop));

   end Put_Wrap;

   function Get_Format
     (This : Find_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Format
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Format;

   procedure Put_Format
     (This : Find_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Format
         (Pointer (This),
          prop));

   end Put_Format;

   function Get_LanguageIDFarEast
     (This : Find_Type)
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
     (This : Find_Type;
      prop : WdLanguageID)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_LanguageIDFarEast
         (Pointer (This),
          prop));

   end Put_LanguageIDFarEast;

   function Get_LanguageIDOther
     (This : Find_Type)
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
     (This : Find_Type;
      prop : WdLanguageID)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_LanguageIDOther
         (Pointer (This),
          prop));

   end Put_LanguageIDOther;

   function Get_CorrectHangulEndings
     (This : Find_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_CorrectHangulEndings
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_CorrectHangulEndings;

   procedure Put_CorrectHangulEndings
     (This : Find_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_CorrectHangulEndings
         (Pointer (This),
          prop));

   end Put_CorrectHangulEndings;

   function ExecuteOld
     (This              : Find_Type;
      FindText          : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      MatchCase         : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      MatchWholeWord    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      MatchWildcards    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      MatchSoundsLike   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      MatchAllWordForms : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Forward           : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Wrap              : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Format            : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ReplaceWith       : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Replace           : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ExecuteOld
         (Pointer (This),
          FindText,
          MatchCase,
          MatchWholeWord,
          MatchWildcards,
          MatchSoundsLike,
          MatchAllWordForms,
          Forward,
          Wrap,
          Format,
          ReplaceWith,
          Replace,
          RetVal'Unchecked_Access));

      return RetVal;
   end ExecuteOld;

   procedure ClearFormatting
     (This : Find_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ClearFormatting
         (Pointer (This)));

   end ClearFormatting;

   procedure SetAllFuzzyOptions
     (This : Find_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.SetAllFuzzyOptions
         (Pointer (This)));

   end SetAllFuzzyOptions;

   procedure ClearAllFuzzyOptions
     (This : Find_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ClearAllFuzzyOptions
         (Pointer (This)));

   end ClearAllFuzzyOptions;

   function Execute
     (This              : Find_Type;
      FindText          : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      MatchCase         : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      MatchWholeWord    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      MatchWildcards    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      MatchSoundsLike   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      MatchAllWordForms : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Forward           : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Wrap              : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Format            : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ReplaceWith       : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Replace           : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      MatchKashida      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      MatchDiacritics   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      MatchAlefHamza    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      MatchControl      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Execute
         (Pointer (This),
          FindText,
          MatchCase,
          MatchWholeWord,
          MatchWildcards,
          MatchSoundsLike,
          MatchAllWordForms,
          Forward,
          Wrap,
          Format,
          ReplaceWith,
          Replace,
          MatchKashida,
          MatchDiacritics,
          MatchAlefHamza,
          MatchControl,
          RetVal'Unchecked_Access));

      return RetVal;
   end Execute;

   function Get_NoProofing
     (This : Find_Type)
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
     (This : Find_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_NoProofing
         (Pointer (This),
          prop));

   end Put_NoProofing;

   function Get_MatchKashida
     (This : Find_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_MatchKashida
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_MatchKashida;

   procedure Put_MatchKashida
     (This : Find_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_MatchKashida
         (Pointer (This),
          prop));

   end Put_MatchKashida;

   function Get_MatchDiacritics
     (This : Find_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_MatchDiacritics
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_MatchDiacritics;

   procedure Put_MatchDiacritics
     (This : Find_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_MatchDiacritics
         (Pointer (This),
          prop));

   end Put_MatchDiacritics;

   function Get_MatchAlefHamza
     (This : Find_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_MatchAlefHamza
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_MatchAlefHamza;

   procedure Put_MatchAlefHamza
     (This : Find_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_MatchAlefHamza
         (Pointer (This),
          prop));

   end Put_MatchAlefHamza;

   function Get_MatchControl
     (This : Find_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_MatchControl
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_MatchControl;

   procedure Put_MatchControl
     (This : Find_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_MatchControl
         (Pointer (This),
          prop));

   end Put_MatchControl;

end winword.Find_Interface;

