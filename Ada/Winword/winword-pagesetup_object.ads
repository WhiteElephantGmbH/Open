with GNATCOM.Dispinterface;

package winword.PageSetup_Object is

   type PageSetup_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT;

   function Get_TopMargin
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_TopMargin
     (This : PageSetup_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_BottomMargin
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_BottomMargin
     (This : PageSetup_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_LeftMargin
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_LeftMargin
     (This : PageSetup_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_RightMargin
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_RightMargin
     (This : PageSetup_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Gutter
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Gutter
     (This : PageSetup_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_PageWidth
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_PageWidth
     (This : PageSetup_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_PageHeight
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_PageHeight
     (This : PageSetup_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Orientation
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Orientation
     (This : PageSetup_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_FirstPageTray
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_FirstPageTray
     (This : PageSetup_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_OtherPagesTray
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_OtherPagesTray
     (This : PageSetup_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_VerticalAlignment
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_VerticalAlignment
     (This : PageSetup_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_MirrorMargins
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_MirrorMargins
     (This : PageSetup_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_HeaderDistance
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_HeaderDistance
     (This : PageSetup_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_FooterDistance
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_FooterDistance
     (This : PageSetup_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_SectionStart
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_SectionStart
     (This : PageSetup_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_OddAndEvenPagesHeaderFooter
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_OddAndEvenPagesHeaderFooter
     (This : PageSetup_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_DifferentFirstPageHeaderFooter
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DifferentFirstPageHeaderFooter
     (This : PageSetup_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_SuppressEndnotes
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_SuppressEndnotes
     (This : PageSetup_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_LineNumbering
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_LineNumbering
     (This : PageSetup_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_TextColumns
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_TextColumns
     (This : PageSetup_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_PaperSize
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_PaperSize
     (This : PageSetup_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_TwoPagesOnOne
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_TwoPagesOnOne
     (This : PageSetup_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_GutterOnTop
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_GutterOnTop
     (This : PageSetup_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_CharsLine
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_CharsLine
     (This : PageSetup_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_LinesPage
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_LinesPage
     (This : PageSetup_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ShowGrid
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ShowGrid
     (This : PageSetup_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure TogglePortrait
     (This : PageSetup_Type);

   procedure SetAsTemplateDefault
     (This : PageSetup_Type);

   function Get_GutterStyle
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_GutterStyle
     (This : PageSetup_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_SectionDirection
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_SectionDirection
     (This : PageSetup_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_LayoutMode
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_LayoutMode
     (This : PageSetup_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_GutterPos
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_GutterPos
     (This : PageSetup_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_BookFoldPrinting
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_BookFoldPrinting
     (This : PageSetup_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_BookFoldRevPrinting
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_BookFoldRevPrinting
     (This : PageSetup_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_BookFoldPrintingSheets
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_BookFoldPrintingSheets
     (This : PageSetup_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

end winword.PageSetup_Object;

