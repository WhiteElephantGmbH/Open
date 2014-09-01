with GNATCOM.Dispinterface;

package winword.ShapeRange_Object is

   type ShapeRange_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT;

   function Getu_NewEnum
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Adjustments
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT;

   function Get_AutoShapeType
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AutoShapeType
     (This : ShapeRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Callout
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ConnectionSiteCount
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Connector
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ConnectorFormat
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Fill
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT;

   function Get_GroupItems
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Height
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Height
     (This : ShapeRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_HorizontalFlip
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Left
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Left
     (This : ShapeRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Line
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT;

   function Get_LockAspectRatio
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_LockAspectRatio
     (This : ShapeRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Name
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Name
     (This : ShapeRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Nodes
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Rotation
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Rotation
     (This : ShapeRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_PictureFormat
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Shadow
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT;

   function Get_TextEffect
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT;

   function Get_TextFrame
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ThreeD
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Top
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Top
     (This : ShapeRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Type
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT;

   function Get_VerticalFlip
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Vertices
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Visible
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Visible
     (This : ShapeRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Width
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Width
     (This : ShapeRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ZOrderPosition
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Hyperlink
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT;

   function Get_RelativeHorizontalPosition
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_RelativeHorizontalPosition
     (This : ShapeRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_RelativeVerticalPosition
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_RelativeVerticalPosition
     (This : ShapeRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_LockAnchor
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_LockAnchor
     (This : ShapeRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_WrapFormat
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Anchor
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT;

   function Item
     (This  : ShapeRange_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure Align
     (This       : ShapeRange_Type;
      Align      : GNATCOM.Types.VARIANT;
      RelativeTo : GNATCOM.Types.VARIANT;
      Free       : Boolean := True);

   procedure Apply
     (This : ShapeRange_Type);

   procedure Delete
     (This : ShapeRange_Type);

   procedure Distribute
     (This       : ShapeRange_Type;
      Distribute : GNATCOM.Types.VARIANT;
      RelativeTo : GNATCOM.Types.VARIANT;
      Free       : Boolean := True);

   function Duplicate
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT;

   procedure Flip
     (This    : ShapeRange_Type;
      FlipCmd : GNATCOM.Types.VARIANT;
      Free    : Boolean := True);

   procedure IncrementLeft
     (This      : ShapeRange_Type;
      Increment : GNATCOM.Types.VARIANT;
      Free      : Boolean := True);

   procedure IncrementRotation
     (This      : ShapeRange_Type;
      Increment : GNATCOM.Types.VARIANT;
      Free      : Boolean := True);

   procedure IncrementTop
     (This      : ShapeRange_Type;
      Increment : GNATCOM.Types.VARIANT;
      Free      : Boolean := True);

   function Group
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT;

   procedure PickUp
     (This : ShapeRange_Type);

   function Regroup
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT;

   procedure RerouteConnections
     (This : ShapeRange_Type);

   procedure ScaleHeight
     (This                   : ShapeRange_Type;
      Factor                 : GNATCOM.Types.VARIANT;
      RelativeToOriginalSize : GNATCOM.Types.VARIANT;
      Scale                  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free                   : Boolean := True);

   procedure ScaleWidth
     (This                   : ShapeRange_Type;
      Factor                 : GNATCOM.Types.VARIANT;
      RelativeToOriginalSize : GNATCOM.Types.VARIANT;
      Scale                  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free                   : Boolean := True);

   procedure uSelect
     (This    : ShapeRange_Type;
      Replace : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free    : Boolean := True);

   procedure SetShapesDefaultProperties
     (This : ShapeRange_Type);

   function Ungroup
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT;

   procedure ZOrder
     (This      : ShapeRange_Type;
      ZOrderCmd : GNATCOM.Types.VARIANT;
      Free      : Boolean := True);

   function ConvertToFrame
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT;

   function ConvertToInlineShape
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT;

   procedure Activate
     (This : ShapeRange_Type);

   function Get_AlternativeText
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AlternativeText
     (This : ShapeRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_HasDiagram
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Diagram
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT;

   function Get_HasDiagramNode
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT;

   function Get_DiagramNode
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Child
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ParentGroup
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT;

   function Get_CanvasItems
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ID
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT;

   procedure CanvasCropLeft
     (This      : ShapeRange_Type;
      Increment : GNATCOM.Types.VARIANT;
      Free      : Boolean := True);

   procedure CanvasCropTop
     (This      : ShapeRange_Type;
      Increment : GNATCOM.Types.VARIANT;
      Free      : Boolean := True);

   procedure CanvasCropRight
     (This      : ShapeRange_Type;
      Increment : GNATCOM.Types.VARIANT;
      Free      : Boolean := True);

   procedure CanvasCropBottom
     (This      : ShapeRange_Type;
      Increment : GNATCOM.Types.VARIANT;
      Free      : Boolean := True);

   procedure Put_RTF
     (This : ShapeRange_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

end winword.ShapeRange_Object;

