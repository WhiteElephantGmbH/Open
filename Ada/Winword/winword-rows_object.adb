package body winword.Rows_Object is

   function Getu_NewEnum
     (This : Rows_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Rows_Getu_NewEnum);
   end Getu_NewEnum;

   function Get_Count
     (This : Rows_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Rows_Get_Count);
   end Get_Count;

   function Get_AllowBreakAcrossPages
     (This : Rows_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Rows_Get_AllowBreakAcrossPages);
   end Get_AllowBreakAcrossPages;

   procedure Put_AllowBreakAcrossPages
     (This : Rows_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Rows_Put_AllowBreakAcrossPages,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AllowBreakAcrossPages;

   function Get_Alignment
     (This : Rows_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Rows_Get_Alignment);
   end Get_Alignment;

   procedure Put_Alignment
     (This : Rows_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Rows_Put_Alignment,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Alignment;

   function Get_HeadingFormat
     (This : Rows_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Rows_Get_HeadingFormat);
   end Get_HeadingFormat;

   procedure Put_HeadingFormat
     (This : Rows_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Rows_Put_HeadingFormat,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_HeadingFormat;

   function Get_SpaceBetweenColumns
     (This : Rows_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Rows_Get_SpaceBetweenColumns);
   end Get_SpaceBetweenColumns;

   procedure Put_SpaceBetweenColumns
     (This : Rows_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Rows_Put_SpaceBetweenColumns,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_SpaceBetweenColumns;

   function Get_Height
     (This : Rows_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Rows_Get_Height);
   end Get_Height;

   procedure Put_Height
     (This : Rows_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Rows_Put_Height,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Height;

   function Get_HeightRule
     (This : Rows_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Rows_Get_HeightRule);
   end Get_HeightRule;

   procedure Put_HeightRule
     (This : Rows_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Rows_Put_HeightRule,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_HeightRule;

   function Get_LeftIndent
     (This : Rows_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Rows_Get_LeftIndent);
   end Get_LeftIndent;

   procedure Put_LeftIndent
     (This : Rows_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Rows_Put_LeftIndent,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_LeftIndent;

   function Get_First
     (This : Rows_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Rows_Get_First);
   end Get_First;

   function Get_Last
     (This : Rows_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Rows_Get_Last);
   end Get_Last;

   function Get_Application
     (This : Rows_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Rows_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : Rows_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Rows_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : Rows_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Rows_Get_Parent);
   end Get_Parent;

   function Get_Borders
     (This : Rows_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Rows_Get_Borders);
   end Get_Borders;

   procedure Put_Borders
     (This : Rows_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Rows_Put_Borders,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Borders;

   function Get_Shading
     (This : Rows_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Rows_Get_Shading);
   end Get_Shading;

   function Item
     (This  : Rows_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Rows_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

   function Add
     (This      : Rows_Type;
      BeforeRow : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free      : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Rows_Add,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => BeforeRow),
         Free);
   end Add;

   procedure uSelect
     (This : Rows_Type)
   is
   begin
      Invoke (This, Rows_uSelect);
   end uSelect;

   procedure Delete
     (This : Rows_Type)
   is
   begin
      Invoke (This, Rows_Delete);
   end Delete;

   procedure SetLeftIndent
     (This       : Rows_Type;
      LeftIndent : GNATCOM.Types.VARIANT;
      RulerStyle : GNATCOM.Types.VARIANT;
      Free       : Boolean := True)
   is
   begin
      Invoke
        (This,
         Rows_SetLeftIndent,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => RulerStyle,
          2 => LeftIndent),
         Free);
   end SetLeftIndent;

   procedure SetHeight
     (This       : Rows_Type;
      RowHeight  : GNATCOM.Types.VARIANT;
      HeightRule : GNATCOM.Types.VARIANT;
      Free       : Boolean := True)
   is
   begin
      Invoke
        (This,
         Rows_SetHeight,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => HeightRule,
          2 => RowHeight),
         Free);
   end SetHeight;

   function ConvertToTextOld
     (This      : Rows_Type;
      Separator : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free      : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Rows_ConvertToTextOld,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Separator),
         Free);
   end ConvertToTextOld;

   procedure DistributeHeight
     (This : Rows_Type)
   is
   begin
      Invoke (This, Rows_DistributeHeight);
   end DistributeHeight;

   function ConvertToText
     (This         : Rows_Type;
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
         Rows_ConvertToText,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => NestedTables,
          2 => Separator),
         Free);
   end ConvertToText;

   function Get_WrapAroundText
     (This : Rows_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Rows_Get_WrapAroundText);
   end Get_WrapAroundText;

   procedure Put_WrapAroundText
     (This : Rows_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Rows_Put_WrapAroundText,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_WrapAroundText;

   function Get_DistanceTop
     (This : Rows_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Rows_Get_DistanceTop);
   end Get_DistanceTop;

   procedure Put_DistanceTop
     (This : Rows_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Rows_Put_DistanceTop,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DistanceTop;

   function Get_DistanceBottom
     (This : Rows_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Rows_Get_DistanceBottom);
   end Get_DistanceBottom;

   procedure Put_DistanceBottom
     (This : Rows_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Rows_Put_DistanceBottom,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DistanceBottom;

   function Get_DistanceLeft
     (This : Rows_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Rows_Get_DistanceLeft);
   end Get_DistanceLeft;

   procedure Put_DistanceLeft
     (This : Rows_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Rows_Put_DistanceLeft,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DistanceLeft;

   function Get_DistanceRight
     (This : Rows_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Rows_Get_DistanceRight);
   end Get_DistanceRight;

   procedure Put_DistanceRight
     (This : Rows_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Rows_Put_DistanceRight,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DistanceRight;

   function Get_HorizontalPosition
     (This : Rows_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Rows_Get_HorizontalPosition);
   end Get_HorizontalPosition;

   procedure Put_HorizontalPosition
     (This : Rows_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Rows_Put_HorizontalPosition,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_HorizontalPosition;

   function Get_VerticalPosition
     (This : Rows_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Rows_Get_VerticalPosition);
   end Get_VerticalPosition;

   procedure Put_VerticalPosition
     (This : Rows_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Rows_Put_VerticalPosition,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_VerticalPosition;

   function Get_RelativeHorizontalPosition
     (This : Rows_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Rows_Get_RelativeHorizontalPosition);
   end Get_RelativeHorizontalPosition;

   procedure Put_RelativeHorizontalPosition
     (This : Rows_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Rows_Put_RelativeHorizontalPosition,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_RelativeHorizontalPosition;

   function Get_RelativeVerticalPosition
     (This : Rows_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Rows_Get_RelativeVerticalPosition);
   end Get_RelativeVerticalPosition;

   procedure Put_RelativeVerticalPosition
     (This : Rows_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Rows_Put_RelativeVerticalPosition,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_RelativeVerticalPosition;

   function Get_AllowOverlap
     (This : Rows_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Rows_Get_AllowOverlap);
   end Get_AllowOverlap;

   procedure Put_AllowOverlap
     (This : Rows_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Rows_Put_AllowOverlap,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AllowOverlap;

   function Get_NestingLevel
     (This : Rows_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Rows_Get_NestingLevel);
   end Get_NestingLevel;

   function Get_TableDirection
     (This : Rows_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Rows_Get_TableDirection);
   end Get_TableDirection;

   procedure Put_TableDirection
     (This : Rows_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Rows_Put_TableDirection,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_TableDirection;

end winword.Rows_Object;

