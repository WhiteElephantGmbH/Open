with GNATCOM.Dispinterface;

package winword.Paragraph_Object is

   type Paragraph_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Range
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Application
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Format
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Format
     (This : Paragraph_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_TabStops
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_TabStops
     (This : Paragraph_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Borders
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Borders
     (This : Paragraph_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_DropCap
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Style
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Style
     (This : Paragraph_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Alignment
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Alignment
     (This : Paragraph_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_KeepTogether
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_KeepTogether
     (This : Paragraph_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_KeepWithNext
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_KeepWithNext
     (This : Paragraph_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_PageBreakBefore
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_PageBreakBefore
     (This : Paragraph_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_NoLineNumber
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_NoLineNumber
     (This : Paragraph_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_RightIndent
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_RightIndent
     (This : Paragraph_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_LeftIndent
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_LeftIndent
     (This : Paragraph_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_FirstLineIndent
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_FirstLineIndent
     (This : Paragraph_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_LineSpacing
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_LineSpacing
     (This : Paragraph_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_LineSpacingRule
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_LineSpacingRule
     (This : Paragraph_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_SpaceBefore
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_SpaceBefore
     (This : Paragraph_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_SpaceAfter
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_SpaceAfter
     (This : Paragraph_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Hyphenation
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Hyphenation
     (This : Paragraph_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_WidowControl
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_WidowControl
     (This : Paragraph_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Shading
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT;

   function Get_FarEastLineBreakControl
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_FarEastLineBreakControl
     (This : Paragraph_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_WordWrap
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_WordWrap
     (This : Paragraph_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_HangingPunctuation
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_HangingPunctuation
     (This : Paragraph_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_HalfWidthPunctuationOnTopOfLine
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_HalfWidthPunctuationOnTopOfLine
     (This : Paragraph_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AddSpaceBetweenFarEastAndAlpha
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AddSpaceBetweenFarEastAndAlpha
     (This : Paragraph_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AddSpaceBetweenFarEastAndDigit
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AddSpaceBetweenFarEastAndDigit
     (This : Paragraph_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_BaseLineAlignment
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_BaseLineAlignment
     (This : Paragraph_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AutoAdjustRightIndent
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AutoAdjustRightIndent
     (This : Paragraph_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_DisableLineHeightGrid
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DisableLineHeightGrid
     (This : Paragraph_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_OutlineLevel
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_OutlineLevel
     (This : Paragraph_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure CloseUp
     (This : Paragraph_Type);

   procedure OpenUp
     (This : Paragraph_Type);

   procedure OpenOrCloseUp
     (This : Paragraph_Type);

   procedure TabHangingIndent
     (This  : Paragraph_Type;
      Count : GNATCOM.Types.VARIANT;
      Free  : Boolean := True);

   procedure TabIndent
     (This  : Paragraph_Type;
      Count : GNATCOM.Types.VARIANT;
      Free  : Boolean := True);

   procedure Reset
     (This : Paragraph_Type);

   procedure Space1
     (This : Paragraph_Type);

   procedure Space15
     (This : Paragraph_Type);

   procedure Space2
     (This : Paragraph_Type);

   procedure IndentCharWidth
     (This  : Paragraph_Type;
      Count : GNATCOM.Types.VARIANT;
      Free  : Boolean := True);

   procedure IndentFirstLineCharWidth
     (This  : Paragraph_Type;
      Count : GNATCOM.Types.VARIANT;
      Free  : Boolean := True);

   function Next
     (This  : Paragraph_Type;
      Count : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Previous
     (This  : Paragraph_Type;
      Count : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure OutlinePromote
     (This : Paragraph_Type);

   procedure OutlineDemote
     (This : Paragraph_Type);

   procedure OutlineDemoteToBody
     (This : Paragraph_Type);

   procedure Indent
     (This : Paragraph_Type);

   procedure Outdent
     (This : Paragraph_Type);

   function Get_CharacterUnitRightIndent
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_CharacterUnitRightIndent
     (This : Paragraph_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_CharacterUnitLeftIndent
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_CharacterUnitLeftIndent
     (This : Paragraph_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_CharacterUnitFirstLineIndent
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_CharacterUnitFirstLineIndent
     (This : Paragraph_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_LineUnitBefore
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_LineUnitBefore
     (This : Paragraph_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_LineUnitAfter
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_LineUnitAfter
     (This : Paragraph_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ReadingOrder
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ReadingOrder
     (This : Paragraph_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ID
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ID
     (This : Paragraph_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_SpaceBeforeAuto
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_SpaceBeforeAuto
     (This : Paragraph_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_SpaceAfterAuto
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_SpaceAfterAuto
     (This : Paragraph_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_IsStyleSeparator
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT;

   procedure SelectNumber
     (This : Paragraph_Type);

end winword.Paragraph_Object;

