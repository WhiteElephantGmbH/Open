with GNATCOM.Dispinterface;

package winword.Rows_Object is

   type Rows_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Getu_NewEnum
     (This : Rows_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : Rows_Type)
     return GNATCOM.Types.VARIANT;

   function Get_AllowBreakAcrossPages
     (This : Rows_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AllowBreakAcrossPages
     (This : Rows_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Alignment
     (This : Rows_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Alignment
     (This : Rows_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_HeadingFormat
     (This : Rows_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_HeadingFormat
     (This : Rows_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_SpaceBetweenColumns
     (This : Rows_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_SpaceBetweenColumns
     (This : Rows_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Height
     (This : Rows_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Height
     (This : Rows_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_HeightRule
     (This : Rows_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_HeightRule
     (This : Rows_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_LeftIndent
     (This : Rows_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_LeftIndent
     (This : Rows_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_First
     (This : Rows_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Last
     (This : Rows_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Application
     (This : Rows_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : Rows_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : Rows_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Borders
     (This : Rows_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Borders
     (This : Rows_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Shading
     (This : Rows_Type)
     return GNATCOM.Types.VARIANT;

   function Item
     (This  : Rows_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Add
     (This      : Rows_Type;
      BeforeRow : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free      : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure uSelect
     (This : Rows_Type);

   procedure Delete
     (This : Rows_Type);

   procedure SetLeftIndent
     (This       : Rows_Type;
      LeftIndent : GNATCOM.Types.VARIANT;
      RulerStyle : GNATCOM.Types.VARIANT;
      Free       : Boolean := True);

   procedure SetHeight
     (This       : Rows_Type;
      RowHeight  : GNATCOM.Types.VARIANT;
      HeightRule : GNATCOM.Types.VARIANT;
      Free       : Boolean := True);

   function ConvertToTextOld
     (This      : Rows_Type;
      Separator : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free      : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure DistributeHeight
     (This : Rows_Type);

   function ConvertToText
     (This         : Rows_Type;
      Separator    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      NestedTables : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free         : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Get_WrapAroundText
     (This : Rows_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_WrapAroundText
     (This : Rows_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_DistanceTop
     (This : Rows_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DistanceTop
     (This : Rows_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_DistanceBottom
     (This : Rows_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DistanceBottom
     (This : Rows_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_DistanceLeft
     (This : Rows_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DistanceLeft
     (This : Rows_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_DistanceRight
     (This : Rows_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DistanceRight
     (This : Rows_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_HorizontalPosition
     (This : Rows_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_HorizontalPosition
     (This : Rows_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_VerticalPosition
     (This : Rows_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_VerticalPosition
     (This : Rows_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_RelativeHorizontalPosition
     (This : Rows_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_RelativeHorizontalPosition
     (This : Rows_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_RelativeVerticalPosition
     (This : Rows_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_RelativeVerticalPosition
     (This : Rows_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AllowOverlap
     (This : Rows_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AllowOverlap
     (This : Rows_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_NestingLevel
     (This : Rows_Type)
     return GNATCOM.Types.VARIANT;

   function Get_TableDirection
     (This : Rows_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_TableDirection
     (This : Rows_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

end winword.Rows_Object;

