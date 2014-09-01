package body winword.TablesOfAuthorities_Object is

   function Get_Application
     (This : TablesOfAuthorities_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TablesOfAuthorities_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : TablesOfAuthorities_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TablesOfAuthorities_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : TablesOfAuthorities_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TablesOfAuthorities_Get_Parent);
   end Get_Parent;

   function Getu_NewEnum
     (This : TablesOfAuthorities_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TablesOfAuthorities_Getu_NewEnum);
   end Getu_NewEnum;

   function Get_Count
     (This : TablesOfAuthorities_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TablesOfAuthorities_Get_Count);
   end Get_Count;

   function Get_Format
     (This : TablesOfAuthorities_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TablesOfAuthorities_Get_Format);
   end Get_Format;

   procedure Put_Format
     (This : TablesOfAuthorities_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TablesOfAuthorities_Put_Format,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Format;

   function Item
     (This  : TablesOfAuthorities_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         TablesOfAuthorities_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

   function Add
     (This                  : TablesOfAuthorities_Type;
      uRange                : GNATCOM.Types.VARIANT;
      Category              : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Bookmark              : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Passim                : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      KeepEntryFormatting   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Separator             : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      IncludeSequenceName   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      EntrySeparator        : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      PageRangeSeparator    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      IncludeCategoryHeader : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      PageNumberSeparator   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free                  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         TablesOfAuthorities_Add,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => PageNumberSeparator,
          2 => IncludeCategoryHeader,
          3 => PageRangeSeparator,
          4 => EntrySeparator,
          5 => IncludeSequenceName,
          6 => Separator,
          7 => KeepEntryFormatting,
          8 => Passim,
          9 => Bookmark,
          10 => Category,
          11 => uRange),
         Free);
   end Add;

   procedure NextCitation
     (This          : TablesOfAuthorities_Type;
      ShortCitation : GNATCOM.Types.VARIANT;
      Free          : Boolean := True)
   is
   begin
      Invoke
        (This,
         TablesOfAuthorities_NextCitation,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => ShortCitation),
         Free);
   end NextCitation;

   function MarkCitation
     (This                 : TablesOfAuthorities_Type;
      uRange               : GNATCOM.Types.VARIANT;
      ShortCitation        : GNATCOM.Types.VARIANT;
      LongCitation         : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      LongCitationAutoText : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Category             : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free                 : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         TablesOfAuthorities_MarkCitation,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Category,
          2 => LongCitationAutoText,
          3 => LongCitation,
          4 => ShortCitation,
          5 => uRange),
         Free);
   end MarkCitation;

   procedure MarkAllCitations
     (This                 : TablesOfAuthorities_Type;
      ShortCitation        : GNATCOM.Types.VARIANT;
      LongCitation         : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      LongCitationAutoText : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Category             : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free                 : Boolean := True)
   is
   begin
      Invoke
        (This,
         TablesOfAuthorities_MarkAllCitations,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Category,
          2 => LongCitationAutoText,
          3 => LongCitation,
          4 => ShortCitation),
         Free);
   end MarkAllCitations;

end winword.TablesOfAuthorities_Object;

