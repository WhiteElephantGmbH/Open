with GNATCOM.Dispinterface;

package winword.Find_Interface is

   type Find_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Find_Type);

   function Pointer (This : Find_Type)
     return Pointer_To_Find;

   procedure Attach (This    : in out Find_Type;
                     Pointer : in     Pointer_To_Find);

   function Get_Application
     (This : Find_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : Find_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : Find_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Forward
     (This : Find_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_Forward
     (This : Find_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_Font
     (This : Find_Type)
     return Pointer_To_uFont;

   procedure Put_Font
     (This : Find_Type;
      prop : Pointer_To_uFont);

   function Get_Found
     (This : Find_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   function Get_MatchAllWordForms
     (This : Find_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_MatchAllWordForms
     (This : Find_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_MatchCase
     (This : Find_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_MatchCase
     (This : Find_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_MatchWildcards
     (This : Find_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_MatchWildcards
     (This : Find_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_MatchSoundsLike
     (This : Find_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_MatchSoundsLike
     (This : Find_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_MatchWholeWord
     (This : Find_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_MatchWholeWord
     (This : Find_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_MatchFuzzy
     (This : Find_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_MatchFuzzy
     (This : Find_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_MatchByte
     (This : Find_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_MatchByte
     (This : Find_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_ParagraphFormat
     (This : Find_Type)
     return Pointer_To_uParagraphFormat;

   procedure Put_ParagraphFormat
     (This : Find_Type;
      prop : Pointer_To_uParagraphFormat);

   function Get_Style
     (This : Find_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Style
     (This : Find_Type;
      prop : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   function Get_Text
     (This : Find_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_Text
     (This : Find_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_LanguageID
     (This : Find_Type)
     return WdLanguageID;

   procedure Put_LanguageID
     (This : Find_Type;
      prop : WdLanguageID);

   function Get_Highlight
     (This : Find_Type)
     return Interfaces.C.long;

   procedure Put_Highlight
     (This : Find_Type;
      prop : Interfaces.C.long);

   function Get_Replacement
     (This : Find_Type)
     return Pointer_To_Replacement;

   function Get_Frame
     (This : Find_Type)
     return Pointer_To_Frame;

   function Get_Wrap
     (This : Find_Type)
     return WdFindWrap;

   procedure Put_Wrap
     (This : Find_Type;
      prop : WdFindWrap);

   function Get_Format
     (This : Find_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_Format
     (This : Find_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_LanguageIDFarEast
     (This : Find_Type)
     return WdLanguageID;

   procedure Put_LanguageIDFarEast
     (This : Find_Type;
      prop : WdLanguageID);

   function Get_LanguageIDOther
     (This : Find_Type)
     return WdLanguageID;

   procedure Put_LanguageIDOther
     (This : Find_Type;
      prop : WdLanguageID);

   function Get_CorrectHangulEndings
     (This : Find_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_CorrectHangulEndings
     (This : Find_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

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
     return GNATCOM.Types.VARIANT_BOOL;

   procedure ClearFormatting
     (This : Find_Type);

   procedure SetAllFuzzyOptions
     (This : Find_Type);

   procedure ClearAllFuzzyOptions
     (This : Find_Type);

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
     return GNATCOM.Types.VARIANT_BOOL;

   function Get_NoProofing
     (This : Find_Type)
     return Interfaces.C.long;

   procedure Put_NoProofing
     (This : Find_Type;
      prop : Interfaces.C.long);

   function Get_MatchKashida
     (This : Find_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_MatchKashida
     (This : Find_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_MatchDiacritics
     (This : Find_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_MatchDiacritics
     (This : Find_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_MatchAlefHamza
     (This : Find_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_MatchAlefHamza
     (This : Find_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_MatchControl
     (This : Find_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_MatchControl
     (This : Find_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

end winword.Find_Interface;

