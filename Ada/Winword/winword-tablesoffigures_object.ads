with GNATCOM.Dispinterface;

package winword.TablesOfFigures_Object is

   type TablesOfFigures_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : TablesOfFigures_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : TablesOfFigures_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : TablesOfFigures_Type)
     return GNATCOM.Types.VARIANT;

   function Getu_NewEnum
     (This : TablesOfFigures_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : TablesOfFigures_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Format
     (This : TablesOfFigures_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Format
     (This : TablesOfFigures_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Item
     (This  : TablesOfFigures_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

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
     return GNATCOM.Types.VARIANT;

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
     return GNATCOM.Types.VARIANT;

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
     return GNATCOM.Types.VARIANT;

end winword.TablesOfFigures_Object;

