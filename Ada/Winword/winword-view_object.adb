package body winword.View_Object is

   function Get_Application
     (This : View_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, View_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : View_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, View_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : View_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, View_Get_Parent);
   end Get_Parent;

   function Get_Type
     (This : View_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, View_Get_Type);
   end Get_Type;

   procedure Put_Type
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         View_Put_Type,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Type;

   function Get_FullScreen
     (This : View_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, View_Get_FullScreen);
   end Get_FullScreen;

   procedure Put_FullScreen
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         View_Put_FullScreen,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_FullScreen;

   function Get_Draft
     (This : View_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, View_Get_Draft);
   end Get_Draft;

   procedure Put_Draft
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         View_Put_Draft,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Draft;

   function Get_ShowAll
     (This : View_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, View_Get_ShowAll);
   end Get_ShowAll;

   procedure Put_ShowAll
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         View_Put_ShowAll,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ShowAll;

   function Get_ShowFieldCodes
     (This : View_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, View_Get_ShowFieldCodes);
   end Get_ShowFieldCodes;

   procedure Put_ShowFieldCodes
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         View_Put_ShowFieldCodes,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ShowFieldCodes;

   function Get_MailMergeDataView
     (This : View_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, View_Get_MailMergeDataView);
   end Get_MailMergeDataView;

   procedure Put_MailMergeDataView
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         View_Put_MailMergeDataView,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_MailMergeDataView;

   function Get_Magnifier
     (This : View_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, View_Get_Magnifier);
   end Get_Magnifier;

   procedure Put_Magnifier
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         View_Put_Magnifier,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Magnifier;

   function Get_ShowFirstLineOnly
     (This : View_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, View_Get_ShowFirstLineOnly);
   end Get_ShowFirstLineOnly;

   procedure Put_ShowFirstLineOnly
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         View_Put_ShowFirstLineOnly,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ShowFirstLineOnly;

   function Get_ShowFormat
     (This : View_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, View_Get_ShowFormat);
   end Get_ShowFormat;

   procedure Put_ShowFormat
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         View_Put_ShowFormat,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ShowFormat;

   function Get_Zoom
     (This : View_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, View_Get_Zoom);
   end Get_Zoom;

   function Get_ShowObjectAnchors
     (This : View_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, View_Get_ShowObjectAnchors);
   end Get_ShowObjectAnchors;

   procedure Put_ShowObjectAnchors
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         View_Put_ShowObjectAnchors,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ShowObjectAnchors;

   function Get_ShowTextBoundaries
     (This : View_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, View_Get_ShowTextBoundaries);
   end Get_ShowTextBoundaries;

   procedure Put_ShowTextBoundaries
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         View_Put_ShowTextBoundaries,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ShowTextBoundaries;

   function Get_ShowHighlight
     (This : View_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, View_Get_ShowHighlight);
   end Get_ShowHighlight;

   procedure Put_ShowHighlight
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         View_Put_ShowHighlight,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ShowHighlight;

   function Get_ShowDrawings
     (This : View_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, View_Get_ShowDrawings);
   end Get_ShowDrawings;

   procedure Put_ShowDrawings
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         View_Put_ShowDrawings,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ShowDrawings;

   function Get_ShowTabs
     (This : View_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, View_Get_ShowTabs);
   end Get_ShowTabs;

   procedure Put_ShowTabs
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         View_Put_ShowTabs,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ShowTabs;

   function Get_ShowSpaces
     (This : View_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, View_Get_ShowSpaces);
   end Get_ShowSpaces;

   procedure Put_ShowSpaces
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         View_Put_ShowSpaces,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ShowSpaces;

   function Get_ShowParagraphs
     (This : View_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, View_Get_ShowParagraphs);
   end Get_ShowParagraphs;

   procedure Put_ShowParagraphs
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         View_Put_ShowParagraphs,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ShowParagraphs;

   function Get_ShowHyphens
     (This : View_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, View_Get_ShowHyphens);
   end Get_ShowHyphens;

   procedure Put_ShowHyphens
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         View_Put_ShowHyphens,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ShowHyphens;

   function Get_ShowHiddenText
     (This : View_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, View_Get_ShowHiddenText);
   end Get_ShowHiddenText;

   procedure Put_ShowHiddenText
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         View_Put_ShowHiddenText,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ShowHiddenText;

   function Get_WrapToWindow
     (This : View_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, View_Get_WrapToWindow);
   end Get_WrapToWindow;

   procedure Put_WrapToWindow
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         View_Put_WrapToWindow,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_WrapToWindow;

   function Get_ShowPicturePlaceHolders
     (This : View_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, View_Get_ShowPicturePlaceHolders);
   end Get_ShowPicturePlaceHolders;

   procedure Put_ShowPicturePlaceHolders
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         View_Put_ShowPicturePlaceHolders,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ShowPicturePlaceHolders;

   function Get_ShowBookmarks
     (This : View_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, View_Get_ShowBookmarks);
   end Get_ShowBookmarks;

   procedure Put_ShowBookmarks
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         View_Put_ShowBookmarks,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ShowBookmarks;

   function Get_FieldShading
     (This : View_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, View_Get_FieldShading);
   end Get_FieldShading;

   procedure Put_FieldShading
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         View_Put_FieldShading,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_FieldShading;

   function Get_ShowAnimation
     (This : View_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, View_Get_ShowAnimation);
   end Get_ShowAnimation;

   procedure Put_ShowAnimation
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         View_Put_ShowAnimation,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ShowAnimation;

   function Get_TableGridlines
     (This : View_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, View_Get_TableGridlines);
   end Get_TableGridlines;

   procedure Put_TableGridlines
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         View_Put_TableGridlines,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_TableGridlines;

   function Get_EnlargeFontsLessThan
     (This : View_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, View_Get_EnlargeFontsLessThan);
   end Get_EnlargeFontsLessThan;

   procedure Put_EnlargeFontsLessThan
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         View_Put_EnlargeFontsLessThan,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_EnlargeFontsLessThan;

   function Get_ShowMainTextLayer
     (This : View_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, View_Get_ShowMainTextLayer);
   end Get_ShowMainTextLayer;

   procedure Put_ShowMainTextLayer
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         View_Put_ShowMainTextLayer,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ShowMainTextLayer;

   function Get_SeekView
     (This : View_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, View_Get_SeekView);
   end Get_SeekView;

   procedure Put_SeekView
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         View_Put_SeekView,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_SeekView;

   function Get_SplitSpecial
     (This : View_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, View_Get_SplitSpecial);
   end Get_SplitSpecial;

   procedure Put_SplitSpecial
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         View_Put_SplitSpecial,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_SplitSpecial;

   function Get_BrowseToWindow
     (This : View_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, View_Get_BrowseToWindow);
   end Get_BrowseToWindow;

   procedure Put_BrowseToWindow
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         View_Put_BrowseToWindow,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_BrowseToWindow;

   function Get_ShowOptionalBreaks
     (This : View_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, View_Get_ShowOptionalBreaks);
   end Get_ShowOptionalBreaks;

   procedure Put_ShowOptionalBreaks
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         View_Put_ShowOptionalBreaks,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ShowOptionalBreaks;

   procedure CollapseOutline
     (This   : View_Type;
      uRange : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free   : Boolean := True)
   is
   begin
      Invoke
        (This,
         View_CollapseOutline,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => uRange),
         Free);
   end CollapseOutline;

   procedure ExpandOutline
     (This   : View_Type;
      uRange : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free   : Boolean := True)
   is
   begin
      Invoke
        (This,
         View_ExpandOutline,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => uRange),
         Free);
   end ExpandOutline;

   procedure ShowAllHeadings
     (This : View_Type)
   is
   begin
      Invoke (This, View_ShowAllHeadings);
   end ShowAllHeadings;

   procedure ShowHeading
     (This  : View_Type;
      Level : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
   is
   begin
      Invoke
        (This,
         View_ShowHeading,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Level),
         Free);
   end ShowHeading;

   procedure PreviousHeaderFooter
     (This : View_Type)
   is
   begin
      Invoke (This, View_PreviousHeaderFooter);
   end PreviousHeaderFooter;

   procedure NextHeaderFooter
     (This : View_Type)
   is
   begin
      Invoke (This, View_NextHeaderFooter);
   end NextHeaderFooter;

   function Get_DisplayPageBoundaries
     (This : View_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, View_Get_DisplayPageBoundaries);
   end Get_DisplayPageBoundaries;

   procedure Put_DisplayPageBoundaries
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         View_Put_DisplayPageBoundaries,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DisplayPageBoundaries;

   function Get_DisplaySmartTags
     (This : View_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, View_Get_DisplaySmartTags);
   end Get_DisplaySmartTags;

   procedure Put_DisplaySmartTags
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         View_Put_DisplaySmartTags,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DisplaySmartTags;

   function Get_ShowRevisionsAndComments
     (This : View_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, View_Get_ShowRevisionsAndComments);
   end Get_ShowRevisionsAndComments;

   procedure Put_ShowRevisionsAndComments
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         View_Put_ShowRevisionsAndComments,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ShowRevisionsAndComments;

   function Get_ShowComments
     (This : View_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, View_Get_ShowComments);
   end Get_ShowComments;

   procedure Put_ShowComments
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         View_Put_ShowComments,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ShowComments;

   function Get_ShowInsertionsAndDeletions
     (This : View_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, View_Get_ShowInsertionsAndDeletions);
   end Get_ShowInsertionsAndDeletions;

   procedure Put_ShowInsertionsAndDeletions
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         View_Put_ShowInsertionsAndDeletions,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ShowInsertionsAndDeletions;

   function Get_ShowFormatChanges
     (This : View_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, View_Get_ShowFormatChanges);
   end Get_ShowFormatChanges;

   procedure Put_ShowFormatChanges
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         View_Put_ShowFormatChanges,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ShowFormatChanges;

   function Get_RevisionsView
     (This : View_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, View_Get_RevisionsView);
   end Get_RevisionsView;

   procedure Put_RevisionsView
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         View_Put_RevisionsView,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_RevisionsView;

   function Get_RevisionsMode
     (This : View_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, View_Get_RevisionsMode);
   end Get_RevisionsMode;

   procedure Put_RevisionsMode
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         View_Put_RevisionsMode,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_RevisionsMode;

   function Get_RevisionsBalloonWidth
     (This : View_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, View_Get_RevisionsBalloonWidth);
   end Get_RevisionsBalloonWidth;

   procedure Put_RevisionsBalloonWidth
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         View_Put_RevisionsBalloonWidth,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_RevisionsBalloonWidth;

   function Get_RevisionsBalloonWidthType
     (This : View_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, View_Get_RevisionsBalloonWidthType);
   end Get_RevisionsBalloonWidthType;

   procedure Put_RevisionsBalloonWidthType
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         View_Put_RevisionsBalloonWidthType,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_RevisionsBalloonWidthType;

   function Get_RevisionsBalloonSide
     (This : View_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, View_Get_RevisionsBalloonSide);
   end Get_RevisionsBalloonSide;

   procedure Put_RevisionsBalloonSide
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         View_Put_RevisionsBalloonSide,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_RevisionsBalloonSide;

   function Get_Reviewers
     (This : View_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, View_Get_Reviewers);
   end Get_Reviewers;

   function Get_RevisionsBalloonShowConnectingLines
     (This : View_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, View_Get_RevisionsBalloonShowConnectingLines);
   end Get_RevisionsBalloonShowConnectingLines;

   procedure Put_RevisionsBalloonShowConnectingLines
     (This : View_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         View_Put_RevisionsBalloonShowConnectingLines,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_RevisionsBalloonShowConnectingLines;

end winword.View_Object;

