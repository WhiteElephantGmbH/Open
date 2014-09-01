with GNATCOM.Dispinterface;

package winword.Indexes_Interface is

   type Indexes_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Indexes_Type);

   function Pointer (This : Indexes_Type)
     return Pointer_To_Indexes;

   procedure Attach (This    : in out Indexes_Type;
                     Pointer : in     Pointer_To_Indexes);

   function Get_Application
     (This : Indexes_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : Indexes_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : Indexes_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Getu_NewEnum
     (This : Indexes_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_Count
     (This : Indexes_Type)
     return Interfaces.C.long;

   function Get_Format
     (This : Indexes_Type)
     return WdIndexFormat;

   procedure Put_Format
     (This : Indexes_Type;
      prop : WdIndexFormat);

   function Item
     (This  : Indexes_Type;
      Index : Interfaces.C.long)
     return Pointer_To_Index;

   function AddOld
     (This                  : Indexes_Type;
      uRange                : Pointer_To_uRange;
      HeadingSeparator      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      RightAlignPageNumbers : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      uType                 : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      NumberOfColumns       : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      AccentedLetters       : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Index;

   function MarkEntry
     (This                   : Indexes_Type;
      uRange                 : Pointer_To_uRange;
      uEntry                 : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      EntryAutoText          : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      CrossReference         : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      CrossReferenceAutoText : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      BookmarkName           : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Bold                   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Italic                 : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Reading                : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Field;

   procedure MarkAllEntries
     (This                   : Indexes_Type;
      uRange                 : Pointer_To_uRange;
      uEntry                 : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      EntryAutoText          : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      CrossReference         : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      CrossReferenceAutoText : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      BookmarkName           : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Bold                   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Italic                 : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   procedure AutoMarkEntries
     (This                : Indexes_Type;
      ConcordanceFileName : GNATCOM.Types.BSTR;
      Free                : Boolean := True);

   function Add
     (This                  : Indexes_Type;
      uRange                : Pointer_To_uRange;
      HeadingSeparator      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      RightAlignPageNumbers : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      uType                 : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      NumberOfColumns       : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      AccentedLetters       : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SortBy                : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      IndexLanguage         : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Index;

end winword.Indexes_Interface;

