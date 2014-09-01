with GNATCOM.Dispinterface;

package winword.Pane_Interface is

   type Pane_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Pane_Type);

   function Pointer (This : Pane_Type)
     return Pointer_To_Pane;

   procedure Attach (This    : in out Pane_Type;
                     Pointer : in     Pointer_To_Pane);

   function Get_Application
     (This : Pane_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : Pane_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : Pane_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Document
     (This : Pane_Type)
     return Pointer_To_uDocument;

   function Get_Selection
     (This : Pane_Type)
     return Pointer_To_Selection;

   function Get_DisplayRulers
     (This : Pane_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_DisplayRulers
     (This : Pane_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_DisplayVerticalRuler
     (This : Pane_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_DisplayVerticalRuler
     (This : Pane_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_Zooms
     (This : Pane_Type)
     return Pointer_To_Zooms;

   function Get_Index
     (This : Pane_Type)
     return Interfaces.C.long;

   function Get_View
     (This : Pane_Type)
     return Pointer_To_View;

   function Get_Next
     (This : Pane_Type)
     return Pointer_To_Pane;

   function Get_Previous
     (This : Pane_Type)
     return Pointer_To_Pane;

   function Get_HorizontalPercentScrolled
     (This : Pane_Type)
     return Interfaces.C.long;

   procedure Put_HorizontalPercentScrolled
     (This : Pane_Type;
      prop : Interfaces.C.long);

   function Get_VerticalPercentScrolled
     (This : Pane_Type)
     return Interfaces.C.long;

   procedure Put_VerticalPercentScrolled
     (This : Pane_Type;
      prop : Interfaces.C.long);

   function Get_MinimumFontSize
     (This : Pane_Type)
     return Interfaces.C.long;

   procedure Put_MinimumFontSize
     (This : Pane_Type;
      prop : Interfaces.C.long);

   function Get_BrowseToWindow
     (This : Pane_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_BrowseToWindow
     (This : Pane_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_BrowseWidth
     (This : Pane_Type)
     return Interfaces.C.long;

   procedure Activate
     (This : Pane_Type);

   procedure Close
     (This : Pane_Type);

   procedure LargeScroll
     (This    : Pane_Type;
      Down    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Up      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ToRight : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ToLeft  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   procedure SmallScroll
     (This    : Pane_Type;
      Down    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Up      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ToRight : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ToLeft  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   procedure AutoScroll
     (This     : Pane_Type;
      Velocity : Interfaces.C.long);

   procedure PageScroll
     (This : Pane_Type;
      Down : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Up   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   procedure NewFrameset
     (This : Pane_Type);

   procedure TOCInFrameset
     (This : Pane_Type);

   function Get_Frameset
     (This : Pane_Type)
     return Pointer_To_Frameset;

end winword.Pane_Interface;

