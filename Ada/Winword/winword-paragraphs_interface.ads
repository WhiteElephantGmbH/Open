with GNATCOM.Dispinterface;

package winword.Paragraphs_Interface is

   type Paragraphs_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Paragraphs_Type);

   function Pointer (This : Paragraphs_Type)
     return Pointer_To_Paragraphs;

   procedure Attach (This    : in out Paragraphs_Type;
                     Pointer : in     Pointer_To_Paragraphs);

   function Getu_NewEnum
     (This : Paragraphs_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_Count
     (This : Paragraphs_Type)
     return Interfaces.C.long;

   function Get_First
     (This : Paragraphs_Type)
     return Pointer_To_Paragraph;

   function Get_Last
     (This : Paragraphs_Type)
     return Pointer_To_Paragraph;

   function Get_Application
     (This : Paragraphs_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : Paragraphs_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : Paragraphs_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Format
     (This : Paragraphs_Type)
     return Pointer_To_uParagraphFormat;

   procedure Put_Format
     (This : Paragraphs_Type;
      prop : Pointer_To_uParagraphFormat);

   function Get_TabStops
     (This : Paragraphs_Type)
     return Pointer_To_TabStops;

   procedure Put_TabStops
     (This : Paragraphs_Type;
      prop : Pointer_To_TabStops);

   function Get_Borders
     (This : Paragraphs_Type)
     return Pointer_To_Borders;

   procedure Put_Borders
     (This : Paragraphs_Type;
      prop : Pointer_To_Borders);

   function Get_Style
     (This : Paragraphs_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Style
     (This : Paragraphs_Type;
      prop : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   function Get_Alignment
     (This : Paragraphs_Type)
     return WdParagraphAlignment;

   procedure Put_Alignment
     (This : Paragraphs_Type;
      prop : WdParagraphAlignment);

   function Get_KeepTogether
     (This : Paragraphs_Type)
     return Interfaces.C.long;

   procedure Put_KeepTogether
     (This : Paragraphs_Type;
      prop : Interfaces.C.long);

   function Get_KeepWithNext
     (This : Paragraphs_Type)
     return Interfaces.C.long;

   procedure Put_KeepWithNext
     (This : Paragraphs_Type;
      prop : Interfaces.C.long);

   function Get_PageBreakBefore
     (This : Paragraphs_Type)
     return Interfaces.C.long;

   procedure Put_PageBreakBefore
     (This : Paragraphs_Type;
      prop : Interfaces.C.long);

   function Get_NoLineNumber
     (This : Paragraphs_Type)
     return Interfaces.C.long;

   procedure Put_NoLineNumber
     (This : Paragraphs_Type;
      prop : Interfaces.C.long);

   function Get_RightIndent
     (This : Paragraphs_Type)
     return Interfaces.C.C_float;

   procedure Put_RightIndent
     (This : Paragraphs_Type;
      prop : Interfaces.C.C_float);

   function Get_LeftIndent
     (This : Paragraphs_Type)
     return Interfaces.C.C_float;

   procedure Put_LeftIndent
     (This : Paragraphs_Type;
      prop : Interfaces.C.C_float);

   function Get_FirstLineIndent
     (This : Paragraphs_Type)
     return Interfaces.C.C_float;

   procedure Put_FirstLineIndent
     (This : Paragraphs_Type;
      prop : Interfaces.C.C_float);

   function Get_LineSpacing
     (This : Paragraphs_Type)
     return Interfaces.C.C_float;

   procedure Put_LineSpacing
     (This : Paragraphs_Type;
      prop : Interfaces.C.C_float);

   function Get_LineSpacingRule
     (This : Paragraphs_Type)
     return WdLineSpacing;

   procedure Put_LineSpacingRule
     (This : Paragraphs_Type;
      prop : WdLineSpacing);

   function Get_SpaceBefore
     (This : Paragraphs_Type)
     return Interfaces.C.C_float;

   procedure Put_SpaceBefore
     (This : Paragraphs_Type;
      prop : Interfaces.C.C_float);

   function Get_SpaceAfter
     (This : Paragraphs_Type)
     return Interfaces.C.C_float;

   procedure Put_SpaceAfter
     (This : Paragraphs_Type;
      prop : Interfaces.C.C_float);

   function Get_Hyphenation
     (This : Paragraphs_Type)
     return Interfaces.C.long;

   procedure Put_Hyphenation
     (This : Paragraphs_Type;
      prop : Interfaces.C.long);

   function Get_WidowControl
     (This : Paragraphs_Type)
     return Interfaces.C.long;

   procedure Put_WidowControl
     (This : Paragraphs_Type;
      prop : Interfaces.C.long);

   function Get_Shading
     (This : Paragraphs_Type)
     return Pointer_To_Shading;

   function Get_FarEastLineBreakControl
     (This : Paragraphs_Type)
     return Interfaces.C.long;

   procedure Put_FarEastLineBreakControl
     (This : Paragraphs_Type;
      prop : Interfaces.C.long);

   function Get_WordWrap
     (This : Paragraphs_Type)
     return Interfaces.C.long;

   procedure Put_WordWrap
     (This : Paragraphs_Type;
      prop : Interfaces.C.long);

   function Get_HangingPunctuation
     (This : Paragraphs_Type)
     return Interfaces.C.long;

   procedure Put_HangingPunctuation
     (This : Paragraphs_Type;
      prop : Interfaces.C.long);

   function Get_HalfWidthPunctuationOnTopOfLine
     (This : Paragraphs_Type)
     return Interfaces.C.long;

   procedure Put_HalfWidthPunctuationOnTopOfLine
     (This : Paragraphs_Type;
      prop : Interfaces.C.long);

   function Get_AddSpaceBetweenFarEastAndAlpha
     (This : Paragraphs_Type)
     return Interfaces.C.long;

   procedure Put_AddSpaceBetweenFarEastAndAlpha
     (This : Paragraphs_Type;
      prop : Interfaces.C.long);

   function Get_AddSpaceBetweenFarEastAndDigit
     (This : Paragraphs_Type)
     return Interfaces.C.long;

   procedure Put_AddSpaceBetweenFarEastAndDigit
     (This : Paragraphs_Type;
      prop : Interfaces.C.long);

   function Get_BaseLineAlignment
     (This : Paragraphs_Type)
     return WdBaselineAlignment;

   procedure Put_BaseLineAlignment
     (This : Paragraphs_Type;
      prop : WdBaselineAlignment);

   function Get_AutoAdjustRightIndent
     (This : Paragraphs_Type)
     return Interfaces.C.long;

   procedure Put_AutoAdjustRightIndent
     (This : Paragraphs_Type;
      prop : Interfaces.C.long);

   function Get_DisableLineHeightGrid
     (This : Paragraphs_Type)
     return Interfaces.C.long;

   procedure Put_DisableLineHeightGrid
     (This : Paragraphs_Type;
      prop : Interfaces.C.long);

   function Get_OutlineLevel
     (This : Paragraphs_Type)
     return WdOutlineLevel;

   procedure Put_OutlineLevel
     (This : Paragraphs_Type;
      prop : WdOutlineLevel);

   function Item
     (This  : Paragraphs_Type;
      Index : Interfaces.C.long)
     return Pointer_To_Paragraph;

   function Add
     (This   : Paragraphs_Type;
      uRange : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Paragraph;

   procedure CloseUp
     (This : Paragraphs_Type);

   procedure OpenUp
     (This : Paragraphs_Type);

   procedure OpenOrCloseUp
     (This : Paragraphs_Type);

   procedure TabHangingIndent
     (This  : Paragraphs_Type;
      Count : Interfaces.C.short);

   procedure TabIndent
     (This  : Paragraphs_Type;
      Count : Interfaces.C.short);

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
      Count : Interfaces.C.short);

   procedure IndentFirstLineCharWidth
     (This  : Paragraphs_Type;
      Count : Interfaces.C.short);

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
     return Interfaces.C.C_float;

   procedure Put_CharacterUnitRightIndent
     (This : Paragraphs_Type;
      prop : Interfaces.C.C_float);

   function Get_CharacterUnitLeftIndent
     (This : Paragraphs_Type)
     return Interfaces.C.C_float;

   procedure Put_CharacterUnitLeftIndent
     (This : Paragraphs_Type;
      prop : Interfaces.C.C_float);

   function Get_CharacterUnitFirstLineIndent
     (This : Paragraphs_Type)
     return Interfaces.C.C_float;

   procedure Put_CharacterUnitFirstLineIndent
     (This : Paragraphs_Type;
      prop : Interfaces.C.C_float);

   function Get_LineUnitBefore
     (This : Paragraphs_Type)
     return Interfaces.C.C_float;

   procedure Put_LineUnitBefore
     (This : Paragraphs_Type;
      prop : Interfaces.C.C_float);

   function Get_LineUnitAfter
     (This : Paragraphs_Type)
     return Interfaces.C.C_float;

   procedure Put_LineUnitAfter
     (This : Paragraphs_Type;
      prop : Interfaces.C.C_float);

   function Get_ReadingOrder
     (This : Paragraphs_Type)
     return WdReadingOrder;

   procedure Put_ReadingOrder
     (This : Paragraphs_Type;
      prop : WdReadingOrder);

   function Get_SpaceBeforeAuto
     (This : Paragraphs_Type)
     return Interfaces.C.long;

   procedure Put_SpaceBeforeAuto
     (This : Paragraphs_Type;
      prop : Interfaces.C.long);

   function Get_SpaceAfterAuto
     (This : Paragraphs_Type)
     return Interfaces.C.long;

   procedure Put_SpaceAfterAuto
     (This : Paragraphs_Type;
      prop : Interfaces.C.long);

   procedure IncreaseSpacing
     (This : Paragraphs_Type);

   procedure DecreaseSpacing
     (This : Paragraphs_Type);

end winword.Paragraphs_Interface;

