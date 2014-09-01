package body winword.Table_Object is

   function Get_Range
     (This : Table_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Table_Get_Range);
   end Get_Range;

   function Get_Application
     (This : Table_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Table_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : Table_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Table_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : Table_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Table_Get_Parent);
   end Get_Parent;

   function Get_Columns
     (This : Table_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Table_Get_Columns);
   end Get_Columns;

   function Get_Rows
     (This : Table_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Table_Get_Rows);
   end Get_Rows;

   function Get_Borders
     (This : Table_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Table_Get_Borders);
   end Get_Borders;

   procedure Put_Borders
     (This : Table_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Table_Put_Borders,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Borders;

   function Get_Shading
     (This : Table_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Table_Get_Shading);
   end Get_Shading;

   function Get_Uniform
     (This : Table_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Table_Get_Uniform);
   end Get_Uniform;

   function Get_AutoFormatType
     (This : Table_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Table_Get_AutoFormatType);
   end Get_AutoFormatType;

   procedure uSelect
     (This : Table_Type)
   is
   begin
      Invoke (This, Table_uSelect);
   end uSelect;

   procedure Delete
     (This : Table_Type)
   is
   begin
      Invoke (This, Table_Delete);
   end Delete;

   procedure SortOld
     (This           : Table_Type;
      ExcludeHeader  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      FieldNumber    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      SortFieldType  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      SortOrder      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      FieldNumber2   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      SortFieldType2 : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      SortOrder2     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      FieldNumber3   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      SortFieldType3 : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      SortOrder3     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      CaseSensitive  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      LanguageID     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free           : Boolean := True)
   is
   begin
      Invoke
        (This,
         Table_SortOld,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => LanguageID,
          2 => CaseSensitive,
          3 => SortOrder3,
          4 => SortFieldType3,
          5 => FieldNumber3,
          6 => SortOrder2,
          7 => SortFieldType2,
          8 => FieldNumber2,
          9 => SortOrder,
          10 => SortFieldType,
          11 => FieldNumber,
          12 => ExcludeHeader),
         Free);
   end SortOld;

   procedure SortAscending
     (This : Table_Type)
   is
   begin
      Invoke (This, Table_SortAscending);
   end SortAscending;

   procedure SortDescending
     (This : Table_Type)
   is
   begin
      Invoke (This, Table_SortDescending);
   end SortDescending;

   procedure AutoFormat
     (This             : Table_Type;
      Format           : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ApplyBorders     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ApplyShading     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ApplyFont        : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ApplyColor       : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ApplyHeadingRows : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ApplyLastRow     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ApplyFirstColumn : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ApplyLastColumn  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      AutoFit          : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free             : Boolean := True)
   is
   begin
      Invoke
        (This,
         Table_AutoFormat,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => AutoFit,
          2 => ApplyLastColumn,
          3 => ApplyFirstColumn,
          4 => ApplyLastRow,
          5 => ApplyHeadingRows,
          6 => ApplyColor,
          7 => ApplyFont,
          8 => ApplyShading,
          9 => ApplyBorders,
          10 => Format),
         Free);
   end AutoFormat;

   procedure UpdateAutoFormat
     (This : Table_Type)
   is
   begin
      Invoke (This, Table_UpdateAutoFormat);
   end UpdateAutoFormat;

   function ConvertToTextOld
     (This      : Table_Type;
      Separator : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free      : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Table_ConvertToTextOld,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Separator),
         Free);
   end ConvertToTextOld;

   function Cell
     (This   : Table_Type;
      Row    : GNATCOM.Types.VARIANT;
      Column : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Table_Cell,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Column,
          2 => Row),
         Free);
   end Cell;

   function Split
     (This      : Table_Type;
      BeforeRow : GNATCOM.Types.VARIANT;
      Free      : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Table_Split,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => BeforeRow),
         Free);
   end Split;

   function ConvertToText
     (This         : Table_Type;
      Separator    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      NestedTables : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free         : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Table_ConvertToText,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => NestedTables,
          2 => Separator),
         Free);
   end ConvertToText;

   procedure AutoFitBehavior
     (This     : Table_Type;
      Behavior : GNATCOM.Types.VARIANT;
      Free     : Boolean := True)
   is
   begin
      Invoke
        (This,
         Table_AutoFitBehavior,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Behavior),
         Free);
   end AutoFitBehavior;

   procedure Sort
     (This             : Table_Type;
      ExcludeHeader    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      FieldNumber      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      SortFieldType    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      SortOrder        : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      FieldNumber2     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      SortFieldType2   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      SortOrder2       : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      FieldNumber3     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      SortFieldType3   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      SortOrder3       : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      CaseSensitive    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      BidiSort         : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      IgnoreThe        : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      IgnoreKashida    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      IgnoreDiacritics : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      IgnoreHe         : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      LanguageID       : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free             : Boolean := True)
   is
   begin
      Invoke
        (This,
         Table_Sort,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => LanguageID,
          2 => IgnoreHe,
          3 => IgnoreDiacritics,
          4 => IgnoreKashida,
          5 => IgnoreThe,
          6 => BidiSort,
          7 => CaseSensitive,
          8 => SortOrder3,
          9 => SortFieldType3,
          10 => FieldNumber3,
          11 => SortOrder2,
          12 => SortFieldType2,
          13 => FieldNumber2,
          14 => SortOrder,
          15 => SortFieldType,
          16 => FieldNumber,
          17 => ExcludeHeader),
         Free);
   end Sort;

   function Get_Tables
     (This : Table_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Table_Get_Tables);
   end Get_Tables;

   function Get_NestingLevel
     (This : Table_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Table_Get_NestingLevel);
   end Get_NestingLevel;

   function Get_AllowPageBreaks
     (This : Table_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Table_Get_AllowPageBreaks);
   end Get_AllowPageBreaks;

   procedure Put_AllowPageBreaks
     (This : Table_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Table_Put_AllowPageBreaks,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AllowPageBreaks;

   function Get_AllowAutoFit
     (This : Table_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Table_Get_AllowAutoFit);
   end Get_AllowAutoFit;

   procedure Put_AllowAutoFit
     (This : Table_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Table_Put_AllowAutoFit,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AllowAutoFit;

   function Get_PreferredWidth
     (This : Table_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Table_Get_PreferredWidth);
   end Get_PreferredWidth;

   procedure Put_PreferredWidth
     (This : Table_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Table_Put_PreferredWidth,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_PreferredWidth;

   function Get_PreferredWidthType
     (This : Table_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Table_Get_PreferredWidthType);
   end Get_PreferredWidthType;

   procedure Put_PreferredWidthType
     (This : Table_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Table_Put_PreferredWidthType,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_PreferredWidthType;

   function Get_TopPadding
     (This : Table_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Table_Get_TopPadding);
   end Get_TopPadding;

   procedure Put_TopPadding
     (This : Table_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Table_Put_TopPadding,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_TopPadding;

   function Get_BottomPadding
     (This : Table_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Table_Get_BottomPadding);
   end Get_BottomPadding;

   procedure Put_BottomPadding
     (This : Table_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Table_Put_BottomPadding,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_BottomPadding;

   function Get_LeftPadding
     (This : Table_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Table_Get_LeftPadding);
   end Get_LeftPadding;

   procedure Put_LeftPadding
     (This : Table_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Table_Put_LeftPadding,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_LeftPadding;

   function Get_RightPadding
     (This : Table_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Table_Get_RightPadding);
   end Get_RightPadding;

   procedure Put_RightPadding
     (This : Table_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Table_Put_RightPadding,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_RightPadding;

   function Get_Spacing
     (This : Table_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Table_Get_Spacing);
   end Get_Spacing;

   procedure Put_Spacing
     (This : Table_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Table_Put_Spacing,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Spacing;

   function Get_TableDirection
     (This : Table_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Table_Get_TableDirection);
   end Get_TableDirection;

   procedure Put_TableDirection
     (This : Table_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Table_Put_TableDirection,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_TableDirection;

   function Get_ID
     (This : Table_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Table_Get_ID);
   end Get_ID;

   procedure Put_ID
     (This : Table_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Table_Put_ID,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ID;

   function Get_Style
     (This : Table_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Table_Get_Style);
   end Get_Style;

   procedure Put_Style
     (This : Table_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Table_Put_Style,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Style;

   function Get_ApplyStyleHeadingRows
     (This : Table_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Table_Get_ApplyStyleHeadingRows);
   end Get_ApplyStyleHeadingRows;

   procedure Put_ApplyStyleHeadingRows
     (This : Table_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Table_Put_ApplyStyleHeadingRows,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ApplyStyleHeadingRows;

   function Get_ApplyStyleLastRow
     (This : Table_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Table_Get_ApplyStyleLastRow);
   end Get_ApplyStyleLastRow;

   procedure Put_ApplyStyleLastRow
     (This : Table_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Table_Put_ApplyStyleLastRow,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ApplyStyleLastRow;

   function Get_ApplyStyleFirstColumn
     (This : Table_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Table_Get_ApplyStyleFirstColumn);
   end Get_ApplyStyleFirstColumn;

   procedure Put_ApplyStyleFirstColumn
     (This : Table_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Table_Put_ApplyStyleFirstColumn,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ApplyStyleFirstColumn;

   function Get_ApplyStyleLastColumn
     (This : Table_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Table_Get_ApplyStyleLastColumn);
   end Get_ApplyStyleLastColumn;

   procedure Put_ApplyStyleLastColumn
     (This : Table_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Table_Put_ApplyStyleLastColumn,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ApplyStyleLastColumn;

end winword.Table_Object;

