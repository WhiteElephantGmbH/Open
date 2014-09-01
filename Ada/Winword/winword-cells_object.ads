with GNATCOM.Dispinterface;

package winword.Cells_Object is

   type Cells_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Getu_NewEnum
     (This : Cells_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : Cells_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Application
     (This : Cells_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : Cells_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : Cells_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Width
     (This : Cells_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Width
     (This : Cells_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Height
     (This : Cells_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Height
     (This : Cells_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_HeightRule
     (This : Cells_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_HeightRule
     (This : Cells_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_VerticalAlignment
     (This : Cells_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_VerticalAlignment
     (This : Cells_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Borders
     (This : Cells_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Borders
     (This : Cells_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Shading
     (This : Cells_Type)
     return GNATCOM.Types.VARIANT;

   function Item
     (This  : Cells_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Add
     (This       : Cells_Type;
      BeforeCell : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free       : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure Delete
     (This       : Cells_Type;
      ShiftCells : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free       : Boolean := True);

   procedure SetWidth
     (This        : Cells_Type;
      ColumnWidth : GNATCOM.Types.VARIANT;
      RulerStyle  : GNATCOM.Types.VARIANT;
      Free        : Boolean := True);

   procedure SetHeight
     (This       : Cells_Type;
      RowHeight  : GNATCOM.Types.VARIANT;
      HeightRule : GNATCOM.Types.VARIANT;
      Free       : Boolean := True);

   procedure Merge
     (This : Cells_Type);

   procedure Split
     (This             : Cells_Type;
      NumRows          : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      NumColumns       : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      MergeBeforeSplit : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free             : Boolean := True);

   procedure DistributeHeight
     (This : Cells_Type);

   procedure DistributeWidth
     (This : Cells_Type);

   procedure AutoFit
     (This : Cells_Type);

   function Get_NestingLevel
     (This : Cells_Type)
     return GNATCOM.Types.VARIANT;

   function Get_PreferredWidth
     (This : Cells_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_PreferredWidth
     (This : Cells_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_PreferredWidthType
     (This : Cells_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_PreferredWidthType
     (This : Cells_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

end winword.Cells_Object;

