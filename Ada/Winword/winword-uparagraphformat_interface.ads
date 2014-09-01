with GNATCOM.Dispinterface;

package winword.uParagraphFormat_Interface is

   type uParagraphFormat_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out uParagraphFormat_Type);

   function Pointer (This : uParagraphFormat_Type)
     return Pointer_To_uParagraphFormat;

   procedure Attach (This    : in out uParagraphFormat_Type;
                     Pointer : in     Pointer_To_uParagraphFormat);

   function Get_Application
     (This : uParagraphFormat_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : uParagraphFormat_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Duplicate
     (This : uParagraphFormat_Type)
     return Pointer_To_uParagraphFormat;

   function Get_Style
     (This : uParagraphFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Style
     (This : uParagraphFormat_Type;
      prop : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   function Get_Alignment
     (This : uParagraphFormat_Type)
     return WdParagraphAlignment;

   procedure Put_Alignment
     (This : uParagraphFormat_Type;
      prop : WdParagraphAlignment);

   function Get_KeepTogether
     (This : uParagraphFormat_Type)
     return Interfaces.C.long;

   procedure Put_KeepTogether
     (This : uParagraphFormat_Type;
      prop : Interfaces.C.long);

   function Get_KeepWithNext
     (This : uParagraphFormat_Type)
     return Interfaces.C.long;

   procedure Put_KeepWithNext
     (This : uParagraphFormat_Type;
      prop : Interfaces.C.long);

   function Get_PageBreakBefore
     (This : uParagraphFormat_Type)
     return Interfaces.C.long;

   procedure Put_PageBreakBefore
     (This : uParagraphFormat_Type;
      prop : Interfaces.C.long);

   function Get_NoLineNumber
     (This : uParagraphFormat_Type)
     return Interfaces.C.long;

   procedure Put_NoLineNumber
     (This : uParagraphFormat_Type;
      prop : Interfaces.C.long);

   function Get_RightIndent
     (This : uParagraphFormat_Type)
     return Interfaces.C.C_float;

   procedure Put_RightIndent
     (This : uParagraphFormat_Type;
      prop : Interfaces.C.C_float);

   function Get_LeftIndent
     (This : uParagraphFormat_Type)
     return Interfaces.C.C_float;

   procedure Put_LeftIndent
     (This : uParagraphFormat_Type;
      prop : Interfaces.C.C_float);

   function Get_FirstLineIndent
     (This : uParagraphFormat_Type)
     return Interfaces.C.C_float;

   procedure Put_FirstLineIndent
     (This : uParagraphFormat_Type;
      prop : Interfaces.C.C_float);

   function Get_LineSpacing
     (This : uParagraphFormat_Type)
     return Interfaces.C.C_float;

   procedure Put_LineSpacing
     (This : uParagraphFormat_Type;
      prop : Interfaces.C.C_float);

   function Get_LineSpacingRule
     (This : uParagraphFormat_Type)
     return WdLineSpacing;

   procedure Put_LineSpacingRule
     (This : uParagraphFormat_Type;
      prop : WdLineSpacing);

   function Get_SpaceBefore
     (This : uParagraphFormat_Type)
     return Interfaces.C.C_float;

   procedure Put_SpaceBefore
     (This : uParagraphFormat_Type;
      prop : Interfaces.C.C_float);

   function Get_SpaceAfter
     (This : uParagraphFormat_Type)
     return Interfaces.C.C_float;

   procedure Put_SpaceAfter
     (This : uParagraphFormat_Type;
      prop : Interfaces.C.C_float);

   function Get_Hyphenation
     (This : uParagraphFormat_Type)
     return Interfaces.C.long;

   procedure Put_Hyphenation
     (This : uParagraphFormat_Type;
      prop : Interfaces.C.long);

   function Get_WidowControl
     (This : uParagraphFormat_Type)
     return Interfaces.C.long;

   procedure Put_WidowControl
     (This : uParagraphFormat_Type;
      prop : Interfaces.C.long);

   function Get_FarEastLineBreakControl
     (This : uParagraphFormat_Type)
     return Interfaces.C.long;

   procedure Put_FarEastLineBreakControl
     (This : uParagraphFormat_Type;
      prop : Interfaces.C.long);

   function Get_WordWrap
     (This : uParagraphFormat_Type)
     return Interfaces.C.long;

   procedure Put_WordWrap
     (This : uParagraphFormat_Type;
      prop : Interfaces.C.long);

   function Get_HangingPunctuation
     (This : uParagraphFormat_Type)
     return Interfaces.C.long;

   procedure Put_HangingPunctuation
     (This : uParagraphFormat_Type;
      prop : Interfaces.C.long);

   function Get_HalfWidthPunctuationOnTopOfLine
     (This : uParagraphFormat_Type)
     return Interfaces.C.long;

   procedure Put_HalfWidthPunctuationOnTopOfLine
     (This : uParagraphFormat_Type;
      prop : Interfaces.C.long);

   function Get_AddSpaceBetweenFarEastAndAlpha
     (This : uParagraphFormat_Type)
     return Interfaces.C.long;

   procedure Put_AddSpaceBetweenFarEastAndAlpha
     (This : uParagraphFormat_Type;
      prop : Interfaces.C.long);

   function Get_AddSpaceBetweenFarEastAndDigit
     (This : uParagraphFormat_Type)
     return Interfaces.C.long;

   procedure Put_AddSpaceBetweenFarEastAndDigit
     (This : uParagraphFormat_Type;
      prop : Interfaces.C.long);

   function Get_BaseLineAlignment
     (This : uParagraphFormat_Type)
     return WdBaselineAlignment;

   procedure Put_BaseLineAlignment
     (This : uParagraphFormat_Type;
      prop : WdBaselineAlignment);

   function Get_AutoAdjustRightIndent
     (This : uParagraphFormat_Type)
     return Interfaces.C.long;

   procedure Put_AutoAdjustRightIndent
     (This : uParagraphFormat_Type;
      prop : Interfaces.C.long);

   function Get_DisableLineHeightGrid
     (This : uParagraphFormat_Type)
     return Interfaces.C.long;

   procedure Put_DisableLineHeightGrid
     (This : uParagraphFormat_Type;
      prop : Interfaces.C.long);

   function Get_TabStops
     (This : uParagraphFormat_Type)
     return Pointer_To_TabStops;

   procedure Put_TabStops
     (This : uParagraphFormat_Type;
      prop : Pointer_To_TabStops);

   function Get_Borders
     (This : uParagraphFormat_Type)
     return Pointer_To_Borders;

   procedure Put_Borders
     (This : uParagraphFormat_Type;
      prop : Pointer_To_Borders);

   function Get_Shading
     (This : uParagraphFormat_Type)
     return Pointer_To_Shading;

   function Get_OutlineLevel
     (This : uParagraphFormat_Type)
     return WdOutlineLevel;

   procedure Put_OutlineLevel
     (This : uParagraphFormat_Type;
      prop : WdOutlineLevel);

   procedure CloseUp
     (This : uParagraphFormat_Type);

   procedure OpenUp
     (This : uParagraphFormat_Type);

   procedure OpenOrCloseUp
     (This : uParagraphFormat_Type);

   procedure TabHangingIndent
     (This  : uParagraphFormat_Type;
      Count : Interfaces.C.short);

   procedure TabIndent
     (This  : uParagraphFormat_Type;
      Count : Interfaces.C.short);

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
      Count : Interfaces.C.short);

   procedure IndentFirstLineCharWidth
     (This  : uParagraphFormat_Type;
      Count : Interfaces.C.short);

   function Get_CharacterUnitRightIndent
     (This : uParagraphFormat_Type)
     return Interfaces.C.C_float;

   procedure Put_CharacterUnitRightIndent
     (This : uParagraphFormat_Type;
      prop : Interfaces.C.C_float);

   function Get_CharacterUnitLeftIndent
     (This : uParagraphFormat_Type)
     return Interfaces.C.C_float;

   procedure Put_CharacterUnitLeftIndent
     (This : uParagraphFormat_Type;
      prop : Interfaces.C.C_float);

   function Get_CharacterUnitFirstLineIndent
     (This : uParagraphFormat_Type)
     return Interfaces.C.C_float;

   procedure Put_CharacterUnitFirstLineIndent
     (This : uParagraphFormat_Type;
      prop : Interfaces.C.C_float);

   function Get_LineUnitBefore
     (This : uParagraphFormat_Type)
     return Interfaces.C.C_float;

   procedure Put_LineUnitBefore
     (This : uParagraphFormat_Type;
      prop : Interfaces.C.C_float);

   function Get_LineUnitAfter
     (This : uParagraphFormat_Type)
     return Interfaces.C.C_float;

   procedure Put_LineUnitAfter
     (This : uParagraphFormat_Type;
      prop : Interfaces.C.C_float);

   function Get_ReadingOrder
     (This : uParagraphFormat_Type)
     return WdReadingOrder;

   procedure Put_ReadingOrder
     (This : uParagraphFormat_Type;
      prop : WdReadingOrder);

   function Get_SpaceBeforeAuto
     (This : uParagraphFormat_Type)
     return Interfaces.C.long;

   procedure Put_SpaceBeforeAuto
     (This : uParagraphFormat_Type;
      prop : Interfaces.C.long);

   function Get_SpaceAfterAuto
     (This : uParagraphFormat_Type)
     return Interfaces.C.long;

   procedure Put_SpaceAfterAuto
     (This : uParagraphFormat_Type;
      prop : Interfaces.C.long);

end winword.uParagraphFormat_Interface;

