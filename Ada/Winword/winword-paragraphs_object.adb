package body winword.Paragraphs_Object is

   function Getu_NewEnum
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraphs_Getu_NewEnum);
   end Getu_NewEnum;

   function Get_Count
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraphs_Get_Count);
   end Get_Count;

   function Get_First
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraphs_Get_First);
   end Get_First;

   function Get_Last
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraphs_Get_Last);
   end Get_Last;

   function Get_Application
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraphs_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraphs_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraphs_Get_Parent);
   end Get_Parent;

   function Get_Format
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraphs_Get_Format);
   end Get_Format;

   procedure Put_Format
     (This : Paragraphs_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Paragraphs_Put_Format,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Format;

   function Get_TabStops
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraphs_Get_TabStops);
   end Get_TabStops;

   procedure Put_TabStops
     (This : Paragraphs_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Paragraphs_Put_TabStops,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_TabStops;

   function Get_Borders
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraphs_Get_Borders);
   end Get_Borders;

   procedure Put_Borders
     (This : Paragraphs_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Paragraphs_Put_Borders,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Borders;

   function Get_Style
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraphs_Get_Style);
   end Get_Style;

   procedure Put_Style
     (This : Paragraphs_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Paragraphs_Put_Style,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Style;

   function Get_Alignment
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraphs_Get_Alignment);
   end Get_Alignment;

   procedure Put_Alignment
     (This : Paragraphs_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Paragraphs_Put_Alignment,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Alignment;

   function Get_KeepTogether
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraphs_Get_KeepTogether);
   end Get_KeepTogether;

   procedure Put_KeepTogether
     (This : Paragraphs_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Paragraphs_Put_KeepTogether,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_KeepTogether;

   function Get_KeepWithNext
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraphs_Get_KeepWithNext);
   end Get_KeepWithNext;

   procedure Put_KeepWithNext
     (This : Paragraphs_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Paragraphs_Put_KeepWithNext,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_KeepWithNext;

   function Get_PageBreakBefore
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraphs_Get_PageBreakBefore);
   end Get_PageBreakBefore;

   procedure Put_PageBreakBefore
     (This : Paragraphs_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Paragraphs_Put_PageBreakBefore,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_PageBreakBefore;

   function Get_NoLineNumber
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraphs_Get_NoLineNumber);
   end Get_NoLineNumber;

   procedure Put_NoLineNumber
     (This : Paragraphs_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Paragraphs_Put_NoLineNumber,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_NoLineNumber;

   function Get_RightIndent
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraphs_Get_RightIndent);
   end Get_RightIndent;

   procedure Put_RightIndent
     (This : Paragraphs_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Paragraphs_Put_RightIndent,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_RightIndent;

   function Get_LeftIndent
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraphs_Get_LeftIndent);
   end Get_LeftIndent;

   procedure Put_LeftIndent
     (This : Paragraphs_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Paragraphs_Put_LeftIndent,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_LeftIndent;

   function Get_FirstLineIndent
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraphs_Get_FirstLineIndent);
   end Get_FirstLineIndent;

   procedure Put_FirstLineIndent
     (This : Paragraphs_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Paragraphs_Put_FirstLineIndent,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_FirstLineIndent;

   function Get_LineSpacing
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraphs_Get_LineSpacing);
   end Get_LineSpacing;

   procedure Put_LineSpacing
     (This : Paragraphs_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Paragraphs_Put_LineSpacing,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_LineSpacing;

   function Get_LineSpacingRule
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraphs_Get_LineSpacingRule);
   end Get_LineSpacingRule;

   procedure Put_LineSpacingRule
     (This : Paragraphs_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Paragraphs_Put_LineSpacingRule,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_LineSpacingRule;

   function Get_SpaceBefore
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraphs_Get_SpaceBefore);
   end Get_SpaceBefore;

   procedure Put_SpaceBefore
     (This : Paragraphs_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Paragraphs_Put_SpaceBefore,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_SpaceBefore;

   function Get_SpaceAfter
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraphs_Get_SpaceAfter);
   end Get_SpaceAfter;

   procedure Put_SpaceAfter
     (This : Paragraphs_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Paragraphs_Put_SpaceAfter,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_SpaceAfter;

   function Get_Hyphenation
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraphs_Get_Hyphenation);
   end Get_Hyphenation;

   procedure Put_Hyphenation
     (This : Paragraphs_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Paragraphs_Put_Hyphenation,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Hyphenation;

   function Get_WidowControl
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraphs_Get_WidowControl);
   end Get_WidowControl;

   procedure Put_WidowControl
     (This : Paragraphs_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Paragraphs_Put_WidowControl,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_WidowControl;

   function Get_Shading
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraphs_Get_Shading);
   end Get_Shading;

   function Get_FarEastLineBreakControl
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraphs_Get_FarEastLineBreakControl);
   end Get_FarEastLineBreakControl;

   procedure Put_FarEastLineBreakControl
     (This : Paragraphs_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Paragraphs_Put_FarEastLineBreakControl,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_FarEastLineBreakControl;

   function Get_WordWrap
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraphs_Get_WordWrap);
   end Get_WordWrap;

   procedure Put_WordWrap
     (This : Paragraphs_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Paragraphs_Put_WordWrap,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_WordWrap;

   function Get_HangingPunctuation
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraphs_Get_HangingPunctuation);
   end Get_HangingPunctuation;

   procedure Put_HangingPunctuation
     (This : Paragraphs_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Paragraphs_Put_HangingPunctuation,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_HangingPunctuation;

   function Get_HalfWidthPunctuationOnTopOfLine
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraphs_Get_HalfWidthPunctuationOnTopOfLine);
   end Get_HalfWidthPunctuationOnTopOfLine;

   procedure Put_HalfWidthPunctuationOnTopOfLine
     (This : Paragraphs_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Paragraphs_Put_HalfWidthPunctuationOnTopOfLine,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_HalfWidthPunctuationOnTopOfLine;

   function Get_AddSpaceBetweenFarEastAndAlpha
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraphs_Get_AddSpaceBetweenFarEastAndAlpha);
   end Get_AddSpaceBetweenFarEastAndAlpha;

   procedure Put_AddSpaceBetweenFarEastAndAlpha
     (This : Paragraphs_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Paragraphs_Put_AddSpaceBetweenFarEastAndAlpha,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AddSpaceBetweenFarEastAndAlpha;

   function Get_AddSpaceBetweenFarEastAndDigit
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraphs_Get_AddSpaceBetweenFarEastAndDigit);
   end Get_AddSpaceBetweenFarEastAndDigit;

   procedure Put_AddSpaceBetweenFarEastAndDigit
     (This : Paragraphs_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Paragraphs_Put_AddSpaceBetweenFarEastAndDigit,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AddSpaceBetweenFarEastAndDigit;

   function Get_BaseLineAlignment
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraphs_Get_BaseLineAlignment);
   end Get_BaseLineAlignment;

   procedure Put_BaseLineAlignment
     (This : Paragraphs_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Paragraphs_Put_BaseLineAlignment,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_BaseLineAlignment;

   function Get_AutoAdjustRightIndent
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraphs_Get_AutoAdjustRightIndent);
   end Get_AutoAdjustRightIndent;

   procedure Put_AutoAdjustRightIndent
     (This : Paragraphs_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Paragraphs_Put_AutoAdjustRightIndent,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AutoAdjustRightIndent;

   function Get_DisableLineHeightGrid
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraphs_Get_DisableLineHeightGrid);
   end Get_DisableLineHeightGrid;

   procedure Put_DisableLineHeightGrid
     (This : Paragraphs_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Paragraphs_Put_DisableLineHeightGrid,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DisableLineHeightGrid;

   function Get_OutlineLevel
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraphs_Get_OutlineLevel);
   end Get_OutlineLevel;

   procedure Put_OutlineLevel
     (This : Paragraphs_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Paragraphs_Put_OutlineLevel,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_OutlineLevel;

   function Item
     (This  : Paragraphs_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Paragraphs_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

   function Add
     (This   : Paragraphs_Type;
      uRange : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Paragraphs_Add,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => uRange),
         Free);
   end Add;

   procedure CloseUp
     (This : Paragraphs_Type)
   is
   begin
      Invoke (This, Paragraphs_CloseUp);
   end CloseUp;

   procedure OpenUp
     (This : Paragraphs_Type)
   is
   begin
      Invoke (This, Paragraphs_OpenUp);
   end OpenUp;

   procedure OpenOrCloseUp
     (This : Paragraphs_Type)
   is
   begin
      Invoke (This, Paragraphs_OpenOrCloseUp);
   end OpenOrCloseUp;

   procedure TabHangingIndent
     (This  : Paragraphs_Type;
      Count : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
   is
   begin
      Invoke
        (This,
         Paragraphs_TabHangingIndent,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Count),
         Free);
   end TabHangingIndent;

   procedure TabIndent
     (This  : Paragraphs_Type;
      Count : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
   is
   begin
      Invoke
        (This,
         Paragraphs_TabIndent,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Count),
         Free);
   end TabIndent;

   procedure Reset
     (This : Paragraphs_Type)
   is
   begin
      Invoke (This, Paragraphs_Reset);
   end Reset;

   procedure Space1
     (This : Paragraphs_Type)
   is
   begin
      Invoke (This, Paragraphs_Space1);
   end Space1;

   procedure Space15
     (This : Paragraphs_Type)
   is
   begin
      Invoke (This, Paragraphs_Space15);
   end Space15;

   procedure Space2
     (This : Paragraphs_Type)
   is
   begin
      Invoke (This, Paragraphs_Space2);
   end Space2;

   procedure IndentCharWidth
     (This  : Paragraphs_Type;
      Count : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
   is
   begin
      Invoke
        (This,
         Paragraphs_IndentCharWidth,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Count),
         Free);
   end IndentCharWidth;

   procedure IndentFirstLineCharWidth
     (This  : Paragraphs_Type;
      Count : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
   is
   begin
      Invoke
        (This,
         Paragraphs_IndentFirstLineCharWidth,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Count),
         Free);
   end IndentFirstLineCharWidth;

   procedure OutlinePromote
     (This : Paragraphs_Type)
   is
   begin
      Invoke (This, Paragraphs_OutlinePromote);
   end OutlinePromote;

   procedure OutlineDemote
     (This : Paragraphs_Type)
   is
   begin
      Invoke (This, Paragraphs_OutlineDemote);
   end OutlineDemote;

   procedure OutlineDemoteToBody
     (This : Paragraphs_Type)
   is
   begin
      Invoke (This, Paragraphs_OutlineDemoteToBody);
   end OutlineDemoteToBody;

   procedure Indent
     (This : Paragraphs_Type)
   is
   begin
      Invoke (This, Paragraphs_Indent);
   end Indent;

   procedure Outdent
     (This : Paragraphs_Type)
   is
   begin
      Invoke (This, Paragraphs_Outdent);
   end Outdent;

   function Get_CharacterUnitRightIndent
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraphs_Get_CharacterUnitRightIndent);
   end Get_CharacterUnitRightIndent;

   procedure Put_CharacterUnitRightIndent
     (This : Paragraphs_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Paragraphs_Put_CharacterUnitRightIndent,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_CharacterUnitRightIndent;

   function Get_CharacterUnitLeftIndent
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraphs_Get_CharacterUnitLeftIndent);
   end Get_CharacterUnitLeftIndent;

   procedure Put_CharacterUnitLeftIndent
     (This : Paragraphs_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Paragraphs_Put_CharacterUnitLeftIndent,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_CharacterUnitLeftIndent;

   function Get_CharacterUnitFirstLineIndent
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraphs_Get_CharacterUnitFirstLineIndent);
   end Get_CharacterUnitFirstLineIndent;

   procedure Put_CharacterUnitFirstLineIndent
     (This : Paragraphs_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Paragraphs_Put_CharacterUnitFirstLineIndent,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_CharacterUnitFirstLineIndent;

   function Get_LineUnitBefore
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraphs_Get_LineUnitBefore);
   end Get_LineUnitBefore;

   procedure Put_LineUnitBefore
     (This : Paragraphs_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Paragraphs_Put_LineUnitBefore,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_LineUnitBefore;

   function Get_LineUnitAfter
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraphs_Get_LineUnitAfter);
   end Get_LineUnitAfter;

   procedure Put_LineUnitAfter
     (This : Paragraphs_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Paragraphs_Put_LineUnitAfter,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_LineUnitAfter;

   function Get_ReadingOrder
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraphs_Get_ReadingOrder);
   end Get_ReadingOrder;

   procedure Put_ReadingOrder
     (This : Paragraphs_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Paragraphs_Put_ReadingOrder,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ReadingOrder;

   function Get_SpaceBeforeAuto
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraphs_Get_SpaceBeforeAuto);
   end Get_SpaceBeforeAuto;

   procedure Put_SpaceBeforeAuto
     (This : Paragraphs_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Paragraphs_Put_SpaceBeforeAuto,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_SpaceBeforeAuto;

   function Get_SpaceAfterAuto
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraphs_Get_SpaceAfterAuto);
   end Get_SpaceAfterAuto;

   procedure Put_SpaceAfterAuto
     (This : Paragraphs_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Paragraphs_Put_SpaceAfterAuto,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_SpaceAfterAuto;

   procedure IncreaseSpacing
     (This : Paragraphs_Type)
   is
   begin
      Invoke (This, Paragraphs_IncreaseSpacing);
   end IncreaseSpacing;

   procedure DecreaseSpacing
     (This : Paragraphs_Type)
   is
   begin
      Invoke (This, Paragraphs_DecreaseSpacing);
   end DecreaseSpacing;

end winword.Paragraphs_Object;

