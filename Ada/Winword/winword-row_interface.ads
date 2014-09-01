with GNATCOM.Dispinterface;

package winword.Row_Interface is

   type Row_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Row_Type);

   function Pointer (This : Row_Type)
     return Pointer_To_Row;

   procedure Attach (This    : in out Row_Type;
                     Pointer : in     Pointer_To_Row);

   function Get_Range
     (This : Row_Type)
     return Pointer_To_uRange;

   function Get_Application
     (This : Row_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : Row_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : Row_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_AllowBreakAcrossPages
     (This : Row_Type)
     return Interfaces.C.long;

   procedure Put_AllowBreakAcrossPages
     (This : Row_Type;
      prop : Interfaces.C.long);

   function Get_Alignment
     (This : Row_Type)
     return WdRowAlignment;

   procedure Put_Alignment
     (This : Row_Type;
      prop : WdRowAlignment);

   function Get_HeadingFormat
     (This : Row_Type)
     return Interfaces.C.long;

   procedure Put_HeadingFormat
     (This : Row_Type;
      prop : Interfaces.C.long);

   function Get_SpaceBetweenColumns
     (This : Row_Type)
     return Interfaces.C.C_float;

   procedure Put_SpaceBetweenColumns
     (This : Row_Type;
      prop : Interfaces.C.C_float);

   function Get_Height
     (This : Row_Type)
     return Interfaces.C.C_float;

   procedure Put_Height
     (This : Row_Type;
      prop : Interfaces.C.C_float);

   function Get_HeightRule
     (This : Row_Type)
     return WdRowHeightRule;

   procedure Put_HeightRule
     (This : Row_Type;
      prop : WdRowHeightRule);

   function Get_LeftIndent
     (This : Row_Type)
     return Interfaces.C.C_float;

   procedure Put_LeftIndent
     (This : Row_Type;
      prop : Interfaces.C.C_float);

   function Get_IsLast
     (This : Row_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   function Get_IsFirst
     (This : Row_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   function Get_Index
     (This : Row_Type)
     return Interfaces.C.long;

   function Get_Cells
     (This : Row_Type)
     return Pointer_To_Cells;

   function Get_Borders
     (This : Row_Type)
     return Pointer_To_Borders;

   procedure Put_Borders
     (This : Row_Type;
      prop : Pointer_To_Borders);

   function Get_Shading
     (This : Row_Type)
     return Pointer_To_Shading;

   function Get_Next
     (This : Row_Type)
     return Pointer_To_Row;

   function Get_Previous
     (This : Row_Type)
     return Pointer_To_Row;

   procedure uSelect
     (This : Row_Type);

   procedure Delete
     (This : Row_Type);

   procedure SetLeftIndent
     (This       : Row_Type;
      LeftIndent : Interfaces.C.C_float;
      RulerStyle : WdRulerStyle);

   procedure SetHeight
     (This       : Row_Type;
      RowHeight  : Interfaces.C.C_float;
      HeightRule : WdRowHeightRule);

   function ConvertToTextOld
     (This      : Row_Type;
      Separator : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_uRange;

   function ConvertToText
     (This         : Row_Type;
      Separator    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      NestedTables : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_uRange;

   function Get_NestingLevel
     (This : Row_Type)
     return Interfaces.C.long;

   function Get_ID
     (This : Row_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_ID
     (This : Row_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

end winword.Row_Interface;

