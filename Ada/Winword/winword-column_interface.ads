with GNATCOM.Dispinterface;

package winword.Column_Interface is

   type Column_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Column_Type);

   function Pointer (This : Column_Type)
     return Pointer_To_Column;

   procedure Attach (This    : in out Column_Type;
                     Pointer : in     Pointer_To_Column);

   function Get_Application
     (This : Column_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : Column_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : Column_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Width
     (This : Column_Type)
     return Interfaces.C.C_float;

   procedure Put_Width
     (This : Column_Type;
      prop : Interfaces.C.C_float);

   function Get_IsFirst
     (This : Column_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   function Get_IsLast
     (This : Column_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   function Get_Index
     (This : Column_Type)
     return Interfaces.C.long;

   function Get_Cells
     (This : Column_Type)
     return Pointer_To_Cells;

   function Get_Borders
     (This : Column_Type)
     return Pointer_To_Borders;

   procedure Put_Borders
     (This : Column_Type;
      prop : Pointer_To_Borders);

   function Get_Shading
     (This : Column_Type)
     return Pointer_To_Shading;

   function Get_Next
     (This : Column_Type)
     return Pointer_To_Column;

   function Get_Previous
     (This : Column_Type)
     return Pointer_To_Column;

   procedure uSelect
     (This : Column_Type);

   procedure Delete
     (This : Column_Type);

   procedure SetWidth
     (This        : Column_Type;
      ColumnWidth : Interfaces.C.C_float;
      RulerStyle  : WdRulerStyle);

   procedure AutoFit
     (This : Column_Type);

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
        GNATCOM.Types.PVARIANT_MISSING);

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
        GNATCOM.Types.PVARIANT_MISSING);

   function Get_NestingLevel
     (This : Column_Type)
     return Interfaces.C.long;

   function Get_PreferredWidth
     (This : Column_Type)
     return Interfaces.C.C_float;

   procedure Put_PreferredWidth
     (This : Column_Type;
      prop : Interfaces.C.C_float);

   function Get_PreferredWidthType
     (This : Column_Type)
     return WdPreferredWidthType;

   procedure Put_PreferredWidthType
     (This : Column_Type;
      prop : WdPreferredWidthType);

end winword.Column_Interface;

