package body winword.PageSetup_Object is

   function Get_Application
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, PageSetup_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, PageSetup_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, PageSetup_Get_Parent);
   end Get_Parent;

   function Get_TopMargin
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, PageSetup_Get_TopMargin);
   end Get_TopMargin;

   procedure Put_TopMargin
     (This : PageSetup_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         PageSetup_Put_TopMargin,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_TopMargin;

   function Get_BottomMargin
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, PageSetup_Get_BottomMargin);
   end Get_BottomMargin;

   procedure Put_BottomMargin
     (This : PageSetup_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         PageSetup_Put_BottomMargin,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_BottomMargin;

   function Get_LeftMargin
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, PageSetup_Get_LeftMargin);
   end Get_LeftMargin;

   procedure Put_LeftMargin
     (This : PageSetup_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         PageSetup_Put_LeftMargin,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_LeftMargin;

   function Get_RightMargin
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, PageSetup_Get_RightMargin);
   end Get_RightMargin;

   procedure Put_RightMargin
     (This : PageSetup_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         PageSetup_Put_RightMargin,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_RightMargin;

   function Get_Gutter
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, PageSetup_Get_Gutter);
   end Get_Gutter;

   procedure Put_Gutter
     (This : PageSetup_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         PageSetup_Put_Gutter,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Gutter;

   function Get_PageWidth
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, PageSetup_Get_PageWidth);
   end Get_PageWidth;

   procedure Put_PageWidth
     (This : PageSetup_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         PageSetup_Put_PageWidth,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_PageWidth;

   function Get_PageHeight
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, PageSetup_Get_PageHeight);
   end Get_PageHeight;

   procedure Put_PageHeight
     (This : PageSetup_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         PageSetup_Put_PageHeight,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_PageHeight;

   function Get_Orientation
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, PageSetup_Get_Orientation);
   end Get_Orientation;

   procedure Put_Orientation
     (This : PageSetup_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         PageSetup_Put_Orientation,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Orientation;

   function Get_FirstPageTray
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, PageSetup_Get_FirstPageTray);
   end Get_FirstPageTray;

   procedure Put_FirstPageTray
     (This : PageSetup_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         PageSetup_Put_FirstPageTray,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_FirstPageTray;

   function Get_OtherPagesTray
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, PageSetup_Get_OtherPagesTray);
   end Get_OtherPagesTray;

   procedure Put_OtherPagesTray
     (This : PageSetup_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         PageSetup_Put_OtherPagesTray,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_OtherPagesTray;

   function Get_VerticalAlignment
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, PageSetup_Get_VerticalAlignment);
   end Get_VerticalAlignment;

   procedure Put_VerticalAlignment
     (This : PageSetup_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         PageSetup_Put_VerticalAlignment,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_VerticalAlignment;

   function Get_MirrorMargins
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, PageSetup_Get_MirrorMargins);
   end Get_MirrorMargins;

   procedure Put_MirrorMargins
     (This : PageSetup_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         PageSetup_Put_MirrorMargins,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_MirrorMargins;

   function Get_HeaderDistance
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, PageSetup_Get_HeaderDistance);
   end Get_HeaderDistance;

   procedure Put_HeaderDistance
     (This : PageSetup_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         PageSetup_Put_HeaderDistance,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_HeaderDistance;

   function Get_FooterDistance
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, PageSetup_Get_FooterDistance);
   end Get_FooterDistance;

   procedure Put_FooterDistance
     (This : PageSetup_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         PageSetup_Put_FooterDistance,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_FooterDistance;

   function Get_SectionStart
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, PageSetup_Get_SectionStart);
   end Get_SectionStart;

   procedure Put_SectionStart
     (This : PageSetup_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         PageSetup_Put_SectionStart,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_SectionStart;

   function Get_OddAndEvenPagesHeaderFooter
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, PageSetup_Get_OddAndEvenPagesHeaderFooter);
   end Get_OddAndEvenPagesHeaderFooter;

   procedure Put_OddAndEvenPagesHeaderFooter
     (This : PageSetup_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         PageSetup_Put_OddAndEvenPagesHeaderFooter,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_OddAndEvenPagesHeaderFooter;

   function Get_DifferentFirstPageHeaderFooter
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, PageSetup_Get_DifferentFirstPageHeaderFooter);
   end Get_DifferentFirstPageHeaderFooter;

   procedure Put_DifferentFirstPageHeaderFooter
     (This : PageSetup_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         PageSetup_Put_DifferentFirstPageHeaderFooter,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DifferentFirstPageHeaderFooter;

   function Get_SuppressEndnotes
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, PageSetup_Get_SuppressEndnotes);
   end Get_SuppressEndnotes;

   procedure Put_SuppressEndnotes
     (This : PageSetup_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         PageSetup_Put_SuppressEndnotes,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_SuppressEndnotes;

   function Get_LineNumbering
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, PageSetup_Get_LineNumbering);
   end Get_LineNumbering;

   procedure Put_LineNumbering
     (This : PageSetup_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         PageSetup_Put_LineNumbering,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_LineNumbering;

   function Get_TextColumns
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, PageSetup_Get_TextColumns);
   end Get_TextColumns;

   procedure Put_TextColumns
     (This : PageSetup_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         PageSetup_Put_TextColumns,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_TextColumns;

   function Get_PaperSize
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, PageSetup_Get_PaperSize);
   end Get_PaperSize;

   procedure Put_PaperSize
     (This : PageSetup_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         PageSetup_Put_PaperSize,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_PaperSize;

   function Get_TwoPagesOnOne
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, PageSetup_Get_TwoPagesOnOne);
   end Get_TwoPagesOnOne;

   procedure Put_TwoPagesOnOne
     (This : PageSetup_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         PageSetup_Put_TwoPagesOnOne,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_TwoPagesOnOne;

   function Get_GutterOnTop
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, PageSetup_Get_GutterOnTop);
   end Get_GutterOnTop;

   procedure Put_GutterOnTop
     (This : PageSetup_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         PageSetup_Put_GutterOnTop,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_GutterOnTop;

   function Get_CharsLine
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, PageSetup_Get_CharsLine);
   end Get_CharsLine;

   procedure Put_CharsLine
     (This : PageSetup_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         PageSetup_Put_CharsLine,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_CharsLine;

   function Get_LinesPage
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, PageSetup_Get_LinesPage);
   end Get_LinesPage;

   procedure Put_LinesPage
     (This : PageSetup_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         PageSetup_Put_LinesPage,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_LinesPage;

   function Get_ShowGrid
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, PageSetup_Get_ShowGrid);
   end Get_ShowGrid;

   procedure Put_ShowGrid
     (This : PageSetup_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         PageSetup_Put_ShowGrid,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ShowGrid;

   procedure TogglePortrait
     (This : PageSetup_Type)
   is
   begin
      Invoke (This, PageSetup_TogglePortrait);
   end TogglePortrait;

   procedure SetAsTemplateDefault
     (This : PageSetup_Type)
   is
   begin
      Invoke (This, PageSetup_SetAsTemplateDefault);
   end SetAsTemplateDefault;

   function Get_GutterStyle
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, PageSetup_Get_GutterStyle);
   end Get_GutterStyle;

   procedure Put_GutterStyle
     (This : PageSetup_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         PageSetup_Put_GutterStyle,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_GutterStyle;

   function Get_SectionDirection
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, PageSetup_Get_SectionDirection);
   end Get_SectionDirection;

   procedure Put_SectionDirection
     (This : PageSetup_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         PageSetup_Put_SectionDirection,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_SectionDirection;

   function Get_LayoutMode
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, PageSetup_Get_LayoutMode);
   end Get_LayoutMode;

   procedure Put_LayoutMode
     (This : PageSetup_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         PageSetup_Put_LayoutMode,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_LayoutMode;

   function Get_GutterPos
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, PageSetup_Get_GutterPos);
   end Get_GutterPos;

   procedure Put_GutterPos
     (This : PageSetup_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         PageSetup_Put_GutterPos,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_GutterPos;

   function Get_BookFoldPrinting
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, PageSetup_Get_BookFoldPrinting);
   end Get_BookFoldPrinting;

   procedure Put_BookFoldPrinting
     (This : PageSetup_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         PageSetup_Put_BookFoldPrinting,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_BookFoldPrinting;

   function Get_BookFoldRevPrinting
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, PageSetup_Get_BookFoldRevPrinting);
   end Get_BookFoldRevPrinting;

   procedure Put_BookFoldRevPrinting
     (This : PageSetup_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         PageSetup_Put_BookFoldRevPrinting,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_BookFoldRevPrinting;

   function Get_BookFoldPrintingSheets
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, PageSetup_Get_BookFoldPrintingSheets);
   end Get_BookFoldPrintingSheets;

   procedure Put_BookFoldPrintingSheets
     (This : PageSetup_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         PageSetup_Put_BookFoldPrintingSheets,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_BookFoldPrintingSheets;

end winword.PageSetup_Object;

