package body winword.Column_Object is

   function Get_Application
     (This : Column_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Column_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : Column_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Column_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : Column_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Column_Get_Parent);
   end Get_Parent;

   function Get_Width
     (This : Column_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Column_Get_Width);
   end Get_Width;

   procedure Put_Width
     (This : Column_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Column_Put_Width,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Width;

   function Get_IsFirst
     (This : Column_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Column_Get_IsFirst);
   end Get_IsFirst;

   function Get_IsLast
     (This : Column_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Column_Get_IsLast);
   end Get_IsLast;

   function Get_Index
     (This : Column_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Column_Get_Index);
   end Get_Index;

   function Get_Cells
     (This : Column_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Column_Get_Cells);
   end Get_Cells;

   function Get_Borders
     (This : Column_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Column_Get_Borders);
   end Get_Borders;

   procedure Put_Borders
     (This : Column_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Column_Put_Borders,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Borders;

   function Get_Shading
     (This : Column_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Column_Get_Shading);
   end Get_Shading;

   function Get_Next
     (This : Column_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Column_Get_Next);
   end Get_Next;

   function Get_Previous
     (This : Column_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Column_Get_Previous);
   end Get_Previous;

   procedure uSelect
     (This : Column_Type)
   is
   begin
      Invoke (This, Column_uSelect);
   end uSelect;

   procedure Delete
     (This : Column_Type)
   is
   begin
      Invoke (This, Column_Delete);
   end Delete;

   procedure SetWidth
     (This        : Column_Type;
      ColumnWidth : GNATCOM.Types.VARIANT;
      RulerStyle  : GNATCOM.Types.VARIANT;
      Free        : Boolean := True)
   is
   begin
      Invoke
        (This,
         Column_SetWidth,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => RulerStyle,
          2 => ColumnWidth),
         Free);
   end SetWidth;

   procedure AutoFit
     (This : Column_Type)
   is
   begin
      Invoke (This, Column_AutoFit);
   end AutoFit;

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
      Free          : Boolean := True)
   is
   begin
      Invoke
        (This,
         Column_SortOld,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => LanguageID,
          2 => CaseSensitive,
          3 => SortOrder,
          4 => SortFieldType,
          5 => ExcludeHeader),
         Free);
   end SortOld;

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
      Free             : Boolean := True)
   is
   begin
      Invoke
        (This,
         Column_Sort,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => LanguageID,
          2 => IgnoreHe,
          3 => IgnoreDiacritics,
          4 => IgnoreKashida,
          5 => IgnoreThe,
          6 => BidiSort,
          7 => CaseSensitive,
          8 => SortOrder,
          9 => SortFieldType,
          10 => ExcludeHeader),
         Free);
   end Sort;

   function Get_NestingLevel
     (This : Column_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Column_Get_NestingLevel);
   end Get_NestingLevel;

   function Get_PreferredWidth
     (This : Column_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Column_Get_PreferredWidth);
   end Get_PreferredWidth;

   procedure Put_PreferredWidth
     (This : Column_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Column_Put_PreferredWidth,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_PreferredWidth;

   function Get_PreferredWidthType
     (This : Column_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Column_Get_PreferredWidthType);
   end Get_PreferredWidthType;

   procedure Put_PreferredWidthType
     (This : Column_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Column_Put_PreferredWidthType,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_PreferredWidthType;

end winword.Column_Object;

