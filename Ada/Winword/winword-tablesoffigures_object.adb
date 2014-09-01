package body winword.TablesOfFigures_Object is

   function Get_Application
     (This : TablesOfFigures_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TablesOfFigures_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : TablesOfFigures_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TablesOfFigures_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : TablesOfFigures_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TablesOfFigures_Get_Parent);
   end Get_Parent;

   function Getu_NewEnum
     (This : TablesOfFigures_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TablesOfFigures_Getu_NewEnum);
   end Getu_NewEnum;

   function Get_Count
     (This : TablesOfFigures_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TablesOfFigures_Get_Count);
   end Get_Count;

   function Get_Format
     (This : TablesOfFigures_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TablesOfFigures_Get_Format);
   end Get_Format;

   procedure Put_Format
     (This : TablesOfFigures_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TablesOfFigures_Put_Format,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Format;

   function Item
     (This  : TablesOfFigures_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         TablesOfFigures_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

   function AddOld
     (This                  : TablesOfFigures_Type;
      uRange                : GNATCOM.Types.VARIANT;
      Caption               : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      IncludeLabel          : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      UseHeadingStyles      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      UpperHeadingLevel     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      LowerHeadingLevel     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      UseFields             : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      TableID               : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      RightAlignPageNumbers : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      IncludePageNumbers    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      AddedStyles           : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free                  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         TablesOfFigures_AddOld,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => AddedStyles,
          2 => IncludePageNumbers,
          3 => RightAlignPageNumbers,
          4 => TableID,
          5 => UseFields,
          6 => LowerHeadingLevel,
          7 => UpperHeadingLevel,
          8 => UseHeadingStyles,
          9 => IncludeLabel,
          10 => Caption,
          11 => uRange),
         Free);
   end AddOld;

   function MarkEntry
     (This          : TablesOfFigures_Type;
      uRange        : GNATCOM.Types.VARIANT;
      uEntry        : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      EntryAutoText : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      TableID       : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Level         : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free          : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         TablesOfFigures_MarkEntry,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Level,
          2 => TableID,
          3 => EntryAutoText,
          4 => uEntry,
          5 => uRange),
         Free);
   end MarkEntry;

   function Add
     (This                  : TablesOfFigures_Type;
      uRange                : GNATCOM.Types.VARIANT;
      Caption               : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      IncludeLabel          : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      UseHeadingStyles      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      UpperHeadingLevel     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      LowerHeadingLevel     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      UseFields             : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      TableID               : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      RightAlignPageNumbers : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      IncludePageNumbers    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      AddedStyles           : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      UseHyperlinks         : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      HidePageNumbersInWeb  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free                  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         TablesOfFigures_Add,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => HidePageNumbersInWeb,
          2 => UseHyperlinks,
          3 => AddedStyles,
          4 => IncludePageNumbers,
          5 => RightAlignPageNumbers,
          6 => TableID,
          7 => UseFields,
          8 => LowerHeadingLevel,
          9 => UpperHeadingLevel,
          10 => UseHeadingStyles,
          11 => IncludeLabel,
          12 => Caption,
          13 => uRange),
         Free);
   end Add;

end winword.TablesOfFigures_Object;

