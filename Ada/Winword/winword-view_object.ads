with GNATCOM.Dispinterface;

package winword.View_Object is

   type View_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : View_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : View_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : View_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Type
     (This : View_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Type
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_FullScreen
     (This : View_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_FullScreen
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Draft
     (This : View_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Draft
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ShowAll
     (This : View_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ShowAll
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ShowFieldCodes
     (This : View_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ShowFieldCodes
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_MailMergeDataView
     (This : View_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_MailMergeDataView
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Magnifier
     (This : View_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Magnifier
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ShowFirstLineOnly
     (This : View_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ShowFirstLineOnly
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ShowFormat
     (This : View_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ShowFormat
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Zoom
     (This : View_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ShowObjectAnchors
     (This : View_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ShowObjectAnchors
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ShowTextBoundaries
     (This : View_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ShowTextBoundaries
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ShowHighlight
     (This : View_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ShowHighlight
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ShowDrawings
     (This : View_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ShowDrawings
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ShowTabs
     (This : View_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ShowTabs
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ShowSpaces
     (This : View_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ShowSpaces
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ShowParagraphs
     (This : View_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ShowParagraphs
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ShowHyphens
     (This : View_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ShowHyphens
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ShowHiddenText
     (This : View_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ShowHiddenText
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_WrapToWindow
     (This : View_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_WrapToWindow
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ShowPicturePlaceHolders
     (This : View_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ShowPicturePlaceHolders
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ShowBookmarks
     (This : View_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ShowBookmarks
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_FieldShading
     (This : View_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_FieldShading
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ShowAnimation
     (This : View_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ShowAnimation
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_TableGridlines
     (This : View_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_TableGridlines
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_EnlargeFontsLessThan
     (This : View_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_EnlargeFontsLessThan
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ShowMainTextLayer
     (This : View_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ShowMainTextLayer
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_SeekView
     (This : View_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_SeekView
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_SplitSpecial
     (This : View_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_SplitSpecial
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_BrowseToWindow
     (This : View_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_BrowseToWindow
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ShowOptionalBreaks
     (This : View_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ShowOptionalBreaks
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure CollapseOutline
     (This   : View_Type;
      uRange : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free   : Boolean := True);

   procedure ExpandOutline
     (This   : View_Type;
      uRange : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free   : Boolean := True);

   procedure ShowAllHeadings
     (This : View_Type);

   procedure ShowHeading
     (This  : View_Type;
      Level : GNATCOM.Types.VARIANT;
      Free  : Boolean := True);

   procedure PreviousHeaderFooter
     (This : View_Type);

   procedure NextHeaderFooter
     (This : View_Type);

   function Get_DisplayPageBoundaries
     (This : View_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DisplayPageBoundaries
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_DisplaySmartTags
     (This : View_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DisplaySmartTags
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ShowRevisionsAndComments
     (This : View_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ShowRevisionsAndComments
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ShowComments
     (This : View_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ShowComments
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ShowInsertionsAndDeletions
     (This : View_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ShowInsertionsAndDeletions
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ShowFormatChanges
     (This : View_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ShowFormatChanges
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_RevisionsView
     (This : View_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_RevisionsView
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_RevisionsMode
     (This : View_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_RevisionsMode
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_RevisionsBalloonWidth
     (This : View_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_RevisionsBalloonWidth
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_RevisionsBalloonWidthType
     (This : View_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_RevisionsBalloonWidthType
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_RevisionsBalloonSide
     (This : View_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_RevisionsBalloonSide
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Reviewers
     (This : View_Type)
     return GNATCOM.Types.VARIANT;

   function Get_RevisionsBalloonShowConnectingLines
     (This : View_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_RevisionsBalloonShowConnectingLines
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

end winword.View_Object;

