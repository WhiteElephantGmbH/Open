with GNATCOM.Dispinterface;

package winword.Columns_Interface is

   type Columns_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Columns_Type);

   function Pointer (This : Columns_Type)
     return Pointer_To_Columns;

   procedure Attach (This    : in out Columns_Type;
                     Pointer : in     Pointer_To_Columns);

   function Getu_NewEnum
     (This : Columns_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_Count
     (This : Columns_Type)
     return Interfaces.C.long;

   function Get_Application
     (This : Columns_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : Columns_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : Columns_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_First
     (This : Columns_Type)
     return Pointer_To_Column;

   function Get_Last
     (This : Columns_Type)
     return Pointer_To_Column;

   function Get_Width
     (This : Columns_Type)
     return Interfaces.C.C_float;

   procedure Put_Width
     (This : Columns_Type;
      prop : Interfaces.C.C_float);

   function Get_Borders
     (This : Columns_Type)
     return Pointer_To_Borders;

   procedure Put_Borders
     (This : Columns_Type;
      prop : Pointer_To_Borders);

   function Get_Shading
     (This : Columns_Type)
     return Pointer_To_Shading;

   function Item
     (This  : Columns_Type;
      Index : Interfaces.C.long)
     return Pointer_To_Column;

   function Add
     (This         : Columns_Type;
      BeforeColumn : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Column;

   procedure uSelect
     (This : Columns_Type);

   procedure Delete
     (This : Columns_Type);

   procedure SetWidth
     (This        : Columns_Type;
      ColumnWidth : Interfaces.C.C_float;
      RulerStyle  : WdRulerStyle);

   procedure AutoFit
     (This : Columns_Type);

   procedure DistributeWidth
     (This : Columns_Type);

   function Get_NestingLevel
     (This : Columns_Type)
     return Interfaces.C.long;

   function Get_PreferredWidth
     (This : Columns_Type)
     return Interfaces.C.C_float;

   procedure Put_PreferredWidth
     (This : Columns_Type;
      prop : Interfaces.C.C_float);

   function Get_PreferredWidthType
     (This : Columns_Type)
     return WdPreferredWidthType;

   procedure Put_PreferredWidthType
     (This : Columns_Type;
      prop : WdPreferredWidthType);

end winword.Columns_Interface;

