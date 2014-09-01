package body winword.Paragraph_Object is

   function Get_Range
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraph_Get_Range);
   end Get_Range;

   function Get_Application
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraph_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraph_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraph_Get_Parent);
   end Get_Parent;

   function Get_Format
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraph_Get_Format);
   end Get_Format;

   procedure Put_Format
     (This : Paragraph_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Paragraph_Put_Format,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Format;

   function Get_TabStops
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraph_Get_TabStops);
   end Get_TabStops;

   procedure Put_TabStops
     (This : Paragraph_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Paragraph_Put_TabStops,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_TabStops;

   function Get_Borders
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraph_Get_Borders);
   end Get_Borders;

   procedure Put_Borders
     (This : Paragraph_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Paragraph_Put_Borders,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Borders;

   function Get_DropCap
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraph_Get_DropCap);
   end Get_DropCap;

   function Get_Style
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraph_Get_Style);
   end Get_Style;

   procedure Put_Style
     (This : Paragraph_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Paragraph_Put_Style,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Style;

   function Get_Alignment
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraph_Get_Alignment);
   end Get_Alignment;

   procedure Put_Alignment
     (This : Paragraph_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Paragraph_Put_Alignment,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Alignment;

   function Get_KeepTogether
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraph_Get_KeepTogether);
   end Get_KeepTogether;

   procedure Put_KeepTogether
     (This : Paragraph_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Paragraph_Put_KeepTogether,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_KeepTogether;

   function Get_KeepWithNext
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraph_Get_KeepWithNext);
   end Get_KeepWithNext;

   procedure Put_KeepWithNext
     (This : Paragraph_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Paragraph_Put_KeepWithNext,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_KeepWithNext;

   function Get_PageBreakBefore
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraph_Get_PageBreakBefore);
   end Get_PageBreakBefore;

   procedure Put_PageBreakBefore
     (This : Paragraph_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Paragraph_Put_PageBreakBefore,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_PageBreakBefore;

   function Get_NoLineNumber
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraph_Get_NoLineNumber);
   end Get_NoLineNumber;

   procedure Put_NoLineNumber
     (This : Paragraph_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Paragraph_Put_NoLineNumber,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_NoLineNumber;

   function Get_RightIndent
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraph_Get_RightIndent);
   end Get_RightIndent;

   procedure Put_RightIndent
     (This : Paragraph_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Paragraph_Put_RightIndent,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_RightIndent;

   function Get_LeftIndent
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraph_Get_LeftIndent);
   end Get_LeftIndent;

   procedure Put_LeftIndent
     (This : Paragraph_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Paragraph_Put_LeftIndent,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_LeftIndent;

   function Get_FirstLineIndent
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraph_Get_FirstLineIndent);
   end Get_FirstLineIndent;

   procedure Put_FirstLineIndent
     (This : Paragraph_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Paragraph_Put_FirstLineIndent,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_FirstLineIndent;

   function Get_LineSpacing
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraph_Get_LineSpacing);
   end Get_LineSpacing;

   procedure Put_LineSpacing
     (This : Paragraph_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Paragraph_Put_LineSpacing,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_LineSpacing;

   function Get_LineSpacingRule
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraph_Get_LineSpacingRule);
   end Get_LineSpacingRule;

   procedure Put_LineSpacingRule
     (This : Paragraph_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Paragraph_Put_LineSpacingRule,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_LineSpacingRule;

   function Get_SpaceBefore
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraph_Get_SpaceBefore);
   end Get_SpaceBefore;

   procedure Put_SpaceBefore
     (This : Paragraph_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Paragraph_Put_SpaceBefore,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_SpaceBefore;

   function Get_SpaceAfter
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraph_Get_SpaceAfter);
   end Get_SpaceAfter;

   procedure Put_SpaceAfter
     (This : Paragraph_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Paragraph_Put_SpaceAfter,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_SpaceAfter;

   function Get_Hyphenation
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraph_Get_Hyphenation);
   end Get_Hyphenation;

   procedure Put_Hyphenation
     (This : Paragraph_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Paragraph_Put_Hyphenation,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Hyphenation;

   function Get_WidowControl
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraph_Get_WidowControl);
   end Get_WidowControl;

   procedure Put_WidowControl
     (This : Paragraph_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Paragraph_Put_WidowControl,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_WidowControl;

   function Get_Shading
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraph_Get_Shading);
   end Get_Shading;

   function Get_FarEastLineBreakControl
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraph_Get_FarEastLineBreakControl);
   end Get_FarEastLineBreakControl;

   procedure Put_FarEastLineBreakControl
     (This : Paragraph_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Paragraph_Put_FarEastLineBreakControl,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_FarEastLineBreakControl;

   function Get_WordWrap
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraph_Get_WordWrap);
   end Get_WordWrap;

   procedure Put_WordWrap
     (This : Paragraph_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Paragraph_Put_WordWrap,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_WordWrap;

   function Get_HangingPunctuation
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraph_Get_HangingPunctuation);
   end Get_HangingPunctuation;

   procedure Put_HangingPunctuation
     (This : Paragraph_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Paragraph_Put_HangingPunctuation,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_HangingPunctuation;

   function Get_HalfWidthPunctuationOnTopOfLine
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraph_Get_HalfWidthPunctuationOnTopOfLine);
   end Get_HalfWidthPunctuationOnTopOfLine;

   procedure Put_HalfWidthPunctuationOnTopOfLine
     (This : Paragraph_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Paragraph_Put_HalfWidthPunctuationOnTopOfLine,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_HalfWidthPunctuationOnTopOfLine;

   function Get_AddSpaceBetweenFarEastAndAlpha
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraph_Get_AddSpaceBetweenFarEastAndAlpha);
   end Get_AddSpaceBetweenFarEastAndAlpha;

   procedure Put_AddSpaceBetweenFarEastAndAlpha
     (This : Paragraph_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Paragraph_Put_AddSpaceBetweenFarEastAndAlpha,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AddSpaceBetweenFarEastAndAlpha;

   function Get_AddSpaceBetweenFarEastAndDigit
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraph_Get_AddSpaceBetweenFarEastAndDigit);
   end Get_AddSpaceBetweenFarEastAndDigit;

   procedure Put_AddSpaceBetweenFarEastAndDigit
     (This : Paragraph_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Paragraph_Put_AddSpaceBetweenFarEastAndDigit,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AddSpaceBetweenFarEastAndDigit;

   function Get_BaseLineAlignment
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraph_Get_BaseLineAlignment);
   end Get_BaseLineAlignment;

   procedure Put_BaseLineAlignment
     (This : Paragraph_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Paragraph_Put_BaseLineAlignment,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_BaseLineAlignment;

   function Get_AutoAdjustRightIndent
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraph_Get_AutoAdjustRightIndent);
   end Get_AutoAdjustRightIndent;

   procedure Put_AutoAdjustRightIndent
     (This : Paragraph_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Paragraph_Put_AutoAdjustRightIndent,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AutoAdjustRightIndent;

   function Get_DisableLineHeightGrid
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraph_Get_DisableLineHeightGrid);
   end Get_DisableLineHeightGrid;

   procedure Put_DisableLineHeightGrid
     (This : Paragraph_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Paragraph_Put_DisableLineHeightGrid,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DisableLineHeightGrid;

   function Get_OutlineLevel
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraph_Get_OutlineLevel);
   end Get_OutlineLevel;

   procedure Put_OutlineLevel
     (This : Paragraph_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Paragraph_Put_OutlineLevel,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_OutlineLevel;

   procedure CloseUp
     (This : Paragraph_Type)
   is
   begin
      Invoke (This, Paragraph_CloseUp);
   end CloseUp;

   procedure OpenUp
     (This : Paragraph_Type)
   is
   begin
      Invoke (This, Paragraph_OpenUp);
   end OpenUp;

   procedure OpenOrCloseUp
     (This : Paragraph_Type)
   is
   begin
      Invoke (This, Paragraph_OpenOrCloseUp);
   end OpenOrCloseUp;

   procedure TabHangingIndent
     (This  : Paragraph_Type;
      Count : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
   is
   begin
      Invoke
        (This,
         Paragraph_TabHangingIndent,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Count),
         Free);
   end TabHangingIndent;

   procedure TabIndent
     (This  : Paragraph_Type;
      Count : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
   is
   begin
      Invoke
        (This,
         Paragraph_TabIndent,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Count),
         Free);
   end TabIndent;

   procedure Reset
     (This : Paragraph_Type)
   is
   begin
      Invoke (This, Paragraph_Reset);
   end Reset;

   procedure Space1
     (This : Paragraph_Type)
   is
   begin
      Invoke (This, Paragraph_Space1);
   end Space1;

   procedure Space15
     (This : Paragraph_Type)
   is
   begin
      Invoke (This, Paragraph_Space15);
   end Space15;

   procedure Space2
     (This : Paragraph_Type)
   is
   begin
      Invoke (This, Paragraph_Space2);
   end Space2;

   procedure IndentCharWidth
     (This  : Paragraph_Type;
      Count : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
   is
   begin
      Invoke
        (This,
         Paragraph_IndentCharWidth,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Count),
         Free);
   end IndentCharWidth;

   procedure IndentFirstLineCharWidth
     (This  : Paragraph_Type;
      Count : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
   is
   begin
      Invoke
        (This,
         Paragraph_IndentFirstLineCharWidth,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Count),
         Free);
   end IndentFirstLineCharWidth;

   function Next
     (This  : Paragraph_Type;
      Count : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Paragraph_Next,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Count),
         Free);
   end Next;

   function Previous
     (This  : Paragraph_Type;
      Count : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Paragraph_Previous,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Count),
         Free);
   end Previous;

   procedure OutlinePromote
     (This : Paragraph_Type)
   is
   begin
      Invoke (This, Paragraph_OutlinePromote);
   end OutlinePromote;

   procedure OutlineDemote
     (This : Paragraph_Type)
   is
   begin
      Invoke (This, Paragraph_OutlineDemote);
   end OutlineDemote;

   procedure OutlineDemoteToBody
     (This : Paragraph_Type)
   is
   begin
      Invoke (This, Paragraph_OutlineDemoteToBody);
   end OutlineDemoteToBody;

   procedure Indent
     (This : Paragraph_Type)
   is
   begin
      Invoke (This, Paragraph_Indent);
   end Indent;

   procedure Outdent
     (This : Paragraph_Type)
   is
   begin
      Invoke (This, Paragraph_Outdent);
   end Outdent;

   function Get_CharacterUnitRightIndent
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraph_Get_CharacterUnitRightIndent);
   end Get_CharacterUnitRightIndent;

   procedure Put_CharacterUnitRightIndent
     (This : Paragraph_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Paragraph_Put_CharacterUnitRightIndent,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_CharacterUnitRightIndent;

   function Get_CharacterUnitLeftIndent
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraph_Get_CharacterUnitLeftIndent);
   end Get_CharacterUnitLeftIndent;

   procedure Put_CharacterUnitLeftIndent
     (This : Paragraph_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Paragraph_Put_CharacterUnitLeftIndent,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_CharacterUnitLeftIndent;

   function Get_CharacterUnitFirstLineIndent
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraph_Get_CharacterUnitFirstLineIndent);
   end Get_CharacterUnitFirstLineIndent;

   procedure Put_CharacterUnitFirstLineIndent
     (This : Paragraph_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Paragraph_Put_CharacterUnitFirstLineIndent,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_CharacterUnitFirstLineIndent;

   function Get_LineUnitBefore
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraph_Get_LineUnitBefore);
   end Get_LineUnitBefore;

   procedure Put_LineUnitBefore
     (This : Paragraph_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Paragraph_Put_LineUnitBefore,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_LineUnitBefore;

   function Get_LineUnitAfter
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraph_Get_LineUnitAfter);
   end Get_LineUnitAfter;

   procedure Put_LineUnitAfter
     (This : Paragraph_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Paragraph_Put_LineUnitAfter,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_LineUnitAfter;

   function Get_ReadingOrder
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraph_Get_ReadingOrder);
   end Get_ReadingOrder;

   procedure Put_ReadingOrder
     (This : Paragraph_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Paragraph_Put_ReadingOrder,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ReadingOrder;

   function Get_ID
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraph_Get_ID);
   end Get_ID;

   procedure Put_ID
     (This : Paragraph_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Paragraph_Put_ID,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ID;

   function Get_SpaceBeforeAuto
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraph_Get_SpaceBeforeAuto);
   end Get_SpaceBeforeAuto;

   procedure Put_SpaceBeforeAuto
     (This : Paragraph_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Paragraph_Put_SpaceBeforeAuto,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_SpaceBeforeAuto;

   function Get_SpaceAfterAuto
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraph_Get_SpaceAfterAuto);
   end Get_SpaceAfterAuto;

   procedure Put_SpaceAfterAuto
     (This : Paragraph_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Paragraph_Put_SpaceAfterAuto,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_SpaceAfterAuto;

   function Get_IsStyleSeparator
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Paragraph_Get_IsStyleSeparator);
   end Get_IsStyleSeparator;

   procedure SelectNumber
     (This : Paragraph_Type)
   is
   begin
      Invoke (This, Paragraph_SelectNumber);
   end SelectNumber;

end winword.Paragraph_Object;

