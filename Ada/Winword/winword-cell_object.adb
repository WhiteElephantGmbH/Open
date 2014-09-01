package body winword.Cell_Object is

   function Get_Range
     (This : Cell_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Cell_Get_Range);
   end Get_Range;

   function Get_Application
     (This : Cell_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Cell_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : Cell_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Cell_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : Cell_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Cell_Get_Parent);
   end Get_Parent;

   function Get_RowIndex
     (This : Cell_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Cell_Get_RowIndex);
   end Get_RowIndex;

   function Get_ColumnIndex
     (This : Cell_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Cell_Get_ColumnIndex);
   end Get_ColumnIndex;

   function Get_Width
     (This : Cell_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Cell_Get_Width);
   end Get_Width;

   procedure Put_Width
     (This : Cell_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Cell_Put_Width,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Width;

   function Get_Height
     (This : Cell_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Cell_Get_Height);
   end Get_Height;

   procedure Put_Height
     (This : Cell_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Cell_Put_Height,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Height;

   function Get_HeightRule
     (This : Cell_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Cell_Get_HeightRule);
   end Get_HeightRule;

   procedure Put_HeightRule
     (This : Cell_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Cell_Put_HeightRule,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_HeightRule;

   function Get_VerticalAlignment
     (This : Cell_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Cell_Get_VerticalAlignment);
   end Get_VerticalAlignment;

   procedure Put_VerticalAlignment
     (This : Cell_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Cell_Put_VerticalAlignment,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_VerticalAlignment;

   function Get_Column
     (This : Cell_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Cell_Get_Column);
   end Get_Column;

   function Get_Row
     (This : Cell_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Cell_Get_Row);
   end Get_Row;

   function Get_Next
     (This : Cell_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Cell_Get_Next);
   end Get_Next;

   function Get_Previous
     (This : Cell_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Cell_Get_Previous);
   end Get_Previous;

   function Get_Shading
     (This : Cell_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Cell_Get_Shading);
   end Get_Shading;

   function Get_Borders
     (This : Cell_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Cell_Get_Borders);
   end Get_Borders;

   procedure Put_Borders
     (This : Cell_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Cell_Put_Borders,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Borders;

   procedure uSelect
     (This : Cell_Type)
   is
   begin
      Invoke (This, Cell_uSelect);
   end uSelect;

   procedure Delete
     (This       : Cell_Type;
      ShiftCells : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free       : Boolean := True)
   is
   begin
      Invoke
        (This,
         Cell_Delete,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => ShiftCells),
         Free);
   end Delete;

   procedure Formula
     (This      : Cell_Type;
      Formula   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      NumFormat : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free      : Boolean := True)
   is
   begin
      Invoke
        (This,
         Cell_Formula,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => NumFormat,
          2 => Formula),
         Free);
   end Formula;

   procedure SetWidth
     (This        : Cell_Type;
      ColumnWidth : GNATCOM.Types.VARIANT;
      RulerStyle  : GNATCOM.Types.VARIANT;
      Free        : Boolean := True)
   is
   begin
      Invoke
        (This,
         Cell_SetWidth,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => RulerStyle,
          2 => ColumnWidth),
         Free);
   end SetWidth;

   procedure SetHeight
     (This       : Cell_Type;
      RowHeight  : GNATCOM.Types.VARIANT;
      HeightRule : GNATCOM.Types.VARIANT;
      Free       : Boolean := True)
   is
   begin
      Invoke
        (This,
         Cell_SetHeight,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => HeightRule,
          2 => RowHeight),
         Free);
   end SetHeight;

   procedure Merge
     (This    : Cell_Type;
      MergeTo : GNATCOM.Types.VARIANT;
      Free    : Boolean := True)
   is
   begin
      Invoke
        (This,
         Cell_Merge,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => MergeTo),
         Free);
   end Merge;

   procedure Split
     (This       : Cell_Type;
      NumRows    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      NumColumns : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free       : Boolean := True)
   is
   begin
      Invoke
        (This,
         Cell_Split,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => NumColumns,
          2 => NumRows),
         Free);
   end Split;

   procedure AutoSum
     (This : Cell_Type)
   is
   begin
      Invoke (This, Cell_AutoSum);
   end AutoSum;

   function Get_Tables
     (This : Cell_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Cell_Get_Tables);
   end Get_Tables;

   function Get_NestingLevel
     (This : Cell_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Cell_Get_NestingLevel);
   end Get_NestingLevel;

   function Get_WordWrap
     (This : Cell_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Cell_Get_WordWrap);
   end Get_WordWrap;

   procedure Put_WordWrap
     (This : Cell_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Cell_Put_WordWrap,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_WordWrap;

   function Get_PreferredWidth
     (This : Cell_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Cell_Get_PreferredWidth);
   end Get_PreferredWidth;

   procedure Put_PreferredWidth
     (This : Cell_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Cell_Put_PreferredWidth,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_PreferredWidth;

   function Get_FitText
     (This : Cell_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Cell_Get_FitText);
   end Get_FitText;

   procedure Put_FitText
     (This : Cell_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Cell_Put_FitText,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_FitText;

   function Get_TopPadding
     (This : Cell_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Cell_Get_TopPadding);
   end Get_TopPadding;

   procedure Put_TopPadding
     (This : Cell_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Cell_Put_TopPadding,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_TopPadding;

   function Get_BottomPadding
     (This : Cell_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Cell_Get_BottomPadding);
   end Get_BottomPadding;

   procedure Put_BottomPadding
     (This : Cell_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Cell_Put_BottomPadding,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_BottomPadding;

   function Get_LeftPadding
     (This : Cell_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Cell_Get_LeftPadding);
   end Get_LeftPadding;

   procedure Put_LeftPadding
     (This : Cell_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Cell_Put_LeftPadding,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_LeftPadding;

   function Get_RightPadding
     (This : Cell_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Cell_Get_RightPadding);
   end Get_RightPadding;

   procedure Put_RightPadding
     (This : Cell_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Cell_Put_RightPadding,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_RightPadding;

   function Get_ID
     (This : Cell_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Cell_Get_ID);
   end Get_ID;

   procedure Put_ID
     (This : Cell_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Cell_Put_ID,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ID;

   function Get_PreferredWidthType
     (This : Cell_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Cell_Get_PreferredWidthType);
   end Get_PreferredWidthType;

   procedure Put_PreferredWidthType
     (This : Cell_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Cell_Put_PreferredWidthType,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_PreferredWidthType;

end winword.Cell_Object;

