with GNATCOM.Dispinterface;

package winword.Table_Object is

   type Table_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Range
     (This : Table_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Application
     (This : Table_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : Table_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : Table_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Columns
     (This : Table_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Rows
     (This : Table_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Borders
     (This : Table_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Borders
     (This : Table_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Shading
     (This : Table_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Uniform
     (This : Table_Type)
     return GNATCOM.Types.VARIANT;

   function Get_AutoFormatType
     (This : Table_Type)
     return GNATCOM.Types.VARIANT;

   procedure uSelect
     (This : Table_Type);

   procedure Delete
     (This : Table_Type);

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
      Free           : Boolean := True);

   procedure SortAscending
     (This : Table_Type);

   procedure SortDescending
     (This : Table_Type);

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
      Free             : Boolean := True);

   procedure UpdateAutoFormat
     (This : Table_Type);

   function ConvertToTextOld
     (This      : Table_Type;
      Separator : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free      : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Cell
     (This   : Table_Type;
      Row    : GNATCOM.Types.VARIANT;
      Column : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Split
     (This      : Table_Type;
      BeforeRow : GNATCOM.Types.VARIANT;
      Free      : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function ConvertToText
     (This         : Table_Type;
      Separator    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      NestedTables : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free         : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure AutoFitBehavior
     (This     : Table_Type;
      Behavior : GNATCOM.Types.VARIANT;
      Free     : Boolean := True);

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
      Free             : Boolean := True);

   function Get_Tables
     (This : Table_Type)
     return GNATCOM.Types.VARIANT;

   function Get_NestingLevel
     (This : Table_Type)
     return GNATCOM.Types.VARIANT;

   function Get_AllowPageBreaks
     (This : Table_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AllowPageBreaks
     (This : Table_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AllowAutoFit
     (This : Table_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AllowAutoFit
     (This : Table_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_PreferredWidth
     (This : Table_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_PreferredWidth
     (This : Table_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_PreferredWidthType
     (This : Table_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_PreferredWidthType
     (This : Table_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_TopPadding
     (This : Table_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_TopPadding
     (This : Table_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_BottomPadding
     (This : Table_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_BottomPadding
     (This : Table_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_LeftPadding
     (This : Table_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_LeftPadding
     (This : Table_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_RightPadding
     (This : Table_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_RightPadding
     (This : Table_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Spacing
     (This : Table_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Spacing
     (This : Table_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_TableDirection
     (This : Table_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_TableDirection
     (This : Table_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ID
     (This : Table_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ID
     (This : Table_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Style
     (This : Table_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Style
     (This : Table_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ApplyStyleHeadingRows
     (This : Table_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ApplyStyleHeadingRows
     (This : Table_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ApplyStyleLastRow
     (This : Table_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ApplyStyleLastRow
     (This : Table_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ApplyStyleFirstColumn
     (This : Table_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ApplyStyleFirstColumn
     (This : Table_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ApplyStyleLastColumn
     (This : Table_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ApplyStyleLastColumn
     (This : Table_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

end winword.Table_Object;

