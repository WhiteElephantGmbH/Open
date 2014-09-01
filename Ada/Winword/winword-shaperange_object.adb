package body winword.ShapeRange_Object is

   function Get_Application
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ShapeRange_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ShapeRange_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ShapeRange_Get_Parent);
   end Get_Parent;

   function Get_Count
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ShapeRange_Get_Count);
   end Get_Count;

   function Getu_NewEnum
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ShapeRange_Getu_NewEnum);
   end Getu_NewEnum;

   function Get_Adjustments
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ShapeRange_Get_Adjustments);
   end Get_Adjustments;

   function Get_AutoShapeType
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ShapeRange_Get_AutoShapeType);
   end Get_AutoShapeType;

   procedure Put_AutoShapeType
     (This : ShapeRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         ShapeRange_Put_AutoShapeType,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AutoShapeType;

   function Get_Callout
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ShapeRange_Get_Callout);
   end Get_Callout;

   function Get_ConnectionSiteCount
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ShapeRange_Get_ConnectionSiteCount);
   end Get_ConnectionSiteCount;

   function Get_Connector
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ShapeRange_Get_Connector);
   end Get_Connector;

   function Get_ConnectorFormat
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ShapeRange_Get_ConnectorFormat);
   end Get_ConnectorFormat;

   function Get_Fill
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ShapeRange_Get_Fill);
   end Get_Fill;

   function Get_GroupItems
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ShapeRange_Get_GroupItems);
   end Get_GroupItems;

   function Get_Height
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ShapeRange_Get_Height);
   end Get_Height;

   procedure Put_Height
     (This : ShapeRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         ShapeRange_Put_Height,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Height;

   function Get_HorizontalFlip
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ShapeRange_Get_HorizontalFlip);
   end Get_HorizontalFlip;

   function Get_Left
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ShapeRange_Get_Left);
   end Get_Left;

   procedure Put_Left
     (This : ShapeRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         ShapeRange_Put_Left,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Left;

   function Get_Line
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ShapeRange_Get_Line);
   end Get_Line;

   function Get_LockAspectRatio
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ShapeRange_Get_LockAspectRatio);
   end Get_LockAspectRatio;

   procedure Put_LockAspectRatio
     (This : ShapeRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         ShapeRange_Put_LockAspectRatio,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_LockAspectRatio;

   function Get_Name
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ShapeRange_Get_Name);
   end Get_Name;

   procedure Put_Name
     (This : ShapeRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         ShapeRange_Put_Name,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Name;

   function Get_Nodes
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ShapeRange_Get_Nodes);
   end Get_Nodes;

   function Get_Rotation
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ShapeRange_Get_Rotation);
   end Get_Rotation;

   procedure Put_Rotation
     (This : ShapeRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         ShapeRange_Put_Rotation,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Rotation;

   function Get_PictureFormat
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ShapeRange_Get_PictureFormat);
   end Get_PictureFormat;

   function Get_Shadow
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ShapeRange_Get_Shadow);
   end Get_Shadow;

   function Get_TextEffect
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ShapeRange_Get_TextEffect);
   end Get_TextEffect;

   function Get_TextFrame
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ShapeRange_Get_TextFrame);
   end Get_TextFrame;

   function Get_ThreeD
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ShapeRange_Get_ThreeD);
   end Get_ThreeD;

   function Get_Top
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ShapeRange_Get_Top);
   end Get_Top;

   procedure Put_Top
     (This : ShapeRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         ShapeRange_Put_Top,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Top;

   function Get_Type
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ShapeRange_Get_Type);
   end Get_Type;

   function Get_VerticalFlip
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ShapeRange_Get_VerticalFlip);
   end Get_VerticalFlip;

   function Get_Vertices
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ShapeRange_Get_Vertices);
   end Get_Vertices;

   function Get_Visible
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ShapeRange_Get_Visible);
   end Get_Visible;

   procedure Put_Visible
     (This : ShapeRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         ShapeRange_Put_Visible,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Visible;

   function Get_Width
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ShapeRange_Get_Width);
   end Get_Width;

   procedure Put_Width
     (This : ShapeRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         ShapeRange_Put_Width,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Width;

   function Get_ZOrderPosition
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ShapeRange_Get_ZOrderPosition);
   end Get_ZOrderPosition;

   function Get_Hyperlink
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ShapeRange_Get_Hyperlink);
   end Get_Hyperlink;

   function Get_RelativeHorizontalPosition
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ShapeRange_Get_RelativeHorizontalPosition);
   end Get_RelativeHorizontalPosition;

   procedure Put_RelativeHorizontalPosition
     (This : ShapeRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         ShapeRange_Put_RelativeHorizontalPosition,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_RelativeHorizontalPosition;

   function Get_RelativeVerticalPosition
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ShapeRange_Get_RelativeVerticalPosition);
   end Get_RelativeVerticalPosition;

   procedure Put_RelativeVerticalPosition
     (This : ShapeRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         ShapeRange_Put_RelativeVerticalPosition,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_RelativeVerticalPosition;

   function Get_LockAnchor
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ShapeRange_Get_LockAnchor);
   end Get_LockAnchor;

   procedure Put_LockAnchor
     (This : ShapeRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         ShapeRange_Put_LockAnchor,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_LockAnchor;

   function Get_WrapFormat
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ShapeRange_Get_WrapFormat);
   end Get_WrapFormat;

   function Get_Anchor
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ShapeRange_Get_Anchor);
   end Get_Anchor;

   function Item
     (This  : ShapeRange_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         ShapeRange_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

   procedure Align
     (This       : ShapeRange_Type;
      Align      : GNATCOM.Types.VARIANT;
      RelativeTo : GNATCOM.Types.VARIANT;
      Free       : Boolean := True)
   is
   begin
      Invoke
        (This,
         ShapeRange_Align,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => RelativeTo,
          2 => Align),
         Free);
   end Align;

   procedure Apply
     (This : ShapeRange_Type)
   is
   begin
      Invoke (This, ShapeRange_Apply);
   end Apply;

   procedure Delete
     (This : ShapeRange_Type)
   is
   begin
      Invoke (This, ShapeRange_Delete);
   end Delete;

   procedure Distribute
     (This       : ShapeRange_Type;
      Distribute : GNATCOM.Types.VARIANT;
      RelativeTo : GNATCOM.Types.VARIANT;
      Free       : Boolean := True)
   is
   begin
      Invoke
        (This,
         ShapeRange_Distribute,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => RelativeTo,
          2 => Distribute),
         Free);
   end Distribute;

   function Duplicate
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke (This, ShapeRange_Duplicate);
   end Duplicate;

   procedure Flip
     (This    : ShapeRange_Type;
      FlipCmd : GNATCOM.Types.VARIANT;
      Free    : Boolean := True)
   is
   begin
      Invoke
        (This,
         ShapeRange_Flip,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => FlipCmd),
         Free);
   end Flip;

   procedure IncrementLeft
     (This      : ShapeRange_Type;
      Increment : GNATCOM.Types.VARIANT;
      Free      : Boolean := True)
   is
   begin
      Invoke
        (This,
         ShapeRange_IncrementLeft,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Increment),
         Free);
   end IncrementLeft;

   procedure IncrementRotation
     (This      : ShapeRange_Type;
      Increment : GNATCOM.Types.VARIANT;
      Free      : Boolean := True)
   is
   begin
      Invoke
        (This,
         ShapeRange_IncrementRotation,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Increment),
         Free);
   end IncrementRotation;

   procedure IncrementTop
     (This      : ShapeRange_Type;
      Increment : GNATCOM.Types.VARIANT;
      Free      : Boolean := True)
   is
   begin
      Invoke
        (This,
         ShapeRange_IncrementTop,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Increment),
         Free);
   end IncrementTop;

   function Group
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke (This, ShapeRange_Group);
   end Group;

   procedure PickUp
     (This : ShapeRange_Type)
   is
   begin
      Invoke (This, ShapeRange_PickUp);
   end PickUp;

   function Regroup
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke (This, ShapeRange_Regroup);
   end Regroup;

   procedure RerouteConnections
     (This : ShapeRange_Type)
   is
   begin
      Invoke (This, ShapeRange_RerouteConnections);
   end RerouteConnections;

   procedure ScaleHeight
     (This                   : ShapeRange_Type;
      Factor                 : GNATCOM.Types.VARIANT;
      RelativeToOriginalSize : GNATCOM.Types.VARIANT;
      Scale                  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free                   : Boolean := True)
   is
   begin
      Invoke
        (This,
         ShapeRange_ScaleHeight,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Scale,
          2 => RelativeToOriginalSize,
          3 => Factor),
         Free);
   end ScaleHeight;

   procedure ScaleWidth
     (This                   : ShapeRange_Type;
      Factor                 : GNATCOM.Types.VARIANT;
      RelativeToOriginalSize : GNATCOM.Types.VARIANT;
      Scale                  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free                   : Boolean := True)
   is
   begin
      Invoke
        (This,
         ShapeRange_ScaleWidth,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Scale,
          2 => RelativeToOriginalSize,
          3 => Factor),
         Free);
   end ScaleWidth;

   procedure uSelect
     (This    : ShapeRange_Type;
      Replace : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free    : Boolean := True)
   is
   begin
      Invoke
        (This,
         ShapeRange_uSelect,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Replace),
         Free);
   end uSelect;

   procedure SetShapesDefaultProperties
     (This : ShapeRange_Type)
   is
   begin
      Invoke (This, ShapeRange_SetShapesDefaultProperties);
   end SetShapesDefaultProperties;

   function Ungroup
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke (This, ShapeRange_Ungroup);
   end Ungroup;

   procedure ZOrder
     (This      : ShapeRange_Type;
      ZOrderCmd : GNATCOM.Types.VARIANT;
      Free      : Boolean := True)
   is
   begin
      Invoke
        (This,
         ShapeRange_ZOrder,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => ZOrderCmd),
         Free);
   end ZOrder;

   function ConvertToFrame
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke (This, ShapeRange_ConvertToFrame);
   end ConvertToFrame;

   function ConvertToInlineShape
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke (This, ShapeRange_ConvertToInlineShape);
   end ConvertToInlineShape;

   procedure Activate
     (This : ShapeRange_Type)
   is
   begin
      Invoke (This, ShapeRange_Activate);
   end Activate;

   function Get_AlternativeText
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ShapeRange_Get_AlternativeText);
   end Get_AlternativeText;

   procedure Put_AlternativeText
     (This : ShapeRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         ShapeRange_Put_AlternativeText,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AlternativeText;

   function Get_HasDiagram
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ShapeRange_Get_HasDiagram);
   end Get_HasDiagram;

   function Get_Diagram
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ShapeRange_Get_Diagram);
   end Get_Diagram;

   function Get_HasDiagramNode
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ShapeRange_Get_HasDiagramNode);
   end Get_HasDiagramNode;

   function Get_DiagramNode
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ShapeRange_Get_DiagramNode);
   end Get_DiagramNode;

   function Get_Child
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ShapeRange_Get_Child);
   end Get_Child;

   function Get_ParentGroup
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ShapeRange_Get_ParentGroup);
   end Get_ParentGroup;

   function Get_CanvasItems
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ShapeRange_Get_CanvasItems);
   end Get_CanvasItems;

   function Get_ID
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ShapeRange_Get_ID);
   end Get_ID;

   procedure CanvasCropLeft
     (This      : ShapeRange_Type;
      Increment : GNATCOM.Types.VARIANT;
      Free      : Boolean := True)
   is
   begin
      Invoke
        (This,
         ShapeRange_CanvasCropLeft,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Increment),
         Free);
   end CanvasCropLeft;

   procedure CanvasCropTop
     (This      : ShapeRange_Type;
      Increment : GNATCOM.Types.VARIANT;
      Free      : Boolean := True)
   is
   begin
      Invoke
        (This,
         ShapeRange_CanvasCropTop,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Increment),
         Free);
   end CanvasCropTop;

   procedure CanvasCropRight
     (This      : ShapeRange_Type;
      Increment : GNATCOM.Types.VARIANT;
      Free      : Boolean := True)
   is
   begin
      Invoke
        (This,
         ShapeRange_CanvasCropRight,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Increment),
         Free);
   end CanvasCropRight;

   procedure CanvasCropBottom
     (This      : ShapeRange_Type;
      Increment : GNATCOM.Types.VARIANT;
      Free      : Boolean := True)
   is
   begin
      Invoke
        (This,
         ShapeRange_CanvasCropBottom,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Increment),
         Free);
   end CanvasCropBottom;

   procedure Put_RTF
     (This : ShapeRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         ShapeRange_Put_RTF,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_RTF;

end winword.ShapeRange_Object;

