with GNATCOM.Dispinterface;

package winword.Pane_Object is

   type Pane_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : Pane_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : Pane_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : Pane_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Document
     (This : Pane_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Selection
     (This : Pane_Type)
     return GNATCOM.Types.VARIANT;

   function Get_DisplayRulers
     (This : Pane_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DisplayRulers
     (This : Pane_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_DisplayVerticalRuler
     (This : Pane_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DisplayVerticalRuler
     (This : Pane_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Zooms
     (This : Pane_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Index
     (This : Pane_Type)
     return GNATCOM.Types.VARIANT;

   function Get_View
     (This : Pane_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Next
     (This : Pane_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Previous
     (This : Pane_Type)
     return GNATCOM.Types.VARIANT;

   function Get_HorizontalPercentScrolled
     (This : Pane_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_HorizontalPercentScrolled
     (This : Pane_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_VerticalPercentScrolled
     (This : Pane_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_VerticalPercentScrolled
     (This : Pane_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_MinimumFontSize
     (This : Pane_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_MinimumFontSize
     (This : Pane_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_BrowseToWindow
     (This : Pane_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_BrowseToWindow
     (This : Pane_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_BrowseWidth
     (This : Pane_Type)
     return GNATCOM.Types.VARIANT;

   procedure Activate
     (This : Pane_Type);

   procedure Close
     (This : Pane_Type);

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
      Free    : Boolean := True);

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
      Free    : Boolean := True);

   procedure AutoScroll
     (This     : Pane_Type;
      Velocity : GNATCOM.Types.VARIANT;
      Free     : Boolean := True);

   procedure PageScroll
     (This : Pane_Type;
      Down : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Up   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free : Boolean := True);

   procedure NewFrameset
     (This : Pane_Type);

   procedure TOCInFrameset
     (This : Pane_Type);

   function Get_Frameset
     (This : Pane_Type)
     return GNATCOM.Types.VARIANT;

end winword.Pane_Object;

