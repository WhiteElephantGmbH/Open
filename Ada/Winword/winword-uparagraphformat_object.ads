with GNATCOM.Dispinterface;

package winword.uParagraphFormat_Object is

   type uParagraphFormat_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Duplicate
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Style
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Style
     (This : uParagraphFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Alignment
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Alignment
     (This : uParagraphFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_KeepTogether
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_KeepTogether
     (This : uParagraphFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_KeepWithNext
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_KeepWithNext
     (This : uParagraphFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_PageBreakBefore
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_PageBreakBefore
     (This : uParagraphFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_NoLineNumber
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_NoLineNumber
     (This : uParagraphFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_RightIndent
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_RightIndent
     (This : uParagraphFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_LeftIndent
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_LeftIndent
     (This : uParagraphFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_FirstLineIndent
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_FirstLineIndent
     (This : uParagraphFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_LineSpacing
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_LineSpacing
     (This : uParagraphFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_LineSpacingRule
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_LineSpacingRule
     (This : uParagraphFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_SpaceBefore
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_SpaceBefore
     (This : uParagraphFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_SpaceAfter
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_SpaceAfter
     (This : uParagraphFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Hyphenation
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Hyphenation
     (This : uParagraphFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_WidowControl
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_WidowControl
     (This : uParagraphFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_FarEastLineBreakControl
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_FarEastLineBreakControl
     (This : uParagraphFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_WordWrap
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_WordWrap
     (This : uParagraphFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_HangingPunctuation
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_HangingPunctuation
     (This : uParagraphFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_HalfWidthPunctuationOnTopOfLine
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_HalfWidthPunctuationOnTopOfLine
     (This : uParagraphFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AddSpaceBetweenFarEastAndAlpha
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AddSpaceBetweenFarEastAndAlpha
     (This : uParagraphFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AddSpaceBetweenFarEastAndDigit
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AddSpaceBetweenFarEastAndDigit
     (This : uParagraphFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_BaseLineAlignment
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_BaseLineAlignment
     (This : uParagraphFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AutoAdjustRightIndent
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AutoAdjustRightIndent
     (This : uParagraphFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_DisableLineHeightGrid
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DisableLineHeightGrid
     (This : uParagraphFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_TabStops
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_TabStops
     (This : uParagraphFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Borders
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Borders
     (This : uParagraphFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Shading
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_OutlineLevel
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_OutlineLevel
     (This : uParagraphFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure CloseUp
     (This : uParagraphFormat_Type);

   procedure OpenUp
     (This : uParagraphFormat_Type);

   procedure OpenOrCloseUp
     (This : uParagraphFormat_Type);

   procedure TabHangingIndent
     (This  : uParagraphFormat_Type;
      Count : GNATCOM.Types.VARIANT;
      Free  : Boolean := True);

   procedure TabIndent
     (This  : uParagraphFormat_Type;
      Count : GNATCOM.Types.VARIANT;
      Free  : Boolean := True);

   procedure Reset
     (This : uParagraphFormat_Type);

   procedure Space1
     (This : uParagraphFormat_Type);

   procedure Space15
     (This : uParagraphFormat_Type);

   procedure Space2
     (This : uParagraphFormat_Type);

   procedure IndentCharWidth
     (This  : uParagraphFormat_Type;
      Count : GNATCOM.Types.VARIANT;
      Free  : Boolean := True);

   procedure IndentFirstLineCharWidth
     (This  : uParagraphFormat_Type;
      Count : GNATCOM.Types.VARIANT;
      Free  : Boolean := True);

   function Get_CharacterUnitRightIndent
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_CharacterUnitRightIndent
     (This : uParagraphFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_CharacterUnitLeftIndent
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_CharacterUnitLeftIndent
     (This : uParagraphFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_CharacterUnitFirstLineIndent
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_CharacterUnitFirstLineIndent
     (This : uParagraphFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_LineUnitBefore
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_LineUnitBefore
     (This : uParagraphFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_LineUnitAfter
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_LineUnitAfter
     (This : uParagraphFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ReadingOrder
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ReadingOrder
     (This : uParagraphFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_SpaceBeforeAuto
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_SpaceBeforeAuto
     (This : uParagraphFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_SpaceAfterAuto
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_SpaceAfterAuto
     (This : uParagraphFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

end winword.uParagraphFormat_Object;

