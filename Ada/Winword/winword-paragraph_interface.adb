with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.Paragraph_Interface is

   procedure Initialize (This : in out Paragraph_Type) is
   begin
      Set_IID (This, IID_Paragraph);
   end Initialize;

   function Pointer (This : Paragraph_Type)
     return Pointer_To_Paragraph
   is
   begin
      return To_Pointer_To_Paragraph (Address (This));
   end Pointer;

   procedure Attach (This    : in out Paragraph_Type;
                     Pointer : in     Pointer_To_Paragraph)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Range
     (This : Paragraph_Type)
     return Pointer_To_uRange
   is
       RetVal : aliased Pointer_To_uRange;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Range
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Range;

   function Get_Application
     (This : Paragraph_Type)
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
     (This : Paragraph_Type)
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
     (This : Paragraph_Type)
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

   function Get_Format
     (This : Paragraph_Type)
     return Pointer_To_uParagraphFormat
   is
       RetVal : aliased Pointer_To_uParagraphFormat;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Format
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Format;

   procedure Put_Format
     (This : Paragraph_Type;
      prop : Pointer_To_uParagraphFormat)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Format
         (Pointer (This),
          prop));

   end Put_Format;

   function Get_TabStops
     (This : Paragraph_Type)
     return Pointer_To_TabStops
   is
       RetVal : aliased Pointer_To_TabStops;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_TabStops
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_TabStops;

   procedure Put_TabStops
     (This : Paragraph_Type;
      prop : Pointer_To_TabStops)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_TabStops
         (Pointer (This),
          prop));

   end Put_TabStops;

   function Get_Borders
     (This : Paragraph_Type)
     return Pointer_To_Borders
   is
       RetVal : aliased Pointer_To_Borders;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Borders
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Borders;

   procedure Put_Borders
     (This : Paragraph_Type;
      prop : Pointer_To_Borders)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Borders
         (Pointer (This),
          prop));

   end Put_Borders;

   function Get_DropCap
     (This : Paragraph_Type)
     return Pointer_To_DropCap
   is
       RetVal : aliased Pointer_To_DropCap;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DropCap
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DropCap;

   function Get_Style
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT
   is
       RetVal : aliased GNATCOM.Types.VARIANT;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Style
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Style;

   procedure Put_Style
     (This : Paragraph_Type;
      prop : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Style
         (Pointer (This),
          prop));

   end Put_Style;

   function Get_Alignment
     (This : Paragraph_Type)
     return WdParagraphAlignment
   is
       RetVal : aliased WdParagraphAlignment;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Alignment
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Alignment;

   procedure Put_Alignment
     (This : Paragraph_Type;
      prop : WdParagraphAlignment)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Alignment
         (Pointer (This),
          prop));

   end Put_Alignment;

   function Get_KeepTogether
     (This : Paragraph_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_KeepTogether
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_KeepTogether;

   procedure Put_KeepTogether
     (This : Paragraph_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_KeepTogether
         (Pointer (This),
          prop));

   end Put_KeepTogether;

   function Get_KeepWithNext
     (This : Paragraph_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_KeepWithNext
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_KeepWithNext;

   procedure Put_KeepWithNext
     (This : Paragraph_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_KeepWithNext
         (Pointer (This),
          prop));

   end Put_KeepWithNext;

   function Get_PageBreakBefore
     (This : Paragraph_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_PageBreakBefore
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_PageBreakBefore;

   procedure Put_PageBreakBefore
     (This : Paragraph_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_PageBreakBefore
         (Pointer (This),
          prop));

   end Put_PageBreakBefore;

   function Get_NoLineNumber
     (This : Paragraph_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_NoLineNumber
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_NoLineNumber;

   procedure Put_NoLineNumber
     (This : Paragraph_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_NoLineNumber
         (Pointer (This),
          prop));

   end Put_NoLineNumber;

   function Get_RightIndent
     (This : Paragraph_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_RightIndent
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_RightIndent;

   procedure Put_RightIndent
     (This : Paragraph_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_RightIndent
         (Pointer (This),
          prop));

   end Put_RightIndent;

   function Get_LeftIndent
     (This : Paragraph_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_LeftIndent
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_LeftIndent;

   procedure Put_LeftIndent
     (This : Paragraph_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_LeftIndent
         (Pointer (This),
          prop));

   end Put_LeftIndent;

   function Get_FirstLineIndent
     (This : Paragraph_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_FirstLineIndent
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_FirstLineIndent;

   procedure Put_FirstLineIndent
     (This : Paragraph_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_FirstLineIndent
         (Pointer (This),
          prop));

   end Put_FirstLineIndent;

   function Get_LineSpacing
     (This : Paragraph_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_LineSpacing
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_LineSpacing;

   procedure Put_LineSpacing
     (This : Paragraph_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_LineSpacing
         (Pointer (This),
          prop));

   end Put_LineSpacing;

   function Get_LineSpacingRule
     (This : Paragraph_Type)
     return WdLineSpacing
   is
       RetVal : aliased WdLineSpacing;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_LineSpacingRule
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_LineSpacingRule;

   procedure Put_LineSpacingRule
     (This : Paragraph_Type;
      prop : WdLineSpacing)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_LineSpacingRule
         (Pointer (This),
          prop));

   end Put_LineSpacingRule;

   function Get_SpaceBefore
     (This : Paragraph_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SpaceBefore
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_SpaceBefore;

   procedure Put_SpaceBefore
     (This : Paragraph_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_SpaceBefore
         (Pointer (This),
          prop));

   end Put_SpaceBefore;

   function Get_SpaceAfter
     (This : Paragraph_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SpaceAfter
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_SpaceAfter;

   procedure Put_SpaceAfter
     (This : Paragraph_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_SpaceAfter
         (Pointer (This),
          prop));

   end Put_SpaceAfter;

   function Get_Hyphenation
     (This : Paragraph_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Hyphenation
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Hyphenation;

   procedure Put_Hyphenation
     (This : Paragraph_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Hyphenation
         (Pointer (This),
          prop));

   end Put_Hyphenation;

   function Get_WidowControl
     (This : Paragraph_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_WidowControl
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_WidowControl;

   procedure Put_WidowControl
     (This : Paragraph_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_WidowControl
         (Pointer (This),
          prop));

   end Put_WidowControl;

   function Get_Shading
     (This : Paragraph_Type)
     return Pointer_To_Shading
   is
       RetVal : aliased Pointer_To_Shading;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Shading
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Shading;

   function Get_FarEastLineBreakControl
     (This : Paragraph_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_FarEastLineBreakControl
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_FarEastLineBreakControl;

   procedure Put_FarEastLineBreakControl
     (This : Paragraph_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_FarEastLineBreakControl
         (Pointer (This),
          prop));

   end Put_FarEastLineBreakControl;

   function Get_WordWrap
     (This : Paragraph_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_WordWrap
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_WordWrap;

   procedure Put_WordWrap
     (This : Paragraph_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_WordWrap
         (Pointer (This),
          prop));

   end Put_WordWrap;

   function Get_HangingPunctuation
     (This : Paragraph_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_HangingPunctuation
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_HangingPunctuation;

   procedure Put_HangingPunctuation
     (This : Paragraph_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_HangingPunctuation
         (Pointer (This),
          prop));

   end Put_HangingPunctuation;

   function Get_HalfWidthPunctuationOnTopOfLine
     (This : Paragraph_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_HalfWidthPunctuationOnTopOfLine
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_HalfWidthPunctuationOnTopOfLine;

   procedure Put_HalfWidthPunctuationOnTopOfLine
     (This : Paragraph_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_HalfWidthPunctuationOnTopOfLine
         (Pointer (This),
          prop));

   end Put_HalfWidthPunctuationOnTopOfLine;

   function Get_AddSpaceBetweenFarEastAndAlpha
     (This : Paragraph_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AddSpaceBetweenFarEastAndAlpha
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AddSpaceBetweenFarEastAndAlpha;

   procedure Put_AddSpaceBetweenFarEastAndAlpha
     (This : Paragraph_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AddSpaceBetweenFarEastAndAlpha
         (Pointer (This),
          prop));

   end Put_AddSpaceBetweenFarEastAndAlpha;

   function Get_AddSpaceBetweenFarEastAndDigit
     (This : Paragraph_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AddSpaceBetweenFarEastAndDigit
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AddSpaceBetweenFarEastAndDigit;

   procedure Put_AddSpaceBetweenFarEastAndDigit
     (This : Paragraph_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AddSpaceBetweenFarEastAndDigit
         (Pointer (This),
          prop));

   end Put_AddSpaceBetweenFarEastAndDigit;

   function Get_BaseLineAlignment
     (This : Paragraph_Type)
     return WdBaselineAlignment
   is
       RetVal : aliased WdBaselineAlignment;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_BaseLineAlignment
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_BaseLineAlignment;

   procedure Put_BaseLineAlignment
     (This : Paragraph_Type;
      prop : WdBaselineAlignment)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_BaseLineAlignment
         (Pointer (This),
          prop));

   end Put_BaseLineAlignment;

   function Get_AutoAdjustRightIndent
     (This : Paragraph_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoAdjustRightIndent
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AutoAdjustRightIndent;

   procedure Put_AutoAdjustRightIndent
     (This : Paragraph_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AutoAdjustRightIndent
         (Pointer (This),
          prop));

   end Put_AutoAdjustRightIndent;

   function Get_DisableLineHeightGrid
     (This : Paragraph_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DisableLineHeightGrid
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DisableLineHeightGrid;

   procedure Put_DisableLineHeightGrid
     (This : Paragraph_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DisableLineHeightGrid
         (Pointer (This),
          prop));

   end Put_DisableLineHeightGrid;

   function Get_OutlineLevel
     (This : Paragraph_Type)
     return WdOutlineLevel
   is
       RetVal : aliased WdOutlineLevel;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_OutlineLevel
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_OutlineLevel;

   procedure Put_OutlineLevel
     (This : Paragraph_Type;
      prop : WdOutlineLevel)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_OutlineLevel
         (Pointer (This),
          prop));

   end Put_OutlineLevel;

   procedure CloseUp
     (This : Paragraph_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.CloseUp
         (Pointer (This)));

   end CloseUp;

   procedure OpenUp
     (This : Paragraph_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.OpenUp
         (Pointer (This)));

   end OpenUp;

   procedure OpenOrCloseUp
     (This : Paragraph_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.OpenOrCloseUp
         (Pointer (This)));

   end OpenOrCloseUp;

   procedure TabHangingIndent
     (This  : Paragraph_Type;
      Count : Interfaces.C.short)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.TabHangingIndent
         (Pointer (This),
          Count));

   end TabHangingIndent;

   procedure TabIndent
     (This  : Paragraph_Type;
      Count : Interfaces.C.short)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.TabIndent
         (Pointer (This),
          Count));

   end TabIndent;

   procedure Reset
     (This : Paragraph_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Reset
         (Pointer (This)));

   end Reset;

   procedure Space1
     (This : Paragraph_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Space1
         (Pointer (This)));

   end Space1;

   procedure Space15
     (This : Paragraph_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Space15
         (Pointer (This)));

   end Space15;

   procedure Space2
     (This : Paragraph_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Space2
         (Pointer (This)));

   end Space2;

   procedure IndentCharWidth
     (This  : Paragraph_Type;
      Count : Interfaces.C.short)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.IndentCharWidth
         (Pointer (This),
          Count));

   end IndentCharWidth;

   procedure IndentFirstLineCharWidth
     (This  : Paragraph_Type;
      Count : Interfaces.C.short)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.IndentFirstLineCharWidth
         (Pointer (This),
          Count));

   end IndentFirstLineCharWidth;

   function Next
     (This  : Paragraph_Type;
      Count : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Paragraph
   is
       RetVal : aliased Pointer_To_Paragraph;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Next
         (Pointer (This),
          Count,
          RetVal'Unchecked_Access));

      return RetVal;
   end Next;

   function Previous
     (This  : Paragraph_Type;
      Count : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Paragraph
   is
       RetVal : aliased Pointer_To_Paragraph;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Previous
         (Pointer (This),
          Count,
          RetVal'Unchecked_Access));

      return RetVal;
   end Previous;

   procedure OutlinePromote
     (This : Paragraph_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.OutlinePromote
         (Pointer (This)));

   end OutlinePromote;

   procedure OutlineDemote
     (This : Paragraph_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.OutlineDemote
         (Pointer (This)));

   end OutlineDemote;

   procedure OutlineDemoteToBody
     (This : Paragraph_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.OutlineDemoteToBody
         (Pointer (This)));

   end OutlineDemoteToBody;

   procedure Indent
     (This : Paragraph_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Indent
         (Pointer (This)));

   end Indent;

   procedure Outdent
     (This : Paragraph_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Outdent
         (Pointer (This)));

   end Outdent;

   function Get_CharacterUnitRightIndent
     (This : Paragraph_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_CharacterUnitRightIndent
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_CharacterUnitRightIndent;

   procedure Put_CharacterUnitRightIndent
     (This : Paragraph_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_CharacterUnitRightIndent
         (Pointer (This),
          prop));

   end Put_CharacterUnitRightIndent;

   function Get_CharacterUnitLeftIndent
     (This : Paragraph_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_CharacterUnitLeftIndent
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_CharacterUnitLeftIndent;

   procedure Put_CharacterUnitLeftIndent
     (This : Paragraph_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_CharacterUnitLeftIndent
         (Pointer (This),
          prop));

   end Put_CharacterUnitLeftIndent;

   function Get_CharacterUnitFirstLineIndent
     (This : Paragraph_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_CharacterUnitFirstLineIndent
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_CharacterUnitFirstLineIndent;

   procedure Put_CharacterUnitFirstLineIndent
     (This : Paragraph_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_CharacterUnitFirstLineIndent
         (Pointer (This),
          prop));

   end Put_CharacterUnitFirstLineIndent;

   function Get_LineUnitBefore
     (This : Paragraph_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_LineUnitBefore
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_LineUnitBefore;

   procedure Put_LineUnitBefore
     (This : Paragraph_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_LineUnitBefore
         (Pointer (This),
          prop));

   end Put_LineUnitBefore;

   function Get_LineUnitAfter
     (This : Paragraph_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_LineUnitAfter
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_LineUnitAfter;

   procedure Put_LineUnitAfter
     (This : Paragraph_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_LineUnitAfter
         (Pointer (This),
          prop));

   end Put_LineUnitAfter;

   function Get_ReadingOrder
     (This : Paragraph_Type)
     return WdReadingOrder
   is
       RetVal : aliased WdReadingOrder;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ReadingOrder
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ReadingOrder;

   procedure Put_ReadingOrder
     (This : Paragraph_Type;
      prop : WdReadingOrder)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ReadingOrder
         (Pointer (This),
          prop));

   end Put_ReadingOrder;

   function Get_ID
     (This : Paragraph_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ID
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ID;

   procedure Put_ID
     (This : Paragraph_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ID
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_ID;

   function Get_SpaceBeforeAuto
     (This : Paragraph_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SpaceBeforeAuto
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_SpaceBeforeAuto;

   procedure Put_SpaceBeforeAuto
     (This : Paragraph_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_SpaceBeforeAuto
         (Pointer (This),
          prop));

   end Put_SpaceBeforeAuto;

   function Get_SpaceAfterAuto
     (This : Paragraph_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SpaceAfterAuto
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_SpaceAfterAuto;

   procedure Put_SpaceAfterAuto
     (This : Paragraph_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_SpaceAfterAuto
         (Pointer (This),
          prop));

   end Put_SpaceAfterAuto;

   function Get_IsStyleSeparator
     (This : Paragraph_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_IsStyleSeparator
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_IsStyleSeparator;

   procedure SelectNumber
     (This : Paragraph_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.SelectNumber
         (Pointer (This)));

   end SelectNumber;

end winword.Paragraph_Interface;

