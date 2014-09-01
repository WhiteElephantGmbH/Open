with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.PageNumbers_Interface is

   procedure Initialize (This : in out PageNumbers_Type) is
   begin
      Set_IID (This, IID_PageNumbers);
   end Initialize;

   function Pointer (This : PageNumbers_Type)
     return Pointer_To_PageNumbers
   is
   begin
      return To_Pointer_To_PageNumbers (Address (This));
   end Pointer;

   procedure Attach (This    : in out PageNumbers_Type;
                     Pointer : in     Pointer_To_PageNumbers)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : PageNumbers_Type)
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
     (This : PageNumbers_Type)
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
     (This : PageNumbers_Type)
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
     (This : PageNumbers_Type)
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
     (This : PageNumbers_Type)
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

   function Get_NumberStyle
     (This : PageNumbers_Type)
     return WdPageNumberStyle
   is
       RetVal : aliased WdPageNumberStyle;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_NumberStyle
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_NumberStyle;

   procedure Put_NumberStyle
     (This : PageNumbers_Type;
      prop : WdPageNumberStyle)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_NumberStyle
         (Pointer (This),
          prop));

   end Put_NumberStyle;

   function Get_IncludeChapterNumber
     (This : PageNumbers_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_IncludeChapterNumber
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_IncludeChapterNumber;

   procedure Put_IncludeChapterNumber
     (This : PageNumbers_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_IncludeChapterNumber
         (Pointer (This),
          prop));

   end Put_IncludeChapterNumber;

   function Get_HeadingLevelForChapter
     (This : PageNumbers_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_HeadingLevelForChapter
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_HeadingLevelForChapter;

   procedure Put_HeadingLevelForChapter
     (This : PageNumbers_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_HeadingLevelForChapter
         (Pointer (This),
          prop));

   end Put_HeadingLevelForChapter;

   function Get_ChapterPageSeparator
     (This : PageNumbers_Type)
     return WdSeparatorType
   is
       RetVal : aliased WdSeparatorType;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ChapterPageSeparator
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ChapterPageSeparator;

   procedure Put_ChapterPageSeparator
     (This : PageNumbers_Type;
      prop : WdSeparatorType)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ChapterPageSeparator
         (Pointer (This),
          prop));

   end Put_ChapterPageSeparator;

   function Get_RestartNumberingAtSection
     (This : PageNumbers_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_RestartNumberingAtSection
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_RestartNumberingAtSection;

   procedure Put_RestartNumberingAtSection
     (This : PageNumbers_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_RestartNumberingAtSection
         (Pointer (This),
          prop));

   end Put_RestartNumberingAtSection;

   function Get_StartingNumber
     (This : PageNumbers_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_StartingNumber
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_StartingNumber;

   procedure Put_StartingNumber
     (This : PageNumbers_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_StartingNumber
         (Pointer (This),
          prop));

   end Put_StartingNumber;

   function Get_ShowFirstPageNumber
     (This : PageNumbers_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ShowFirstPageNumber
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ShowFirstPageNumber;

   procedure Put_ShowFirstPageNumber
     (This : PageNumbers_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ShowFirstPageNumber
         (Pointer (This),
          prop));

   end Put_ShowFirstPageNumber;

   function Item
     (This  : PageNumbers_Type;
      Index : Interfaces.C.long)
     return Pointer_To_PageNumber
   is
       RetVal : aliased Pointer_To_PageNumber;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Item
         (Pointer (This),
          Index,
          RetVal'Unchecked_Access));

      return RetVal;
   end Item;

   function Add
     (This                : PageNumbers_Type;
      PageNumberAlignment : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      FirstPage           : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_PageNumber
   is
       RetVal : aliased Pointer_To_PageNumber;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Add
         (Pointer (This),
          PageNumberAlignment,
          FirstPage,
          RetVal'Unchecked_Access));

      return RetVal;
   end Add;

   function Get_DoubleQuote
     (This : PageNumbers_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DoubleQuote
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DoubleQuote;

   procedure Put_DoubleQuote
     (This : PageNumbers_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DoubleQuote
         (Pointer (This),
          prop));

   end Put_DoubleQuote;

end winword.PageNumbers_Interface;

