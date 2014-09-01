with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.Window_Interface is

   procedure Initialize (This : in out Window_Type) is
   begin
      Set_IID (This, IID_Window);
   end Initialize;

   function Pointer (This : Window_Type)
     return Pointer_To_Window
   is
   begin
      return To_Pointer_To_Window (Address (This));
   end Pointer;

   procedure Attach (This    : in out Window_Type;
                     Pointer : in     Pointer_To_Window)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : Window_Type)
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
     (This : Window_Type)
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
     (This : Window_Type)
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

   function Get_ActivePane
     (This : Window_Type)
     return Pointer_To_Pane
   is
       RetVal : aliased Pointer_To_Pane;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ActivePane
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ActivePane;

   function Get_Document
     (This : Window_Type)
     return Pointer_To_uDocument
   is
       RetVal : aliased Pointer_To_uDocument;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Document
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Document;

   function Get_Panes
     (This : Window_Type)
     return Pointer_To_Panes
   is
       RetVal : aliased Pointer_To_Panes;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Panes
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Panes;

   function Get_Selection
     (This : Window_Type)
     return Pointer_To_Selection
   is
       RetVal : aliased Pointer_To_Selection;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Selection
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Selection;

   function Get_Left
     (This : Window_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Left
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Left;

   procedure Put_Left
     (This : Window_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Left
         (Pointer (This),
          prop));

   end Put_Left;

   function Get_Top
     (This : Window_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Top
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Top;

   procedure Put_Top
     (This : Window_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Top
         (Pointer (This),
          prop));

   end Put_Top;

   function Get_Width
     (This : Window_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Width
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Width;

   procedure Put_Width
     (This : Window_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Width
         (Pointer (This),
          prop));

   end Put_Width;

   function Get_Height
     (This : Window_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Height
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Height;

   procedure Put_Height
     (This : Window_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Height
         (Pointer (This),
          prop));

   end Put_Height;

   function Get_Split
     (This : Window_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Split
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Split;

   procedure Put_Split
     (This : Window_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Split
         (Pointer (This),
          prop));

   end Put_Split;

   function Get_SplitVertical
     (This : Window_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SplitVertical
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_SplitVertical;

   procedure Put_SplitVertical
     (This : Window_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_SplitVertical
         (Pointer (This),
          prop));

   end Put_SplitVertical;

   function Get_Caption
     (This : Window_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Caption
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Caption;

   procedure Put_Caption
     (This : Window_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Caption
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_Caption;

   function Get_WindowState
     (This : Window_Type)
     return WdWindowState
   is
       RetVal : aliased WdWindowState;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_WindowState
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_WindowState;

   procedure Put_WindowState
     (This : Window_Type;
      prop : WdWindowState)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_WindowState
         (Pointer (This),
          prop));

   end Put_WindowState;

   function Get_DisplayRulers
     (This : Window_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DisplayRulers
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DisplayRulers;

   procedure Put_DisplayRulers
     (This : Window_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DisplayRulers
         (Pointer (This),
          prop));

   end Put_DisplayRulers;

   function Get_DisplayVerticalRuler
     (This : Window_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DisplayVerticalRuler
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DisplayVerticalRuler;

   procedure Put_DisplayVerticalRuler
     (This : Window_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DisplayVerticalRuler
         (Pointer (This),
          prop));

   end Put_DisplayVerticalRuler;

   function Get_View
     (This : Window_Type)
     return Pointer_To_View
   is
       RetVal : aliased Pointer_To_View;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_View
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_View;

   function Get_Type
     (This : Window_Type)
     return WdWindowType
   is
       RetVal : aliased WdWindowType;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Type
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Type;

   function Get_Next
     (This : Window_Type)
     return Pointer_To_Window
   is
       RetVal : aliased Pointer_To_Window;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Next
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Next;

   function Get_Previous
     (This : Window_Type)
     return Pointer_To_Window
   is
       RetVal : aliased Pointer_To_Window;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Previous
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Previous;

   function Get_WindowNumber
     (This : Window_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_WindowNumber
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_WindowNumber;

   function Get_DisplayVerticalScrollBar
     (This : Window_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DisplayVerticalScrollBar
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DisplayVerticalScrollBar;

   procedure Put_DisplayVerticalScrollBar
     (This : Window_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DisplayVerticalScrollBar
         (Pointer (This),
          prop));

   end Put_DisplayVerticalScrollBar;

   function Get_DisplayHorizontalScrollBar
     (This : Window_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DisplayHorizontalScrollBar
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DisplayHorizontalScrollBar;

   procedure Put_DisplayHorizontalScrollBar
     (This : Window_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DisplayHorizontalScrollBar
         (Pointer (This),
          prop));

   end Put_DisplayHorizontalScrollBar;

   function Get_StyleAreaWidth
     (This : Window_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_StyleAreaWidth
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_StyleAreaWidth;

   procedure Put_StyleAreaWidth
     (This : Window_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_StyleAreaWidth
         (Pointer (This),
          prop));

   end Put_StyleAreaWidth;

   function Get_DisplayScreenTips
     (This : Window_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DisplayScreenTips
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DisplayScreenTips;

   procedure Put_DisplayScreenTips
     (This : Window_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DisplayScreenTips
         (Pointer (This),
          prop));

   end Put_DisplayScreenTips;

   function Get_HorizontalPercentScrolled
     (This : Window_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_HorizontalPercentScrolled
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_HorizontalPercentScrolled;

   procedure Put_HorizontalPercentScrolled
     (This : Window_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_HorizontalPercentScrolled
         (Pointer (This),
          prop));

   end Put_HorizontalPercentScrolled;

   function Get_VerticalPercentScrolled
     (This : Window_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_VerticalPercentScrolled
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_VerticalPercentScrolled;

   procedure Put_VerticalPercentScrolled
     (This : Window_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_VerticalPercentScrolled
         (Pointer (This),
          prop));

   end Put_VerticalPercentScrolled;

   function Get_DocumentMap
     (This : Window_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DocumentMap
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DocumentMap;

   procedure Put_DocumentMap
     (This : Window_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DocumentMap
         (Pointer (This),
          prop));

   end Put_DocumentMap;

   function Get_Active
     (This : Window_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Active
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Active;

   function Get_DocumentMapPercentWidth
     (This : Window_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DocumentMapPercentWidth
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DocumentMapPercentWidth;

   procedure Put_DocumentMapPercentWidth
     (This : Window_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DocumentMapPercentWidth
         (Pointer (This),
          prop));

   end Put_DocumentMapPercentWidth;

   function Get_Index
     (This : Window_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Index
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Index;

   function Get_IMEMode
     (This : Window_Type)
     return WdIMEMode
   is
       RetVal : aliased WdIMEMode;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_IMEMode
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_IMEMode;

   procedure Put_IMEMode
     (This : Window_Type;
      prop : WdIMEMode)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_IMEMode
         (Pointer (This),
          prop));

   end Put_IMEMode;

   procedure Activate
     (This : Window_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Activate
         (Pointer (This)));

   end Activate;

   procedure Close
     (This          : Window_Type;
      SaveChanges   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      RouteDocument : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Close
         (Pointer (This),
          SaveChanges,
          RouteDocument));

   end Close;

   procedure LargeScroll
     (This    : Window_Type;
      Down    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Up      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ToRight : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ToLeft  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.LargeScroll
         (Pointer (This),
          Down,
          Up,
          ToRight,
          ToLeft));

   end LargeScroll;

   procedure SmallScroll
     (This    : Window_Type;
      Down    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Up      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ToRight : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ToLeft  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.SmallScroll
         (Pointer (This),
          Down,
          Up,
          ToRight,
          ToLeft));

   end SmallScroll;

   function NewWindow
     (This : Window_Type)
     return Pointer_To_Window
   is
       RetVal : aliased Pointer_To_Window;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.NewWindow
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end NewWindow;

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
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.PrintOutOld
         (Pointer (This),
          Background,
          Append,
          uRange,
          OutputFileName,
          From,
          To,
          Item,
          Copies,
          Pages,
          PageType,
          PrintToFile,
          Collate,
          ActivePrinterMacGX,
          ManualDuplexPrint));

   end PrintOutOld;

   procedure PageScroll
     (This : Window_Type;
      Down : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Up   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.PageScroll
         (Pointer (This),
          Down,
          Up));

   end PageScroll;

   procedure SetFocus
     (This : Window_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.SetFocus
         (Pointer (This)));

   end SetFocus;

   function RangeFromPoint
     (This : Window_Type;
      x    : Interfaces.C.long;
      y    : Interfaces.C.long)
     return GNATCOM.Types.Pointer_To_IDispatch
   is
       RetVal : aliased GNATCOM.Types.Pointer_To_IDispatch;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.RangeFromPoint
         (Pointer (This),
          x,
          y,
          RetVal'Unchecked_Access));

      return RetVal;
   end RangeFromPoint;

   procedure ScrollIntoView
     (This  : Window_Type;
      obj   : GNATCOM.Types.Pointer_To_IDispatch;
      Start : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ScrollIntoView
         (Pointer (This),
          obj,
          Start));

   end ScrollIntoView;

   procedure GetPoint
     (This               : Window_Type;
      ScreenPixelsLeft   : GNATCOM.Types.Pointer_To_long;
      ScreenPixelsTop    : GNATCOM.Types.Pointer_To_long;
      ScreenPixelsWidth  : GNATCOM.Types.Pointer_To_long;
      ScreenPixelsHeight : GNATCOM.Types.Pointer_To_long;
      obj                : GNATCOM.Types.Pointer_To_IDispatch)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.GetPoint
         (Pointer (This),
          ScreenPixelsLeft,
          ScreenPixelsTop,
          ScreenPixelsWidth,
          ScreenPixelsHeight,
          obj));

   end GetPoint;

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
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.PrintOut2000
         (Pointer (This),
          Background,
          Append,
          uRange,
          OutputFileName,
          From,
          To,
          Item,
          Copies,
          Pages,
          PageType,
          PrintToFile,
          Collate,
          ActivePrinterMacGX,
          ManualDuplexPrint,
          PrintZoomColumn,
          PrintZoomRow,
          PrintZoomPaperWidth,
          PrintZoomPaperHeight));

   end PrintOut2000;

   function Get_UsableWidth
     (This : Window_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_UsableWidth
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_UsableWidth;

   function Get_UsableHeight
     (This : Window_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_UsableHeight
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_UsableHeight;

   function Get_EnvelopeVisible
     (This : Window_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_EnvelopeVisible
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_EnvelopeVisible;

   procedure Put_EnvelopeVisible
     (This : Window_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_EnvelopeVisible
         (Pointer (This),
          prop));

   end Put_EnvelopeVisible;

   function Get_DisplayRightRuler
     (This : Window_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DisplayRightRuler
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DisplayRightRuler;

   procedure Put_DisplayRightRuler
     (This : Window_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DisplayRightRuler
         (Pointer (This),
          prop));

   end Put_DisplayRightRuler;

   function Get_DisplayLeftScrollBar
     (This : Window_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DisplayLeftScrollBar
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DisplayLeftScrollBar;

   procedure Put_DisplayLeftScrollBar
     (This : Window_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DisplayLeftScrollBar
         (Pointer (This),
          prop));

   end Put_DisplayLeftScrollBar;

   function Get_Visible
     (This : Window_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Visible
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Visible;

   procedure Put_Visible
     (This : Window_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Visible
         (Pointer (This),
          prop));

   end Put_Visible;

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
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.PrintOut
         (Pointer (This),
          Background,
          Append,
          uRange,
          OutputFileName,
          From,
          To,
          Item,
          Copies,
          Pages,
          PageType,
          PrintToFile,
          Collate,
          ActivePrinterMacGX,
          ManualDuplexPrint,
          PrintZoomColumn,
          PrintZoomRow,
          PrintZoomPaperWidth,
          PrintZoomPaperHeight));

   end PrintOut;

end winword.Window_Interface;

