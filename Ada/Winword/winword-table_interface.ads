with GNATCOM.Dispinterface;

package winword.Table_Interface is

   type Table_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Table_Type);

   function Pointer (This : Table_Type)
     return Pointer_To_Table;

   procedure Attach (This    : in out Table_Type;
                     Pointer : in     Pointer_To_Table);

   function Get_Range
     (This : Table_Type)
     return Pointer_To_uRange;

   function Get_Application
     (This : Table_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : Table_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : Table_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Columns
     (This : Table_Type)
     return Pointer_To_Columns;

   function Get_Rows
     (This : Table_Type)
     return Pointer_To_Rows;

   function Get_Borders
     (This : Table_Type)
     return Pointer_To_Borders;

   procedure Put_Borders
     (This : Table_Type;
      prop : Pointer_To_Borders);

   function Get_Shading
     (This : Table_Type)
     return Pointer_To_Shading;

   function Get_Uniform
     (This : Table_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   function Get_AutoFormatType
     (This : Table_Type)
     return Interfaces.C.long;

   procedure uSelect
     (This : Table_Type);

   procedure Delete
     (This : Table_Type);

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
        GNATCOM.Types.PVARIANT_MISSING);

   procedure SortAscending
     (This : Table_Type);

   procedure SortDescending
     (This : Table_Type);

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
        GNATCOM.Types.PVARIANT_MISSING);

   procedure UpdateAutoFormat
     (This : Table_Type);

   function ConvertToTextOld
     (This      : Table_Type;
      Separator : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_uRange;

   function Cell
     (This   : Table_Type;
      Row    : Interfaces.C.long;
      Column : Interfaces.C.long)
     return Pointer_To_Cell;

   function Split
     (This      : Table_Type;
      BeforeRow : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Table;

   function ConvertToText
     (This         : Table_Type;
      Separator    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      NestedTables : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_uRange;

   procedure AutoFitBehavior
     (This     : Table_Type;
      Behavior : WdAutoFitBehavior);

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
        GNATCOM.Types.PVARIANT_MISSING);

   function Get_Tables
     (This : Table_Type)
     return Pointer_To_Tables;

   function Get_NestingLevel
     (This : Table_Type)
     return Interfaces.C.long;

   function Get_AllowPageBreaks
     (This : Table_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_AllowPageBreaks
     (This : Table_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_AllowAutoFit
     (This : Table_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_AllowAutoFit
     (This : Table_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_PreferredWidth
     (This : Table_Type)
     return Interfaces.C.C_float;

   procedure Put_PreferredWidth
     (This : Table_Type;
      prop : Interfaces.C.C_float);

   function Get_PreferredWidthType
     (This : Table_Type)
     return WdPreferredWidthType;

   procedure Put_PreferredWidthType
     (This : Table_Type;
      prop : WdPreferredWidthType);

   function Get_TopPadding
     (This : Table_Type)
     return Interfaces.C.C_float;

   procedure Put_TopPadding
     (This : Table_Type;
      prop : Interfaces.C.C_float);

   function Get_BottomPadding
     (This : Table_Type)
     return Interfaces.C.C_float;

   procedure Put_BottomPadding
     (This : Table_Type;
      prop : Interfaces.C.C_float);

   function Get_LeftPadding
     (This : Table_Type)
     return Interfaces.C.C_float;

   procedure Put_LeftPadding
     (This : Table_Type;
      prop : Interfaces.C.C_float);

   function Get_RightPadding
     (This : Table_Type)
     return Interfaces.C.C_float;

   procedure Put_RightPadding
     (This : Table_Type;
      prop : Interfaces.C.C_float);

   function Get_Spacing
     (This : Table_Type)
     return Interfaces.C.C_float;

   procedure Put_Spacing
     (This : Table_Type;
      prop : Interfaces.C.C_float);

   function Get_TableDirection
     (This : Table_Type)
     return WdTableDirection;

   procedure Put_TableDirection
     (This : Table_Type;
      prop : WdTableDirection);

   function Get_ID
     (This : Table_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_ID
     (This : Table_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_Style
     (This : Table_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Style
     (This : Table_Type;
      prop : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   function Get_ApplyStyleHeadingRows
     (This : Table_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_ApplyStyleHeadingRows
     (This : Table_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_ApplyStyleLastRow
     (This : Table_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_ApplyStyleLastRow
     (This : Table_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_ApplyStyleFirstColumn
     (This : Table_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_ApplyStyleFirstColumn
     (This : Table_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_ApplyStyleLastColumn
     (This : Table_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_ApplyStyleLastColumn
     (This : Table_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

end winword.Table_Interface;

