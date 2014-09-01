with GNATCOM.Dispinterface;

package winword.TablesOfAuthorities_Object is

   type TablesOfAuthorities_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : TablesOfAuthorities_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : TablesOfAuthorities_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : TablesOfAuthorities_Type)
     return GNATCOM.Types.VARIANT;

   function Getu_NewEnum
     (This : TablesOfAuthorities_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : TablesOfAuthorities_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Format
     (This : TablesOfAuthorities_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Format
     (This : TablesOfAuthorities_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Item
     (This  : TablesOfAuthorities_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

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
     return GNATCOM.Types.VARIANT;

   procedure NextCitation
     (This          : TablesOfAuthorities_Type;
      ShortCitation : GNATCOM.Types.VARIANT;
      Free          : Boolean := True);

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
     return GNATCOM.Types.VARIANT;

   procedure MarkAllCitations
     (This                 : TablesOfAuthorities_Type;
      ShortCitation        : GNATCOM.Types.VARIANT;
      LongCitation         : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      LongCitationAutoText : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Category             : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free                 : Boolean := True);

end winword.TablesOfAuthorities_Object;

