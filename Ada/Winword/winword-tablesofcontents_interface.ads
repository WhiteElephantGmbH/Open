with GNATCOM.Dispinterface;

package winword.TablesOfContents_Interface is

   type TablesOfContents_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out TablesOfContents_Type);

   function Pointer (This : TablesOfContents_Type)
     return Pointer_To_TablesOfContents;

   procedure Attach (This    : in out TablesOfContents_Type;
                     Pointer : in     Pointer_To_TablesOfContents);

   function Get_Application
     (This : TablesOfContents_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : TablesOfContents_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : TablesOfContents_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Getu_NewEnum
     (This : TablesOfContents_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_Count
     (This : TablesOfContents_Type)
     return Interfaces.C.long;

   function Get_Format
     (This : TablesOfContents_Type)
     return WdTocFormat;

   procedure Put_Format
     (This : TablesOfContents_Type;
      prop : WdTocFormat);

   function Item
     (This  : TablesOfContents_Type;
      Index : Interfaces.C.long)
     return Pointer_To_TableOfContents;

   function AddOld
     (This                  : TablesOfContents_Type;
      uRange                : Pointer_To_uRange;
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
     return Pointer_To_TableOfContents;

   function MarkEntry
     (This          : TablesOfContents_Type;
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

   function Add2000
     (This                  : TablesOfContents_Type;
      uRange                : Pointer_To_uRange;
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
     return Pointer_To_TableOfContents;

   function Add
     (This                  : TablesOfContents_Type;
      uRange                : Pointer_To_uRange;
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
        GNATCOM.Types.PVARIANT_MISSING;
      UseOutlineLevels      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_TableOfContents;

end winword.TablesOfContents_Interface;

