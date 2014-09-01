package body winword.PageNumbers_Object is

   function Get_Application
     (This : PageNumbers_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, PageNumbers_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : PageNumbers_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, PageNumbers_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : PageNumbers_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, PageNumbers_Get_Parent);
   end Get_Parent;

   function Getu_NewEnum
     (This : PageNumbers_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, PageNumbers_Getu_NewEnum);
   end Getu_NewEnum;

   function Get_Count
     (This : PageNumbers_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, PageNumbers_Get_Count);
   end Get_Count;

   function Get_NumberStyle
     (This : PageNumbers_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, PageNumbers_Get_NumberStyle);
   end Get_NumberStyle;

   procedure Put_NumberStyle
     (This : PageNumbers_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         PageNumbers_Put_NumberStyle,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_NumberStyle;

   function Get_IncludeChapterNumber
     (This : PageNumbers_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, PageNumbers_Get_IncludeChapterNumber);
   end Get_IncludeChapterNumber;

   procedure Put_IncludeChapterNumber
     (This : PageNumbers_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         PageNumbers_Put_IncludeChapterNumber,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_IncludeChapterNumber;

   function Get_HeadingLevelForChapter
     (This : PageNumbers_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, PageNumbers_Get_HeadingLevelForChapter);
   end Get_HeadingLevelForChapter;

   procedure Put_HeadingLevelForChapter
     (This : PageNumbers_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         PageNumbers_Put_HeadingLevelForChapter,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_HeadingLevelForChapter;

   function Get_ChapterPageSeparator
     (This : PageNumbers_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, PageNumbers_Get_ChapterPageSeparator);
   end Get_ChapterPageSeparator;

   procedure Put_ChapterPageSeparator
     (This : PageNumbers_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         PageNumbers_Put_ChapterPageSeparator,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ChapterPageSeparator;

   function Get_RestartNumberingAtSection
     (This : PageNumbers_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, PageNumbers_Get_RestartNumberingAtSection);
   end Get_RestartNumberingAtSection;

   procedure Put_RestartNumberingAtSection
     (This : PageNumbers_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         PageNumbers_Put_RestartNumberingAtSection,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_RestartNumberingAtSection;

   function Get_StartingNumber
     (This : PageNumbers_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, PageNumbers_Get_StartingNumber);
   end Get_StartingNumber;

   procedure Put_StartingNumber
     (This : PageNumbers_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         PageNumbers_Put_StartingNumber,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_StartingNumber;

   function Get_ShowFirstPageNumber
     (This : PageNumbers_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, PageNumbers_Get_ShowFirstPageNumber);
   end Get_ShowFirstPageNumber;

   procedure Put_ShowFirstPageNumber
     (This : PageNumbers_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         PageNumbers_Put_ShowFirstPageNumber,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ShowFirstPageNumber;

   function Item
     (This  : PageNumbers_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         PageNumbers_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

   function Add
     (This                : PageNumbers_Type;
      PageNumberAlignment : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      FirstPage           : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free                : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         PageNumbers_Add,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => FirstPage,
          2 => PageNumberAlignment),
         Free);
   end Add;

   function Get_DoubleQuote
     (This : PageNumbers_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, PageNumbers_Get_DoubleQuote);
   end Get_DoubleQuote;

   procedure Put_DoubleQuote
     (This : PageNumbers_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         PageNumbers_Put_DoubleQuote,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DoubleQuote;

end winword.PageNumbers_Object;

