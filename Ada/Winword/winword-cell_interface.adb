with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.Cell_Interface is

   procedure Initialize (This : in out Cell_Type) is
   begin
      Set_IID (This, IID_Cell);
   end Initialize;

   function Pointer (This : Cell_Type)
     return Pointer_To_Cell
   is
   begin
      return To_Pointer_To_Cell (Address (This));
   end Pointer;

   procedure Attach (This    : in out Cell_Type;
                     Pointer : in     Pointer_To_Cell)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Range
     (This : Cell_Type)
     return Pointer_To_uRange
   is
       RetVal : aliased Pointer_To_uRange;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Range
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Range;

   function Get_Application
     (This : Cell_Type)
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
     (This : Cell_Type)
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
     (This : Cell_Type)
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

   function Get_RowIndex
     (This : Cell_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_RowIndex
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_RowIndex;

   function Get_ColumnIndex
     (This : Cell_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ColumnIndex
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ColumnIndex;

   function Get_Width
     (This : Cell_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Width
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Width;

   procedure Put_Width
     (This : Cell_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Width
         (Pointer (This),
          prop));

   end Put_Width;

   function Get_Height
     (This : Cell_Type)
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
     (This : Cell_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Height
         (Pointer (This),
          prop));

   end Put_Height;

   function Get_HeightRule
     (This : Cell_Type)
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
     (This : Cell_Type;
      prop : WdRowHeightRule)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_HeightRule
         (Pointer (This),
          prop));

   end Put_HeightRule;

   function Get_VerticalAlignment
     (This : Cell_Type)
     return WdCellVerticalAlignment
   is
       RetVal : aliased WdCellVerticalAlignment;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_VerticalAlignment
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_VerticalAlignment;

   procedure Put_VerticalAlignment
     (This : Cell_Type;
      prop : WdCellVerticalAlignment)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_VerticalAlignment
         (Pointer (This),
          prop));

   end Put_VerticalAlignment;

   function Get_Column
     (This : Cell_Type)
     return Pointer_To_Column
   is
       RetVal : aliased Pointer_To_Column;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Column
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Column;

   function Get_Row
     (This : Cell_Type)
     return Pointer_To_Row
   is
       RetVal : aliased Pointer_To_Row;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Row
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Row;

   function Get_Next
     (This : Cell_Type)
     return Pointer_To_Cell
   is
       RetVal : aliased Pointer_To_Cell;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Next
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Next;

   function Get_Previous
     (This : Cell_Type)
     return Pointer_To_Cell
   is
       RetVal : aliased Pointer_To_Cell;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Previous
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Previous;

   function Get_Shading
     (This : Cell_Type)
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

   function Get_Borders
     (This : Cell_Type)
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
     (This : Cell_Type;
      prop : Pointer_To_Borders)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Borders
         (Pointer (This),
          prop));

   end Put_Borders;

   procedure uSelect
     (This : Cell_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.uSelect
         (Pointer (This)));

   end uSelect;

   procedure Delete
     (This       : Cell_Type;
      ShiftCells : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Delete
         (Pointer (This),
          ShiftCells));

   end Delete;

   procedure Formula
     (This      : Cell_Type;
      Formula   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      NumFormat : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Formula
         (Pointer (This),
          Formula,
          NumFormat));

   end Formula;

   procedure SetWidth
     (This        : Cell_Type;
      ColumnWidth : Interfaces.C.C_float;
      RulerStyle  : WdRulerStyle)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.SetWidth
         (Pointer (This),
          ColumnWidth,
          RulerStyle));

   end SetWidth;

   procedure SetHeight
     (This       : Cell_Type;
      RowHeight  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      HeightRule : WdRowHeightRule)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.SetHeight
         (Pointer (This),
          RowHeight,
          HeightRule));

   end SetHeight;

   procedure Merge
     (This    : Cell_Type;
      MergeTo : Pointer_To_Cell)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Merge
         (Pointer (This),
          MergeTo));

   end Merge;

   procedure Split
     (This       : Cell_Type;
      NumRows    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      NumColumns : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Split
         (Pointer (This),
          NumRows,
          NumColumns));

   end Split;

   procedure AutoSum
     (This : Cell_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.AutoSum
         (Pointer (This)));

   end AutoSum;

   function Get_Tables
     (This : Cell_Type)
     return Pointer_To_Tables
   is
       RetVal : aliased Pointer_To_Tables;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Tables
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Tables;

   function Get_NestingLevel
     (This : Cell_Type)
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

   function Get_WordWrap
     (This : Cell_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_WordWrap
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_WordWrap;

   procedure Put_WordWrap
     (This : Cell_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_WordWrap
         (Pointer (This),
          prop));

   end Put_WordWrap;

   function Get_PreferredWidth
     (This : Cell_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_PreferredWidth
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_PreferredWidth;

   procedure Put_PreferredWidth
     (This : Cell_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_PreferredWidth
         (Pointer (This),
          prop));

   end Put_PreferredWidth;

   function Get_FitText
     (This : Cell_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_FitText
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_FitText;

   procedure Put_FitText
     (This : Cell_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_FitText
         (Pointer (This),
          prop));

   end Put_FitText;

   function Get_TopPadding
     (This : Cell_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_TopPadding
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_TopPadding;

   procedure Put_TopPadding
     (This : Cell_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_TopPadding
         (Pointer (This),
          prop));

   end Put_TopPadding;

   function Get_BottomPadding
     (This : Cell_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_BottomPadding
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_BottomPadding;

   procedure Put_BottomPadding
     (This : Cell_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_BottomPadding
         (Pointer (This),
          prop));

   end Put_BottomPadding;

   function Get_LeftPadding
     (This : Cell_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_LeftPadding
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_LeftPadding;

   procedure Put_LeftPadding
     (This : Cell_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_LeftPadding
         (Pointer (This),
          prop));

   end Put_LeftPadding;

   function Get_RightPadding
     (This : Cell_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_RightPadding
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_RightPadding;

   procedure Put_RightPadding
     (This : Cell_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_RightPadding
         (Pointer (This),
          prop));

   end Put_RightPadding;

   function Get_ID
     (This : Cell_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ID
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ID;

   procedure Put_ID
     (This : Cell_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ID
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_ID;

   function Get_PreferredWidthType
     (This : Cell_Type)
     return WdPreferredWidthType
   is
       RetVal : aliased WdPreferredWidthType;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_PreferredWidthType
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_PreferredWidthType;

   procedure Put_PreferredWidthType
     (This : Cell_Type;
      prop : WdPreferredWidthType)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_PreferredWidthType
         (Pointer (This),
          prop));

   end Put_PreferredWidthType;

end winword.Cell_Interface;

