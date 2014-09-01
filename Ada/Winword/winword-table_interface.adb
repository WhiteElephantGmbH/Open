with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.Table_Interface is

   procedure Initialize (This : in out Table_Type) is
   begin
      Set_IID (This, IID_Table);
   end Initialize;

   function Pointer (This : Table_Type)
     return Pointer_To_Table
   is
   begin
      return To_Pointer_To_Table (Address (This));
   end Pointer;

   procedure Attach (This    : in out Table_Type;
                     Pointer : in     Pointer_To_Table)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Range
     (This : Table_Type)
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
     (This : Table_Type)
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
     (This : Table_Type)
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
     (This : Table_Type)
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

   function Get_Columns
     (This : Table_Type)
     return Pointer_To_Columns
   is
       RetVal : aliased Pointer_To_Columns;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Columns
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Columns;

   function Get_Rows
     (This : Table_Type)
     return Pointer_To_Rows
   is
       RetVal : aliased Pointer_To_Rows;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Rows
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Rows;

   function Get_Borders
     (This : Table_Type)
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
     (This : Table_Type;
      prop : Pointer_To_Borders)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Borders
         (Pointer (This),
          prop));

   end Put_Borders;

   function Get_Shading
     (This : Table_Type)
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

   function Get_Uniform
     (This : Table_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Uniform
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Uniform;

   function Get_AutoFormatType
     (This : Table_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoFormatType
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AutoFormatType;

   procedure uSelect
     (This : Table_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.uSelect
         (Pointer (This)));

   end uSelect;

   procedure Delete
     (This : Table_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Delete
         (Pointer (This)));

   end Delete;

   procedure SortOld
     (This           : Table_Type;
      ExcludeHeader  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      FieldNumber    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SortFieldType  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SortOrder      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      FieldNumber2   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SortFieldType2 : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SortOrder2     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      FieldNumber3   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SortFieldType3 : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SortOrder3     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      CaseSensitive  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      LanguageID     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.SortOld
         (Pointer (This),
          ExcludeHeader,
          FieldNumber,
          SortFieldType,
          SortOrder,
          FieldNumber2,
          SortFieldType2,
          SortOrder2,
          FieldNumber3,
          SortFieldType3,
          SortOrder3,
          CaseSensitive,
          LanguageID));

   end SortOld;

   procedure SortAscending
     (This : Table_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.SortAscending
         (Pointer (This)));

   end SortAscending;

   procedure SortDescending
     (This : Table_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.SortDescending
         (Pointer (This)));

   end SortDescending;

   procedure AutoFormat
     (This             : Table_Type;
      Format           : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ApplyBorders     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ApplyShading     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ApplyFont        : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ApplyColor       : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ApplyHeadingRows : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ApplyLastRow     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ApplyFirstColumn : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ApplyLastColumn  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      AutoFit          : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.AutoFormat
         (Pointer (This),
          Format,
          ApplyBorders,
          ApplyShading,
          ApplyFont,
          ApplyColor,
          ApplyHeadingRows,
          ApplyLastRow,
          ApplyFirstColumn,
          ApplyLastColumn,
          AutoFit));

   end AutoFormat;

   procedure UpdateAutoFormat
     (This : Table_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.UpdateAutoFormat
         (Pointer (This)));

   end UpdateAutoFormat;

   function ConvertToTextOld
     (This      : Table_Type;
      Separator : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_uRange
   is
       RetVal : aliased Pointer_To_uRange;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ConvertToTextOld
         (Pointer (This),
          Separator,
          RetVal'Unchecked_Access));

      return RetVal;
   end ConvertToTextOld;

   function Cell
     (This   : Table_Type;
      Row    : Interfaces.C.long;
      Column : Interfaces.C.long)
     return Pointer_To_Cell
   is
       RetVal : aliased Pointer_To_Cell;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Cell
         (Pointer (This),
          Row,
          Column,
          RetVal'Unchecked_Access));

      return RetVal;
   end Cell;

   function Split
     (This      : Table_Type;
      BeforeRow : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Table
   is
       RetVal : aliased Pointer_To_Table;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Split
         (Pointer (This),
          BeforeRow,
          RetVal'Unchecked_Access));

      return RetVal;
   end Split;

   function ConvertToText
     (This         : Table_Type;
      Separator    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      NestedTables : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_uRange
   is
       RetVal : aliased Pointer_To_uRange;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ConvertToText
         (Pointer (This),
          Separator,
          NestedTables,
          RetVal'Unchecked_Access));

      return RetVal;
   end ConvertToText;

   procedure AutoFitBehavior
     (This     : Table_Type;
      Behavior : WdAutoFitBehavior)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.AutoFitBehavior
         (Pointer (This),
          Behavior));

   end AutoFitBehavior;

   procedure Sort
     (This             : Table_Type;
      ExcludeHeader    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      FieldNumber      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SortFieldType    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SortOrder        : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      FieldNumber2     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SortFieldType2   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SortOrder2       : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      FieldNumber3     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SortFieldType3   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SortOrder3       : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      CaseSensitive    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      BidiSort         : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      IgnoreThe        : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      IgnoreKashida    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      IgnoreDiacritics : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      IgnoreHe         : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      LanguageID       : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Sort
         (Pointer (This),
          ExcludeHeader,
          FieldNumber,
          SortFieldType,
          SortOrder,
          FieldNumber2,
          SortFieldType2,
          SortOrder2,
          FieldNumber3,
          SortFieldType3,
          SortOrder3,
          CaseSensitive,
          BidiSort,
          IgnoreThe,
          IgnoreKashida,
          IgnoreDiacritics,
          IgnoreHe,
          LanguageID));

   end Sort;

   function Get_Tables
     (This : Table_Type)
     return Pointer_To_Tables
   is
       RetVal : aliased Pointer_To_Tables;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Tables
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Tables;

   function Get_NestingLevel
     (This : Table_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_NestingLevel
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_NestingLevel;

   function Get_AllowPageBreaks
     (This : Table_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AllowPageBreaks
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AllowPageBreaks;

   procedure Put_AllowPageBreaks
     (This : Table_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AllowPageBreaks
         (Pointer (This),
          prop));

   end Put_AllowPageBreaks;

   function Get_AllowAutoFit
     (This : Table_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AllowAutoFit
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AllowAutoFit;

   procedure Put_AllowAutoFit
     (This : Table_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AllowAutoFit
         (Pointer (This),
          prop));

   end Put_AllowAutoFit;

   function Get_PreferredWidth
     (This : Table_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_PreferredWidth
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_PreferredWidth;

   procedure Put_PreferredWidth
     (This : Table_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_PreferredWidth
         (Pointer (This),
          prop));

   end Put_PreferredWidth;

   function Get_PreferredWidthType
     (This : Table_Type)
     return WdPreferredWidthType
   is
       RetVal : aliased WdPreferredWidthType;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_PreferredWidthType
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_PreferredWidthType;

   procedure Put_PreferredWidthType
     (This : Table_Type;
      prop : WdPreferredWidthType)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_PreferredWidthType
         (Pointer (This),
          prop));

   end Put_PreferredWidthType;

   function Get_TopPadding
     (This : Table_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_TopPadding
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_TopPadding;

   procedure Put_TopPadding
     (This : Table_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_TopPadding
         (Pointer (This),
          prop));

   end Put_TopPadding;

   function Get_BottomPadding
     (This : Table_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_BottomPadding
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_BottomPadding;

   procedure Put_BottomPadding
     (This : Table_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_BottomPadding
         (Pointer (This),
          prop));

   end Put_BottomPadding;

   function Get_LeftPadding
     (This : Table_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_LeftPadding
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_LeftPadding;

   procedure Put_LeftPadding
     (This : Table_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_LeftPadding
         (Pointer (This),
          prop));

   end Put_LeftPadding;

   function Get_RightPadding
     (This : Table_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_RightPadding
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_RightPadding;

   procedure Put_RightPadding
     (This : Table_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_RightPadding
         (Pointer (This),
          prop));

   end Put_RightPadding;

   function Get_Spacing
     (This : Table_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Spacing
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Spacing;

   procedure Put_Spacing
     (This : Table_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Spacing
         (Pointer (This),
          prop));

   end Put_Spacing;

   function Get_TableDirection
     (This : Table_Type)
     return WdTableDirection
   is
       RetVal : aliased WdTableDirection;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_TableDirection
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_TableDirection;

   procedure Put_TableDirection
     (This : Table_Type;
      prop : WdTableDirection)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_TableDirection
         (Pointer (This),
          prop));

   end Put_TableDirection;

   function Get_ID
     (This : Table_Type)
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
     (This : Table_Type;
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

   function Get_Style
     (This : Table_Type)
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
     (This : Table_Type;
      prop : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Style
         (Pointer (This),
          prop));

   end Put_Style;

   function Get_ApplyStyleHeadingRows
     (This : Table_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ApplyStyleHeadingRows
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ApplyStyleHeadingRows;

   procedure Put_ApplyStyleHeadingRows
     (This : Table_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ApplyStyleHeadingRows
         (Pointer (This),
          prop));

   end Put_ApplyStyleHeadingRows;

   function Get_ApplyStyleLastRow
     (This : Table_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ApplyStyleLastRow
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ApplyStyleLastRow;

   procedure Put_ApplyStyleLastRow
     (This : Table_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ApplyStyleLastRow
         (Pointer (This),
          prop));

   end Put_ApplyStyleLastRow;

   function Get_ApplyStyleFirstColumn
     (This : Table_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ApplyStyleFirstColumn
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ApplyStyleFirstColumn;

   procedure Put_ApplyStyleFirstColumn
     (This : Table_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ApplyStyleFirstColumn
         (Pointer (This),
          prop));

   end Put_ApplyStyleFirstColumn;

   function Get_ApplyStyleLastColumn
     (This : Table_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ApplyStyleLastColumn
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ApplyStyleLastColumn;

   procedure Put_ApplyStyleLastColumn
     (This : Table_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ApplyStyleLastColumn
         (Pointer (This),
          prop));

   end Put_ApplyStyleLastColumn;

end winword.Table_Interface;

