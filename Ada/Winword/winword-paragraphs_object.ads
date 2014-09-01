with GNATCOM.Dispinterface;

package winword.Paragraphs_Object is

   type Paragraphs_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Getu_NewEnum
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT;

   function Get_First
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Last
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Application
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Format
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Format
     (This : Paragraphs_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_TabStops
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_TabStops
     (This : Paragraphs_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Borders
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Borders
     (This : Paragraphs_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Style
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Style
     (This : Paragraphs_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Alignment
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Alignment
     (This : Paragraphs_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_KeepTogether
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_KeepTogether
     (This : Paragraphs_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_KeepWithNext
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_KeepWithNext
     (This : Paragraphs_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_PageBreakBefore
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_PageBreakBefore
     (This : Paragraphs_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_NoLineNumber
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_NoLineNumber
     (This : Paragraphs_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_RightIndent
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_RightIndent
     (This : Paragraphs_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_LeftIndent
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_LeftIndent
     (This : Paragraphs_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_FirstLineIndent
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_FirstLineIndent
     (This : Paragraphs_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_LineSpacing
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_LineSpacing
     (This : Paragraphs_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_LineSpacingRule
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_LineSpacingRule
     (This : Paragraphs_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_SpaceBefore
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_SpaceBefore
     (This : Paragraphs_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_SpaceAfter
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_SpaceAfter
     (This : Paragraphs_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Hyphenation
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Hyphenation
     (This : Paragraphs_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_WidowControl
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_WidowControl
     (This : Paragraphs_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Shading
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT;

   function Get_FarEastLineBreakControl
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_FarEastLineBreakControl
     (This : Paragraphs_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_WordWrap
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_WordWrap
     (This : Paragraphs_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_HangingPunctuation
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_HangingPunctuation
     (This : Paragraphs_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_HalfWidthPunctuationOnTopOfLine
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_HalfWidthPunctuationOnTopOfLine
     (This : Paragraphs_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AddSpaceBetweenFarEastAndAlpha
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AddSpaceBetweenFarEastAndAlpha
     (This : Paragraphs_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AddSpaceBetweenFarEastAndDigit
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AddSpaceBetweenFarEastAndDigit
     (This : Paragraphs_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_BaseLineAlignment
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_BaseLineAlignment
     (This : Paragraphs_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AutoAdjustRightIndent
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AutoAdjustRightIndent
     (This : Paragraphs_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_DisableLineHeightGrid
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DisableLineHeightGrid
     (This : Paragraphs_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_OutlineLevel
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_OutlineLevel
     (This : Paragraphs_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Item
     (This  : Paragraphs_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Add
     (This   : Paragraphs_Type;
      uRange : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure CloseUp
     (This : Paragraphs_Type);

   procedure OpenUp
     (This : Paragraphs_Type);

   procedure OpenOrCloseUp
     (This : Paragraphs_Type);

   procedure TabHangingIndent
     (This  : Paragraphs_Type;
      Count : GNATCOM.Types.VARIANT;
      Free  : Boolean := True);

   procedure TabIndent
     (This  : Paragraphs_Type;
      Count : GNATCOM.Types.VARIANT;
      Free  : Boolean := True);

   procedure Reset
     (This : Paragraphs_Type);

   procedure Space1
     (This : Paragraphs_Type);

   procedure Space15
     (This : Paragraphs_Type);

   procedure Space2
     (This : Paragraphs_Type);

   procedure IndentCharWidth
     (This  : Paragraphs_Type;
      Count : GNATCOM.Types.VARIANT;
      Free  : Boolean := True);

   procedure IndentFirstLineCharWidth
     (This  : Paragraphs_Type;
      Count : GNATCOM.Types.VARIANT;
      Free  : Boolean := True);

   procedure OutlinePromote
     (This : Paragraphs_Type);

   procedure OutlineDemote
     (This : Paragraphs_Type);

   procedure OutlineDemoteToBody
     (This : Paragraphs_Type);

   procedure Indent
     (This : Paragraphs_Type);

   procedure Outdent
     (This : Paragraphs_Type);

   function Get_CharacterUnitRightIndent
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_CharacterUnitRightIndent
     (This : Paragraphs_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_CharacterUnitLeftIndent
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_CharacterUnitLeftIndent
     (This : Paragraphs_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_CharacterUnitFirstLineIndent
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_CharacterUnitFirstLineIndent
     (This : Paragraphs_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_LineUnitBefore
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_LineUnitBefore
     (This : Paragraphs_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_LineUnitAfter
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_LineUnitAfter
     (This : Paragraphs_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ReadingOrder
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ReadingOrder
     (This : Paragraphs_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_SpaceBeforeAuto
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_SpaceBeforeAuto
     (This : Paragraphs_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_SpaceAfterAuto
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_SpaceAfterAuto
     (This : Paragraphs_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure IncreaseSpacing
     (This : Paragraphs_Type);

   procedure DecreaseSpacing
     (This : Paragraphs_Type);

end winword.Paragraphs_Object;

