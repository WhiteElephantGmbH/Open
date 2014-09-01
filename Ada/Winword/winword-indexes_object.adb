package body winword.Indexes_Object is

   function Get_Application
     (This : Indexes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Indexes_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : Indexes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Indexes_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : Indexes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Indexes_Get_Parent);
   end Get_Parent;

   function Getu_NewEnum
     (This : Indexes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Indexes_Getu_NewEnum);
   end Getu_NewEnum;

   function Get_Count
     (This : Indexes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Indexes_Get_Count);
   end Get_Count;

   function Get_Format
     (This : Indexes_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Indexes_Get_Format);
   end Get_Format;

   procedure Put_Format
     (This : Indexes_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Indexes_Put_Format,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Format;

   function Item
     (This  : Indexes_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Indexes_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

   function AddOld
     (This                  : Indexes_Type;
      uRange                : GNATCOM.Types.VARIANT;
      HeadingSeparator      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      RightAlignPageNumbers : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      uType                 : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      NumberOfColumns       : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      AccentedLetters       : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free                  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Indexes_AddOld,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => AccentedLetters,
          2 => NumberOfColumns,
          3 => uType,
          4 => RightAlignPageNumbers,
          5 => HeadingSeparator,
          6 => uRange),
         Free);
   end AddOld;

   function MarkEntry
     (This                   : Indexes_Type;
      uRange                 : GNATCOM.Types.VARIANT;
      uEntry                 : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      EntryAutoText          : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      CrossReference         : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      CrossReferenceAutoText : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      BookmarkName           : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Bold                   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Italic                 : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Reading                : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free                   : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Indexes_MarkEntry,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Reading,
          2 => Italic,
          3 => Bold,
          4 => BookmarkName,
          5 => CrossReferenceAutoText,
          6 => CrossReference,
          7 => EntryAutoText,
          8 => uEntry,
          9 => uRange),
         Free);
   end MarkEntry;

   procedure MarkAllEntries
     (This                   : Indexes_Type;
      uRange                 : GNATCOM.Types.VARIANT;
      uEntry                 : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      EntryAutoText          : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      CrossReference         : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      CrossReferenceAutoText : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      BookmarkName           : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Bold                   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Italic                 : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free                   : Boolean := True)
   is
   begin
      Invoke
        (This,
         Indexes_MarkAllEntries,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Italic,
          2 => Bold,
          3 => BookmarkName,
          4 => CrossReferenceAutoText,
          5 => CrossReference,
          6 => EntryAutoText,
          7 => uEntry,
          8 => uRange),
         Free);
   end MarkAllEntries;

   procedure AutoMarkEntries
     (This                : Indexes_Type;
      ConcordanceFileName : GNATCOM.Types.VARIANT;
      Free                : Boolean := True)
   is
   begin
      Invoke
        (This,
         Indexes_AutoMarkEntries,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => ConcordanceFileName),
         Free);
   end AutoMarkEntries;

   function Add
     (This                  : Indexes_Type;
      uRange                : GNATCOM.Types.VARIANT;
      HeadingSeparator      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      RightAlignPageNumbers : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      uType                 : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      NumberOfColumns       : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      AccentedLetters       : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      SortBy                : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      IndexLanguage         : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free                  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Indexes_Add,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => IndexLanguage,
          2 => SortBy,
          3 => AccentedLetters,
          4 => NumberOfColumns,
          5 => uType,
          6 => RightAlignPageNumbers,
          7 => HeadingSeparator,
          8 => uRange),
         Free);
   end Add;

end winword.Indexes_Object;

