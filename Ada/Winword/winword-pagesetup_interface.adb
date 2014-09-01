with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.PageSetup_Interface is

   procedure Initialize (This : in out PageSetup_Type) is
   begin
      Set_IID (This, IID_PageSetup);
   end Initialize;

   function Pointer (This : PageSetup_Type)
     return Pointer_To_PageSetup
   is
   begin
      return To_Pointer_To_PageSetup (Address (This));
   end Pointer;

   procedure Attach (This    : in out PageSetup_Type;
                     Pointer : in     Pointer_To_PageSetup)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : PageSetup_Type)
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
     (This : PageSetup_Type)
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
     (This : PageSetup_Type)
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

   function Get_TopMargin
     (This : PageSetup_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_TopMargin
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_TopMargin;

   procedure Put_TopMargin
     (This : PageSetup_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_TopMargin
         (Pointer (This),
          prop));

   end Put_TopMargin;

   function Get_BottomMargin
     (This : PageSetup_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_BottomMargin
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_BottomMargin;

   procedure Put_BottomMargin
     (This : PageSetup_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_BottomMargin
         (Pointer (This),
          prop));

   end Put_BottomMargin;

   function Get_LeftMargin
     (This : PageSetup_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_LeftMargin
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_LeftMargin;

   procedure Put_LeftMargin
     (This : PageSetup_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_LeftMargin
         (Pointer (This),
          prop));

   end Put_LeftMargin;

   function Get_RightMargin
     (This : PageSetup_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_RightMargin
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_RightMargin;

   procedure Put_RightMargin
     (This : PageSetup_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_RightMargin
         (Pointer (This),
          prop));

   end Put_RightMargin;

   function Get_Gutter
     (This : PageSetup_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Gutter
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Gutter;

   procedure Put_Gutter
     (This : PageSetup_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Gutter
         (Pointer (This),
          prop));

   end Put_Gutter;

   function Get_PageWidth
     (This : PageSetup_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_PageWidth
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_PageWidth;

   procedure Put_PageWidth
     (This : PageSetup_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_PageWidth
         (Pointer (This),
          prop));

   end Put_PageWidth;

   function Get_PageHeight
     (This : PageSetup_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_PageHeight
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_PageHeight;

   procedure Put_PageHeight
     (This : PageSetup_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_PageHeight
         (Pointer (This),
          prop));

   end Put_PageHeight;

   function Get_Orientation
     (This : PageSetup_Type)
     return WdOrientation
   is
       RetVal : aliased WdOrientation;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Orientation
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Orientation;

   procedure Put_Orientation
     (This : PageSetup_Type;
      prop : WdOrientation)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Orientation
         (Pointer (This),
          prop));

   end Put_Orientation;

   function Get_FirstPageTray
     (This : PageSetup_Type)
     return WdPaperTray
   is
       RetVal : aliased WdPaperTray;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_FirstPageTray
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_FirstPageTray;

   procedure Put_FirstPageTray
     (This : PageSetup_Type;
      prop : WdPaperTray)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_FirstPageTray
         (Pointer (This),
          prop));

   end Put_FirstPageTray;

   function Get_OtherPagesTray
     (This : PageSetup_Type)
     return WdPaperTray
   is
       RetVal : aliased WdPaperTray;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_OtherPagesTray
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_OtherPagesTray;

   procedure Put_OtherPagesTray
     (This : PageSetup_Type;
      prop : WdPaperTray)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_OtherPagesTray
         (Pointer (This),
          prop));

   end Put_OtherPagesTray;

   function Get_VerticalAlignment
     (This : PageSetup_Type)
     return WdVerticalAlignment
   is
       RetVal : aliased WdVerticalAlignment;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_VerticalAlignment
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_VerticalAlignment;

   procedure Put_VerticalAlignment
     (This : PageSetup_Type;
      prop : WdVerticalAlignment)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_VerticalAlignment
         (Pointer (This),
          prop));

   end Put_VerticalAlignment;

   function Get_MirrorMargins
     (This : PageSetup_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_MirrorMargins
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_MirrorMargins;

   procedure Put_MirrorMargins
     (This : PageSetup_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_MirrorMargins
         (Pointer (This),
          prop));

   end Put_MirrorMargins;

   function Get_HeaderDistance
     (This : PageSetup_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_HeaderDistance
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_HeaderDistance;

   procedure Put_HeaderDistance
     (This : PageSetup_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_HeaderDistance
         (Pointer (This),
          prop));

   end Put_HeaderDistance;

   function Get_FooterDistance
     (This : PageSetup_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_FooterDistance
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_FooterDistance;

   procedure Put_FooterDistance
     (This : PageSetup_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_FooterDistance
         (Pointer (This),
          prop));

   end Put_FooterDistance;

   function Get_SectionStart
     (This : PageSetup_Type)
     return WdSectionStart
   is
       RetVal : aliased WdSectionStart;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SectionStart
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_SectionStart;

   procedure Put_SectionStart
     (This : PageSetup_Type;
      prop : WdSectionStart)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_SectionStart
         (Pointer (This),
          prop));

   end Put_SectionStart;

   function Get_OddAndEvenPagesHeaderFooter
     (This : PageSetup_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_OddAndEvenPagesHeaderFooter
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_OddAndEvenPagesHeaderFooter;

   procedure Put_OddAndEvenPagesHeaderFooter
     (This : PageSetup_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_OddAndEvenPagesHeaderFooter
         (Pointer (This),
          prop));

   end Put_OddAndEvenPagesHeaderFooter;

   function Get_DifferentFirstPageHeaderFooter
     (This : PageSetup_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DifferentFirstPageHeaderFooter
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DifferentFirstPageHeaderFooter;

   procedure Put_DifferentFirstPageHeaderFooter
     (This : PageSetup_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DifferentFirstPageHeaderFooter
         (Pointer (This),
          prop));

   end Put_DifferentFirstPageHeaderFooter;

   function Get_SuppressEndnotes
     (This : PageSetup_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SuppressEndnotes
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_SuppressEndnotes;

   procedure Put_SuppressEndnotes
     (This : PageSetup_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_SuppressEndnotes
         (Pointer (This),
          prop));

   end Put_SuppressEndnotes;

   function Get_LineNumbering
     (This : PageSetup_Type)
     return Pointer_To_LineNumbering
   is
       RetVal : aliased Pointer_To_LineNumbering;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_LineNumbering
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_LineNumbering;

   procedure Put_LineNumbering
     (This : PageSetup_Type;
      prop : Pointer_To_LineNumbering)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_LineNumbering
         (Pointer (This),
          prop));

   end Put_LineNumbering;

   function Get_TextColumns
     (This : PageSetup_Type)
     return Pointer_To_TextColumns
   is
       RetVal : aliased Pointer_To_TextColumns;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_TextColumns
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_TextColumns;

   procedure Put_TextColumns
     (This : PageSetup_Type;
      prop : Pointer_To_TextColumns)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_TextColumns
         (Pointer (This),
          prop));

   end Put_TextColumns;

   function Get_PaperSize
     (This : PageSetup_Type)
     return WdPaperSize
   is
       RetVal : aliased WdPaperSize;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_PaperSize
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_PaperSize;

   procedure Put_PaperSize
     (This : PageSetup_Type;
      prop : WdPaperSize)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_PaperSize
         (Pointer (This),
          prop));

   end Put_PaperSize;

   function Get_TwoPagesOnOne
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_TwoPagesOnOne
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_TwoPagesOnOne;

   procedure Put_TwoPagesOnOne
     (This : PageSetup_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_TwoPagesOnOne
         (Pointer (This),
          prop));

   end Put_TwoPagesOnOne;

   function Get_GutterOnTop
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_GutterOnTop
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_GutterOnTop;

   procedure Put_GutterOnTop
     (This : PageSetup_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_GutterOnTop
         (Pointer (This),
          prop));

   end Put_GutterOnTop;

   function Get_CharsLine
     (This : PageSetup_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_CharsLine
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_CharsLine;

   procedure Put_CharsLine
     (This : PageSetup_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_CharsLine
         (Pointer (This),
          prop));

   end Put_CharsLine;

   function Get_LinesPage
     (This : PageSetup_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_LinesPage
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_LinesPage;

   procedure Put_LinesPage
     (This : PageSetup_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_LinesPage
         (Pointer (This),
          prop));

   end Put_LinesPage;

   function Get_ShowGrid
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ShowGrid
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ShowGrid;

   procedure Put_ShowGrid
     (This : PageSetup_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ShowGrid
         (Pointer (This),
          prop));

   end Put_ShowGrid;

   procedure TogglePortrait
     (This : PageSetup_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.TogglePortrait
         (Pointer (This)));

   end TogglePortrait;

   procedure SetAsTemplateDefault
     (This : PageSetup_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.SetAsTemplateDefault
         (Pointer (This)));

   end SetAsTemplateDefault;

   function Get_GutterStyle
     (This : PageSetup_Type)
     return WdGutterStyleOld
   is
       RetVal : aliased WdGutterStyleOld;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_GutterStyle
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_GutterStyle;

   procedure Put_GutterStyle
     (This : PageSetup_Type;
      prop : WdGutterStyleOld)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_GutterStyle
         (Pointer (This),
          prop));

   end Put_GutterStyle;

   function Get_SectionDirection
     (This : PageSetup_Type)
     return WdSectionDirection
   is
       RetVal : aliased WdSectionDirection;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SectionDirection
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_SectionDirection;

   procedure Put_SectionDirection
     (This : PageSetup_Type;
      prop : WdSectionDirection)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_SectionDirection
         (Pointer (This),
          prop));

   end Put_SectionDirection;

   function Get_LayoutMode
     (This : PageSetup_Type)
     return WdLayoutMode
   is
       RetVal : aliased WdLayoutMode;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_LayoutMode
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_LayoutMode;

   procedure Put_LayoutMode
     (This : PageSetup_Type;
      prop : WdLayoutMode)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_LayoutMode
         (Pointer (This),
          prop));

   end Put_LayoutMode;

   function Get_GutterPos
     (This : PageSetup_Type)
     return WdGutterStyle
   is
       RetVal : aliased WdGutterStyle;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_GutterPos
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_GutterPos;

   procedure Put_GutterPos
     (This : PageSetup_Type;
      prop : WdGutterStyle)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_GutterPos
         (Pointer (This),
          prop));

   end Put_GutterPos;

   function Get_BookFoldPrinting
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_BookFoldPrinting
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_BookFoldPrinting;

   procedure Put_BookFoldPrinting
     (This : PageSetup_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_BookFoldPrinting
         (Pointer (This),
          prop));

   end Put_BookFoldPrinting;

   function Get_BookFoldRevPrinting
     (This : PageSetup_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_BookFoldRevPrinting
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_BookFoldRevPrinting;

   procedure Put_BookFoldRevPrinting
     (This : PageSetup_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_BookFoldRevPrinting
         (Pointer (This),
          prop));

   end Put_BookFoldRevPrinting;

   function Get_BookFoldPrintingSheets
     (This : PageSetup_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_BookFoldPrintingSheets
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_BookFoldPrintingSheets;

   procedure Put_BookFoldPrintingSheets
     (This : PageSetup_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_BookFoldPrintingSheets
         (Pointer (This),
          prop));

   end Put_BookFoldPrintingSheets;

end winword.PageSetup_Interface;

