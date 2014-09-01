package body winword.uParagraphFormat_Object is

   function Get_Application
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uParagraphFormat_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uParagraphFormat_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uParagraphFormat_Get_Parent);
   end Get_Parent;

   function Get_Duplicate
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uParagraphFormat_Get_Duplicate);
   end Get_Duplicate;

   function Get_Style
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uParagraphFormat_Get_Style);
   end Get_Style;

   procedure Put_Style
     (This : uParagraphFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uParagraphFormat_Put_Style,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Style;

   function Get_Alignment
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uParagraphFormat_Get_Alignment);
   end Get_Alignment;

   procedure Put_Alignment
     (This : uParagraphFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uParagraphFormat_Put_Alignment,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Alignment;

   function Get_KeepTogether
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uParagraphFormat_Get_KeepTogether);
   end Get_KeepTogether;

   procedure Put_KeepTogether
     (This : uParagraphFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uParagraphFormat_Put_KeepTogether,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_KeepTogether;

   function Get_KeepWithNext
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uParagraphFormat_Get_KeepWithNext);
   end Get_KeepWithNext;

   procedure Put_KeepWithNext
     (This : uParagraphFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uParagraphFormat_Put_KeepWithNext,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_KeepWithNext;

   function Get_PageBreakBefore
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uParagraphFormat_Get_PageBreakBefore);
   end Get_PageBreakBefore;

   procedure Put_PageBreakBefore
     (This : uParagraphFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uParagraphFormat_Put_PageBreakBefore,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_PageBreakBefore;

   function Get_NoLineNumber
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uParagraphFormat_Get_NoLineNumber);
   end Get_NoLineNumber;

   procedure Put_NoLineNumber
     (This : uParagraphFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uParagraphFormat_Put_NoLineNumber,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_NoLineNumber;

   function Get_RightIndent
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uParagraphFormat_Get_RightIndent);
   end Get_RightIndent;

   procedure Put_RightIndent
     (This : uParagraphFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uParagraphFormat_Put_RightIndent,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_RightIndent;

   function Get_LeftIndent
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uParagraphFormat_Get_LeftIndent);
   end Get_LeftIndent;

   procedure Put_LeftIndent
     (This : uParagraphFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uParagraphFormat_Put_LeftIndent,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_LeftIndent;

   function Get_FirstLineIndent
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uParagraphFormat_Get_FirstLineIndent);
   end Get_FirstLineIndent;

   procedure Put_FirstLineIndent
     (This : uParagraphFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uParagraphFormat_Put_FirstLineIndent,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_FirstLineIndent;

   function Get_LineSpacing
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uParagraphFormat_Get_LineSpacing);
   end Get_LineSpacing;

   procedure Put_LineSpacing
     (This : uParagraphFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uParagraphFormat_Put_LineSpacing,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_LineSpacing;

   function Get_LineSpacingRule
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uParagraphFormat_Get_LineSpacingRule);
   end Get_LineSpacingRule;

   procedure Put_LineSpacingRule
     (This : uParagraphFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uParagraphFormat_Put_LineSpacingRule,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_LineSpacingRule;

   function Get_SpaceBefore
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uParagraphFormat_Get_SpaceBefore);
   end Get_SpaceBefore;

   procedure Put_SpaceBefore
     (This : uParagraphFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uParagraphFormat_Put_SpaceBefore,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_SpaceBefore;

   function Get_SpaceAfter
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uParagraphFormat_Get_SpaceAfter);
   end Get_SpaceAfter;

   procedure Put_SpaceAfter
     (This : uParagraphFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uParagraphFormat_Put_SpaceAfter,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_SpaceAfter;

   function Get_Hyphenation
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uParagraphFormat_Get_Hyphenation);
   end Get_Hyphenation;

   procedure Put_Hyphenation
     (This : uParagraphFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uParagraphFormat_Put_Hyphenation,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Hyphenation;

   function Get_WidowControl
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uParagraphFormat_Get_WidowControl);
   end Get_WidowControl;

   procedure Put_WidowControl
     (This : uParagraphFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uParagraphFormat_Put_WidowControl,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_WidowControl;

   function Get_FarEastLineBreakControl
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uParagraphFormat_Get_FarEastLineBreakControl);
   end Get_FarEastLineBreakControl;

   procedure Put_FarEastLineBreakControl
     (This : uParagraphFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uParagraphFormat_Put_FarEastLineBreakControl,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_FarEastLineBreakControl;

   function Get_WordWrap
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uParagraphFormat_Get_WordWrap);
   end Get_WordWrap;

   procedure Put_WordWrap
     (This : uParagraphFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uParagraphFormat_Put_WordWrap,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_WordWrap;

   function Get_HangingPunctuation
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uParagraphFormat_Get_HangingPunctuation);
   end Get_HangingPunctuation;

   procedure Put_HangingPunctuation
     (This : uParagraphFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uParagraphFormat_Put_HangingPunctuation,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_HangingPunctuation;

   function Get_HalfWidthPunctuationOnTopOfLine
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uParagraphFormat_Get_HalfWidthPunctuationOnTopOfLine);
   end Get_HalfWidthPunctuationOnTopOfLine;

   procedure Put_HalfWidthPunctuationOnTopOfLine
     (This : uParagraphFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uParagraphFormat_Put_HalfWidthPunctuationOnTopOfLine,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_HalfWidthPunctuationOnTopOfLine;

   function Get_AddSpaceBetweenFarEastAndAlpha
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uParagraphFormat_Get_AddSpaceBetweenFarEastAndAlpha);
   end Get_AddSpaceBetweenFarEastAndAlpha;

   procedure Put_AddSpaceBetweenFarEastAndAlpha
     (This : uParagraphFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uParagraphFormat_Put_AddSpaceBetweenFarEastAndAlpha,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AddSpaceBetweenFarEastAndAlpha;

   function Get_AddSpaceBetweenFarEastAndDigit
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uParagraphFormat_Get_AddSpaceBetweenFarEastAndDigit);
   end Get_AddSpaceBetweenFarEastAndDigit;

   procedure Put_AddSpaceBetweenFarEastAndDigit
     (This : uParagraphFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uParagraphFormat_Put_AddSpaceBetweenFarEastAndDigit,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AddSpaceBetweenFarEastAndDigit;

   function Get_BaseLineAlignment
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uParagraphFormat_Get_BaseLineAlignment);
   end Get_BaseLineAlignment;

   procedure Put_BaseLineAlignment
     (This : uParagraphFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uParagraphFormat_Put_BaseLineAlignment,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_BaseLineAlignment;

   function Get_AutoAdjustRightIndent
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uParagraphFormat_Get_AutoAdjustRightIndent);
   end Get_AutoAdjustRightIndent;

   procedure Put_AutoAdjustRightIndent
     (This : uParagraphFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uParagraphFormat_Put_AutoAdjustRightIndent,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AutoAdjustRightIndent;

   function Get_DisableLineHeightGrid
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uParagraphFormat_Get_DisableLineHeightGrid);
   end Get_DisableLineHeightGrid;

   procedure Put_DisableLineHeightGrid
     (This : uParagraphFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uParagraphFormat_Put_DisableLineHeightGrid,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DisableLineHeightGrid;

   function Get_TabStops
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uParagraphFormat_Get_TabStops);
   end Get_TabStops;

   procedure Put_TabStops
     (This : uParagraphFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uParagraphFormat_Put_TabStops,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_TabStops;

   function Get_Borders
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uParagraphFormat_Get_Borders);
   end Get_Borders;

   procedure Put_Borders
     (This : uParagraphFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uParagraphFormat_Put_Borders,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Borders;

   function Get_Shading
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uParagraphFormat_Get_Shading);
   end Get_Shading;

   function Get_OutlineLevel
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uParagraphFormat_Get_OutlineLevel);
   end Get_OutlineLevel;

   procedure Put_OutlineLevel
     (This : uParagraphFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uParagraphFormat_Put_OutlineLevel,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_OutlineLevel;

   procedure CloseUp
     (This : uParagraphFormat_Type)
   is
   begin
      Invoke (This, uParagraphFormat_CloseUp);
   end CloseUp;

   procedure OpenUp
     (This : uParagraphFormat_Type)
   is
   begin
      Invoke (This, uParagraphFormat_OpenUp);
   end OpenUp;

   procedure OpenOrCloseUp
     (This : uParagraphFormat_Type)
   is
   begin
      Invoke (This, uParagraphFormat_OpenOrCloseUp);
   end OpenOrCloseUp;

   procedure TabHangingIndent
     (This  : uParagraphFormat_Type;
      Count : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
   is
   begin
      Invoke
        (This,
         uParagraphFormat_TabHangingIndent,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Count),
         Free);
   end TabHangingIndent;

   procedure TabIndent
     (This  : uParagraphFormat_Type;
      Count : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
   is
   begin
      Invoke
        (This,
         uParagraphFormat_TabIndent,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Count),
         Free);
   end TabIndent;

   procedure Reset
     (This : uParagraphFormat_Type)
   is
   begin
      Invoke (This, uParagraphFormat_Reset);
   end Reset;

   procedure Space1
     (This : uParagraphFormat_Type)
   is
   begin
      Invoke (This, uParagraphFormat_Space1);
   end Space1;

   procedure Space15
     (This : uParagraphFormat_Type)
   is
   begin
      Invoke (This, uParagraphFormat_Space15);
   end Space15;

   procedure Space2
     (This : uParagraphFormat_Type)
   is
   begin
      Invoke (This, uParagraphFormat_Space2);
   end Space2;

   procedure IndentCharWidth
     (This  : uParagraphFormat_Type;
      Count : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
   is
   begin
      Invoke
        (This,
         uParagraphFormat_IndentCharWidth,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Count),
         Free);
   end IndentCharWidth;

   procedure IndentFirstLineCharWidth
     (This  : uParagraphFormat_Type;
      Count : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
   is
   begin
      Invoke
        (This,
         uParagraphFormat_IndentFirstLineCharWidth,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Count),
         Free);
   end IndentFirstLineCharWidth;

   function Get_CharacterUnitRightIndent
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uParagraphFormat_Get_CharacterUnitRightIndent);
   end Get_CharacterUnitRightIndent;

   procedure Put_CharacterUnitRightIndent
     (This : uParagraphFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uParagraphFormat_Put_CharacterUnitRightIndent,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_CharacterUnitRightIndent;

   function Get_CharacterUnitLeftIndent
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uParagraphFormat_Get_CharacterUnitLeftIndent);
   end Get_CharacterUnitLeftIndent;

   procedure Put_CharacterUnitLeftIndent
     (This : uParagraphFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uParagraphFormat_Put_CharacterUnitLeftIndent,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_CharacterUnitLeftIndent;

   function Get_CharacterUnitFirstLineIndent
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uParagraphFormat_Get_CharacterUnitFirstLineIndent);
   end Get_CharacterUnitFirstLineIndent;

   procedure Put_CharacterUnitFirstLineIndent
     (This : uParagraphFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uParagraphFormat_Put_CharacterUnitFirstLineIndent,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_CharacterUnitFirstLineIndent;

   function Get_LineUnitBefore
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uParagraphFormat_Get_LineUnitBefore);
   end Get_LineUnitBefore;

   procedure Put_LineUnitBefore
     (This : uParagraphFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uParagraphFormat_Put_LineUnitBefore,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_LineUnitBefore;

   function Get_LineUnitAfter
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uParagraphFormat_Get_LineUnitAfter);
   end Get_LineUnitAfter;

   procedure Put_LineUnitAfter
     (This : uParagraphFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uParagraphFormat_Put_LineUnitAfter,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_LineUnitAfter;

   function Get_ReadingOrder
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uParagraphFormat_Get_ReadingOrder);
   end Get_ReadingOrder;

   procedure Put_ReadingOrder
     (This : uParagraphFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uParagraphFormat_Put_ReadingOrder,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ReadingOrder;

   function Get_SpaceBeforeAuto
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uParagraphFormat_Get_SpaceBeforeAuto);
   end Get_SpaceBeforeAuto;

   procedure Put_SpaceBeforeAuto
     (This : uParagraphFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uParagraphFormat_Put_SpaceBeforeAuto,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_SpaceBeforeAuto;

   function Get_SpaceAfterAuto
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uParagraphFormat_Get_SpaceAfterAuto);
   end Get_SpaceAfterAuto;

   procedure Put_SpaceAfterAuto
     (This : uParagraphFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uParagraphFormat_Put_SpaceAfterAuto,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_SpaceAfterAuto;

end winword.uParagraphFormat_Object;

