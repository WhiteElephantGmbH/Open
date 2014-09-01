package body winword.Shape_Object is

   function Get_Application
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Shape_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Shape_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Shape_Get_Parent);
   end Get_Parent;

   function Get_Adjustments
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Shape_Get_Adjustments);
   end Get_Adjustments;

   function Get_AutoShapeType
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Shape_Get_AutoShapeType);
   end Get_AutoShapeType;

   procedure Put_AutoShapeType
     (This : Shape_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Shape_Put_AutoShapeType,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AutoShapeType;

   function Get_Callout
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Shape_Get_Callout);
   end Get_Callout;

   function Get_ConnectionSiteCount
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Shape_Get_ConnectionSiteCount);
   end Get_ConnectionSiteCount;

   function Get_Connector
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Shape_Get_Connector);
   end Get_Connector;

   function Get_ConnectorFormat
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Shape_Get_ConnectorFormat);
   end Get_ConnectorFormat;

   function Get_Fill
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Shape_Get_Fill);
   end Get_Fill;

   function Get_GroupItems
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Shape_Get_GroupItems);
   end Get_GroupItems;

   function Get_Height
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Shape_Get_Height);
   end Get_Height;

   procedure Put_Height
     (This : Shape_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Shape_Put_Height,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Height;

   function Get_HorizontalFlip
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Shape_Get_HorizontalFlip);
   end Get_HorizontalFlip;

   function Get_Left
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Shape_Get_Left);
   end Get_Left;

   procedure Put_Left
     (This : Shape_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Shape_Put_Left,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Left;

   function Get_Line
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Shape_Get_Line);
   end Get_Line;

   function Get_LockAspectRatio
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Shape_Get_LockAspectRatio);
   end Get_LockAspectRatio;

   procedure Put_LockAspectRatio
     (This : Shape_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Shape_Put_LockAspectRatio,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_LockAspectRatio;

   function Get_Name
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Shape_Get_Name);
   end Get_Name;

   procedure Put_Name
     (This : Shape_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Shape_Put_Name,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Name;

   function Get_Nodes
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Shape_Get_Nodes);
   end Get_Nodes;

   function Get_Rotation
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Shape_Get_Rotation);
   end Get_Rotation;

   procedure Put_Rotation
     (This : Shape_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Shape_Put_Rotation,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Rotation;

   function Get_PictureFormat
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Shape_Get_PictureFormat);
   end Get_PictureFormat;

   function Get_Shadow
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Shape_Get_Shadow);
   end Get_Shadow;

   function Get_TextEffect
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Shape_Get_TextEffect);
   end Get_TextEffect;

   function Get_TextFrame
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Shape_Get_TextFrame);
   end Get_TextFrame;

   function Get_ThreeD
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Shape_Get_ThreeD);
   end Get_ThreeD;

   function Get_Top
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Shape_Get_Top);
   end Get_Top;

   procedure Put_Top
     (This : Shape_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Shape_Put_Top,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Top;

   function Get_Type
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Shape_Get_Type);
   end Get_Type;

   function Get_VerticalFlip
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Shape_Get_VerticalFlip);
   end Get_VerticalFlip;

   function Get_Vertices
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Shape_Get_Vertices);
   end Get_Vertices;

   function Get_Visible
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Shape_Get_Visible);
   end Get_Visible;

   procedure Put_Visible
     (This : Shape_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Shape_Put_Visible,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Visible;

   function Get_Width
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Shape_Get_Width);
   end Get_Width;

   procedure Put_Width
     (This : Shape_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Shape_Put_Width,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Width;

   function Get_ZOrderPosition
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Shape_Get_ZOrderPosition);
   end Get_ZOrderPosition;

   function Get_Hyperlink
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Shape_Get_Hyperlink);
   end Get_Hyperlink;

   function Get_RelativeHorizontalPosition
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Shape_Get_RelativeHorizontalPosition);
   end Get_RelativeHorizontalPosition;

   procedure Put_RelativeHorizontalPosition
     (This : Shape_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Shape_Put_RelativeHorizontalPosition,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_RelativeHorizontalPosition;

   function Get_RelativeVerticalPosition
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Shape_Get_RelativeVerticalPosition);
   end Get_RelativeVerticalPosition;

   procedure Put_RelativeVerticalPosition
     (This : Shape_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Shape_Put_RelativeVerticalPosition,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_RelativeVerticalPosition;

   function Get_LockAnchor
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Shape_Get_LockAnchor);
   end Get_LockAnchor;

   procedure Put_LockAnchor
     (This : Shape_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Shape_Put_LockAnchor,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_LockAnchor;

   function Get_WrapFormat
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Shape_Get_WrapFormat);
   end Get_WrapFormat;

   function Get_OLEFormat
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Shape_Get_OLEFormat);
   end Get_OLEFormat;

   function Get_Anchor
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Shape_Get_Anchor);
   end Get_Anchor;

   function Get_LinkFormat
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Shape_Get_LinkFormat);
   end Get_LinkFormat;

   procedure Apply
     (This : Shape_Type)
   is
   begin
      Invoke (This, Shape_Apply);
   end Apply;

   procedure Delete
     (This : Shape_Type)
   is
   begin
      Invoke (This, Shape_Delete);
   end Delete;

   function Duplicate
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke (This, Shape_Duplicate);
   end Duplicate;

   procedure Flip
     (This    : Shape_Type;
      FlipCmd : GNATCOM.Types.VARIANT;
      Free    : Boolean := True)
   is
   begin
      Invoke
        (This,
         Shape_Flip,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => FlipCmd),
         Free);
   end Flip;

   procedure IncrementLeft
     (This      : Shape_Type;
      Increment : GNATCOM.Types.VARIANT;
      Free      : Boolean := True)
   is
   begin
      Invoke
        (This,
         Shape_IncrementLeft,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Increment),
         Free);
   end IncrementLeft;

   procedure IncrementRotation
     (This      : Shape_Type;
      Increment : GNATCOM.Types.VARIANT;
      Free      : Boolean := True)
   is
   begin
      Invoke
        (This,
         Shape_IncrementRotation,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Increment),
         Free);
   end IncrementRotation;

   procedure IncrementTop
     (This      : Shape_Type;
      Increment : GNATCOM.Types.VARIANT;
      Free      : Boolean := True)
   is
   begin
      Invoke
        (This,
         Shape_IncrementTop,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Increment),
         Free);
   end IncrementTop;

   procedure PickUp
     (This : Shape_Type)
   is
   begin
      Invoke (This, Shape_PickUp);
   end PickUp;

   procedure RerouteConnections
     (This : Shape_Type)
   is
   begin
      Invoke (This, Shape_RerouteConnections);
   end RerouteConnections;

   procedure ScaleHeight
     (This                   : Shape_Type;
      Factor                 : GNATCOM.Types.VARIANT;
      RelativeToOriginalSize : GNATCOM.Types.VARIANT;
      Scale                  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free                   : Boolean := True)
   is
   begin
      Invoke
        (This,
         Shape_ScaleHeight,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Scale,
          2 => RelativeToOriginalSize,
          3 => Factor),
         Free);
   end ScaleHeight;

   procedure ScaleWidth
     (This                   : Shape_Type;
      Factor                 : GNATCOM.Types.VARIANT;
      RelativeToOriginalSize : GNATCOM.Types.VARIANT;
      Scale                  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free                   : Boolean := True)
   is
   begin
      Invoke
        (This,
         Shape_ScaleWidth,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Scale,
          2 => RelativeToOriginalSize,
          3 => Factor),
         Free);
   end ScaleWidth;

   procedure uSelect
     (This    : Shape_Type;
      Replace : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free    : Boolean := True)
   is
   begin
      Invoke
        (This,
         Shape_uSelect,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Replace),
         Free);
   end uSelect;

   procedure SetShapesDefaultProperties
     (This : Shape_Type)
   is
   begin
      Invoke (This, Shape_SetShapesDefaultProperties);
   end SetShapesDefaultProperties;

   function Ungroup
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke (This, Shape_Ungroup);
   end Ungroup;

   procedure ZOrder
     (This      : Shape_Type;
      ZOrderCmd : GNATCOM.Types.VARIANT;
      Free      : Boolean := True)
   is
   begin
      Invoke
        (This,
         Shape_ZOrder,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => ZOrderCmd),
         Free);
   end ZOrder;

   function ConvertToInlineShape
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke (This, Shape_ConvertToInlineShape);
   end ConvertToInlineShape;

   function ConvertToFrame
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke (This, Shape_ConvertToFrame);
   end ConvertToFrame;

   procedure Activate
     (This : Shape_Type)
   is
   begin
      Invoke (This, Shape_Activate);
   end Activate;

   function Get_AlternativeText
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Shape_Get_AlternativeText);
   end Get_AlternativeText;

   procedure Put_AlternativeText
     (This : Shape_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Shape_Put_AlternativeText,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AlternativeText;

   function Get_Script
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Shape_Get_Script);
   end Get_Script;

   function Get_HasDiagram
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Shape_Get_HasDiagram);
   end Get_HasDiagram;

   function Get_Diagram
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Shape_Get_Diagram);
   end Get_Diagram;

   function Get_HasDiagramNode
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Shape_Get_HasDiagramNode);
   end Get_HasDiagramNode;

   function Get_DiagramNode
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Shape_Get_DiagramNode);
   end Get_DiagramNode;

   function Get_Child
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Shape_Get_Child);
   end Get_Child;

   function Get_ParentGroup
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Shape_Get_ParentGroup);
   end Get_ParentGroup;

   function Get_CanvasItems
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Shape_Get_CanvasItems);
   end Get_CanvasItems;

   function Get_ID
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Shape_Get_ID);
   end Get_ID;

   procedure CanvasCropLeft
     (This      : Shape_Type;
      Increment : GNATCOM.Types.VARIANT;
      Free      : Boolean := True)
   is
   begin
      Invoke
        (This,
         Shape_CanvasCropLeft,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Increment),
         Free);
   end CanvasCropLeft;

   procedure CanvasCropTop
     (This      : Shape_Type;
      Increment : GNATCOM.Types.VARIANT;
      Free      : Boolean := True)
   is
   begin
      Invoke
        (This,
         Shape_CanvasCropTop,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Increment),
         Free);
   end CanvasCropTop;

   procedure CanvasCropRight
     (This      : Shape_Type;
      Increment : GNATCOM.Types.VARIANT;
      Free      : Boolean := True)
   is
   begin
      Invoke
        (This,
         Shape_CanvasCropRight,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Increment),
         Free);
   end CanvasCropRight;

   procedure CanvasCropBottom
     (This      : Shape_Type;
      Increment : GNATCOM.Types.VARIANT;
      Free      : Boolean := True)
   is
   begin
      Invoke
        (This,
         Shape_CanvasCropBottom,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Increment),
         Free);
   end CanvasCropBottom;

   procedure Put_RTF
     (This : Shape_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Shape_Put_RTF,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_RTF;

end winword.Shape_Object;

