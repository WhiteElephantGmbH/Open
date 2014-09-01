with GNATCOM.Dispinterface;

package winword.View_Interface is

   type View_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out View_Type);

   function Pointer (This : View_Type)
     return Pointer_To_View;

   procedure Attach (This    : in out View_Type;
                     Pointer : in     Pointer_To_View);

   function Get_Application
     (This : View_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : View_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : View_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Type
     (This : View_Type)
     return WdViewType;

   procedure Put_Type
     (This : View_Type;
      prop : WdViewType);

   function Get_FullScreen
     (This : View_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_FullScreen
     (This : View_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_Draft
     (This : View_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_Draft
     (This : View_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_ShowAll
     (This : View_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_ShowAll
     (This : View_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_ShowFieldCodes
     (This : View_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_ShowFieldCodes
     (This : View_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_MailMergeDataView
     (This : View_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_MailMergeDataView
     (This : View_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_Magnifier
     (This : View_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_Magnifier
     (This : View_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_ShowFirstLineOnly
     (This : View_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_ShowFirstLineOnly
     (This : View_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_ShowFormat
     (This : View_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_ShowFormat
     (This : View_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_Zoom
     (This : View_Type)
     return Pointer_To_Zoom;

   function Get_ShowObjectAnchors
     (This : View_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_ShowObjectAnchors
     (This : View_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_ShowTextBoundaries
     (This : View_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_ShowTextBoundaries
     (This : View_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_ShowHighlight
     (This : View_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_ShowHighlight
     (This : View_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_ShowDrawings
     (This : View_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_ShowDrawings
     (This : View_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_ShowTabs
     (This : View_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_ShowTabs
     (This : View_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_ShowSpaces
     (This : View_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_ShowSpaces
     (This : View_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_ShowParagraphs
     (This : View_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_ShowParagraphs
     (This : View_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_ShowHyphens
     (This : View_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_ShowHyphens
     (This : View_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_ShowHiddenText
     (This : View_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_ShowHiddenText
     (This : View_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_WrapToWindow
     (This : View_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_WrapToWindow
     (This : View_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_ShowPicturePlaceHolders
     (This : View_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_ShowPicturePlaceHolders
     (This : View_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_ShowBookmarks
     (This : View_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_ShowBookmarks
     (This : View_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_FieldShading
     (This : View_Type)
     return WdFieldShading;

   procedure Put_FieldShading
     (This : View_Type;
      prop : WdFieldShading);

   function Get_ShowAnimation
     (This : View_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_ShowAnimation
     (This : View_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_TableGridlines
     (This : View_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_TableGridlines
     (This : View_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_EnlargeFontsLessThan
     (This : View_Type)
     return Interfaces.C.long;

   procedure Put_EnlargeFontsLessThan
     (This : View_Type;
      prop : Interfaces.C.long);

   function Get_ShowMainTextLayer
     (This : View_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_ShowMainTextLayer
     (This : View_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_SeekView
     (This : View_Type)
     return WdSeekView;

   procedure Put_SeekView
     (This : View_Type;
      prop : WdSeekView);

   function Get_SplitSpecial
     (This : View_Type)
     return WdSpecialPane;

   procedure Put_SplitSpecial
     (This : View_Type;
      prop : WdSpecialPane);

   function Get_BrowseToWindow
     (This : View_Type)
     return Interfaces.C.long;

   procedure Put_BrowseToWindow
     (This : View_Type;
      prop : Interfaces.C.long);

   function Get_ShowOptionalBreaks
     (This : View_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_ShowOptionalBreaks
     (This : View_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   procedure CollapseOutline
     (This   : View_Type;
      uRange : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   procedure ExpandOutline
     (This   : View_Type;
      uRange : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   procedure ShowAllHeadings
     (This : View_Type);

   procedure ShowHeading
     (This  : View_Type;
      Level : Interfaces.C.long);

   procedure PreviousHeaderFooter
     (This : View_Type);

   procedure NextHeaderFooter
     (This : View_Type);

   function Get_DisplayPageBoundaries
     (This : View_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_DisplayPageBoundaries
     (This : View_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_DisplaySmartTags
     (This : View_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_DisplaySmartTags
     (This : View_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_ShowRevisionsAndComments
     (This : View_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_ShowRevisionsAndComments
     (This : View_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_ShowComments
     (This : View_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_ShowComments
     (This : View_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_ShowInsertionsAndDeletions
     (This : View_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_ShowInsertionsAndDeletions
     (This : View_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_ShowFormatChanges
     (This : View_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_ShowFormatChanges
     (This : View_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_RevisionsView
     (This : View_Type)
     return WdRevisionsView;

   procedure Put_RevisionsView
     (This : View_Type;
      prop : WdRevisionsView);

   function Get_RevisionsMode
     (This : View_Type)
     return WdRevisionsMode;

   procedure Put_RevisionsMode
     (This : View_Type;
      prop : WdRevisionsMode);

   function Get_RevisionsBalloonWidth
     (This : View_Type)
     return Interfaces.C.C_float;

   procedure Put_RevisionsBalloonWidth
     (This : View_Type;
      prop : Interfaces.C.C_float);

   function Get_RevisionsBalloonWidthType
     (This : View_Type)
     return WdRevisionsBalloonWidthType;

   procedure Put_RevisionsBalloonWidthType
     (This : View_Type;
      prop : WdRevisionsBalloonWidthType);

   function Get_RevisionsBalloonSide
     (This : View_Type)
     return WdRevisionsBalloonMargin;

   procedure Put_RevisionsBalloonSide
     (This : View_Type;
      prop : WdRevisionsBalloonMargin);

   function Get_Reviewers
     (This : View_Type)
     return Pointer_To_Reviewers;

   function Get_RevisionsBalloonShowConnectingLines
     (This : View_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_RevisionsBalloonShowConnectingLines
     (This : View_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

end winword.View_Interface;

