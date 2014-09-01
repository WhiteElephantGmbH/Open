with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.Rows_Interface is

   procedure Initialize (This : in out Rows_Type) is
   begin
      Set_IID (This, IID_Rows);
   end Initialize;

   function Pointer (This : Rows_Type)
     return Pointer_To_Rows
   is
   begin
      return To_Pointer_To_Rows (Address (This));
   end Pointer;

   procedure Attach (This    : in out Rows_Type;
                     Pointer : in     Pointer_To_Rows)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Getu_NewEnum
     (This : Rows_Type)
     return GNATCOM.Types.Pointer_To_IUnknown
   is
       RetVal : aliased GNATCOM.Types.Pointer_To_IUnknown;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Getu_NewEnum
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Getu_NewEnum;

   function Get_Count
     (This : Rows_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Count
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Count;

   function Get_AllowBreakAcrossPages
     (This : Rows_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AllowBreakAcrossPages
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AllowBreakAcrossPages;

   procedure Put_AllowBreakAcrossPages
     (This : Rows_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AllowBreakAcrossPages
         (Pointer (This),
          prop));

   end Put_AllowBreakAcrossPages;

   function Get_Alignment
     (This : Rows_Type)
     return WdRowAlignment
   is
       RetVal : aliased WdRowAlignment;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Alignment
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Alignment;

   procedure Put_Alignment
     (This : Rows_Type;
      prop : WdRowAlignment)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Alignment
         (Pointer (This),
          prop));

   end Put_Alignment;

   function Get_HeadingFormat
     (This : Rows_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_HeadingFormat
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_HeadingFormat;

   procedure Put_HeadingFormat
     (This : Rows_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_HeadingFormat
         (Pointer (This),
          prop));

   end Put_HeadingFormat;

   function Get_SpaceBetweenColumns
     (This : Rows_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SpaceBetweenColumns
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_SpaceBetweenColumns;

   procedure Put_SpaceBetweenColumns
     (This : Rows_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_SpaceBetweenColumns
         (Pointer (This),
          prop));

   end Put_SpaceBetweenColumns;

   function Get_Height
     (This : Rows_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Height
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Height;

   procedure Put_Height
     (This : Rows_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Height
         (Pointer (This),
          prop));

   end Put_Height;

   function Get_HeightRule
     (This : Rows_Type)
     return WdRowHeightRule
   is
       RetVal : aliased WdRowHeightRule;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_HeightRule
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_HeightRule;

   procedure Put_HeightRule
     (This : Rows_Type;
      prop : WdRowHeightRule)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_HeightRule
         (Pointer (This),
          prop));

   end Put_HeightRule;

   function Get_LeftIndent
     (This : Rows_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_LeftIndent
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_LeftIndent;

   procedure Put_LeftIndent
     (This : Rows_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_LeftIndent
         (Pointer (This),
          prop));

   end Put_LeftIndent;

   function Get_First
     (This : Rows_Type)
     return Pointer_To_Row
   is
       RetVal : aliased Pointer_To_Row;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_First
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_First;

   function Get_Last
     (This : Rows_Type)
     return Pointer_To_Row
   is
       RetVal : aliased Pointer_To_Row;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Last
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Last;

   function Get_Application
     (This : Rows_Type)
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
     (This : Rows_Type)
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
     (This : Rows_Type)
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

   function Get_Borders
     (This : Rows_Type)
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
     (This : Rows_Type;
      prop : Pointer_To_Borders)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Borders
         (Pointer (This),
          prop));

   end Put_Borders;

   function Get_Shading
     (This : Rows_Type)
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

   function Item
     (This  : Rows_Type;
      Index : Interfaces.C.long)
     return Pointer_To_Row
   is
       RetVal : aliased Pointer_To_Row;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Item
         (Pointer (This),
          Index,
          RetVal'Unchecked_Access));

      return RetVal;
   end Item;

   function Add
     (This      : Rows_Type;
      BeforeRow : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Row
   is
       RetVal : aliased Pointer_To_Row;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Add
         (Pointer (This),
          BeforeRow,
          RetVal'Unchecked_Access));

      return RetVal;
   end Add;

   procedure uSelect
     (This : Rows_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.uSelect
         (Pointer (This)));

   end uSelect;

   procedure Delete
     (This : Rows_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Delete
         (Pointer (This)));

   end Delete;

   procedure SetLeftIndent
     (This       : Rows_Type;
      LeftIndent : Interfaces.C.C_float;
      RulerStyle : WdRulerStyle)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.SetLeftIndent
         (Pointer (This),
          LeftIndent,
          RulerStyle));

   end SetLeftIndent;

   procedure SetHeight
     (This       : Rows_Type;
      RowHeight  : Interfaces.C.C_float;
      HeightRule : WdRowHeightRule)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.SetHeight
         (Pointer (This),
          RowHeight,
          HeightRule));

   end SetHeight;

   function ConvertToTextOld
     (This      : Rows_Type;
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

   procedure DistributeHeight
     (This : Rows_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.DistributeHeight
         (Pointer (This)));

   end DistributeHeight;

   function ConvertToText
     (This         : Rows_Type;
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

   function Get_WrapAroundText
     (This : Rows_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_WrapAroundText
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_WrapAroundText;

   procedure Put_WrapAroundText
     (This : Rows_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_WrapAroundText
         (Pointer (This),
          prop));

   end Put_WrapAroundText;

   function Get_DistanceTop
     (This : Rows_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DistanceTop
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DistanceTop;

   procedure Put_DistanceTop
     (This : Rows_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DistanceTop
         (Pointer (This),
          prop));

   end Put_DistanceTop;

   function Get_DistanceBottom
     (This : Rows_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DistanceBottom
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DistanceBottom;

   procedure Put_DistanceBottom
     (This : Rows_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DistanceBottom
         (Pointer (This),
          prop));

   end Put_DistanceBottom;

   function Get_DistanceLeft
     (This : Rows_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DistanceLeft
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DistanceLeft;

   procedure Put_DistanceLeft
     (This : Rows_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DistanceLeft
         (Pointer (This),
          prop));

   end Put_DistanceLeft;

   function Get_DistanceRight
     (This : Rows_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DistanceRight
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DistanceRight;

   procedure Put_DistanceRight
     (This : Rows_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DistanceRight
         (Pointer (This),
          prop));

   end Put_DistanceRight;

   function Get_HorizontalPosition
     (This : Rows_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_HorizontalPosition
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_HorizontalPosition;

   procedure Put_HorizontalPosition
     (This : Rows_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_HorizontalPosition
         (Pointer (This),
          prop));

   end Put_HorizontalPosition;

   function Get_VerticalPosition
     (This : Rows_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_VerticalPosition
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_VerticalPosition;

   procedure Put_VerticalPosition
     (This : Rows_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_VerticalPosition
         (Pointer (This),
          prop));

   end Put_VerticalPosition;

   function Get_RelativeHorizontalPosition
     (This : Rows_Type)
     return WdRelativeHorizontalPosition
   is
       RetVal : aliased WdRelativeHorizontalPosition;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_RelativeHorizontalPosition
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_RelativeHorizontalPosition;

   procedure Put_RelativeHorizontalPosition
     (This : Rows_Type;
      prop : WdRelativeHorizontalPosition)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_RelativeHorizontalPosition
         (Pointer (This),
          prop));

   end Put_RelativeHorizontalPosition;

   function Get_RelativeVerticalPosition
     (This : Rows_Type)
     return WdRelativeVerticalPosition
   is
       RetVal : aliased WdRelativeVerticalPosition;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_RelativeVerticalPosition
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_RelativeVerticalPosition;

   procedure Put_RelativeVerticalPosition
     (This : Rows_Type;
      prop : WdRelativeVerticalPosition)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_RelativeVerticalPosition
         (Pointer (This),
          prop));

   end Put_RelativeVerticalPosition;

   function Get_AllowOverlap
     (This : Rows_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AllowOverlap
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AllowOverlap;

   procedure Put_AllowOverlap
     (This : Rows_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AllowOverlap
         (Pointer (This),
          prop));

   end Put_AllowOverlap;

   function Get_NestingLevel
     (This : Rows_Type)
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

   function Get_TableDirection
     (This : Rows_Type)
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
     (This : Rows_Type;
      prop : WdTableDirection)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_TableDirection
         (Pointer (This),
          prop));

   end Put_TableDirection;

end winword.Rows_Interface;

