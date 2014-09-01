with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.Row_Interface is

   procedure Initialize (This : in out Row_Type) is
   begin
      Set_IID (This, IID_Row);
   end Initialize;

   function Pointer (This : Row_Type)
     return Pointer_To_Row
   is
   begin
      return To_Pointer_To_Row (Address (This));
   end Pointer;

   procedure Attach (This    : in out Row_Type;
                     Pointer : in     Pointer_To_Row)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Range
     (This : Row_Type)
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
     (This : Row_Type)
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
     (This : Row_Type)
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
     (This : Row_Type)
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

   function Get_AllowBreakAcrossPages
     (This : Row_Type)
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
     (This : Row_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AllowBreakAcrossPages
         (Pointer (This),
          prop));

   end Put_AllowBreakAcrossPages;

   function Get_Alignment
     (This : Row_Type)
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
     (This : Row_Type;
      prop : WdRowAlignment)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Alignment
         (Pointer (This),
          prop));

   end Put_Alignment;

   function Get_HeadingFormat
     (This : Row_Type)
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
     (This : Row_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_HeadingFormat
         (Pointer (This),
          prop));

   end Put_HeadingFormat;

   function Get_SpaceBetweenColumns
     (This : Row_Type)
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
     (This : Row_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_SpaceBetweenColumns
         (Pointer (This),
          prop));

   end Put_SpaceBetweenColumns;

   function Get_Height
     (This : Row_Type)
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
     (This : Row_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Height
         (Pointer (This),
          prop));

   end Put_Height;

   function Get_HeightRule
     (This : Row_Type)
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
     (This : Row_Type;
      prop : WdRowHeightRule)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_HeightRule
         (Pointer (This),
          prop));

   end Put_HeightRule;

   function Get_LeftIndent
     (This : Row_Type)
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
     (This : Row_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_LeftIndent
         (Pointer (This),
          prop));

   end Put_LeftIndent;

   function Get_IsLast
     (This : Row_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_IsLast
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_IsLast;

   function Get_IsFirst
     (This : Row_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_IsFirst
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_IsFirst;

   function Get_Index
     (This : Row_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Index
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Index;

   function Get_Cells
     (This : Row_Type)
     return Pointer_To_Cells
   is
       RetVal : aliased Pointer_To_Cells;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Cells
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Cells;

   function Get_Borders
     (This : Row_Type)
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
     (This : Row_Type;
      prop : Pointer_To_Borders)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Borders
         (Pointer (This),
          prop));

   end Put_Borders;

   function Get_Shading
     (This : Row_Type)
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

   function Get_Next
     (This : Row_Type)
     return Pointer_To_Row
   is
       RetVal : aliased Pointer_To_Row;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Next
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Next;

   function Get_Previous
     (This : Row_Type)
     return Pointer_To_Row
   is
       RetVal : aliased Pointer_To_Row;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Previous
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Previous;

   procedure uSelect
     (This : Row_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.uSelect
         (Pointer (This)));

   end uSelect;

   procedure Delete
     (This : Row_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Delete
         (Pointer (This)));

   end Delete;

   procedure SetLeftIndent
     (This       : Row_Type;
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
     (This       : Row_Type;
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
     (This      : Row_Type;
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

   function ConvertToText
     (This         : Row_Type;
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

   function Get_NestingLevel
     (This : Row_Type)
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

   function Get_ID
     (This : Row_Type)
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
     (This : Row_Type;
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

end winword.Row_Interface;

