with GNATCOM.Dispinterface;

package winword.Shape_Object is

   type Shape_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Adjustments
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT;

   function Get_AutoShapeType
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AutoShapeType
     (This : Shape_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Callout
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ConnectionSiteCount
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Connector
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ConnectorFormat
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Fill
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT;

   function Get_GroupItems
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Height
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Height
     (This : Shape_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_HorizontalFlip
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Left
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Left
     (This : Shape_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Line
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT;

   function Get_LockAspectRatio
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_LockAspectRatio
     (This : Shape_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Name
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Name
     (This : Shape_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Nodes
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Rotation
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Rotation
     (This : Shape_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_PictureFormat
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Shadow
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT;

   function Get_TextEffect
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT;

   function Get_TextFrame
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ThreeD
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Top
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Top
     (This : Shape_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Type
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT;

   function Get_VerticalFlip
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Vertices
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Visible
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Visible
     (This : Shape_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Width
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Width
     (This : Shape_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ZOrderPosition
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Hyperlink
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT;

   function Get_RelativeHorizontalPosition
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_RelativeHorizontalPosition
     (This : Shape_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_RelativeVerticalPosition
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_RelativeVerticalPosition
     (This : Shape_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_LockAnchor
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_LockAnchor
     (This : Shape_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_WrapFormat
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT;

   function Get_OLEFormat
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Anchor
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT;

   function Get_LinkFormat
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT;

   procedure Apply
     (This : Shape_Type);

   procedure Delete
     (This : Shape_Type);

   function Duplicate
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT;

   procedure Flip
     (This    : Shape_Type;
      FlipCmd : GNATCOM.Types.VARIANT;
      Free    : Boolean := True);

   procedure IncrementLeft
     (This      : Shape_Type;
      Increment : GNATCOM.Types.VARIANT;
      Free      : Boolean := True);

   procedure IncrementRotation
     (This      : Shape_Type;
      Increment : GNATCOM.Types.VARIANT;
      Free      : Boolean := True);

   procedure IncrementTop
     (This      : Shape_Type;
      Increment : GNATCOM.Types.VARIANT;
      Free      : Boolean := True);

   procedure PickUp
     (This : Shape_Type);

   procedure RerouteConnections
     (This : Shape_Type);

   procedure ScaleHeight
     (This                   : Shape_Type;
      Factor                 : GNATCOM.Types.VARIANT;
      RelativeToOriginalSize : GNATCOM.Types.VARIANT;
      Scale                  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free                   : Boolean := True);

   procedure ScaleWidth
     (This                   : Shape_Type;
      Factor                 : GNATCOM.Types.VARIANT;
      RelativeToOriginalSize : GNATCOM.Types.VARIANT;
      Scale                  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free                   : Boolean := True);

   procedure uSelect
     (This    : Shape_Type;
      Replace : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free    : Boolean := True);

   procedure SetShapesDefaultProperties
     (This : Shape_Type);

   function Ungroup
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT;

   procedure ZOrder
     (This      : Shape_Type;
      ZOrderCmd : GNATCOM.Types.VARIANT;
      Free      : Boolean := True);

   function ConvertToInlineShape
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT;

   function ConvertToFrame
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT;

   procedure Activate
     (This : Shape_Type);

   function Get_AlternativeText
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AlternativeText
     (This : Shape_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Script
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT;

   function Get_HasDiagram
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Diagram
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT;

   function Get_HasDiagramNode
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT;

   function Get_DiagramNode
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Child
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ParentGroup
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT;

   function Get_CanvasItems
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ID
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT;

   procedure CanvasCropLeft
     (This      : Shape_Type;
      Increment : GNATCOM.Types.VARIANT;
      Free      : Boolean := True);

   procedure CanvasCropTop
     (This      : Shape_Type;
      Increment : GNATCOM.Types.VARIANT;
      Free      : Boolean := True);

   procedure CanvasCropRight
     (This      : Shape_Type;
      Increment : GNATCOM.Types.VARIANT;
      Free      : Boolean := True);

   procedure CanvasCropBottom
     (This      : Shape_Type;
      Increment : GNATCOM.Types.VARIANT;
      Free      : Boolean := True);

   procedure Put_RTF
     (This : Shape_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

end winword.Shape_Object;

