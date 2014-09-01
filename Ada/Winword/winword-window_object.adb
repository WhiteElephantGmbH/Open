package body winword.Window_Object is

   function Get_Application
     (This : Window_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Window_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : Window_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Window_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : Window_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Window_Get_Parent);
   end Get_Parent;

   function Get_ActivePane
     (This : Window_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Window_Get_ActivePane);
   end Get_ActivePane;

   function Get_Document
     (This : Window_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Window_Get_Document);
   end Get_Document;

   function Get_Panes
     (This : Window_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Window_Get_Panes);
   end Get_Panes;

   function Get_Selection
     (This : Window_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Window_Get_Selection);
   end Get_Selection;

   function Get_Left
     (This : Window_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Window_Get_Left);
   end Get_Left;

   procedure Put_Left
     (This : Window_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Window_Put_Left,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Left;

   function Get_Top
     (This : Window_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Window_Get_Top);
   end Get_Top;

   procedure Put_Top
     (This : Window_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Window_Put_Top,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Top;

   function Get_Width
     (This : Window_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Window_Get_Width);
   end Get_Width;

   procedure Put_Width
     (This : Window_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Window_Put_Width,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Width;

   function Get_Height
     (This : Window_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Window_Get_Height);
   end Get_Height;

   procedure Put_Height
     (This : Window_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Window_Put_Height,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Height;

   function Get_Split
     (This : Window_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Window_Get_Split);
   end Get_Split;

   procedure Put_Split
     (This : Window_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Window_Put_Split,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Split;

   function Get_SplitVertical
     (This : Window_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Window_Get_SplitVertical);
   end Get_SplitVertical;

   procedure Put_SplitVertical
     (This : Window_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Window_Put_SplitVertical,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_SplitVertical;

   function Get_Caption
     (This : Window_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Window_Get_Caption);
   end Get_Caption;

   procedure Put_Caption
     (This : Window_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Window_Put_Caption,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Caption;

   function Get_WindowState
     (This : Window_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Window_Get_WindowState);
   end Get_WindowState;

   procedure Put_WindowState
     (This : Window_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Window_Put_WindowState,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_WindowState;

   function Get_DisplayRulers
     (This : Window_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Window_Get_DisplayRulers);
   end Get_DisplayRulers;

   procedure Put_DisplayRulers
     (This : Window_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Window_Put_DisplayRulers,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DisplayRulers;

   function Get_DisplayVerticalRuler
     (This : Window_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Window_Get_DisplayVerticalRuler);
   end Get_DisplayVerticalRuler;

   procedure Put_DisplayVerticalRuler
     (This : Window_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Window_Put_DisplayVerticalRuler,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DisplayVerticalRuler;

   function Get_View
     (This : Window_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Window_Get_View);
   end Get_View;

   function Get_Type
     (This : Window_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Window_Get_Type);
   end Get_Type;

   function Get_Next
     (This : Window_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Window_Get_Next);
   end Get_Next;

   function Get_Previous
     (This : Window_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Window_Get_Previous);
   end Get_Previous;

   function Get_WindowNumber
     (This : Window_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Window_Get_WindowNumber);
   end Get_WindowNumber;

   function Get_DisplayVerticalScrollBar
     (This : Window_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Window_Get_DisplayVerticalScrollBar);
   end Get_DisplayVerticalScrollBar;

   procedure Put_DisplayVerticalScrollBar
     (This : Window_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Window_Put_DisplayVerticalScrollBar,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DisplayVerticalScrollBar;

   function Get_DisplayHorizontalScrollBar
     (This : Window_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Window_Get_DisplayHorizontalScrollBar);
   end Get_DisplayHorizontalScrollBar;

   procedure Put_DisplayHorizontalScrollBar
     (This : Window_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Window_Put_DisplayHorizontalScrollBar,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DisplayHorizontalScrollBar;

   function Get_StyleAreaWidth
     (This : Window_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Window_Get_StyleAreaWidth);
   end Get_StyleAreaWidth;

   procedure Put_StyleAreaWidth
     (This : Window_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Window_Put_StyleAreaWidth,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_StyleAreaWidth;

   function Get_DisplayScreenTips
     (This : Window_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Window_Get_DisplayScreenTips);
   end Get_DisplayScreenTips;

   procedure Put_DisplayScreenTips
     (This : Window_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Window_Put_DisplayScreenTips,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DisplayScreenTips;

   function Get_HorizontalPercentScrolled
     (This : Window_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Window_Get_HorizontalPercentScrolled);
   end Get_HorizontalPercentScrolled;

   procedure Put_HorizontalPercentScrolled
     (This : Window_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Window_Put_HorizontalPercentScrolled,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_HorizontalPercentScrolled;

   function Get_VerticalPercentScrolled
     (This : Window_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Window_Get_VerticalPercentScrolled);
   end Get_VerticalPercentScrolled;

   procedure Put_VerticalPercentScrolled
     (This : Window_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Window_Put_VerticalPercentScrolled,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_VerticalPercentScrolled;

   function Get_DocumentMap
     (This : Window_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Window_Get_DocumentMap);
   end Get_DocumentMap;

   procedure Put_DocumentMap
     (This : Window_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Window_Put_DocumentMap,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DocumentMap;

   function Get_Active
     (This : Window_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Window_Get_Active);
   end Get_Active;

   function Get_DocumentMapPercentWidth
     (This : Window_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Window_Get_DocumentMapPercentWidth);
   end Get_DocumentMapPercentWidth;

   procedure Put_DocumentMapPercentWidth
     (This : Window_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Window_Put_DocumentMapPercentWidth,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DocumentMapPercentWidth;

   function Get_Index
     (This : Window_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Window_Get_Index);
   end Get_Index;

   function Get_IMEMode
     (This : Window_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Window_Get_IMEMode);
   end Get_IMEMode;

   procedure Put_IMEMode
     (This : Window_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Window_Put_IMEMode,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_IMEMode;

   procedure Activate
     (This : Window_Type)
   is
   begin
      Invoke (This, Window_Activate);
   end Activate;

   procedure Close
     (This          : Window_Type;
      SaveChanges   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      RouteDocument : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free          : Boolean := True)
   is
   begin
      Invoke
        (This,
         Window_Close,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => RouteDocument,
          2 => SaveChanges),
         Free);
   end Close;

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
      Free    : Boolean := True)
   is
   begin
      Invoke
        (This,
         Window_LargeScroll,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => ToLeft,
          2 => ToRight,
          3 => Up,
          4 => Down),
         Free);
   end LargeScroll;

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
      Free    : Boolean := True)
   is
   begin
      Invoke
        (This,
         Window_SmallScroll,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => ToLeft,
          2 => ToRight,
          3 => Up,
          4 => Down),
         Free);
   end SmallScroll;

   function NewWindow
     (This : Window_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke (This, Window_NewWindow);
   end NewWindow;

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
      Free               : Boolean := True)
   is
   begin
      Invoke
        (This,
         Window_PrintOutOld,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => ManualDuplexPrint,
          2 => ActivePrinterMacGX,
          3 => Collate,
          4 => PrintToFile,
          5 => PageType,
          6 => Pages,
          7 => Copies,
          8 => Item,
          9 => To,
          10 => From,
          11 => OutputFileName,
          12 => uRange,
          13 => Append,
          14 => Background),
         Free);
   end PrintOutOld;

   procedure PageScroll
     (This : Window_Type;
      Down : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Up   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free : Boolean := True)
   is
   begin
      Invoke
        (This,
         Window_PageScroll,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Up,
          2 => Down),
         Free);
   end PageScroll;

   procedure SetFocus
     (This : Window_Type)
   is
   begin
      Invoke (This, Window_SetFocus);
   end SetFocus;

   function RangeFromPoint
     (This : Window_Type;
      x    : GNATCOM.Types.VARIANT;
      y    : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Window_RangeFromPoint,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => y,
          2 => x),
         Free);
   end RangeFromPoint;

   procedure ScrollIntoView
     (This  : Window_Type;
      obj   : GNATCOM.Types.VARIANT;
      Start : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free  : Boolean := True)
   is
   begin
      Invoke
        (This,
         Window_ScrollIntoView,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Start,
          2 => obj),
         Free);
   end ScrollIntoView;

   procedure GetPoint
     (This               : Window_Type;
      ScreenPixelsLeft   : GNATCOM.Types.VARIANT;
      ScreenPixelsTop    : GNATCOM.Types.VARIANT;
      ScreenPixelsWidth  : GNATCOM.Types.VARIANT;
      ScreenPixelsHeight : GNATCOM.Types.VARIANT;
      obj                : GNATCOM.Types.VARIANT;
      Free               : Boolean := True)
   is
   begin
      Invoke
        (This,
         Window_GetPoint,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => obj,
          2 => ScreenPixelsHeight,
          3 => ScreenPixelsWidth,
          4 => ScreenPixelsTop,
          5 => ScreenPixelsLeft),
         Free);
   end GetPoint;

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
      Free                 : Boolean := True)
   is
   begin
      Invoke
        (This,
         Window_PrintOut2000,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => PrintZoomPaperHeight,
          2 => PrintZoomPaperWidth,
          3 => PrintZoomRow,
          4 => PrintZoomColumn,
          5 => ManualDuplexPrint,
          6 => ActivePrinterMacGX,
          7 => Collate,
          8 => PrintToFile,
          9 => PageType,
          10 => Pages,
          11 => Copies,
          12 => Item,
          13 => To,
          14 => From,
          15 => OutputFileName,
          16 => uRange,
          17 => Append,
          18 => Background),
         Free);
   end PrintOut2000;

   function Get_UsableWidth
     (This : Window_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Window_Get_UsableWidth);
   end Get_UsableWidth;

   function Get_UsableHeight
     (This : Window_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Window_Get_UsableHeight);
   end Get_UsableHeight;

   function Get_EnvelopeVisible
     (This : Window_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Window_Get_EnvelopeVisible);
   end Get_EnvelopeVisible;

   procedure Put_EnvelopeVisible
     (This : Window_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Window_Put_EnvelopeVisible,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_EnvelopeVisible;

   function Get_DisplayRightRuler
     (This : Window_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Window_Get_DisplayRightRuler);
   end Get_DisplayRightRuler;

   procedure Put_DisplayRightRuler
     (This : Window_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Window_Put_DisplayRightRuler,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DisplayRightRuler;

   function Get_DisplayLeftScrollBar
     (This : Window_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Window_Get_DisplayLeftScrollBar);
   end Get_DisplayLeftScrollBar;

   procedure Put_DisplayLeftScrollBar
     (This : Window_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Window_Put_DisplayLeftScrollBar,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DisplayLeftScrollBar;

   function Get_Visible
     (This : Window_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Window_Get_Visible);
   end Get_Visible;

   procedure Put_Visible
     (This : Window_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Window_Put_Visible,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Visible;

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
      Free                 : Boolean := True)
   is
   begin
      Invoke
        (This,
         Window_PrintOut,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => PrintZoomPaperHeight,
          2 => PrintZoomPaperWidth,
          3 => PrintZoomRow,
          4 => PrintZoomColumn,
          5 => ManualDuplexPrint,
          6 => ActivePrinterMacGX,
          7 => Collate,
          8 => PrintToFile,
          9 => PageType,
          10 => Pages,
          11 => Copies,
          12 => Item,
          13 => To,
          14 => From,
          15 => OutputFileName,
          16 => uRange,
          17 => Append,
          18 => Background),
         Free);
   end PrintOut;

end winword.Window_Object;

