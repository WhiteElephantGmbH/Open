package body winword.Find_Object is

   function Get_Application
     (This : Find_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Find_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : Find_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Find_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : Find_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Find_Get_Parent);
   end Get_Parent;

   function Get_Forward
     (This : Find_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Find_Get_Forward);
   end Get_Forward;

   procedure Put_Forward
     (This : Find_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Find_Put_Forward,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Forward;

   function Get_Font
     (This : Find_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Find_Get_Font);
   end Get_Font;

   procedure Put_Font
     (This : Find_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Find_Put_Font,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Font;

   function Get_Found
     (This : Find_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Find_Get_Found);
   end Get_Found;

   function Get_MatchAllWordForms
     (This : Find_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Find_Get_MatchAllWordForms);
   end Get_MatchAllWordForms;

   procedure Put_MatchAllWordForms
     (This : Find_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Find_Put_MatchAllWordForms,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_MatchAllWordForms;

   function Get_MatchCase
     (This : Find_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Find_Get_MatchCase);
   end Get_MatchCase;

   procedure Put_MatchCase
     (This : Find_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Find_Put_MatchCase,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_MatchCase;

   function Get_MatchWildcards
     (This : Find_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Find_Get_MatchWildcards);
   end Get_MatchWildcards;

   procedure Put_MatchWildcards
     (This : Find_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Find_Put_MatchWildcards,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_MatchWildcards;

   function Get_MatchSoundsLike
     (This : Find_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Find_Get_MatchSoundsLike);
   end Get_MatchSoundsLike;

   procedure Put_MatchSoundsLike
     (This : Find_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Find_Put_MatchSoundsLike,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_MatchSoundsLike;

   function Get_MatchWholeWord
     (This : Find_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Find_Get_MatchWholeWord);
   end Get_MatchWholeWord;

   procedure Put_MatchWholeWord
     (This : Find_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Find_Put_MatchWholeWord,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_MatchWholeWord;

   function Get_MatchFuzzy
     (This : Find_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Find_Get_MatchFuzzy);
   end Get_MatchFuzzy;

   procedure Put_MatchFuzzy
     (This : Find_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Find_Put_MatchFuzzy,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_MatchFuzzy;

   function Get_MatchByte
     (This : Find_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Find_Get_MatchByte);
   end Get_MatchByte;

   procedure Put_MatchByte
     (This : Find_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Find_Put_MatchByte,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_MatchByte;

   function Get_ParagraphFormat
     (This : Find_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Find_Get_ParagraphFormat);
   end Get_ParagraphFormat;

   procedure Put_ParagraphFormat
     (This : Find_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Find_Put_ParagraphFormat,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ParagraphFormat;

   function Get_Style
     (This : Find_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Find_Get_Style);
   end Get_Style;

   procedure Put_Style
     (This : Find_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Find_Put_Style,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Style;

   function Get_Text
     (This : Find_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Find_Get_Text);
   end Get_Text;

   procedure Put_Text
     (This : Find_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Find_Put_Text,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Text;

   function Get_LanguageID
     (This : Find_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Find_Get_LanguageID);
   end Get_LanguageID;

   procedure Put_LanguageID
     (This : Find_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Find_Put_LanguageID,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_LanguageID;

   function Get_Highlight
     (This : Find_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Find_Get_Highlight);
   end Get_Highlight;

   procedure Put_Highlight
     (This : Find_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Find_Put_Highlight,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Highlight;

   function Get_Replacement
     (This : Find_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Find_Get_Replacement);
   end Get_Replacement;

   function Get_Frame
     (This : Find_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Find_Get_Frame);
   end Get_Frame;

   function Get_Wrap
     (This : Find_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Find_Get_Wrap);
   end Get_Wrap;

   procedure Put_Wrap
     (This : Find_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Find_Put_Wrap,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Wrap;

   function Get_Format
     (This : Find_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Find_Get_Format);
   end Get_Format;

   procedure Put_Format
     (This : Find_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Find_Put_Format,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Format;

   function Get_LanguageIDFarEast
     (This : Find_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Find_Get_LanguageIDFarEast);
   end Get_LanguageIDFarEast;

   procedure Put_LanguageIDFarEast
     (This : Find_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Find_Put_LanguageIDFarEast,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_LanguageIDFarEast;

   function Get_LanguageIDOther
     (This : Find_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Find_Get_LanguageIDOther);
   end Get_LanguageIDOther;

   procedure Put_LanguageIDOther
     (This : Find_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Find_Put_LanguageIDOther,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_LanguageIDOther;

   function Get_CorrectHangulEndings
     (This : Find_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Find_Get_CorrectHangulEndings);
   end Get_CorrectHangulEndings;

   procedure Put_CorrectHangulEndings
     (This : Find_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Find_Put_CorrectHangulEndings,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_CorrectHangulEndings;

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
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Find_ExecuteOld,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Replace,
          2 => ReplaceWith,
          3 => Format,
          4 => Wrap,
          5 => Forward,
          6 => MatchAllWordForms,
          7 => MatchSoundsLike,
          8 => MatchWildcards,
          9 => MatchWholeWord,
          10 => MatchCase,
          11 => FindText),
         Free);
   end ExecuteOld;

   procedure ClearFormatting
     (This : Find_Type)
   is
   begin
      Invoke (This, Find_ClearFormatting);
   end ClearFormatting;

   procedure SetAllFuzzyOptions
     (This : Find_Type)
   is
   begin
      Invoke (This, Find_SetAllFuzzyOptions);
   end SetAllFuzzyOptions;

   procedure ClearAllFuzzyOptions
     (This : Find_Type)
   is
   begin
      Invoke (This, Find_ClearAllFuzzyOptions);
   end ClearAllFuzzyOptions;

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
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Find_Execute,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => MatchControl,
          2 => MatchAlefHamza,
          3 => MatchDiacritics,
          4 => MatchKashida,
          5 => Replace,
          6 => ReplaceWith,
          7 => Format,
          8 => Wrap,
          9 => Forward,
          10 => MatchAllWordForms,
          11 => MatchSoundsLike,
          12 => MatchWildcards,
          13 => MatchWholeWord,
          14 => MatchCase,
          15 => FindText),
         Free);
   end Execute;

   function Get_NoProofing
     (This : Find_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Find_Get_NoProofing);
   end Get_NoProofing;

   procedure Put_NoProofing
     (This : Find_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Find_Put_NoProofing,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_NoProofing;

   function Get_MatchKashida
     (This : Find_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Find_Get_MatchKashida);
   end Get_MatchKashida;

   procedure Put_MatchKashida
     (This : Find_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Find_Put_MatchKashida,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_MatchKashida;

   function Get_MatchDiacritics
     (This : Find_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Find_Get_MatchDiacritics);
   end Get_MatchDiacritics;

   procedure Put_MatchDiacritics
     (This : Find_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Find_Put_MatchDiacritics,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_MatchDiacritics;

   function Get_MatchAlefHamza
     (This : Find_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Find_Get_MatchAlefHamza);
   end Get_MatchAlefHamza;

   procedure Put_MatchAlefHamza
     (This : Find_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Find_Put_MatchAlefHamza,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_MatchAlefHamza;

   function Get_MatchControl
     (This : Find_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Find_Get_MatchControl);
   end Get_MatchControl;

   procedure Put_MatchControl
     (This : Find_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Find_Put_MatchControl,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_MatchControl;

end winword.Find_Object;

