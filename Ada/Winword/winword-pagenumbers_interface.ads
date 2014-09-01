with GNATCOM.Dispinterface;

package winword.PageNumbers_Interface is

   type PageNumbers_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out PageNumbers_Type);

   function Pointer (This : PageNumbers_Type)
     return Pointer_To_PageNumbers;

   procedure Attach (This    : in out PageNumbers_Type;
                     Pointer : in     Pointer_To_PageNumbers);

   function Get_Application
     (This : PageNumbers_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : PageNumbers_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : PageNumbers_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Getu_NewEnum
     (This : PageNumbers_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_Count
     (This : PageNumbers_Type)
     return Interfaces.C.long;

   function Get_NumberStyle
     (This : PageNumbers_Type)
     return WdPageNumberStyle;

   procedure Put_NumberStyle
     (This : PageNumbers_Type;
      prop : WdPageNumberStyle);

   function Get_IncludeChapterNumber
     (This : PageNumbers_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_IncludeChapterNumber
     (This : PageNumbers_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_HeadingLevelForChapter
     (This : PageNumbers_Type)
     return Interfaces.C.long;

   procedure Put_HeadingLevelForChapter
     (This : PageNumbers_Type;
      prop : Interfaces.C.long);

   function Get_ChapterPageSeparator
     (This : PageNumbers_Type)
     return WdSeparatorType;

   procedure Put_ChapterPageSeparator
     (This : PageNumbers_Type;
      prop : WdSeparatorType);

   function Get_RestartNumberingAtSection
     (This : PageNumbers_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_RestartNumberingAtSection
     (This : PageNumbers_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_StartingNumber
     (This : PageNumbers_Type)
     return Interfaces.C.long;

   procedure Put_StartingNumber
     (This : PageNumbers_Type;
      prop : Interfaces.C.long);

   function Get_ShowFirstPageNumber
     (This : PageNumbers_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_ShowFirstPageNumber
     (This : PageNumbers_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Item
     (This  : PageNumbers_Type;
      Index : Interfaces.C.long)
     return Pointer_To_PageNumber;

   function Add
     (This                : PageNumbers_Type;
      PageNumberAlignment : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      FirstPage           : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_PageNumber;

   function Get_DoubleQuote
     (This : PageNumbers_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_DoubleQuote
     (This : PageNumbers_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

end winword.PageNumbers_Interface;

