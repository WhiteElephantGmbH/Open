with GNATCOM.Dispinterface;

package winword.Paragraph_Interface is

   type Paragraph_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Paragraph_Type);

   function Pointer (This : Paragraph_Type)
     return Pointer_To_Paragraph;

   procedure Attach (This    : in out Paragraph_Type;
                     Pointer : in     Pointer_To_Paragraph);

   function Get_Range
     (This : Paragraph_Type)
     return Pointer_To_uRange;

   function Get_Application
     (This : Paragraph_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : Paragraph_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : Paragraph_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Format
     (This : Paragraph_Type)
     return Pointer_To_uParagraphFormat;

   procedure Put_Format
     (This : Paragraph_Type;
      prop : Pointer_To_uParagraphFormat);

   function Get_TabStops
     (This : Paragraph_Type)
     return Pointer_To_TabStops;

   procedure Put_TabStops
     (This : Paragraph_Type;
      prop : Pointer_To_TabStops);

   function Get_Borders
     (This : Paragraph_Type)
     return Pointer_To_Borders;

   procedure Put_Borders
     (This : Paragraph_Type;
      prop : Pointer_To_Borders);

   function Get_DropCap
     (This : Paragraph_Type)
     return Pointer_To_DropCap;

   function Get_Style
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Style
     (This : Paragraph_Type;
      prop : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   function Get_Alignment
     (This : Paragraph_Type)
     return WdParagraphAlignment;

   procedure Put_Alignment
     (This : Paragraph_Type;
      prop : WdParagraphAlignment);

   function Get_KeepTogether
     (This : Paragraph_Type)
     return Interfaces.C.long;

   procedure Put_KeepTogether
     (This : Paragraph_Type;
      prop : Interfaces.C.long);

   function Get_KeepWithNext
     (This : Paragraph_Type)
     return Interfaces.C.long;

   procedure Put_KeepWithNext
     (This : Paragraph_Type;
      prop : Interfaces.C.long);

   function Get_PageBreakBefore
     (This : Paragraph_Type)
     return Interfaces.C.long;

   procedure Put_PageBreakBefore
     (This : Paragraph_Type;
      prop : Interfaces.C.long);

   function Get_NoLineNumber
     (This : Paragraph_Type)
     return Interfaces.C.long;

   procedure Put_NoLineNumber
     (This : Paragraph_Type;
      prop : Interfaces.C.long);

   function Get_RightIndent
     (This : Paragraph_Type)
     return Interfaces.C.C_float;

   procedure Put_RightIndent
     (This : Paragraph_Type;
      prop : Interfaces.C.C_float);

   function Get_LeftIndent
     (This : Paragraph_Type)
     return Interfaces.C.C_float;

   procedure Put_LeftIndent
     (This : Paragraph_Type;
      prop : Interfaces.C.C_float);

   function Get_FirstLineIndent
     (This : Paragraph_Type)
     return Interfaces.C.C_float;

   procedure Put_FirstLineIndent
     (This : Paragraph_Type;
      prop : Interfaces.C.C_float);

   function Get_LineSpacing
     (This : Paragraph_Type)
     return Interfaces.C.C_float;

   procedure Put_LineSpacing
     (This : Paragraph_Type;
      prop : Interfaces.C.C_float);

   function Get_LineSpacingRule
     (This : Paragraph_Type)
     return WdLineSpacing;

   procedure Put_LineSpacingRule
     (This : Paragraph_Type;
      prop : WdLineSpacing);

   function Get_SpaceBefore
     (This : Paragraph_Type)
     return Interfaces.C.C_float;

   procedure Put_SpaceBefore
     (This : Paragraph_Type;
      prop : Interfaces.C.C_float);

   function Get_SpaceAfter
     (This : Paragraph_Type)
     return Interfaces.C.C_float;

   procedure Put_SpaceAfter
     (This : Paragraph_Type;
      prop : Interfaces.C.C_float);

   function Get_Hyphenation
     (This : Paragraph_Type)
     return Interfaces.C.long;

   procedure Put_Hyphenation
     (This : Paragraph_Type;
      prop : Interfaces.C.long);

   function Get_WidowControl
     (This : Paragraph_Type)
     return Interfaces.C.long;

   procedure Put_WidowControl
     (This : Paragraph_Type;
      prop : Interfaces.C.long);

   function Get_Shading
     (This : Paragraph_Type)
     return Pointer_To_Shading;

   function Get_FarEastLineBreakControl
     (This : Paragraph_Type)
     return Interfaces.C.long;

   procedure Put_FarEastLineBreakControl
     (This : Paragraph_Type;
      prop : Interfaces.C.long);

   function Get_WordWrap
     (This : Paragraph_Type)
     return Interfaces.C.long;

   procedure Put_WordWrap
     (This : Paragraph_Type;
      prop : Interfaces.C.long);

   function Get_HangingPunctuation
     (This : Paragraph_Type)
     return Interfaces.C.long;

   procedure Put_HangingPunctuation
     (This : Paragraph_Type;
      prop : Interfaces.C.long);

   function Get_HalfWidthPunctuationOnTopOfLine
     (This : Paragraph_Type)
     return Interfaces.C.long;

   procedure Put_HalfWidthPunctuationOnTopOfLine
     (This : Paragraph_Type;
      prop : Interfaces.C.long);

   function Get_AddSpaceBetweenFarEastAndAlpha
     (This : Paragraph_Type)
     return Interfaces.C.long;

   procedure Put_AddSpaceBetweenFarEastAndAlpha
     (This : Paragraph_Type;
      prop : Interfaces.C.long);

   function Get_AddSpaceBetweenFarEastAndDigit
     (This : Paragraph_Type)
     return Interfaces.C.long;

   procedure Put_AddSpaceBetweenFarEastAndDigit
     (This : Paragraph_Type;
      prop : Interfaces.C.long);

   function Get_BaseLineAlignment
     (This : Paragraph_Type)
     return WdBaselineAlignment;

   procedure Put_BaseLineAlignment
     (This : Paragraph_Type;
      prop : WdBaselineAlignment);

   function Get_AutoAdjustRightIndent
     (This : Paragraph_Type)
     return Interfaces.C.long;

   procedure Put_AutoAdjustRightIndent
     (This : Paragraph_Type;
      prop : Interfaces.C.long);

   function Get_DisableLineHeightGrid
     (This : Paragraph_Type)
     return Interfaces.C.long;

   procedure Put_DisableLineHeightGrid
     (This : Paragraph_Type;
      prop : Interfaces.C.long);

   function Get_OutlineLevel
     (This : Paragraph_Type)
     return WdOutlineLevel;

   procedure Put_OutlineLevel
     (This : Paragraph_Type;
      prop : WdOutlineLevel);

   procedure CloseUp
     (This : Paragraph_Type);

   procedure OpenUp
     (This : Paragraph_Type);

   procedure OpenOrCloseUp
     (This : Paragraph_Type);

   procedure TabHangingIndent
     (This  : Paragraph_Type;
      Count : Interfaces.C.short);

   procedure TabIndent
     (This  : Paragraph_Type;
      Count : Interfaces.C.short);

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
      Count : Interfaces.C.short);

   procedure IndentFirstLineCharWidth
     (This  : Paragraph_Type;
      Count : Interfaces.C.short);

   function Next
     (This  : Paragraph_Type;
      Count : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Paragraph;

   function Previous
     (This  : Paragraph_Type;
      Count : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Paragraph;

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
     return Interfaces.C.C_float;

   procedure Put_CharacterUnitRightIndent
     (This : Paragraph_Type;
      prop : Interfaces.C.C_float);

   function Get_CharacterUnitLeftIndent
     (This : Paragraph_Type)
     return Interfaces.C.C_float;

   procedure Put_CharacterUnitLeftIndent
     (This : Paragraph_Type;
      prop : Interfaces.C.C_float);

   function Get_CharacterUnitFirstLineIndent
     (This : Paragraph_Type)
     return Interfaces.C.C_float;

   procedure Put_CharacterUnitFirstLineIndent
     (This : Paragraph_Type;
      prop : Interfaces.C.C_float);

   function Get_LineUnitBefore
     (This : Paragraph_Type)
     return Interfaces.C.C_float;

   procedure Put_LineUnitBefore
     (This : Paragraph_Type;
      prop : Interfaces.C.C_float);

   function Get_LineUnitAfter
     (This : Paragraph_Type)
     return Interfaces.C.C_float;

   procedure Put_LineUnitAfter
     (This : Paragraph_Type;
      prop : Interfaces.C.C_float);

   function Get_ReadingOrder
     (This : Paragraph_Type)
     return WdReadingOrder;

   procedure Put_ReadingOrder
     (This : Paragraph_Type;
      prop : WdReadingOrder);

   function Get_ID
     (This : Paragraph_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_ID
     (This : Paragraph_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_SpaceBeforeAuto
     (This : Paragraph_Type)
     return Interfaces.C.long;

   procedure Put_SpaceBeforeAuto
     (This : Paragraph_Type;
      prop : Interfaces.C.long);

   function Get_SpaceAfterAuto
     (This : Paragraph_Type)
     return Interfaces.C.long;

   procedure Put_SpaceAfterAuto
     (This : Paragraph_Type;
      prop : Interfaces.C.long);

   function Get_IsStyleSeparator
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure SelectNumber
     (This : Paragraph_Type);

end winword.Paragraph_Interface;

