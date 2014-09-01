with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.EmailOptions_Interface is

   procedure Initialize (This : in out EmailOptions_Type) is
   begin
      Set_IID (This, IID_EmailOptions);
   end Initialize;

   function Pointer (This : EmailOptions_Type)
     return Pointer_To_EmailOptions
   is
   begin
      return To_Pointer_To_EmailOptions (Address (This));
   end Pointer;

   procedure Attach (This    : in out EmailOptions_Type;
                     Pointer : in     Pointer_To_EmailOptions)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : EmailOptions_Type)
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
     (This : EmailOptions_Type)
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
     (This : EmailOptions_Type)
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

   function Get_UseThemeStyle
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_UseThemeStyle
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_UseThemeStyle;

   procedure Put_UseThemeStyle
     (This : EmailOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_UseThemeStyle
         (Pointer (This),
          prop));

   end Put_UseThemeStyle;

   function Get_MarkCommentsWith
     (This : EmailOptions_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_MarkCommentsWith
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_MarkCommentsWith;

   procedure Put_MarkCommentsWith
     (This : EmailOptions_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_MarkCommentsWith
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_MarkCommentsWith;

   function Get_MarkComments
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_MarkComments
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_MarkComments;

   procedure Put_MarkComments
     (This : EmailOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_MarkComments
         (Pointer (This),
          prop));

   end Put_MarkComments;

   function Get_EmailSignature
     (This : EmailOptions_Type)
     return Pointer_To_EmailSignature
   is
       RetVal : aliased Pointer_To_EmailSignature;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_EmailSignature
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_EmailSignature;

   function Get_ComposeStyle
     (This : EmailOptions_Type)
     return Pointer_To_Style
   is
       RetVal : aliased Pointer_To_Style;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ComposeStyle
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ComposeStyle;

   function Get_ReplyStyle
     (This : EmailOptions_Type)
     return Pointer_To_Style
   is
       RetVal : aliased Pointer_To_Style;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ReplyStyle
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ReplyStyle;

   function Get_ThemeName
     (This : EmailOptions_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ThemeName
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ThemeName;

   procedure Put_ThemeName
     (This : EmailOptions_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ThemeName
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_ThemeName;

   function Get_Dummy1
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Dummy1
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Dummy1;

   function Get_Dummy2
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Dummy2
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Dummy2;

   procedure Dummy3
     (This : EmailOptions_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Dummy3
         (Pointer (This)));

   end Dummy3;

   function Get_NewColorOnReply
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_NewColorOnReply
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_NewColorOnReply;

   procedure Put_NewColorOnReply
     (This : EmailOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_NewColorOnReply
         (Pointer (This),
          prop));

   end Put_NewColorOnReply;

   function Get_PlainTextStyle
     (This : EmailOptions_Type)
     return Pointer_To_Style
   is
       RetVal : aliased Pointer_To_Style;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_PlainTextStyle
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_PlainTextStyle;

   function Get_UseThemeStyleOnReply
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_UseThemeStyleOnReply
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_UseThemeStyleOnReply;

   procedure Put_UseThemeStyleOnReply
     (This : EmailOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_UseThemeStyleOnReply
         (Pointer (This),
          prop));

   end Put_UseThemeStyleOnReply;

   function Get_AutoFormatAsYouTypeApplyHeadings
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoFormatAsYouTypeApplyHeadings
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AutoFormatAsYouTypeApplyHeadings;

   procedure Put_AutoFormatAsYouTypeApplyHeadings
     (This : EmailOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AutoFormatAsYouTypeApplyHeadings
         (Pointer (This),
          prop));

   end Put_AutoFormatAsYouTypeApplyHeadings;

   function Get_AutoFormatAsYouTypeApplyBorders
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoFormatAsYouTypeApplyBorders
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AutoFormatAsYouTypeApplyBorders;

   procedure Put_AutoFormatAsYouTypeApplyBorders
     (This : EmailOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AutoFormatAsYouTypeApplyBorders
         (Pointer (This),
          prop));

   end Put_AutoFormatAsYouTypeApplyBorders;

   function Get_AutoFormatAsYouTypeApplyBulletedLists
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoFormatAsYouTypeApplyBulletedLists
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AutoFormatAsYouTypeApplyBulletedLists;

   procedure Put_AutoFormatAsYouTypeApplyBulletedLists
     (This : EmailOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AutoFormatAsYouTypeApplyBulletedLists
         (Pointer (This),
          prop));

   end Put_AutoFormatAsYouTypeApplyBulletedLists;

   function Get_AutoFormatAsYouTypeApplyNumberedLists
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoFormatAsYouTypeApplyNumberedLists
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AutoFormatAsYouTypeApplyNumberedLists;

   procedure Put_AutoFormatAsYouTypeApplyNumberedLists
     (This : EmailOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AutoFormatAsYouTypeApplyNumberedLists
         (Pointer (This),
          prop));

   end Put_AutoFormatAsYouTypeApplyNumberedLists;

   function Get_AutoFormatAsYouTypeReplaceQuotes
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoFormatAsYouTypeReplaceQuotes
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AutoFormatAsYouTypeReplaceQuotes;

   procedure Put_AutoFormatAsYouTypeReplaceQuotes
     (This : EmailOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AutoFormatAsYouTypeReplaceQuotes
         (Pointer (This),
          prop));

   end Put_AutoFormatAsYouTypeReplaceQuotes;

   function Get_AutoFormatAsYouTypeReplaceSymbols
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoFormatAsYouTypeReplaceSymbols
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AutoFormatAsYouTypeReplaceSymbols;

   procedure Put_AutoFormatAsYouTypeReplaceSymbols
     (This : EmailOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AutoFormatAsYouTypeReplaceSymbols
         (Pointer (This),
          prop));

   end Put_AutoFormatAsYouTypeReplaceSymbols;

   function Get_AutoFormatAsYouTypeReplaceOrdinals
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoFormatAsYouTypeReplaceOrdinals
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AutoFormatAsYouTypeReplaceOrdinals;

   procedure Put_AutoFormatAsYouTypeReplaceOrdinals
     (This : EmailOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AutoFormatAsYouTypeReplaceOrdinals
         (Pointer (This),
          prop));

   end Put_AutoFormatAsYouTypeReplaceOrdinals;

   function Get_AutoFormatAsYouTypeReplaceFractions
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoFormatAsYouTypeReplaceFractions
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AutoFormatAsYouTypeReplaceFractions;

   procedure Put_AutoFormatAsYouTypeReplaceFractions
     (This : EmailOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AutoFormatAsYouTypeReplaceFractions
         (Pointer (This),
          prop));

   end Put_AutoFormatAsYouTypeReplaceFractions;

   function Get_AutoFormatAsYouTypeReplacePlainTextEmphasis
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoFormatAsYouTypeReplacePlainTextEmphasis
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AutoFormatAsYouTypeReplacePlainTextEmphasis;

   procedure Put_AutoFormatAsYouTypeReplacePlainTextEmphasis
     (This : EmailOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AutoFormatAsYouTypeReplacePlainTextEmphasis
         (Pointer (This),
          prop));

   end Put_AutoFormatAsYouTypeReplacePlainTextEmphasis;

   function Get_AutoFormatAsYouTypeFormatListItemBeginning
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoFormatAsYouTypeFormatListItemBeginning
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AutoFormatAsYouTypeFormatListItemBeginning;

   procedure Put_AutoFormatAsYouTypeFormatListItemBeginning
     (This : EmailOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AutoFormatAsYouTypeFormatListItemBeginning
         (Pointer (This),
          prop));

   end Put_AutoFormatAsYouTypeFormatListItemBeginning;

   function Get_AutoFormatAsYouTypeDefineStyles
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoFormatAsYouTypeDefineStyles
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AutoFormatAsYouTypeDefineStyles;

   procedure Put_AutoFormatAsYouTypeDefineStyles
     (This : EmailOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AutoFormatAsYouTypeDefineStyles
         (Pointer (This),
          prop));

   end Put_AutoFormatAsYouTypeDefineStyles;

   function Get_AutoFormatAsYouTypeReplaceHyperlinks
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoFormatAsYouTypeReplaceHyperlinks
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AutoFormatAsYouTypeReplaceHyperlinks;

   procedure Put_AutoFormatAsYouTypeReplaceHyperlinks
     (This : EmailOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AutoFormatAsYouTypeReplaceHyperlinks
         (Pointer (This),
          prop));

   end Put_AutoFormatAsYouTypeReplaceHyperlinks;

   function Get_AutoFormatAsYouTypeApplyTables
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoFormatAsYouTypeApplyTables
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AutoFormatAsYouTypeApplyTables;

   procedure Put_AutoFormatAsYouTypeApplyTables
     (This : EmailOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AutoFormatAsYouTypeApplyTables
         (Pointer (This),
          prop));

   end Put_AutoFormatAsYouTypeApplyTables;

   function Get_AutoFormatAsYouTypeApplyFirstIndents
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoFormatAsYouTypeApplyFirstIndents
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AutoFormatAsYouTypeApplyFirstIndents;

   procedure Put_AutoFormatAsYouTypeApplyFirstIndents
     (This : EmailOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AutoFormatAsYouTypeApplyFirstIndents
         (Pointer (This),
          prop));

   end Put_AutoFormatAsYouTypeApplyFirstIndents;

   function Get_AutoFormatAsYouTypeApplyDates
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoFormatAsYouTypeApplyDates
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AutoFormatAsYouTypeApplyDates;

   procedure Put_AutoFormatAsYouTypeApplyDates
     (This : EmailOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AutoFormatAsYouTypeApplyDates
         (Pointer (This),
          prop));

   end Put_AutoFormatAsYouTypeApplyDates;

   function Get_AutoFormatAsYouTypeApplyClosings
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoFormatAsYouTypeApplyClosings
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AutoFormatAsYouTypeApplyClosings;

   procedure Put_AutoFormatAsYouTypeApplyClosings
     (This : EmailOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AutoFormatAsYouTypeApplyClosings
         (Pointer (This),
          prop));

   end Put_AutoFormatAsYouTypeApplyClosings;

   function Get_AutoFormatAsYouTypeMatchParentheses
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoFormatAsYouTypeMatchParentheses
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AutoFormatAsYouTypeMatchParentheses;

   procedure Put_AutoFormatAsYouTypeMatchParentheses
     (This : EmailOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AutoFormatAsYouTypeMatchParentheses
         (Pointer (This),
          prop));

   end Put_AutoFormatAsYouTypeMatchParentheses;

   function Get_AutoFormatAsYouTypeReplaceFarEastDashes
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoFormatAsYouTypeReplaceFarEastDashes
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AutoFormatAsYouTypeReplaceFarEastDashes;

   procedure Put_AutoFormatAsYouTypeReplaceFarEastDashes
     (This : EmailOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AutoFormatAsYouTypeReplaceFarEastDashes
         (Pointer (This),
          prop));

   end Put_AutoFormatAsYouTypeReplaceFarEastDashes;

   function Get_AutoFormatAsYouTypeDeleteAutoSpaces
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoFormatAsYouTypeDeleteAutoSpaces
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AutoFormatAsYouTypeDeleteAutoSpaces;

   procedure Put_AutoFormatAsYouTypeDeleteAutoSpaces
     (This : EmailOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AutoFormatAsYouTypeDeleteAutoSpaces
         (Pointer (This),
          prop));

   end Put_AutoFormatAsYouTypeDeleteAutoSpaces;

   function Get_AutoFormatAsYouTypeInsertClosings
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoFormatAsYouTypeInsertClosings
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AutoFormatAsYouTypeInsertClosings;

   procedure Put_AutoFormatAsYouTypeInsertClosings
     (This : EmailOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AutoFormatAsYouTypeInsertClosings
         (Pointer (This),
          prop));

   end Put_AutoFormatAsYouTypeInsertClosings;

   function Get_AutoFormatAsYouTypeAutoLetterWizard
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoFormatAsYouTypeAutoLetterWizard
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AutoFormatAsYouTypeAutoLetterWizard;

   procedure Put_AutoFormatAsYouTypeAutoLetterWizard
     (This : EmailOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AutoFormatAsYouTypeAutoLetterWizard
         (Pointer (This),
          prop));

   end Put_AutoFormatAsYouTypeAutoLetterWizard;

   function Get_AutoFormatAsYouTypeInsertOvers
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoFormatAsYouTypeInsertOvers
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AutoFormatAsYouTypeInsertOvers;

   procedure Put_AutoFormatAsYouTypeInsertOvers
     (This : EmailOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AutoFormatAsYouTypeInsertOvers
         (Pointer (This),
          prop));

   end Put_AutoFormatAsYouTypeInsertOvers;

   function Get_RelyOnCSS
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_RelyOnCSS
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_RelyOnCSS;

   procedure Put_RelyOnCSS
     (This : EmailOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_RelyOnCSS
         (Pointer (This),
          prop));

   end Put_RelyOnCSS;

   function Get_HTMLFidelity
     (This : EmailOptions_Type)
     return WdEmailHTMLFidelity
   is
       RetVal : aliased WdEmailHTMLFidelity;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_HTMLFidelity
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_HTMLFidelity;

   procedure Put_HTMLFidelity
     (This : EmailOptions_Type;
      prop : WdEmailHTMLFidelity)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_HTMLFidelity
         (Pointer (This),
          prop));

   end Put_HTMLFidelity;

   function Get_EmbedSmartTag
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_EmbedSmartTag
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_EmbedSmartTag;

   procedure Put_EmbedSmartTag
     (This : EmailOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_EmbedSmartTag
         (Pointer (This),
          prop));

   end Put_EmbedSmartTag;

   function Get_TabIndentKey
     (This : EmailOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_TabIndentKey
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_TabIndentKey;

   procedure Put_TabIndentKey
     (This : EmailOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_TabIndentKey
         (Pointer (This),
          prop));

   end Put_TabIndentKey;

end winword.EmailOptions_Interface;

