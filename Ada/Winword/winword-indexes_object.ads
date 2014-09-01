with GNATCOM.Dispinterface;

package winword.Indexes_Object is

   type Indexes_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : Indexes_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : Indexes_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : Indexes_Type)
     return GNATCOM.Types.VARIANT;

   function Getu_NewEnum
     (This : Indexes_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : Indexes_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Format
     (This : Indexes_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Format
     (This : Indexes_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Item
     (This  : Indexes_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

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
     return GNATCOM.Types.VARIANT;

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
     return GNATCOM.Types.VARIANT;

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
      Free                   : Boolean := True);

   procedure AutoMarkEntries
     (This                : Indexes_Type;
      ConcordanceFileName : GNATCOM.Types.VARIANT;
      Free                : Boolean := True);

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
     return GNATCOM.Types.VARIANT;

end winword.Indexes_Object;

