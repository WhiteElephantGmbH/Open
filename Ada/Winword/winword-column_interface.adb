with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.Column_Interface is

   procedure Initialize (This : in out Column_Type) is
   begin
      Set_IID (This, IID_Column);
   end Initialize;

   function Pointer (This : Column_Type)
     return Pointer_To_Column
   is
   begin
      return To_Pointer_To_Column (Address (This));
   end Pointer;

   procedure Attach (This    : in out Column_Type;
                     Pointer : in     Pointer_To_Column)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : Column_Type)
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
     (This : Column_Type)
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
     (This : Column_Type)
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
     (This : Column_Type)
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
     (This : Column_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Width
         (Pointer (This),
          prop));

   end Put_Width;

   function Get_IsFirst
     (This : Column_Type)
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

   function Get_IsLast
     (This : Column_Type)
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

   function Get_Index
     (This : Column_Type)
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
     (This : Column_Type)
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
     (This : Column_Type)
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
     (This : Column_Type;
      prop : Pointer_To_Borders)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Borders
         (Pointer (This),
          prop));

   end Put_Borders;

   function Get_Shading
     (This : Column_Type)
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
     (This : Column_Type)
     return Pointer_To_Column
   is
       RetVal : aliased Pointer_To_Column;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Next
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Next;

   function Get_Previous
     (This : Column_Type)
     return Pointer_To_Column
   is
       RetVal : aliased Pointer_To_Column;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Previous
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Previous;

   procedure uSelect
     (This : Column_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.uSelect
         (Pointer (This)));

   end uSelect;

   procedure Delete
     (This : Column_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Delete
         (Pointer (This)));

   end Delete;

   procedure SetWidth
     (This        : Column_Type;
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
     (This : Column_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.AutoFit
         (Pointer (This)));

   end AutoFit;

   procedure SortOld
     (This          : Column_Type;
      ExcludeHeader : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SortFieldType : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SortOrder     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      CaseSensitive : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      LanguageID    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.SortOld
         (Pointer (This),
          ExcludeHeader,
          SortFieldType,
          SortOrder,
          CaseSensitive,
          LanguageID));

   end SortOld;

   procedure Sort
     (This             : Column_Type;
      ExcludeHeader    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SortFieldType    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SortOrder        : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      CaseSensitive    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      BidiSort         : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      IgnoreThe        : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      IgnoreKashida    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      IgnoreDiacritics : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      IgnoreHe         : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      LanguageID       : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Sort
         (Pointer (This),
          ExcludeHeader,
          SortFieldType,
          SortOrder,
          CaseSensitive,
          BidiSort,
          IgnoreThe,
          IgnoreKashida,
          IgnoreDiacritics,
          IgnoreHe,
          LanguageID));

   end Sort;

   function Get_NestingLevel
     (This : Column_Type)
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
     (This : Column_Type)
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
     (This : Column_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_PreferredWidth
         (Pointer (This),
          prop));

   end Put_PreferredWidth;

   function Get_PreferredWidthType
     (This : Column_Type)
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
     (This : Column_Type;
      prop : WdPreferredWidthType)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_PreferredWidthType
         (Pointer (This),
          prop));

   end Put_PreferredWidthType;

end winword.Column_Interface;

