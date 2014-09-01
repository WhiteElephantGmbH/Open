with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.TablesOfAuthorities_Interface is

   procedure Initialize (This : in out TablesOfAuthorities_Type) is
   begin
      Set_IID (This, IID_TablesOfAuthorities);
   end Initialize;

   function Pointer (This : TablesOfAuthorities_Type)
     return Pointer_To_TablesOfAuthorities
   is
   begin
      return To_Pointer_To_TablesOfAuthorities (Address (This));
   end Pointer;

   procedure Attach (This    : in out TablesOfAuthorities_Type;
                     Pointer : in     Pointer_To_TablesOfAuthorities)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : TablesOfAuthorities_Type)
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
     (This : TablesOfAuthorities_Type)
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
     (This : TablesOfAuthorities_Type)
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
     (This : TablesOfAuthorities_Type)
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
     (This : TablesOfAuthorities_Type)
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
     (This : TablesOfAuthorities_Type)
     return WdToaFormat
   is
       RetVal : aliased WdToaFormat;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Format
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Format;

   procedure Put_Format
     (This : TablesOfAuthorities_Type;
      prop : WdToaFormat)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Format
         (Pointer (This),
          prop));

   end Put_Format;

   function Item
     (This  : TablesOfAuthorities_Type;
      Index : Interfaces.C.long)
     return Pointer_To_TableOfAuthorities
   is
       RetVal : aliased Pointer_To_TableOfAuthorities;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Item
         (Pointer (This),
          Index,
          RetVal'Unchecked_Access));

      return RetVal;
   end Item;

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
     return Pointer_To_TableOfAuthorities
   is
       RetVal : aliased Pointer_To_TableOfAuthorities;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Add
         (Pointer (This),
          uRange,
          Category,
          Bookmark,
          Passim,
          KeepEntryFormatting,
          Separator,
          IncludeSequenceName,
          EntrySeparator,
          PageRangeSeparator,
          IncludeCategoryHeader,
          PageNumberSeparator,
          RetVal'Unchecked_Access));

      return RetVal;
   end Add;

   procedure NextCitation
     (This          : TablesOfAuthorities_Type;
      ShortCitation : GNATCOM.Types.BSTR;
      Free          : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.NextCitation
         (Pointer (This),
          ShortCitation));

      if Free then
               GNATCOM.Interface.Free (ShortCitation);
      
      end if;

   end NextCitation;

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
     return Pointer_To_Field
   is
       RetVal : aliased Pointer_To_Field;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.MarkCitation
         (Pointer (This),
          uRange,
          ShortCitation,
          LongCitation,
          LongCitationAutoText,
          Category,
          RetVal'Unchecked_Access));

      if Free then
               GNATCOM.Interface.Free (ShortCitation);
      
      end if;

      return RetVal;
   end MarkCitation;

   procedure MarkAllCitations
     (This                 : TablesOfAuthorities_Type;
      ShortCitation        : GNATCOM.Types.BSTR;
      LongCitation         : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      LongCitationAutoText : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Category             : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Free                 : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.MarkAllCitations
         (Pointer (This),
          ShortCitation,
          LongCitation,
          LongCitationAutoText,
          Category));

      if Free then
               GNATCOM.Interface.Free (ShortCitation);
      
      end if;

   end MarkAllCitations;

end winword.TablesOfAuthorities_Interface;

