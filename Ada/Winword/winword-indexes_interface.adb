with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.Indexes_Interface is

   procedure Initialize (This : in out Indexes_Type) is
   begin
      Set_IID (This, IID_Indexes);
   end Initialize;

   function Pointer (This : Indexes_Type)
     return Pointer_To_Indexes
   is
   begin
      return To_Pointer_To_Indexes (Address (This));
   end Pointer;

   procedure Attach (This    : in out Indexes_Type;
                     Pointer : in     Pointer_To_Indexes)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : Indexes_Type)
     return Pointer_To_uApplication
   is
       RetVal : aliased Pointer_To_uApplication;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Application
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Application;

   function Get_Creator
     (This : Indexes_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Creator
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Creator;

   function Get_Parent
     (This : Indexes_Type)
     return GNATCOM.Types.Pointer_To_IDispatch
   is
       RetVal : aliased GNATCOM.Types.Pointer_To_IDispatch;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Parent
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Parent;

   function Getu_NewEnum
     (This : Indexes_Type)
     return GNATCOM.Types.Pointer_To_IUnknown
   is
       RetVal : aliased GNATCOM.Types.Pointer_To_IUnknown;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Getu_NewEnum
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Getu_NewEnum;

   function Get_Count
     (This : Indexes_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Count
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Count;

   function Get_Format
     (This : Indexes_Type)
     return WdIndexFormat
   is
       RetVal : aliased WdIndexFormat;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Format
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Format;

   procedure Put_Format
     (This : Indexes_Type;
      prop : WdIndexFormat)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Format
         (Pointer (This),
          prop));

   end Put_Format;

   function Item
     (This  : Indexes_Type;
      Index : Interfaces.C.long)
     return Pointer_To_Index
   is
       RetVal : aliased Pointer_To_Index;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Item
         (Pointer (This),
          Index,
          RetVal'Unchecked_Access));

      return RetVal;
   end Item;

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
     return Pointer_To_Index
   is
       RetVal : aliased Pointer_To_Index;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.AddOld
         (Pointer (This),
          uRange,
          HeadingSeparator,
          RightAlignPageNumbers,
          uType,
          NumberOfColumns,
          AccentedLetters,
          RetVal'Unchecked_Access));

      return RetVal;
   end AddOld;

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
     return Pointer_To_Field
   is
       RetVal : aliased Pointer_To_Field;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.MarkEntry
         (Pointer (This),
          uRange,
          uEntry,
          EntryAutoText,
          CrossReference,
          CrossReferenceAutoText,
          BookmarkName,
          Bold,
          Italic,
          Reading,
          RetVal'Unchecked_Access));

      return RetVal;
   end MarkEntry;

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
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.MarkAllEntries
         (Pointer (This),
          uRange,
          uEntry,
          EntryAutoText,
          CrossReference,
          CrossReferenceAutoText,
          BookmarkName,
          Bold,
          Italic));

   end MarkAllEntries;

   procedure AutoMarkEntries
     (This                : Indexes_Type;
      ConcordanceFileName : GNATCOM.Types.BSTR;
      Free                : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.AutoMarkEntries
         (Pointer (This),
          ConcordanceFileName));

      if Free then
               GNATCOM.Interface.Free (ConcordanceFileName);
      
      end if;

   end AutoMarkEntries;

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
     return Pointer_To_Index
   is
       RetVal : aliased Pointer_To_Index;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Add
         (Pointer (This),
          uRange,
          HeadingSeparator,
          RightAlignPageNumbers,
          uType,
          NumberOfColumns,
          AccentedLetters,
          SortBy,
          IndexLanguage,
          RetVal'Unchecked_Access));

      return RetVal;
   end Add;

end winword.Indexes_Interface;

