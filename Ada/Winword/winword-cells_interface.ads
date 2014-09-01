with GNATCOM.Dispinterface;

package winword.Cells_Interface is

   type Cells_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Cells_Type);

   function Pointer (This : Cells_Type)
     return Pointer_To_Cells;

   procedure Attach (This    : in out Cells_Type;
                     Pointer : in     Pointer_To_Cells);

   function Getu_NewEnum
     (This : Cells_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_Count
     (This : Cells_Type)
     return Interfaces.C.long;

   function Get_Application
     (This : Cells_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : Cells_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : Cells_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Width
     (This : Cells_Type)
     return Interfaces.C.C_float;

   procedure Put_Width
     (This : Cells_Type;
      prop : Interfaces.C.C_float);

   function Get_Height
     (This : Cells_Type)
     return Interfaces.C.C_float;

   procedure Put_Height
     (This : Cells_Type;
      prop : Interfaces.C.C_float);

   function Get_HeightRule
     (This : Cells_Type)
     return WdRowHeightRule;

   procedure Put_HeightRule
     (This : Cells_Type;
      prop : WdRowHeightRule);

   function Get_VerticalAlignment
     (This : Cells_Type)
     return WdCellVerticalAlignment;

   procedure Put_VerticalAlignment
     (This : Cells_Type;
      prop : WdCellVerticalAlignment);

   function Get_Borders
     (This : Cells_Type)
     return Pointer_To_Borders;

   procedure Put_Borders
     (This : Cells_Type;
      prop : Pointer_To_Borders);

   function Get_Shading
     (This : Cells_Type)
     return Pointer_To_Shading;

   function Item
     (This  : Cells_Type;
      Index : Interfaces.C.long)
     return Pointer_To_Cell;

   function Add
     (This       : Cells_Type;
      BeforeCell : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Cell;

   procedure Delete
     (This       : Cells_Type;
      ShiftCells : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   procedure SetWidth
     (This        : Cells_Type;
      ColumnWidth : Interfaces.C.C_float;
      RulerStyle  : WdRulerStyle);

   procedure SetHeight
     (This       : Cells_Type;
      RowHeight  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      HeightRule : WdRowHeightRule);

   procedure Merge
     (This : Cells_Type);

   procedure Split
     (This             : Cells_Type;
      NumRows          : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      NumColumns       : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      MergeBeforeSplit : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   procedure DistributeHeight
     (This : Cells_Type);

   procedure DistributeWidth
     (This : Cells_Type);

   procedure AutoFit
     (This : Cells_Type);

   function Get_NestingLevel
     (This : Cells_Type)
     return Interfaces.C.long;

   function Get_PreferredWidth
     (This : Cells_Type)
     return Interfaces.C.C_float;

   procedure Put_PreferredWidth
     (This : Cells_Type;
      prop : Interfaces.C.C_float);

   function Get_PreferredWidthType
     (This : Cells_Type)
     return WdPreferredWidthType;

   procedure Put_PreferredWidthType
     (This : Cells_Type;
      prop : WdPreferredWidthType);

end winword.Cells_Interface;

