with GNATCOM.Dispinterface;

package winword.Find_Object is

   type Find_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : Find_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : Find_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : Find_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Forward
     (This : Find_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Forward
     (This : Find_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Font
     (This : Find_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Font
     (This : Find_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Found
     (This : Find_Type)
     return GNATCOM.Types.VARIANT;

   function Get_MatchAllWordForms
     (This : Find_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_MatchAllWordForms
     (This : Find_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_MatchCase
     (This : Find_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_MatchCase
     (This : Find_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_MatchWildcards
     (This : Find_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_MatchWildcards
     (This : Find_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_MatchSoundsLike
     (This : Find_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_MatchSoundsLike
     (This : Find_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_MatchWholeWord
     (This : Find_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_MatchWholeWord
     (This : Find_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_MatchFuzzy
     (This : Find_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_MatchFuzzy
     (This : Find_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_MatchByte
     (This : Find_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_MatchByte
     (This : Find_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ParagraphFormat
     (This : Find_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ParagraphFormat
     (This : Find_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Style
     (This : Find_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Style
     (This : Find_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Text
     (This : Find_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Text
     (This : Find_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_LanguageID
     (This : Find_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_LanguageID
     (This : Find_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Highlight
     (This : Find_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Highlight
     (This : Find_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Replacement
     (This : Find_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Frame
     (This : Find_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Wrap
     (This : Find_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Wrap
     (This : Find_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Format
     (This : Find_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Format
     (This : Find_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_LanguageIDFarEast
     (This : Find_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_LanguageIDFarEast
     (This : Find_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_LanguageIDOther
     (This : Find_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_LanguageIDOther
     (This : Find_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_CorrectHangulEndings
     (This : Find_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_CorrectHangulEndings
     (This : Find_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function ExecuteOld
     (This              : Find_Type;
      FindText          : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      MatchCase         : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      MatchWholeWord    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      MatchWildcards    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      MatchSoundsLike   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      MatchAllWordForms : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Forward           : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Wrap              : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Format            : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ReplaceWith       : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Replace           : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free              : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure ClearFormatting
     (This : Find_Type);

   procedure SetAllFuzzyOptions
     (This : Find_Type);

   procedure ClearAllFuzzyOptions
     (This : Find_Type);

   function Execute
     (This              : Find_Type;
      FindText          : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      MatchCase         : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      MatchWholeWord    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      MatchWildcards    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      MatchSoundsLike   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      MatchAllWordForms : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Forward           : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Wrap              : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Format            : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ReplaceWith       : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Replace           : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      MatchKashida      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      MatchDiacritics   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      MatchAlefHamza    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      MatchControl      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free              : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Get_NoProofing
     (This : Find_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_NoProofing
     (This : Find_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_MatchKashida
     (This : Find_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_MatchKashida
     (This : Find_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_MatchDiacritics
     (This : Find_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_MatchDiacritics
     (This : Find_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_MatchAlefHamza
     (This : Find_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_MatchAlefHamza
     (This : Find_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_MatchControl
     (This : Find_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_MatchControl
     (This : Find_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

end winword.Find_Object;

