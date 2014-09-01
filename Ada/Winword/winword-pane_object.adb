package body winword.Pane_Object is

   function Get_Application
     (This : Pane_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Pane_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : Pane_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Pane_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : Pane_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Pane_Get_Parent);
   end Get_Parent;

   function Get_Document
     (This : Pane_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Pane_Get_Document);
   end Get_Document;

   function Get_Selection
     (This : Pane_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Pane_Get_Selection);
   end Get_Selection;

   function Get_DisplayRulers
     (This : Pane_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Pane_Get_DisplayRulers);
   end Get_DisplayRulers;

   procedure Put_DisplayRulers
     (This : Pane_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Pane_Put_DisplayRulers,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DisplayRulers;

   function Get_DisplayVerticalRuler
     (This : Pane_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Pane_Get_DisplayVerticalRuler);
   end Get_DisplayVerticalRuler;

   procedure Put_DisplayVerticalRuler
     (This : Pane_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Pane_Put_DisplayVerticalRuler,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DisplayVerticalRuler;

   function Get_Zooms
     (This : Pane_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Pane_Get_Zooms);
   end Get_Zooms;

   function Get_Index
     (This : Pane_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Pane_Get_Index);
   end Get_Index;

   function Get_View
     (This : Pane_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Pane_Get_View);
   end Get_View;

   function Get_Next
     (This : Pane_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Pane_Get_Next);
   end Get_Next;

   function Get_Previous
     (This : Pane_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Pane_Get_Previous);
   end Get_Previous;

   function Get_HorizontalPercentScrolled
     (This : Pane_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Pane_Get_HorizontalPercentScrolled);
   end Get_HorizontalPercentScrolled;

   procedure Put_HorizontalPercentScrolled
     (This : Pane_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Pane_Put_HorizontalPercentScrolled,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_HorizontalPercentScrolled;

   function Get_VerticalPercentScrolled
     (This : Pane_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Pane_Get_VerticalPercentScrolled);
   end Get_VerticalPercentScrolled;

   procedure Put_VerticalPercentScrolled
     (This : Pane_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Pane_Put_VerticalPercentScrolled,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_VerticalPercentScrolled;

   function Get_MinimumFontSize
     (This : Pane_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Pane_Get_MinimumFontSize);
   end Get_MinimumFontSize;

   procedure Put_MinimumFontSize
     (This : Pane_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Pane_Put_MinimumFontSize,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_MinimumFontSize;

   function Get_BrowseToWindow
     (This : Pane_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Pane_Get_BrowseToWindow);
   end Get_BrowseToWindow;

   procedure Put_BrowseToWindow
     (This : Pane_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Pane_Put_BrowseToWindow,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_BrowseToWindow;

   function Get_BrowseWidth
     (This : Pane_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Pane_Get_BrowseWidth);
   end Get_BrowseWidth;

   procedure Activate
     (This : Pane_Type)
   is
   begin
      Invoke (This, Pane_Activate);
   end Activate;

   procedure Close
     (This : Pane_Type)
   is
   begin
      Invoke (This, Pane_Close);
   end Close;

   procedure LargeScroll
     (This    : Pane_Type;
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
         Pane_LargeScroll,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => ToLeft,
          2 => ToRight,
          3 => Up,
          4 => Down),
         Free);
   end LargeScroll;

   procedure SmallScroll
     (This    : Pane_Type;
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
         Pane_SmallScroll,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => ToLeft,
          2 => ToRight,
          3 => Up,
          4 => Down),
         Free);
   end SmallScroll;

   procedure AutoScroll
     (This     : Pane_Type;
      Velocity : GNATCOM.Types.VARIANT;
      Free     : Boolean := True)
   is
   begin
      Invoke
        (This,
         Pane_AutoScroll,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Velocity),
         Free);
   end AutoScroll;

   procedure PageScroll
     (This : Pane_Type;
      Down : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Up   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free : Boolean := True)
   is
   begin
      Invoke
        (This,
         Pane_PageScroll,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Up,
          2 => Down),
         Free);
   end PageScroll;

   procedure NewFrameset
     (This : Pane_Type)
   is
   begin
      Invoke (This, Pane_NewFrameset);
   end NewFrameset;

   procedure TOCInFrameset
     (This : Pane_Type)
   is
   begin
      Invoke (This, Pane_TOCInFrameset);
   end TOCInFrameset;

   function Get_Frameset
     (This : Pane_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Pane_Get_Frameset);
   end Get_Frameset;

end winword.Pane_Object;

