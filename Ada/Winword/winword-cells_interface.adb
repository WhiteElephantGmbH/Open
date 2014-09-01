with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.Cells_Interface is

   procedure Initialize (This : in out Cells_Type) is
   begin
      Set_IID (This, IID_Cells);
   end Initialize;

   function Pointer (This : Cells_Type)
     return Pointer_To_Cells
   is
   begin
      return To_Pointer_To_Cells (Address (This));
   end Pointer;

   procedure Attach (This    : in out Cells_Type;
                     Pointer : in     Pointer_To_Cells)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Getu_NewEnum
     (This : Cells_Type)
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
     (This : Cells_Type)
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

   function Get_Application
     (This : Cells_Type)
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
     (This : Cells_Type)
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
     (This : Cells_Type)
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

   function Get_Width
     (This : Cells_Type)
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
     (This : Cells_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Width
         (Pointer (This),
          prop));

   end Put_Width;

   function Get_Height
     (This : Cells_Type)
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
     (This : Cells_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Height
         (Pointer (This),
          prop));

   end Put_Height;

   function Get_HeightRule
     (This : Cells_Type)
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
     (This : Cells_Type;
      prop : WdRowHeightRule)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_HeightRule
         (Pointer (This),
          prop));

   end Put_HeightRule;

   function Get_VerticalAlignment
     (This : Cells_Type)
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
     (This : Cells_Type;
      prop : WdCellVerticalAlignment)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_VerticalAlignment
         (Pointer (This),
          prop));

   end Put_VerticalAlignment;

   function Get_Borders
     (This : Cells_Type)
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
     (This : Cells_Type;
      prop : Pointer_To_Borders)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Borders
         (Pointer (This),
          prop));

   end Put_Borders;

   function Get_Shading
     (This : Cells_Type)
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
     (This  : Cells_Type;
      Index : Interfaces.C.long)
     return Pointer_To_Cell
   is
       RetVal : aliased Pointer_To_Cell;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Item
         (Pointer (This),
          Index,
          RetVal'Unchecked_Access));

      return RetVal;
   end Item;

   function Add
     (This       : Cells_Type;
      BeforeCell : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Cell
   is
       RetVal : aliased Pointer_To_Cell;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Add
         (Pointer (This),
          BeforeCell,
          RetVal'Unchecked_Access));

      return RetVal;
   end Add;

   procedure Delete
     (This       : Cells_Type;
      ShiftCells : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Delete
         (Pointer (This),
          ShiftCells));

   end Delete;

   procedure SetWidth
     (This        : Cells_Type;
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
     (This       : Cells_Type;
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
     (This : Cells_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Merge
         (Pointer (This)));

   end Merge;

   procedure Split
     (This             : Cells_Type;
      NumRows          : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      NumColumns       : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      MergeBeforeSplit : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Split
         (Pointer (This),
          NumRows,
          NumColumns,
          MergeBeforeSplit));

   end Split;

   procedure DistributeHeight
     (This : Cells_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.DistributeHeight
         (Pointer (This)));

   end DistributeHeight;

   procedure DistributeWidth
     (This : Cells_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.DistributeWidth
         (Pointer (This)));

   end DistributeWidth;

   procedure AutoFit
     (This : Cells_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.AutoFit
         (Pointer (This)));

   end AutoFit;

   function Get_NestingLevel
     (This : Cells_Type)
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

   function Get_PreferredWidth
     (This : Cells_Type)
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
     (This : Cells_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_PreferredWidth
         (Pointer (This),
          prop));

   end Put_PreferredWidth;

   function Get_PreferredWidthType
     (This : Cells_Type)
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
     (This : Cells_Type;
      prop : WdPreferredWidthType)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_PreferredWidthType
         (Pointer (This),
          prop));

   end Put_PreferredWidthType;

end winword.Cells_Interface;

