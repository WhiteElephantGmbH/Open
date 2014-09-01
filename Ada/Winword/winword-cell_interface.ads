with GNATCOM.Dispinterface;

package winword.Cell_Interface is

   type Cell_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Cell_Type);

   function Pointer (This : Cell_Type)
     return Pointer_To_Cell;

   procedure Attach (This    : in out Cell_Type;
                     Pointer : in     Pointer_To_Cell);

   function Get_Range
     (This : Cell_Type)
     return Pointer_To_uRange;

   function Get_Application
     (This : Cell_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : Cell_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : Cell_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_RowIndex
     (This : Cell_Type)
     return Interfaces.C.long;

   function Get_ColumnIndex
     (This : Cell_Type)
     return Interfaces.C.long;

   function Get_Width
     (This : Cell_Type)
     return Interfaces.C.C_float;

   procedure Put_Width
     (This : Cell_Type;
      prop : Interfaces.C.C_float);

   function Get_Height
     (This : Cell_Type)
     return Interfaces.C.C_float;

   procedure Put_Height
     (This : Cell_Type;
      prop : Interfaces.C.C_float);

   function Get_HeightRule
     (This : Cell_Type)
     return WdRowHeightRule;

   procedure Put_HeightRule
     (This : Cell_Type;
      prop : WdRowHeightRule);

   function Get_VerticalAlignment
     (This : Cell_Type)
     return WdCellVerticalAlignment;

   procedure Put_VerticalAlignment
     (This : Cell_Type;
      prop : WdCellVerticalAlignment);

   function Get_Column
     (This : Cell_Type)
     return Pointer_To_Column;

   function Get_Row
     (This : Cell_Type)
     return Pointer_To_Row;

   function Get_Next
     (This : Cell_Type)
     return Pointer_To_Cell;

   function Get_Previous
     (This : Cell_Type)
     return Pointer_To_Cell;

   function Get_Shading
     (This : Cell_Type)
     return Pointer_To_Shading;

   function Get_Borders
     (This : Cell_Type)
     return Pointer_To_Borders;

   procedure Put_Borders
     (This : Cell_Type;
      prop : Pointer_To_Borders);

   procedure uSelect
     (This : Cell_Type);

   procedure Delete
     (This       : Cell_Type;
      ShiftCells : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   procedure Formula
     (This      : Cell_Type;
      Formula   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      NumFormat : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   procedure SetWidth
     (This        : Cell_Type;
      ColumnWidth : Interfaces.C.C_float;
      RulerStyle  : WdRulerStyle);

   procedure SetHeight
     (This       : Cell_Type;
      RowHeight  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      HeightRule : WdRowHeightRule);

   procedure Merge
     (This    : Cell_Type;
      MergeTo : Pointer_To_Cell);

   procedure Split
     (This       : Cell_Type;
      NumRows    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      NumColumns : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   procedure AutoSum
     (This : Cell_Type);

   function Get_Tables
     (This : Cell_Type)
     return Pointer_To_Tables;

   function Get_NestingLevel
     (This : Cell_Type)
     return Interfaces.C.long;

   function Get_WordWrap
     (This : Cell_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_WordWrap
     (This : Cell_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_PreferredWidth
     (This : Cell_Type)
     return Interfaces.C.C_float;

   procedure Put_PreferredWidth
     (This : Cell_Type;
      prop : Interfaces.C.C_float);

   function Get_FitText
     (This : Cell_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_FitText
     (This : Cell_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_TopPadding
     (This : Cell_Type)
     return Interfaces.C.C_float;

   procedure Put_TopPadding
     (This : Cell_Type;
      prop : Interfaces.C.C_float);

   function Get_BottomPadding
     (This : Cell_Type)
     return Interfaces.C.C_float;

   procedure Put_BottomPadding
     (This : Cell_Type;
      prop : Interfaces.C.C_float);

   function Get_LeftPadding
     (This : Cell_Type)
     return Interfaces.C.C_float;

   procedure Put_LeftPadding
     (This : Cell_Type;
      prop : Interfaces.C.C_float);

   function Get_RightPadding
     (This : Cell_Type)
     return Interfaces.C.C_float;

   procedure Put_RightPadding
     (This : Cell_Type;
      prop : Interfaces.C.C_float);

   function Get_ID
     (This : Cell_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_ID
     (This : Cell_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_PreferredWidthType
     (This : Cell_Type)
     return WdPreferredWidthType;

   procedure Put_PreferredWidthType
     (This : Cell_Type;
      prop : WdPreferredWidthType);

end winword.Cell_Interface;

