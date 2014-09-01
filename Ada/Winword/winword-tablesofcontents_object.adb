package body winword.TablesOfContents_Object is

   function Get_Application
     (This : TablesOfContents_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TablesOfContents_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : TablesOfContents_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TablesOfContents_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : TablesOfContents_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TablesOfContents_Get_Parent);
   end Get_Parent;

   function Getu_NewEnum
     (This : TablesOfContents_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TablesOfContents_Getu_NewEnum);
   end Getu_NewEnum;

   function Get_Count
     (This : TablesOfContents_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TablesOfContents_Get_Count);
   end Get_Count;

   function Get_Format
     (This : TablesOfContents_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TablesOfContents_Get_Format);
   end Get_Format;

   procedure Put_Format
     (This : TablesOfContents_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TablesOfContents_Put_Format,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Format;

   function Item
     (This  : TablesOfContents_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         TablesOfContents_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

   function AddOld
     (This                  : TablesOfContents_Type;
      uRange                : GNATCOM.Types.VARIANT;
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
         TablesOfContents_AddOld,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => AddedStyles,
          2 => IncludePageNumbers,
          3 => RightAlignPageNumbers,
          4 => TableID,
          5 => UseFields,
          6 => LowerHeadingLevel,
          7 => UpperHeadingLevel,
          8 => UseHeadingStyles,
          9 => uRange),
         Free);
   end AddOld;

   function MarkEntry
     (This          : TablesOfContents_Type;
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
         TablesOfContents_MarkEntry,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Level,
          2 => TableID,
          3 => EntryAutoText,
          4 => uEntry,
          5 => uRange),
         Free);
   end MarkEntry;

   function Add2000
     (This                  : TablesOfContents_Type;
      uRange                : GNATCOM.Types.VARIANT;
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
         TablesOfContents_Add2000,
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
          11 => uRange),
         Free);
   end Add2000;

   function Add
     (This                  : TablesOfContents_Type;
      uRange                : GNATCOM.Types.VARIANT;
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
      UseOutlineLevels      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free                  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         TablesOfContents_Add,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => UseOutlineLevels,
          2 => HidePageNumbersInWeb,
          3 => UseHyperlinks,
          4 => AddedStyles,
          5 => IncludePageNumbers,
          6 => RightAlignPageNumbers,
          7 => TableID,
          8 => UseFields,
          9 => LowerHeadingLevel,
          10 => UpperHeadingLevel,
          11 => UseHeadingStyles,
          12 => uRange),
         Free);
   end Add;

end winword.TablesOfContents_Object;

