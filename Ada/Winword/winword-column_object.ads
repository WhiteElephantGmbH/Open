with GNATCOM.Dispinterface;

package winword.Column_Object is

   type Column_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : Column_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : Column_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : Column_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Width
     (This : Column_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Width
     (This : Column_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_IsFirst
     (This : Column_Type)
     return GNATCOM.Types.VARIANT;

   function Get_IsLast
     (This : Column_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Index
     (This : Column_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Cells
     (This : Column_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Borders
     (This : Column_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Borders
     (This : Column_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Shading
     (This : Column_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Next
     (This : Column_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Previous
     (This : Column_Type)
     return GNATCOM.Types.VARIANT;

   procedure uSelect
     (This : Column_Type);

   procedure Delete
     (This : Column_Type);

   procedure SetWidth
     (This        : Column_Type;
      ColumnWidth : GNATCOM.Types.VARIANT;
      RulerStyle  : GNATCOM.Types.VARIANT;
      Free        : Boolean := True);

   procedure AutoFit
     (This : Column_Type);

   procedure SortOld
     (This          : Column_Type;
      ExcludeHeader : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      SortFieldType : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      SortOrder     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      CaseSensitive : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      LanguageID    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free          : Boolean := True);

   procedure Sort
     (This             : Column_Type;
      ExcludeHeader    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      SortFieldType    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      SortOrder        : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      CaseSensitive    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      BidiSort         : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      IgnoreThe        : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      IgnoreKashida    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      IgnoreDiacritics : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      IgnoreHe         : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      LanguageID       : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free             : Boolean := True);

   function Get_NestingLevel
     (This : Column_Type)
     return GNATCOM.Types.VARIANT;

   function Get_PreferredWidth
     (This : Column_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_PreferredWidth
     (This : Column_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_PreferredWidthType
     (This : Column_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_PreferredWidthType
     (This : Column_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

end winword.Column_Object;

