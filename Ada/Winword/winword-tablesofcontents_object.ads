with GNATCOM.Dispinterface;

package winword.TablesOfContents_Object is

   type TablesOfContents_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : TablesOfContents_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : TablesOfContents_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : TablesOfContents_Type)
     return GNATCOM.Types.VARIANT;

   function Getu_NewEnum
     (This : TablesOfContents_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : TablesOfContents_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Format
     (This : TablesOfContents_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Format
     (This : TablesOfContents_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Item
     (This  : TablesOfContents_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

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
     return GNATCOM.Types.VARIANT;

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
     return GNATCOM.Types.VARIANT;

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
     return GNATCOM.Types.VARIANT;

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
     return GNATCOM.Types.VARIANT;

end winword.TablesOfContents_Object;

