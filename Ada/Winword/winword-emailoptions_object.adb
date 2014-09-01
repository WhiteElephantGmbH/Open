package body winword.EmailOptions_Object is

   function Get_Application
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, EmailOptions_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, EmailOptions_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, EmailOptions_Get_Parent);
   end Get_Parent;

   function Get_UseThemeStyle
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, EmailOptions_Get_UseThemeStyle);
   end Get_UseThemeStyle;

   procedure Put_UseThemeStyle
     (This : EmailOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         EmailOptions_Put_UseThemeStyle,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_UseThemeStyle;

   function Get_MarkCommentsWith
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, EmailOptions_Get_MarkCommentsWith);
   end Get_MarkCommentsWith;

   procedure Put_MarkCommentsWith
     (This : EmailOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         EmailOptions_Put_MarkCommentsWith,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_MarkCommentsWith;

   function Get_MarkComments
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, EmailOptions_Get_MarkComments);
   end Get_MarkComments;

   procedure Put_MarkComments
     (This : EmailOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         EmailOptions_Put_MarkComments,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_MarkComments;

   function Get_EmailSignature
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, EmailOptions_Get_EmailSignature);
   end Get_EmailSignature;

   function Get_ComposeStyle
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, EmailOptions_Get_ComposeStyle);
   end Get_ComposeStyle;

   function Get_ReplyStyle
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, EmailOptions_Get_ReplyStyle);
   end Get_ReplyStyle;

   function Get_ThemeName
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, EmailOptions_Get_ThemeName);
   end Get_ThemeName;

   procedure Put_ThemeName
     (This : EmailOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         EmailOptions_Put_ThemeName,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ThemeName;

   function Get_Dummy1
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, EmailOptions_Get_Dummy1);
   end Get_Dummy1;

   function Get_Dummy2
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, EmailOptions_Get_Dummy2);
   end Get_Dummy2;

   procedure Dummy3
     (This : EmailOptions_Type)
   is
   begin
      Invoke (This, EmailOptions_Dummy3);
   end Dummy3;

   function Get_NewColorOnReply
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, EmailOptions_Get_NewColorOnReply);
   end Get_NewColorOnReply;

   procedure Put_NewColorOnReply
     (This : EmailOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         EmailOptions_Put_NewColorOnReply,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_NewColorOnReply;

   function Get_PlainTextStyle
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, EmailOptions_Get_PlainTextStyle);
   end Get_PlainTextStyle;

   function Get_UseThemeStyleOnReply
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, EmailOptions_Get_UseThemeStyleOnReply);
   end Get_UseThemeStyleOnReply;

   procedure Put_UseThemeStyleOnReply
     (This : EmailOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         EmailOptions_Put_UseThemeStyleOnReply,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_UseThemeStyleOnReply;

   function Get_AutoFormatAsYouTypeApplyHeadings
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, EmailOptions_Get_AutoFormatAsYouTypeApplyHeadings);
   end Get_AutoFormatAsYouTypeApplyHeadings;

   procedure Put_AutoFormatAsYouTypeApplyHeadings
     (This : EmailOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         EmailOptions_Put_AutoFormatAsYouTypeApplyHeadings,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AutoFormatAsYouTypeApplyHeadings;

   function Get_AutoFormatAsYouTypeApplyBorders
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, EmailOptions_Get_AutoFormatAsYouTypeApplyBorders);
   end Get_AutoFormatAsYouTypeApplyBorders;

   procedure Put_AutoFormatAsYouTypeApplyBorders
     (This : EmailOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         EmailOptions_Put_AutoFormatAsYouTypeApplyBorders,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AutoFormatAsYouTypeApplyBorders;

   function Get_AutoFormatAsYouTypeApplyBulletedLists
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, EmailOptions_Get_AutoFormatAsYouTypeApplyBulletedLists);
   end Get_AutoFormatAsYouTypeApplyBulletedLists;

   procedure Put_AutoFormatAsYouTypeApplyBulletedLists
     (This : EmailOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         EmailOptions_Put_AutoFormatAsYouTypeApplyBulletedLists,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AutoFormatAsYouTypeApplyBulletedLists;

   function Get_AutoFormatAsYouTypeApplyNumberedLists
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, EmailOptions_Get_AutoFormatAsYouTypeApplyNumberedLists);
   end Get_AutoFormatAsYouTypeApplyNumberedLists;

   procedure Put_AutoFormatAsYouTypeApplyNumberedLists
     (This : EmailOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         EmailOptions_Put_AutoFormatAsYouTypeApplyNumberedLists,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AutoFormatAsYouTypeApplyNumberedLists;

   function Get_AutoFormatAsYouTypeReplaceQuotes
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, EmailOptions_Get_AutoFormatAsYouTypeReplaceQuotes);
   end Get_AutoFormatAsYouTypeReplaceQuotes;

   procedure Put_AutoFormatAsYouTypeReplaceQuotes
     (This : EmailOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         EmailOptions_Put_AutoFormatAsYouTypeReplaceQuotes,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AutoFormatAsYouTypeReplaceQuotes;

   function Get_AutoFormatAsYouTypeReplaceSymbols
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, EmailOptions_Get_AutoFormatAsYouTypeReplaceSymbols);
   end Get_AutoFormatAsYouTypeReplaceSymbols;

   procedure Put_AutoFormatAsYouTypeReplaceSymbols
     (This : EmailOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         EmailOptions_Put_AutoFormatAsYouTypeReplaceSymbols,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AutoFormatAsYouTypeReplaceSymbols;

   function Get_AutoFormatAsYouTypeReplaceOrdinals
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, EmailOptions_Get_AutoFormatAsYouTypeReplaceOrdinals);
   end Get_AutoFormatAsYouTypeReplaceOrdinals;

   procedure Put_AutoFormatAsYouTypeReplaceOrdinals
     (This : EmailOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         EmailOptions_Put_AutoFormatAsYouTypeReplaceOrdinals,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AutoFormatAsYouTypeReplaceOrdinals;

   function Get_AutoFormatAsYouTypeReplaceFractions
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, EmailOptions_Get_AutoFormatAsYouTypeReplaceFractions);
   end Get_AutoFormatAsYouTypeReplaceFractions;

   procedure Put_AutoFormatAsYouTypeReplaceFractions
     (This : EmailOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         EmailOptions_Put_AutoFormatAsYouTypeReplaceFractions,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AutoFormatAsYouTypeReplaceFractions;

   function Get_AutoFormatAsYouTypeReplacePlainTextEmphasis
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, EmailOptions_Get_AutoFormatAsYouTypeReplacePlainTextEmphasis);
   end Get_AutoFormatAsYouTypeReplacePlainTextEmphasis;

   procedure Put_AutoFormatAsYouTypeReplacePlainTextEmphasis
     (This : EmailOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         EmailOptions_Put_AutoFormatAsYouTypeReplacePlainTextEmphasis,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AutoFormatAsYouTypeReplacePlainTextEmphasis;

   function Get_AutoFormatAsYouTypeFormatListItemBeginning
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, EmailOptions_Get_AutoFormatAsYouTypeFormatListItemBeginning);
   end Get_AutoFormatAsYouTypeFormatListItemBeginning;

   procedure Put_AutoFormatAsYouTypeFormatListItemBeginning
     (This : EmailOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         EmailOptions_Put_AutoFormatAsYouTypeFormatListItemBeginning,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AutoFormatAsYouTypeFormatListItemBeginning;

   function Get_AutoFormatAsYouTypeDefineStyles
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, EmailOptions_Get_AutoFormatAsYouTypeDefineStyles);
   end Get_AutoFormatAsYouTypeDefineStyles;

   procedure Put_AutoFormatAsYouTypeDefineStyles
     (This : EmailOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         EmailOptions_Put_AutoFormatAsYouTypeDefineStyles,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AutoFormatAsYouTypeDefineStyles;

   function Get_AutoFormatAsYouTypeReplaceHyperlinks
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, EmailOptions_Get_AutoFormatAsYouTypeReplaceHyperlinks);
   end Get_AutoFormatAsYouTypeReplaceHyperlinks;

   procedure Put_AutoFormatAsYouTypeReplaceHyperlinks
     (This : EmailOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         EmailOptions_Put_AutoFormatAsYouTypeReplaceHyperlinks,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AutoFormatAsYouTypeReplaceHyperlinks;

   function Get_AutoFormatAsYouTypeApplyTables
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, EmailOptions_Get_AutoFormatAsYouTypeApplyTables);
   end Get_AutoFormatAsYouTypeApplyTables;

   procedure Put_AutoFormatAsYouTypeApplyTables
     (This : EmailOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         EmailOptions_Put_AutoFormatAsYouTypeApplyTables,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AutoFormatAsYouTypeApplyTables;

   function Get_AutoFormatAsYouTypeApplyFirstIndents
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, EmailOptions_Get_AutoFormatAsYouTypeApplyFirstIndents);
   end Get_AutoFormatAsYouTypeApplyFirstIndents;

   procedure Put_AutoFormatAsYouTypeApplyFirstIndents
     (This : EmailOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         EmailOptions_Put_AutoFormatAsYouTypeApplyFirstIndents,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AutoFormatAsYouTypeApplyFirstIndents;

   function Get_AutoFormatAsYouTypeApplyDates
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, EmailOptions_Get_AutoFormatAsYouTypeApplyDates);
   end Get_AutoFormatAsYouTypeApplyDates;

   procedure Put_AutoFormatAsYouTypeApplyDates
     (This : EmailOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         EmailOptions_Put_AutoFormatAsYouTypeApplyDates,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AutoFormatAsYouTypeApplyDates;

   function Get_AutoFormatAsYouTypeApplyClosings
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, EmailOptions_Get_AutoFormatAsYouTypeApplyClosings);
   end Get_AutoFormatAsYouTypeApplyClosings;

   procedure Put_AutoFormatAsYouTypeApplyClosings
     (This : EmailOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         EmailOptions_Put_AutoFormatAsYouTypeApplyClosings,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AutoFormatAsYouTypeApplyClosings;

   function Get_AutoFormatAsYouTypeMatchParentheses
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, EmailOptions_Get_AutoFormatAsYouTypeMatchParentheses);
   end Get_AutoFormatAsYouTypeMatchParentheses;

   procedure Put_AutoFormatAsYouTypeMatchParentheses
     (This : EmailOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         EmailOptions_Put_AutoFormatAsYouTypeMatchParentheses,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AutoFormatAsYouTypeMatchParentheses;

   function Get_AutoFormatAsYouTypeReplaceFarEastDashes
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, EmailOptions_Get_AutoFormatAsYouTypeReplaceFarEastDashes);
   end Get_AutoFormatAsYouTypeReplaceFarEastDashes;

   procedure Put_AutoFormatAsYouTypeReplaceFarEastDashes
     (This : EmailOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         EmailOptions_Put_AutoFormatAsYouTypeReplaceFarEastDashes,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AutoFormatAsYouTypeReplaceFarEastDashes;

   function Get_AutoFormatAsYouTypeDeleteAutoSpaces
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, EmailOptions_Get_AutoFormatAsYouTypeDeleteAutoSpaces);
   end Get_AutoFormatAsYouTypeDeleteAutoSpaces;

   procedure Put_AutoFormatAsYouTypeDeleteAutoSpaces
     (This : EmailOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         EmailOptions_Put_AutoFormatAsYouTypeDeleteAutoSpaces,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AutoFormatAsYouTypeDeleteAutoSpaces;

   function Get_AutoFormatAsYouTypeInsertClosings
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, EmailOptions_Get_AutoFormatAsYouTypeInsertClosings);
   end Get_AutoFormatAsYouTypeInsertClosings;

   procedure Put_AutoFormatAsYouTypeInsertClosings
     (This : EmailOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         EmailOptions_Put_AutoFormatAsYouTypeInsertClosings,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AutoFormatAsYouTypeInsertClosings;

   function Get_AutoFormatAsYouTypeAutoLetterWizard
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, EmailOptions_Get_AutoFormatAsYouTypeAutoLetterWizard);
   end Get_AutoFormatAsYouTypeAutoLetterWizard;

   procedure Put_AutoFormatAsYouTypeAutoLetterWizard
     (This : EmailOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         EmailOptions_Put_AutoFormatAsYouTypeAutoLetterWizard,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AutoFormatAsYouTypeAutoLetterWizard;

   function Get_AutoFormatAsYouTypeInsertOvers
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, EmailOptions_Get_AutoFormatAsYouTypeInsertOvers);
   end Get_AutoFormatAsYouTypeInsertOvers;

   procedure Put_AutoFormatAsYouTypeInsertOvers
     (This : EmailOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         EmailOptions_Put_AutoFormatAsYouTypeInsertOvers,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AutoFormatAsYouTypeInsertOvers;

   function Get_RelyOnCSS
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, EmailOptions_Get_RelyOnCSS);
   end Get_RelyOnCSS;

   procedure Put_RelyOnCSS
     (This : EmailOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         EmailOptions_Put_RelyOnCSS,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_RelyOnCSS;

   function Get_HTMLFidelity
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, EmailOptions_Get_HTMLFidelity);
   end Get_HTMLFidelity;

   procedure Put_HTMLFidelity
     (This : EmailOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         EmailOptions_Put_HTMLFidelity,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_HTMLFidelity;

   function Get_EmbedSmartTag
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, EmailOptions_Get_EmbedSmartTag);
   end Get_EmbedSmartTag;

   procedure Put_EmbedSmartTag
     (This : EmailOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         EmailOptions_Put_EmbedSmartTag,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_EmbedSmartTag;

   function Get_TabIndentKey
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, EmailOptions_Get_TabIndentKey);
   end Get_TabIndentKey;

   procedure Put_TabIndentKey
     (This : EmailOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         EmailOptions_Put_TabIndentKey,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_TabIndentKey;

end winword.EmailOptions_Object;

