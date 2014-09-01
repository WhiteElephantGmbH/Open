with GNATCOM.Dispinterface;

package winword.Window_Interface is

   type Window_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Window_Type);

   function Pointer (This : Window_Type)
     return Pointer_To_Window;

   procedure Attach (This    : in out Window_Type;
                     Pointer : in     Pointer_To_Window);

   function Get_Application
     (This : Window_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : Window_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : Window_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_ActivePane
     (This : Window_Type)
     return Pointer_To_Pane;

   function Get_Document
     (This : Window_Type)
     return Pointer_To_uDocument;

   function Get_Panes
     (This : Window_Type)
     return Pointer_To_Panes;

   function Get_Selection
     (This : Window_Type)
     return Pointer_To_Selection;

   function Get_Left
     (This : Window_Type)
     return Interfaces.C.long;

   procedure Put_Left
     (This : Window_Type;
      prop : Interfaces.C.long);

   function Get_Top
     (This : Window_Type)
     return Interfaces.C.long;

   procedure Put_Top
     (This : Window_Type;
      prop : Interfaces.C.long);

   function Get_Width
     (This : Window_Type)
     return Interfaces.C.long;

   procedure Put_Width
     (This : Window_Type;
      prop : Interfaces.C.long);

   function Get_Height
     (This : Window_Type)
     return Interfaces.C.long;

   procedure Put_Height
     (This : Window_Type;
      prop : Interfaces.C.long);

   function Get_Split
     (This : Window_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_Split
     (This : Window_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_SplitVertical
     (This : Window_Type)
     return Interfaces.C.long;

   procedure Put_SplitVertical
     (This : Window_Type;
      prop : Interfaces.C.long);

   function Get_Caption
     (This : Window_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_Caption
     (This : Window_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_WindowState
     (This : Window_Type)
     return WdWindowState;

   procedure Put_WindowState
     (This : Window_Type;
      prop : WdWindowState);

   function Get_DisplayRulers
     (This : Window_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_DisplayRulers
     (This : Window_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_DisplayVerticalRuler
     (This : Window_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_DisplayVerticalRuler
     (This : Window_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_View
     (This : Window_Type)
     return Pointer_To_View;

   function Get_Type
     (This : Window_Type)
     return WdWindowType;

   function Get_Next
     (This : Window_Type)
     return Pointer_To_Window;

   function Get_Previous
     (This : Window_Type)
     return Pointer_To_Window;

   function Get_WindowNumber
     (This : Window_Type)
     return Interfaces.C.long;

   function Get_DisplayVerticalScrollBar
     (This : Window_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_DisplayVerticalScrollBar
     (This : Window_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_DisplayHorizontalScrollBar
     (This : Window_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_DisplayHorizontalScrollBar
     (This : Window_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_StyleAreaWidth
     (This : Window_Type)
     return Interfaces.C.C_float;

   procedure Put_StyleAreaWidth
     (This : Window_Type;
      prop : Interfaces.C.C_float);

   function Get_DisplayScreenTips
     (This : Window_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_DisplayScreenTips
     (This : Window_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_HorizontalPercentScrolled
     (This : Window_Type)
     return Interfaces.C.long;

   procedure Put_HorizontalPercentScrolled
     (This : Window_Type;
      prop : Interfaces.C.long);

   function Get_VerticalPercentScrolled
     (This : Window_Type)
     return Interfaces.C.long;

   procedure Put_VerticalPercentScrolled
     (This : Window_Type;
      prop : Interfaces.C.long);

   function Get_DocumentMap
     (This : Window_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_DocumentMap
     (This : Window_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_Active
     (This : Window_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   function Get_DocumentMapPercentWidth
     (This : Window_Type)
     return Interfaces.C.long;

   procedure Put_DocumentMapPercentWidth
     (This : Window_Type;
      prop : Interfaces.C.long);

   function Get_Index
     (This : Window_Type)
     return Interfaces.C.long;

   function Get_IMEMode
     (This : Window_Type)
     return WdIMEMode;

   procedure Put_IMEMode
     (This : Window_Type;
      prop : WdIMEMode);

   procedure Activate
     (This : Window_Type);

   procedure Close
     (This          : Window_Type;
      SaveChanges   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      RouteDocument : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   procedure LargeScroll
     (This    : Window_Type;
      Down    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Up      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ToRight : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ToLeft  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   procedure SmallScroll
     (This    : Window_Type;
      Down    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Up      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ToRight : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ToLeft  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   function NewWindow
     (This : Window_Type)
     return Pointer_To_Window;

   procedure PrintOutOld
     (This               : Window_Type;
      Background         : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Append             : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      uRange             : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      OutputFileName     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      From               : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      To                 : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Item               : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Copies             : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Pages              : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PageType           : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PrintToFile        : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Collate            : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ActivePrinterMacGX : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ManualDuplexPrint  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   procedure PageScroll
     (This : Window_Type;
      Down : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Up   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   procedure SetFocus
     (This : Window_Type);

   function RangeFromPoint
     (This : Window_Type;
      x    : Interfaces.C.long;
      y    : Interfaces.C.long)
     return GNATCOM.Types.Pointer_To_IDispatch;

   procedure ScrollIntoView
     (This  : Window_Type;
      obj   : GNATCOM.Types.Pointer_To_IDispatch;
      Start : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   procedure GetPoint
     (This               : Window_Type;
      ScreenPixelsLeft   : GNATCOM.Types.Pointer_To_long;
      ScreenPixelsTop    : GNATCOM.Types.Pointer_To_long;
      ScreenPixelsWidth  : GNATCOM.Types.Pointer_To_long;
      ScreenPixelsHeight : GNATCOM.Types.Pointer_To_long;
      obj                : GNATCOM.Types.Pointer_To_IDispatch);

   procedure PrintOut2000
     (This                 : Window_Type;
      Background           : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Append               : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      uRange               : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      OutputFileName       : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      From                 : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      To                   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Item                 : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Copies               : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Pages                : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PageType             : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PrintToFile          : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Collate              : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ActivePrinterMacGX   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ManualDuplexPrint    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PrintZoomColumn      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PrintZoomRow         : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PrintZoomPaperWidth  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PrintZoomPaperHeight : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   function Get_UsableWidth
     (This : Window_Type)
     return Interfaces.C.long;

   function Get_UsableHeight
     (This : Window_Type)
     return Interfaces.C.long;

   function Get_EnvelopeVisible
     (This : Window_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_EnvelopeVisible
     (This : Window_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_DisplayRightRuler
     (This : Window_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_DisplayRightRuler
     (This : Window_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_DisplayLeftScrollBar
     (This : Window_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_DisplayLeftScrollBar
     (This : Window_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_Visible
     (This : Window_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_Visible
     (This : Window_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   procedure PrintOut
     (This                 : Window_Type;
      Background           : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Append               : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      uRange               : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      OutputFileName       : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      From                 : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      To                   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Item                 : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Copies               : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Pages                : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PageType             : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PrintToFile          : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Collate              : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ActivePrinterMacGX   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ManualDuplexPrint    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PrintZoomColumn      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PrintZoomRow         : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PrintZoomPaperWidth  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PrintZoomPaperHeight : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

end winword.Window_Interface;

