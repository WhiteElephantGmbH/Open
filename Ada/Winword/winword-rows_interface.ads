with GNATCOM.Dispinterface;

package winword.Rows_Interface is

   type Rows_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Rows_Type);

   function Pointer (This : Rows_Type)
     return Pointer_To_Rows;

   procedure Attach (This    : in out Rows_Type;
                     Pointer : in     Pointer_To_Rows);

   function Getu_NewEnum
     (This : Rows_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_Count
     (This : Rows_Type)
     return Interfaces.C.long;

   function Get_AllowBreakAcrossPages
     (This : Rows_Type)
     return Interfaces.C.long;

   procedure Put_AllowBreakAcrossPages
     (This : Rows_Type;
      prop : Interfaces.C.long);

   function Get_Alignment
     (This : Rows_Type)
     return WdRowAlignment;

   procedure Put_Alignment
     (This : Rows_Type;
      prop : WdRowAlignment);

   function Get_HeadingFormat
     (This : Rows_Type)
     return Interfaces.C.long;

   procedure Put_HeadingFormat
     (This : Rows_Type;
      prop : Interfaces.C.long);

   function Get_SpaceBetweenColumns
     (This : Rows_Type)
     return Interfaces.C.C_float;

   procedure Put_SpaceBetweenColumns
     (This : Rows_Type;
      prop : Interfaces.C.C_float);

   function Get_Height
     (This : Rows_Type)
     return Interfaces.C.C_float;

   procedure Put_Height
     (This : Rows_Type;
      prop : Interfaces.C.C_float);

   function Get_HeightRule
     (This : Rows_Type)
     return WdRowHeightRule;

   procedure Put_HeightRule
     (This : Rows_Type;
      prop : WdRowHeightRule);

   function Get_LeftIndent
     (This : Rows_Type)
     return Interfaces.C.C_float;

   procedure Put_LeftIndent
     (This : Rows_Type;
      prop : Interfaces.C.C_float);

   function Get_First
     (This : Rows_Type)
     return Pointer_To_Row;

   function Get_Last
     (This : Rows_Type)
     return Pointer_To_Row;

   function Get_Application
     (This : Rows_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : Rows_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : Rows_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Borders
     (This : Rows_Type)
     return Pointer_To_Borders;

   procedure Put_Borders
     (This : Rows_Type;
      prop : Pointer_To_Borders);

   function Get_Shading
     (This : Rows_Type)
     return Pointer_To_Shading;

   function Item
     (This  : Rows_Type;
      Index : Interfaces.C.long)
     return Pointer_To_Row;

   function Add
     (This      : Rows_Type;
      BeforeRow : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Row;

   procedure uSelect
     (This : Rows_Type);

   procedure Delete
     (This : Rows_Type);

   procedure SetLeftIndent
     (This       : Rows_Type;
      LeftIndent : Interfaces.C.C_float;
      RulerStyle : WdRulerStyle);

   procedure SetHeight
     (This       : Rows_Type;
      RowHeight  : Interfaces.C.C_float;
      HeightRule : WdRowHeightRule);

   function ConvertToTextOld
     (This      : Rows_Type;
      Separator : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_uRange;

   procedure DistributeHeight
     (This : Rows_Type);

   function ConvertToText
     (This         : Rows_Type;
      Separator    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      NestedTables : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_uRange;

   function Get_WrapAroundText
     (This : Rows_Type)
     return Interfaces.C.long;

   procedure Put_WrapAroundText
     (This : Rows_Type;
      prop : Interfaces.C.long);

   function Get_DistanceTop
     (This : Rows_Type)
     return Interfaces.C.C_float;

   procedure Put_DistanceTop
     (This : Rows_Type;
      prop : Interfaces.C.C_float);

   function Get_DistanceBottom
     (This : Rows_Type)
     return Interfaces.C.C_float;

   procedure Put_DistanceBottom
     (This : Rows_Type;
      prop : Interfaces.C.C_float);

   function Get_DistanceLeft
     (This : Rows_Type)
     return Interfaces.C.C_float;

   procedure Put_DistanceLeft
     (This : Rows_Type;
      prop : Interfaces.C.C_float);

   function Get_DistanceRight
     (This : Rows_Type)
     return Interfaces.C.C_float;

   procedure Put_DistanceRight
     (This : Rows_Type;
      prop : Interfaces.C.C_float);

   function Get_HorizontalPosition
     (This : Rows_Type)
     return Interfaces.C.C_float;

   procedure Put_HorizontalPosition
     (This : Rows_Type;
      prop : Interfaces.C.C_float);

   function Get_VerticalPosition
     (This : Rows_Type)
     return Interfaces.C.C_float;

   procedure Put_VerticalPosition
     (This : Rows_Type;
      prop : Interfaces.C.C_float);

   function Get_RelativeHorizontalPosition
     (This : Rows_Type)
     return WdRelativeHorizontalPosition;

   procedure Put_RelativeHorizontalPosition
     (This : Rows_Type;
      prop : WdRelativeHorizontalPosition);

   function Get_RelativeVerticalPosition
     (This : Rows_Type)
     return WdRelativeVerticalPosition;

   procedure Put_RelativeVerticalPosition
     (This : Rows_Type;
      prop : WdRelativeVerticalPosition);

   function Get_AllowOverlap
     (This : Rows_Type)
     return Interfaces.C.long;

   procedure Put_AllowOverlap
     (This : Rows_Type;
      prop : Interfaces.C.long);

   function Get_NestingLevel
     (This : Rows_Type)
     return Interfaces.C.long;

   function Get_TableDirection
     (This : Rows_Type)
     return WdTableDirection;

   procedure Put_TableDirection
     (This : Rows_Type;
      prop : WdTableDirection);

end winword.Rows_Interface;

