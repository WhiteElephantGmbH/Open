with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.TablesOfFigures_Interface is

   procedure Initialize (This : in out TablesOfFigures_Type) is
   begin
      Set_IID (This, IID_TablesOfFigures);
   end Initialize;

   function Pointer (This : TablesOfFigures_Type)
     return Pointer_To_TablesOfFigures
   is
   begin
      return To_Pointer_To_TablesOfFigures (Address (This));
   end Pointer;

   procedure Attach (This    : in out TablesOfFigures_Type;
                     Pointer : in     Pointer_To_TablesOfFigures)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : TablesOfFigures_Type)
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
     (This : TablesOfFigures_Type)
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
     (This : TablesOfFigures_Type)
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
     (This : TablesOfFigures_Type)
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
     (This : TablesOfFigures_Type)
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
     (This : TablesOfFigures_Type)
     return WdTofFormat
   is
       RetVal : aliased WdTofFormat;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Format
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Format;

   procedure Put_Format
     (This : TablesOfFigures_Type;
      prop : WdTofFormat)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Format
         (Pointer (This),
          prop));

   end Put_Format;

   function Item
     (This  : TablesOfFigures_Type;
      Index : Interfaces.C.long)
     return Pointer_To_TableOfFigures
   is
       RetVal : aliased Pointer_To_TableOfFigures;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Item
         (Pointer (This),
          Index,
          RetVal'Unchecked_Access));

      return RetVal;
   end Item;

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
     return Pointer_To_TableOfFigures
   is
       RetVal : aliased Pointer_To_TableOfFigures;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.AddOld
         (Pointer (This),
          uRange,
          Caption,
          IncludeLabel,
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
     return Pointer_To_TableOfFigures
   is
       RetVal : aliased Pointer_To_TableOfFigures;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Add
         (Pointer (This),
          uRange,
          Caption,
          IncludeLabel,
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
   end Add;

end winword.TablesOfFigures_Interface;

