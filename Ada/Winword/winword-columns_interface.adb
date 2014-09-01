with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.Columns_Interface is

   procedure Initialize (This : in out Columns_Type) is
   begin
      Set_IID (This, IID_Columns);
   end Initialize;

   function Pointer (This : Columns_Type)
     return Pointer_To_Columns
   is
   begin
      return To_Pointer_To_Columns (Address (This));
   end Pointer;

   procedure Attach (This    : in out Columns_Type;
                     Pointer : in     Pointer_To_Columns)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Getu_NewEnum
     (This : Columns_Type)
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
     (This : Columns_Type)
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
     (This : Columns_Type)
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
     (This : Columns_Type)
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
     (This : Columns_Type)
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

   function Get_First
     (This : Columns_Type)
     return Pointer_To_Column
   is
       RetVal : aliased Pointer_To_Column;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_First
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_First;

   function Get_Last
     (This : Columns_Type)
     return Pointer_To_Column
   is
       RetVal : aliased Pointer_To_Column;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Last
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Last;

   function Get_Width
     (This : Columns_Type)
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
     (This : Columns_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Width
         (Pointer (This),
          prop));

   end Put_Width;

   function Get_Borders
     (This : Columns_Type)
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
     (This : Columns_Type;
      prop : Pointer_To_Borders)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Borders
         (Pointer (This),
          prop));

   end Put_Borders;

   function Get_Shading
     (This : Columns_Type)
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
     (This  : Columns_Type;
      Index : Interfaces.C.long)
     return Pointer_To_Column
   is
       RetVal : aliased Pointer_To_Column;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Item
         (Pointer (This),
          Index,
          RetVal'Unchecked_Access));

      return RetVal;
   end Item;

   function Add
     (This         : Columns_Type;
      BeforeColumn : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Column
   is
       RetVal : aliased Pointer_To_Column;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Add
         (Pointer (This),
          BeforeColumn,
          RetVal'Unchecked_Access));

      return RetVal;
   end Add;

   procedure uSelect
     (This : Columns_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.uSelect
         (Pointer (This)));

   end uSelect;

   procedure Delete
     (This : Columns_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Delete
         (Pointer (This)));

   end Delete;

   procedure SetWidth
     (This        : Columns_Type;
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

   procedure AutoFit
     (This : Columns_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.AutoFit
         (Pointer (This)));

   end AutoFit;

   procedure DistributeWidth
     (This : Columns_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.DistributeWidth
         (Pointer (This)));

   end DistributeWidth;

   function Get_NestingLevel
     (This : Columns_Type)
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
     (This : Columns_Type)
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
     (This : Columns_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_PreferredWidth
         (Pointer (This),
          prop));

   end Put_PreferredWidth;

   function Get_PreferredWidthType
     (This : Columns_Type)
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
     (This : Columns_Type;
      prop : WdPreferredWidthType)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_PreferredWidthType
         (Pointer (This),
          prop));

   end Put_PreferredWidthType;

end winword.Columns_Interface;

