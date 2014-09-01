with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.Pane_Interface is

   procedure Initialize (This : in out Pane_Type) is
   begin
      Set_IID (This, IID_Pane);
   end Initialize;

   function Pointer (This : Pane_Type)
     return Pointer_To_Pane
   is
   begin
      return To_Pointer_To_Pane (Address (This));
   end Pointer;

   procedure Attach (This    : in out Pane_Type;
                     Pointer : in     Pointer_To_Pane)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : Pane_Type)
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
     (This : Pane_Type)
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
     (This : Pane_Type)
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

   function Get_Document
     (This : Pane_Type)
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

   function Get_Selection
     (This : Pane_Type)
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

   function Get_DisplayRulers
     (This : Pane_Type)
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
     (This : Pane_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DisplayRulers
         (Pointer (This),
          prop));

   end Put_DisplayRulers;

   function Get_DisplayVerticalRuler
     (This : Pane_Type)
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
     (This : Pane_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DisplayVerticalRuler
         (Pointer (This),
          prop));

   end Put_DisplayVerticalRuler;

   function Get_Zooms
     (This : Pane_Type)
     return Pointer_To_Zooms
   is
       RetVal : aliased Pointer_To_Zooms;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Zooms
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Zooms;

   function Get_Index
     (This : Pane_Type)
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

   function Get_View
     (This : Pane_Type)
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

   function Get_Next
     (This : Pane_Type)
     return Pointer_To_Pane
   is
       RetVal : aliased Pointer_To_Pane;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Next
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Next;

   function Get_Previous
     (This : Pane_Type)
     return Pointer_To_Pane
   is
       RetVal : aliased Pointer_To_Pane;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Previous
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Previous;

   function Get_HorizontalPercentScrolled
     (This : Pane_Type)
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
     (This : Pane_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_HorizontalPercentScrolled
         (Pointer (This),
          prop));

   end Put_HorizontalPercentScrolled;

   function Get_VerticalPercentScrolled
     (This : Pane_Type)
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
     (This : Pane_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_VerticalPercentScrolled
         (Pointer (This),
          prop));

   end Put_VerticalPercentScrolled;

   function Get_MinimumFontSize
     (This : Pane_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_MinimumFontSize
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_MinimumFontSize;

   procedure Put_MinimumFontSize
     (This : Pane_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_MinimumFontSize
         (Pointer (This),
          prop));

   end Put_MinimumFontSize;

   function Get_BrowseToWindow
     (This : Pane_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_BrowseToWindow
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_BrowseToWindow;

   procedure Put_BrowseToWindow
     (This : Pane_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_BrowseToWindow
         (Pointer (This),
          prop));

   end Put_BrowseToWindow;

   function Get_BrowseWidth
     (This : Pane_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_BrowseWidth
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_BrowseWidth;

   procedure Activate
     (This : Pane_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Activate
         (Pointer (This)));

   end Activate;

   procedure Close
     (This : Pane_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Close
         (Pointer (This)));

   end Close;

   procedure LargeScroll
     (This    : Pane_Type;
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
     (This    : Pane_Type;
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

   procedure AutoScroll
     (This     : Pane_Type;
      Velocity : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.AutoScroll
         (Pointer (This),
          Velocity));

   end AutoScroll;

   procedure PageScroll
     (This : Pane_Type;
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

   procedure NewFrameset
     (This : Pane_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.NewFrameset
         (Pointer (This)));

   end NewFrameset;

   procedure TOCInFrameset
     (This : Pane_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.TOCInFrameset
         (Pointer (This)));

   end TOCInFrameset;

   function Get_Frameset
     (This : Pane_Type)
     return Pointer_To_Frameset
   is
       RetVal : aliased Pointer_To_Frameset;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Frameset
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Frameset;

end winword.Pane_Interface;

