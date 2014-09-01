with GNATCOM.Dispinterface;

package winword.PageNumbers_Object is

   type PageNumbers_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : PageNumbers_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : PageNumbers_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : PageNumbers_Type)
     return GNATCOM.Types.VARIANT;

   function Getu_NewEnum
     (This : PageNumbers_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : PageNumbers_Type)
     return GNATCOM.Types.VARIANT;

   function Get_NumberStyle
     (This : PageNumbers_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_NumberStyle
     (This : PageNumbers_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_IncludeChapterNumber
     (This : PageNumbers_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_IncludeChapterNumber
     (This : PageNumbers_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_HeadingLevelForChapter
     (This : PageNumbers_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_HeadingLevelForChapter
     (This : PageNumbers_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ChapterPageSeparator
     (This : PageNumbers_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ChapterPageSeparator
     (This : PageNumbers_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_RestartNumberingAtSection
     (This : PageNumbers_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_RestartNumberingAtSection
     (This : PageNumbers_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_StartingNumber
     (This : PageNumbers_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_StartingNumber
     (This : PageNumbers_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ShowFirstPageNumber
     (This : PageNumbers_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ShowFirstPageNumber
     (This : PageNumbers_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Item
     (This  : PageNumbers_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Add
     (This                : PageNumbers_Type;
      PageNumberAlignment : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      FirstPage           : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free                : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Get_DoubleQuote
     (This : PageNumbers_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DoubleQuote
     (This : PageNumbers_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

end winword.PageNumbers_Object;

