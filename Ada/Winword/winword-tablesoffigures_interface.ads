with GNATCOM.Dispinterface;

package winword.TablesOfFigures_Interface is

   type TablesOfFigures_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out TablesOfFigures_Type);

   function Pointer (This : TablesOfFigures_Type)
     return Pointer_To_TablesOfFigures;

   procedure Attach (This    : in out TablesOfFigures_Type;
                     Pointer : in     Pointer_To_TablesOfFigures);

   function Get_Application
     (This : TablesOfFigures_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : TablesOfFigures_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : TablesOfFigures_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Getu_NewEnum
     (This : TablesOfFigures_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_Count
     (This : TablesOfFigures_Type)
     return Interfaces.C.long;

   function Get_Format
     (This : TablesOfFigures_Type)
     return WdTofFormat;

   procedure Put_Format
     (This : TablesOfFigures_Type;
      prop : WdTofFormat);

   function Item
     (This  : TablesOfFigures_Type;
      Index : Interfaces.C.long)
     return Pointer_To_TableOfFigures;

   function AddOld
     (This                  : TablesOfFigures_Type;
      uRange                : Pointer_To_uRange;
      Caption               : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      IncludeLabel          : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      UseHeadingStyles      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      UpperHeadingLevel     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      LowerHeadingLevel     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      UseFields             : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      TableID               : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      RightAlignPageNumbers : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      IncludePageNumbers    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      AddedStyles           : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_TableOfFigures;

   function MarkEntry
     (This          : TablesOfFigures_Type;
      uRange        : Pointer_To_uRange;
      uEntry        : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      EntryAutoText : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      TableID       : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Level         : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Field;

   function Add
     (This                  : TablesOfFigures_Type;
      uRange                : Pointer_To_uRange;
      Caption               : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      IncludeLabel          : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      UseHeadingStyles      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      UpperHeadingLevel     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      LowerHeadingLevel     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      UseFields             : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      TableID               : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      RightAlignPageNumbers : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      IncludePageNumbers    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      AddedStyles           : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      UseHyperlinks         : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      HidePageNumbersInWeb  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_TableOfFigures;

end winword.TablesOfFigures_Interface;

