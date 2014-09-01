with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.View_Interface is

   procedure Initialize (This : in out View_Type) is
   begin
      Set_IID (This, IID_View);
   end Initialize;

   function Pointer (This : View_Type)
     return Pointer_To_View
   is
   begin
      return To_Pointer_To_View (Address (This));
   end Pointer;

   procedure Attach (This    : in out View_Type;
                     Pointer : in     Pointer_To_View)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : View_Type)
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
     (This : View_Type)
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
     (This : View_Type)
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

   function Get_Type
     (This : View_Type)
     return WdViewType
   is
       RetVal : aliased WdViewType;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Type
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Type;

   procedure Put_Type
     (This : View_Type;
      prop : WdViewType)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Type
         (Pointer (This),
          prop));

   end Put_Type;

   function Get_FullScreen
     (This : View_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_FullScreen
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_FullScreen;

   procedure Put_FullScreen
     (This : View_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_FullScreen
         (Pointer (This),
          prop));

   end Put_FullScreen;

   function Get_Draft
     (This : View_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Draft
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Draft;

   procedure Put_Draft
     (This : View_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Draft
         (Pointer (This),
          prop));

   end Put_Draft;

   function Get_ShowAll
     (This : View_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ShowAll
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ShowAll;

   procedure Put_ShowAll
     (This : View_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ShowAll
         (Pointer (This),
          prop));

   end Put_ShowAll;

   function Get_ShowFieldCodes
     (This : View_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ShowFieldCodes
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ShowFieldCodes;

   procedure Put_ShowFieldCodes
     (This : View_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ShowFieldCodes
         (Pointer (This),
          prop));

   end Put_ShowFieldCodes;

   function Get_MailMergeDataView
     (This : View_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_MailMergeDataView
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_MailMergeDataView;

   procedure Put_MailMergeDataView
     (This : View_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_MailMergeDataView
         (Pointer (This),
          prop));

   end Put_MailMergeDataView;

   function Get_Magnifier
     (This : View_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Magnifier
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Magnifier;

   procedure Put_Magnifier
     (This : View_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Magnifier
         (Pointer (This),
          prop));

   end Put_Magnifier;

   function Get_ShowFirstLineOnly
     (This : View_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ShowFirstLineOnly
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ShowFirstLineOnly;

   procedure Put_ShowFirstLineOnly
     (This : View_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ShowFirstLineOnly
         (Pointer (This),
          prop));

   end Put_ShowFirstLineOnly;

   function Get_ShowFormat
     (This : View_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ShowFormat
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ShowFormat;

   procedure Put_ShowFormat
     (This : View_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ShowFormat
         (Pointer (This),
          prop));

   end Put_ShowFormat;

   function Get_Zoom
     (This : View_Type)
     return Pointer_To_Zoom
   is
       RetVal : aliased Pointer_To_Zoom;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Zoom
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Zoom;

   function Get_ShowObjectAnchors
     (This : View_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ShowObjectAnchors
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ShowObjectAnchors;

   procedure Put_ShowObjectAnchors
     (This : View_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ShowObjectAnchors
         (Pointer (This),
          prop));

   end Put_ShowObjectAnchors;

   function Get_ShowTextBoundaries
     (This : View_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ShowTextBoundaries
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ShowTextBoundaries;

   procedure Put_ShowTextBoundaries
     (This : View_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ShowTextBoundaries
         (Pointer (This),
          prop));

   end Put_ShowTextBoundaries;

   function Get_ShowHighlight
     (This : View_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ShowHighlight
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ShowHighlight;

   procedure Put_ShowHighlight
     (This : View_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ShowHighlight
         (Pointer (This),
          prop));

   end Put_ShowHighlight;

   function Get_ShowDrawings
     (This : View_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ShowDrawings
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ShowDrawings;

   procedure Put_ShowDrawings
     (This : View_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ShowDrawings
         (Pointer (This),
          prop));

   end Put_ShowDrawings;

   function Get_ShowTabs
     (This : View_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ShowTabs
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ShowTabs;

   procedure Put_ShowTabs
     (This : View_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ShowTabs
         (Pointer (This),
          prop));

   end Put_ShowTabs;

   function Get_ShowSpaces
     (This : View_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ShowSpaces
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ShowSpaces;

   procedure Put_ShowSpaces
     (This : View_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ShowSpaces
         (Pointer (This),
          prop));

   end Put_ShowSpaces;

   function Get_ShowParagraphs
     (This : View_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ShowParagraphs
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ShowParagraphs;

   procedure Put_ShowParagraphs
     (This : View_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ShowParagraphs
         (Pointer (This),
          prop));

   end Put_ShowParagraphs;

   function Get_ShowHyphens
     (This : View_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ShowHyphens
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ShowHyphens;

   procedure Put_ShowHyphens
     (This : View_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ShowHyphens
         (Pointer (This),
          prop));

   end Put_ShowHyphens;

   function Get_ShowHiddenText
     (This : View_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ShowHiddenText
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ShowHiddenText;

   procedure Put_ShowHiddenText
     (This : View_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ShowHiddenText
         (Pointer (This),
          prop));

   end Put_ShowHiddenText;

   function Get_WrapToWindow
     (This : View_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_WrapToWindow
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_WrapToWindow;

   procedure Put_WrapToWindow
     (This : View_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_WrapToWindow
         (Pointer (This),
          prop));

   end Put_WrapToWindow;

   function Get_ShowPicturePlaceHolders
     (This : View_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ShowPicturePlaceHolders
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ShowPicturePlaceHolders;

   procedure Put_ShowPicturePlaceHolders
     (This : View_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ShowPicturePlaceHolders
         (Pointer (This),
          prop));

   end Put_ShowPicturePlaceHolders;

   function Get_ShowBookmarks
     (This : View_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ShowBookmarks
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ShowBookmarks;

   procedure Put_ShowBookmarks
     (This : View_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ShowBookmarks
         (Pointer (This),
          prop));

   end Put_ShowBookmarks;

   function Get_FieldShading
     (This : View_Type)
     return WdFieldShading
   is
       RetVal : aliased WdFieldShading;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_FieldShading
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_FieldShading;

   procedure Put_FieldShading
     (This : View_Type;
      prop : WdFieldShading)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_FieldShading
         (Pointer (This),
          prop));

   end Put_FieldShading;

   function Get_ShowAnimation
     (This : View_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ShowAnimation
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ShowAnimation;

   procedure Put_ShowAnimation
     (This : View_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ShowAnimation
         (Pointer (This),
          prop));

   end Put_ShowAnimation;

   function Get_TableGridlines
     (This : View_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_TableGridlines
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_TableGridlines;

   procedure Put_TableGridlines
     (This : View_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_TableGridlines
         (Pointer (This),
          prop));

   end Put_TableGridlines;

   function Get_EnlargeFontsLessThan
     (This : View_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_EnlargeFontsLessThan
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_EnlargeFontsLessThan;

   procedure Put_EnlargeFontsLessThan
     (This : View_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_EnlargeFontsLessThan
         (Pointer (This),
          prop));

   end Put_EnlargeFontsLessThan;

   function Get_ShowMainTextLayer
     (This : View_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ShowMainTextLayer
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ShowMainTextLayer;

   procedure Put_ShowMainTextLayer
     (This : View_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ShowMainTextLayer
         (Pointer (This),
          prop));

   end Put_ShowMainTextLayer;

   function Get_SeekView
     (This : View_Type)
     return WdSeekView
   is
       RetVal : aliased WdSeekView;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SeekView
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_SeekView;

   procedure Put_SeekView
     (This : View_Type;
      prop : WdSeekView)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_SeekView
         (Pointer (This),
          prop));

   end Put_SeekView;

   function Get_SplitSpecial
     (This : View_Type)
     return WdSpecialPane
   is
       RetVal : aliased WdSpecialPane;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SplitSpecial
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_SplitSpecial;

   procedure Put_SplitSpecial
     (This : View_Type;
      prop : WdSpecialPane)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_SplitSpecial
         (Pointer (This),
          prop));

   end Put_SplitSpecial;

   function Get_BrowseToWindow
     (This : View_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_BrowseToWindow
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_BrowseToWindow;

   procedure Put_BrowseToWindow
     (This : View_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_BrowseToWindow
         (Pointer (This),
          prop));

   end Put_BrowseToWindow;

   function Get_ShowOptionalBreaks
     (This : View_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ShowOptionalBreaks
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ShowOptionalBreaks;

   procedure Put_ShowOptionalBreaks
     (This : View_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ShowOptionalBreaks
         (Pointer (This),
          prop));

   end Put_ShowOptionalBreaks;

   procedure CollapseOutline
     (This   : View_Type;
      uRange : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.CollapseOutline
         (Pointer (This),
          uRange));

   end CollapseOutline;

   procedure ExpandOutline
     (This   : View_Type;
      uRange : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ExpandOutline
         (Pointer (This),
          uRange));

   end ExpandOutline;

   procedure ShowAllHeadings
     (This : View_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ShowAllHeadings
         (Pointer (This)));

   end ShowAllHeadings;

   procedure ShowHeading
     (This  : View_Type;
      Level : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ShowHeading
         (Pointer (This),
          Level));

   end ShowHeading;

   procedure PreviousHeaderFooter
     (This : View_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.PreviousHeaderFooter
         (Pointer (This)));

   end PreviousHeaderFooter;

   procedure NextHeaderFooter
     (This : View_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.NextHeaderFooter
         (Pointer (This)));

   end NextHeaderFooter;

   function Get_DisplayPageBoundaries
     (This : View_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DisplayPageBoundaries
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DisplayPageBoundaries;

   procedure Put_DisplayPageBoundaries
     (This : View_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DisplayPageBoundaries
         (Pointer (This),
          prop));

   end Put_DisplayPageBoundaries;

   function Get_DisplaySmartTags
     (This : View_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DisplaySmartTags
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DisplaySmartTags;

   procedure Put_DisplaySmartTags
     (This : View_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DisplaySmartTags
         (Pointer (This),
          prop));

   end Put_DisplaySmartTags;

   function Get_ShowRevisionsAndComments
     (This : View_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ShowRevisionsAndComments
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ShowRevisionsAndComments;

   procedure Put_ShowRevisionsAndComments
     (This : View_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ShowRevisionsAndComments
         (Pointer (This),
          prop));

   end Put_ShowRevisionsAndComments;

   function Get_ShowComments
     (This : View_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ShowComments
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ShowComments;

   procedure Put_ShowComments
     (This : View_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ShowComments
         (Pointer (This),
          prop));

   end Put_ShowComments;

   function Get_ShowInsertionsAndDeletions
     (This : View_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ShowInsertionsAndDeletions
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ShowInsertionsAndDeletions;

   procedure Put_ShowInsertionsAndDeletions
     (This : View_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ShowInsertionsAndDeletions
         (Pointer (This),
          prop));

   end Put_ShowInsertionsAndDeletions;

   function Get_ShowFormatChanges
     (This : View_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ShowFormatChanges
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ShowFormatChanges;

   procedure Put_ShowFormatChanges
     (This : View_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ShowFormatChanges
         (Pointer (This),
          prop));

   end Put_ShowFormatChanges;

   function Get_RevisionsView
     (This : View_Type)
     return WdRevisionsView
   is
       RetVal : aliased WdRevisionsView;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_RevisionsView
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_RevisionsView;

   procedure Put_RevisionsView
     (This : View_Type;
      prop : WdRevisionsView)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_RevisionsView
         (Pointer (This),
          prop));

   end Put_RevisionsView;

   function Get_RevisionsMode
     (This : View_Type)
     return WdRevisionsMode
   is
       RetVal : aliased WdRevisionsMode;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_RevisionsMode
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_RevisionsMode;

   procedure Put_RevisionsMode
     (This : View_Type;
      prop : WdRevisionsMode)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_RevisionsMode
         (Pointer (This),
          prop));

   end Put_RevisionsMode;

   function Get_RevisionsBalloonWidth
     (This : View_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_RevisionsBalloonWidth
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_RevisionsBalloonWidth;

   procedure Put_RevisionsBalloonWidth
     (This : View_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_RevisionsBalloonWidth
         (Pointer (This),
          prop));

   end Put_RevisionsBalloonWidth;

   function Get_RevisionsBalloonWidthType
     (This : View_Type)
     return WdRevisionsBalloonWidthType
   is
       RetVal : aliased WdRevisionsBalloonWidthType;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_RevisionsBalloonWidthType
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_RevisionsBalloonWidthType;

   procedure Put_RevisionsBalloonWidthType
     (This : View_Type;
      prop : WdRevisionsBalloonWidthType)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_RevisionsBalloonWidthType
         (Pointer (This),
          prop));

   end Put_RevisionsBalloonWidthType;

   function Get_RevisionsBalloonSide
     (This : View_Type)
     return WdRevisionsBalloonMargin
   is
       RetVal : aliased WdRevisionsBalloonMargin;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_RevisionsBalloonSide
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_RevisionsBalloonSide;

   procedure Put_RevisionsBalloonSide
     (This : View_Type;
      prop : WdRevisionsBalloonMargin)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_RevisionsBalloonSide
         (Pointer (This),
          prop));

   end Put_RevisionsBalloonSide;

   function Get_Reviewers
     (This : View_Type)
     return Pointer_To_Reviewers
   is
       RetVal : aliased Pointer_To_Reviewers;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Reviewers
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Reviewers;

   function Get_RevisionsBalloonShowConnectingLines
     (This : View_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_RevisionsBalloonShowConnectingLines
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_RevisionsBalloonShowConnectingLines;

   procedure Put_RevisionsBalloonShowConnectingLines
     (This : View_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_RevisionsBalloonShowConnectingLines
         (Pointer (This),
          prop));

   end Put_RevisionsBalloonShowConnectingLines;

end winword.View_Interface;

