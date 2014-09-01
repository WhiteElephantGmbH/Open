with GNATCOM.Dispinterface;

package winword.Window_Object is

   type Window_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : Window_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : Window_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : Window_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ActivePane
     (This : Window_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Document
     (This : Window_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Panes
     (This : Window_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Selection
     (This : Window_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Left
     (This : Window_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Left
     (This : Window_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Top
     (This : Window_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Top
     (This : Window_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Width
     (This : Window_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Width
     (This : Window_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Height
     (This : Window_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Height
     (This : Window_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Split
     (This : Window_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Split
     (This : Window_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_SplitVertical
     (This : Window_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_SplitVertical
     (This : Window_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Caption
     (This : Window_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Caption
     (This : Window_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_WindowState
     (This : Window_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_WindowState
     (This : Window_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_DisplayRulers
     (This : Window_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DisplayRulers
     (This : Window_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_DisplayVerticalRuler
     (This : Window_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DisplayVerticalRuler
     (This : Window_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_View
     (This : Window_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Type
     (This : Window_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Next
     (This : Window_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Previous
     (This : Window_Type)
     return GNATCOM.Types.VARIANT;

   function Get_WindowNumber
     (This : Window_Type)
     return GNATCOM.Types.VARIANT;

   function Get_DisplayVerticalScrollBar
     (This : Window_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DisplayVerticalScrollBar
     (This : Window_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_DisplayHorizontalScrollBar
     (This : Window_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DisplayHorizontalScrollBar
     (This : Window_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_StyleAreaWidth
     (This : Window_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_StyleAreaWidth
     (This : Window_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_DisplayScreenTips
     (This : Window_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DisplayScreenTips
     (This : Window_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_HorizontalPercentScrolled
     (This : Window_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_HorizontalPercentScrolled
     (This : Window_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_VerticalPercentScrolled
     (This : Window_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_VerticalPercentScrolled
     (This : Window_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_DocumentMap
     (This : Window_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DocumentMap
     (This : Window_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Active
     (This : Window_Type)
     return GNATCOM.Types.VARIANT;

   function Get_DocumentMapPercentWidth
     (This : Window_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DocumentMapPercentWidth
     (This : Window_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Index
     (This : Window_Type)
     return GNATCOM.Types.VARIANT;

   function Get_IMEMode
     (This : Window_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_IMEMode
     (This : Window_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure Activate
     (This : Window_Type);

   procedure Close
     (This          : Window_Type;
      SaveChanges   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      RouteDocument : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free          : Boolean := True);

   procedure LargeScroll
     (This    : Window_Type;
      Down    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Up      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ToRight : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ToLeft  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free    : Boolean := True);

   procedure SmallScroll
     (This    : Window_Type;
      Down    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Up      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ToRight : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ToLeft  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free    : Boolean := True);

   function NewWindow
     (This : Window_Type)
     return GNATCOM.Types.VARIANT;

   procedure PrintOutOld
     (This               : Window_Type;
      Background         : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Append             : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      uRange             : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      OutputFileName     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      From               : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      To                 : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Item               : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Copies             : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Pages              : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      PageType           : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      PrintToFile        : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Collate            : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ActivePrinterMacGX : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ManualDuplexPrint  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free               : Boolean := True);

   procedure PageScroll
     (This : Window_Type;
      Down : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Up   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free : Boolean := True);

   procedure SetFocus
     (This : Window_Type);

   function RangeFromPoint
     (This : Window_Type;
      x    : GNATCOM.Types.VARIANT;
      y    : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure ScrollIntoView
     (This  : Window_Type;
      obj   : GNATCOM.Types.VARIANT;
      Start : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free  : Boolean := True);

   procedure GetPoint
     (This               : Window_Type;
      ScreenPixelsLeft   : GNATCOM.Types.VARIANT;
      ScreenPixelsTop    : GNATCOM.Types.VARIANT;
      ScreenPixelsWidth  : GNATCOM.Types.VARIANT;
      ScreenPixelsHeight : GNATCOM.Types.VARIANT;
      obj                : GNATCOM.Types.VARIANT;
      Free               : Boolean := True);

   procedure PrintOut2000
     (This                 : Window_Type;
      Background           : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Append               : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      uRange               : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      OutputFileName       : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      From                 : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      To                   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Item                 : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Copies               : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Pages                : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      PageType             : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      PrintToFile          : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Collate              : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ActivePrinterMacGX   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ManualDuplexPrint    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      PrintZoomColumn      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      PrintZoomRow         : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      PrintZoomPaperWidth  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      PrintZoomPaperHeight : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free                 : Boolean := True);

   function Get_UsableWidth
     (This : Window_Type)
     return GNATCOM.Types.VARIANT;

   function Get_UsableHeight
     (This : Window_Type)
     return GNATCOM.Types.VARIANT;

   function Get_EnvelopeVisible
     (This : Window_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_EnvelopeVisible
     (This : Window_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_DisplayRightRuler
     (This : Window_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DisplayRightRuler
     (This : Window_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_DisplayLeftScrollBar
     (This : Window_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DisplayLeftScrollBar
     (This : Window_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Visible
     (This : Window_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Visible
     (This : Window_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure PrintOut
     (This                 : Window_Type;
      Background           : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Append               : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      uRange               : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      OutputFileName       : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      From                 : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      To                   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Item                 : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Copies               : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Pages                : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      PageType             : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      PrintToFile          : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Collate              : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ActivePrinterMacGX   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ManualDuplexPrint    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      PrintZoomColumn      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      PrintZoomRow         : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      PrintZoomPaperWidth  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      PrintZoomPaperHeight : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free                 : Boolean := True);

end winword.Window_Object;

