with GNATCOM.Dispinterface;

package winword.Cell_Object is

   type Cell_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Range
     (This : Cell_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Application
     (This : Cell_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : Cell_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : Cell_Type)
     return GNATCOM.Types.VARIANT;

   function Get_RowIndex
     (This : Cell_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ColumnIndex
     (This : Cell_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Width
     (This : Cell_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Width
     (This : Cell_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Height
     (This : Cell_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Height
     (This : Cell_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_HeightRule
     (This : Cell_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_HeightRule
     (This : Cell_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_VerticalAlignment
     (This : Cell_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_VerticalAlignment
     (This : Cell_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Column
     (This : Cell_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Row
     (This : Cell_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Next
     (This : Cell_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Previous
     (This : Cell_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Shading
     (This : Cell_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Borders
     (This : Cell_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Borders
     (This : Cell_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure uSelect
     (This : Cell_Type);

   procedure Delete
     (This       : Cell_Type;
      ShiftCells : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free       : Boolean := True);

   procedure Formula
     (This      : Cell_Type;
      Formula   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      NumFormat : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free      : Boolean := True);

   procedure SetWidth
     (This        : Cell_Type;
      ColumnWidth : GNATCOM.Types.VARIANT;
      RulerStyle  : GNATCOM.Types.VARIANT;
      Free        : Boolean := True);

   procedure SetHeight
     (This       : Cell_Type;
      RowHeight  : GNATCOM.Types.VARIANT;
      HeightRule : GNATCOM.Types.VARIANT;
      Free       : Boolean := True);

   procedure Merge
     (This    : Cell_Type;
      MergeTo : GNATCOM.Types.VARIANT;
      Free    : Boolean := True);

   procedure Split
     (This       : Cell_Type;
      NumRows    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      NumColumns : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free       : Boolean := True);

   procedure AutoSum
     (This : Cell_Type);

   function Get_Tables
     (This : Cell_Type)
     return GNATCOM.Types.VARIANT;

   function Get_NestingLevel
     (This : Cell_Type)
     return GNATCOM.Types.VARIANT;

   function Get_WordWrap
     (This : Cell_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_WordWrap
     (This : Cell_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_PreferredWidth
     (This : Cell_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_PreferredWidth
     (This : Cell_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_FitText
     (This : Cell_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_FitText
     (This : Cell_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_TopPadding
     (This : Cell_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_TopPadding
     (This : Cell_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_BottomPadding
     (This : Cell_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_BottomPadding
     (This : Cell_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_LeftPadding
     (This : Cell_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_LeftPadding
     (This : Cell_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_RightPadding
     (This : Cell_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_RightPadding
     (This : Cell_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ID
     (This : Cell_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ID
     (This : Cell_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_PreferredWidthType
     (This : Cell_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_PreferredWidthType
     (This : Cell_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

end winword.Cell_Object;

