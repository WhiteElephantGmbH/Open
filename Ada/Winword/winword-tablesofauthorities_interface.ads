with GNATCOM.Dispinterface;

package winword.TablesOfAuthorities_Interface is

   type TablesOfAuthorities_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out TablesOfAuthorities_Type);

   function Pointer (This : TablesOfAuthorities_Type)
     return Pointer_To_TablesOfAuthorities;

   procedure Attach (This    : in out TablesOfAuthorities_Type;
                     Pointer : in     Pointer_To_TablesOfAuthorities);

   function Get_Application
     (This : TablesOfAuthorities_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : TablesOfAuthorities_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : TablesOfAuthorities_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Getu_NewEnum
     (This : TablesOfAuthorities_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_Count
     (This : TablesOfAuthorities_Type)
     return Interfaces.C.long;

   function Get_Format
     (This : TablesOfAuthorities_Type)
     return WdToaFormat;

   procedure Put_Format
     (This : TablesOfAuthorities_Type;
      prop : WdToaFormat);

   function Item
     (This  : TablesOfAuthorities_Type;
      Index : Interfaces.C.long)
     return Pointer_To_TableOfAuthorities;

   function Add
     (This                  : TablesOfAuthorities_Type;
      uRange                : Pointer_To_uRange;
      Category              : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Bookmark              : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Passim                : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      KeepEntryFormatting   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Separator             : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      IncludeSequenceName   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      EntrySeparator        : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PageRangeSeparator    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      IncludeCategoryHeader : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PageNumberSeparator   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_TableOfAuthorities;

   procedure NextCitation
     (This          : TablesOfAuthorities_Type;
      ShortCitation : GNATCOM.Types.BSTR;
      Free          : Boolean := True);

   function MarkCitation
     (This                 : TablesOfAuthorities_Type;
      uRange               : Pointer_To_uRange;
      ShortCitation        : GNATCOM.Types.BSTR;
      LongCitation         : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      LongCitationAutoText : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Category             : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Free                 : Boolean := True)
     return Pointer_To_Field;

   procedure MarkAllCitations
     (This                 : TablesOfAuthorities_Type;
      ShortCitation        : GNATCOM.Types.BSTR;
      LongCitation         : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      LongCitationAutoText : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Category             : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Free                 : Boolean := True);

end winword.TablesOfAuthorities_Interface;

