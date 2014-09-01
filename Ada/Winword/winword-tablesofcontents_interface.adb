with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.TablesOfContents_Interface is

   procedure Initialize (This : in out TablesOfContents_Type) is
   begin
      Set_IID (This, IID_TablesOfContents);
   end Initialize;

   function Pointer (This : TablesOfContents_Type)
     return Pointer_To_TablesOfContents
   is
   begin
      return To_Pointer_To_TablesOfContents (Address (This));
   end Pointer;

   procedure Attach (This    : in out TablesOfContents_Type;
                     Pointer : in     Pointer_To_TablesOfContents)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : TablesOfContents_Type)
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
     (This : TablesOfContents_Type)
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
     (This : TablesOfContents_Type)
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
     (This : TablesOfContents_Type)
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
     (This : TablesOfContents_Type)
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
     (This : TablesOfContents_Type)
     return WdTocFormat
   is
       RetVal : aliased WdTocFormat;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Format
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Format;

   procedure Put_Format
     (This : TablesOfContents_Type;
      prop : WdTocFormat)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Format
         (Pointer (This),
          prop));

   end Put_Format;

   function Item
     (This  : TablesOfContents_Type;
      Index : Interfaces.C.long)
     return Pointer_To_TableOfContents
   is
       RetVal : aliased Pointer_To_TableOfContents;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Item
         (Pointer (This),
          Index,
          RetVal'Unchecked_Access));

      return RetVal;
   end Item;

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
     return Pointer_To_TableOfContents
   is
       RetVal : aliased Pointer_To_TableOfContents;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.AddOld
         (Pointer (This),
          uRange,
          UseHeadingStyles,
          UpperHeadingLevel,
          LowerHeadingLevel,
          UseFields,
          TableID,
          RightAlignPageNumbers,
          IncludePageNumbers,
          AddedStyles,
          RetVal'Unchecked_Access));

      return RetVal;
   end AddOld;

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
          TableID,
          Level,
          RetVal'Unchecked_Access));

      return RetVal;
   end MarkEntry;

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
     return Pointer_To_TableOfContents
   is
       RetVal : aliased Pointer_To_TableOfContents;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Add2000
         (Pointer (This),
          uRange,
          UseHeadingStyles,
          UpperHeadingLevel,
          LowerHeadingLevel,
          UseFields,
          TableID,
          RightAlignPageNumbers,
          IncludePageNumbers,
          AddedStyles,
          UseHyperlinks,
          HidePageNumbersInWeb,
          RetVal'Unchecked_Access));

      return RetVal;
   end Add2000;

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
     return Pointer_To_TableOfContents
   is
       RetVal : aliased Pointer_To_TableOfContents;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Add
         (Pointer (This),
          uRange,
          UseHeadingStyles,
          UpperHeadingLevel,
          LowerHeadingLevel,
          UseFields,
          TableID,
          RightAlignPageNumbers,
          IncludePageNumbers,
          AddedStyles,
          UseHyperlinks,
          HidePageNumbersInWeb,
          UseOutlineLevels,
          RetVal'Unchecked_Access));

      return RetVal;
   end Add;

end winword.TablesOfContents_Interface;

