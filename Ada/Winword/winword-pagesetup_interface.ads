with GNATCOM.Dispinterface;

package winword.PageSetup_Interface is

   type PageSetup_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out PageSetup_Type);

   function Pointer (This : PageSetup_Type)
     return Pointer_To_PageSetup;

   procedure Attach (This    : in out PageSetup_Type;
                     Pointer : in     Pointer_To_PageSetup);

   function Get_Application
     (This : PageSetup_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : PageSetup_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : PageSetup_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_TopMargin
     (This : PageSetup_Type)
     return Interfaces.C.C_float;

   procedure Put_TopMargin
     (This : PageSetup_Type;
      prop : Interfaces.C.C_float);

   function Get_BottomMargin
     (This : PageSetup_Type)
     return Interfaces.C.C_float;

   procedure Put_BottomMargin
     (This : PageSetup_Type;
      prop : Interfaces.C.C_float);

   function Get_LeftMargin
     (This : PageSetup_Type)
     return Interfaces.C.C_float;

   procedure Put_LeftMargin
     (This : PageSetup_Type;
      prop : Interfaces.C.C_float);

   function Get_RightMargin
     (This : PageSetup_Type)
     return Interfaces.C.C_float;

   procedure Put_RightMargin
     (This : PageSetup_Type;
      prop : Interfaces.C.C_float);

   function Get_Gutter
     (This : PageSetup_Type)
     return Interfaces.C.C_float;

   procedure Put_Gutter
     (This : PageSetup_Type;
      prop : Interfaces.C.C_float);

   function Get_PageWidth
     (This : PageSetup_Type)
     return Interfaces.C.C_float;

   procedure Put_PageWidth
     (This : PageSetup_Type;
      prop : Interfaces.C.C_float);

   function Get_PageHeight
     (This : PageSetup_Type)
     return Interfaces.C.C_float;

   procedure Put_PageHeight
     (This : PageSetup_Type;
      prop : Interfaces.C.C_float);

   function Get_Orientation
     (This : PageSetup_Type)
     return WdOrientation;

   procedure Put_Orientation
     (This : PageSetup_Type;
      prop : WdOrientation);

   function Get_FirstPageTray
     (This : PageSetup_Type)
     return WdPaperTray;

   procedure Put_FirstPageTray
     (This : PageSetup_Type;
      prop : WdPaperTray);

   function Get_OtherPagesTray
     (This : PageSetup_Type)
     return WdPaperTray;

   procedure Put_OtherPagesTray
     (This : PageSetup_Type;
      prop : WdPaperTray);

   function Get_VerticalAlignment
     (This : PageSetup_Type)
     return WdVerticalAlignment;

   procedure Put_VerticalAlignment
     (This : PageSetup_Type;
      prop : WdVerticalAlignment);

   function Get_MirrorMargins
     (This : PageSetup_Type)
     return Interfaces.C.long;

   procedure Put_MirrorMargins
     (This : PageSetup_Type;
      prop : Interfaces.C.long);

   function Get_HeaderDistance
     (This : PageSetup_Type)
     return Interfaces.C.C_float;

   procedure Put_HeaderDistance
     (This : PageSetup_Type;
      prop : Interfaces.C.C_float);

   function Get_FooterDistance
     (This : PageSetup_Type)
     return Interfaces.C.C_float;

   procedure Put_FooterDistance
     (This : PageSetup_Type;
      prop : Interfaces.C.C_float);

   function Get_SectionStart
     (This : PageSetup_Type)
     return WdSectionStart;

   procedure Put_SectionStart
     (This : PageSetup_Type;
      prop : WdSectionStart);

   function Get_OddAndEvenPagesHeaderFooter
     (This : PageSetup_Type)
     return Interfaces.C.long;

   procedure Put_OddAndEvenPagesHeaderFooter
     (This : PageSetup_Type;
      prop : Interfaces.C.long);

   function Get_DifferentFirstPageHeaderFooter
     (This : PageSetup_Type)
     return Interfaces.C.long;

   procedure Put_DifferentFirstPageHeaderFooter
     (This : PageSetup_Type;
      prop : Interfaces.C.long);

   function Get_SuppressEndnotes
     (This : PageSetup_Type)
     return Interfaces.C.long;

   procedure Put_SuppressEndnotes
     (This : PageSetup_Type;
      prop : Interfaces.C.long);

   function Get_LineNumbering
     (This : PageSetup_Type)
     return Pointer_To_LineNumbering;

   procedure Put_LineNumbering
     (This : PageSetup_Type;
      prop : Pointer_To_LineNumbering);

   function Get_TextColumns
     (This : PageSetup_Type)
     return Pointer_To_TextColumns;

   procedure Put_TextColumns
     (This : PageSetup_Type;
      prop : Pointer_To_TextColumns);

   function Get_PaperSize
     (This : PageSetup_Type)
     return WdPaperSize;

   procedure Put_PaperSize
     (This : PageSetup_Type;
      prop : WdPaperSize);

   function Get_TwoPagesOnOne
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_TwoPagesOnOne
     (This : PageSetup_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_GutterOnTop
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_GutterOnTop
     (This : PageSetup_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_CharsLine
     (This : PageSetup_Type)
     return Interfaces.C.C_float;

   procedure Put_CharsLine
     (This : PageSetup_Type;
      prop : Interfaces.C.C_float);

   function Get_LinesPage
     (This : PageSetup_Type)
     return Interfaces.C.C_float;

   procedure Put_LinesPage
     (This : PageSetup_Type;
      prop : Interfaces.C.C_float);

   function Get_ShowGrid
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_ShowGrid
     (This : PageSetup_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   procedure TogglePortrait
     (This : PageSetup_Type);

   procedure SetAsTemplateDefault
     (This : PageSetup_Type);

   function Get_GutterStyle
     (This : PageSetup_Type)
     return WdGutterStyleOld;

   procedure Put_GutterStyle
     (This : PageSetup_Type;
      prop : WdGutterStyleOld);

   function Get_SectionDirection
     (This : PageSetup_Type)
     return WdSectionDirection;

   procedure Put_SectionDirection
     (This : PageSetup_Type;
      prop : WdSectionDirection);

   function Get_LayoutMode
     (This : PageSetup_Type)
     return WdLayoutMode;

   procedure Put_LayoutMode
     (This : PageSetup_Type;
      prop : WdLayoutMode);

   function Get_GutterPos
     (This : PageSetup_Type)
     return WdGutterStyle;

   procedure Put_GutterPos
     (This : PageSetup_Type;
      prop : WdGutterStyle);

   function Get_BookFoldPrinting
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_BookFoldPrinting
     (This : PageSetup_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_BookFoldRevPrinting
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_BookFoldRevPrinting
     (This : PageSetup_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_BookFoldPrintingSheets
     (This : PageSetup_Type)
     return Interfaces.C.long;

   procedure Put_BookFoldPrintingSheets
     (This : PageSetup_Type;
      prop : Interfaces.C.long);

end winword.PageSetup_Interface;

