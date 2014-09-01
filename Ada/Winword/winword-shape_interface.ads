with GNATCOM.Dispinterface;

package winword.Shape_Interface is

   type Shape_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Shape_Type);

   function Pointer (This : Shape_Type)
     return Pointer_To_Shape;

   procedure Attach (This    : in out Shape_Type;
                     Pointer : in     Pointer_To_Shape);

   function Get_Application
     (This : Shape_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : Shape_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : Shape_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Adjustments
     (This : Shape_Type)
     return Pointer_To_Adjustments;

   function Get_AutoShapeType
     (This : Shape_Type)
     return MsoAutoShapeType;

   procedure Put_AutoShapeType
     (This : Shape_Type;
      prop : MsoAutoShapeType);

   function Get_Callout
     (This : Shape_Type)
     return Pointer_To_CalloutFormat;

   function Get_ConnectionSiteCount
     (This : Shape_Type)
     return Interfaces.C.long;

   function Get_Connector
     (This : Shape_Type)
     return MsoTriState;

   function Get_ConnectorFormat
     (This : Shape_Type)
     return Pointer_To_ConnectorFormat;

   function Get_Fill
     (This : Shape_Type)
     return Pointer_To_FillFormat;

   function Get_GroupItems
     (This : Shape_Type)
     return Pointer_To_GroupShapes;

   function Get_Height
     (This : Shape_Type)
     return Interfaces.C.C_float;

   procedure Put_Height
     (This : Shape_Type;
      prop : Interfaces.C.C_float);

   function Get_HorizontalFlip
     (This : Shape_Type)
     return MsoTriState;

   function Get_Left
     (This : Shape_Type)
     return Interfaces.C.C_float;

   procedure Put_Left
     (This : Shape_Type;
      prop : Interfaces.C.C_float);

   function Get_Line
     (This : Shape_Type)
     return Pointer_To_LineFormat;

   function Get_LockAspectRatio
     (This : Shape_Type)
     return MsoTriState;

   procedure Put_LockAspectRatio
     (This : Shape_Type;
      prop : MsoTriState);

   function Get_Name
     (This : Shape_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_Name
     (This : Shape_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_Nodes
     (This : Shape_Type)
     return Pointer_To_ShapeNodes;

   function Get_Rotation
     (This : Shape_Type)
     return Interfaces.C.C_float;

   procedure Put_Rotation
     (This : Shape_Type;
      prop : Interfaces.C.C_float);

   function Get_PictureFormat
     (This : Shape_Type)
     return Pointer_To_PictureFormat;

   function Get_Shadow
     (This : Shape_Type)
     return Pointer_To_ShadowFormat;

   function Get_TextEffect
     (This : Shape_Type)
     return Pointer_To_TextEffectFormat;

   function Get_TextFrame
     (This : Shape_Type)
     return Pointer_To_TextFrame;

   function Get_ThreeD
     (This : Shape_Type)
     return Pointer_To_ThreeDFormat;

   function Get_Top
     (This : Shape_Type)
     return Interfaces.C.C_float;

   procedure Put_Top
     (This : Shape_Type;
      prop : Interfaces.C.C_float);

   function Get_Type
     (This : Shape_Type)
     return MsoShapeType;

   function Get_VerticalFlip
     (This : Shape_Type)
     return MsoTriState;

   function Get_Vertices
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Visible
     (This : Shape_Type)
     return MsoTriState;

   procedure Put_Visible
     (This : Shape_Type;
      prop : MsoTriState);

   function Get_Width
     (This : Shape_Type)
     return Interfaces.C.C_float;

   procedure Put_Width
     (This : Shape_Type;
      prop : Interfaces.C.C_float);

   function Get_ZOrderPosition
     (This : Shape_Type)
     return Interfaces.C.long;

   function Get_Hyperlink
     (This : Shape_Type)
     return Pointer_To_Hyperlink;

   function Get_RelativeHorizontalPosition
     (This : Shape_Type)
     return WdRelativeHorizontalPosition;

   procedure Put_RelativeHorizontalPosition
     (This : Shape_Type;
      prop : WdRelativeHorizontalPosition);

   function Get_RelativeVerticalPosition
     (This : Shape_Type)
     return WdRelativeVerticalPosition;

   procedure Put_RelativeVerticalPosition
     (This : Shape_Type;
      prop : WdRelativeVerticalPosition);

   function Get_LockAnchor
     (This : Shape_Type)
     return Interfaces.C.long;

   procedure Put_LockAnchor
     (This : Shape_Type;
      prop : Interfaces.C.long);

   function Get_WrapFormat
     (This : Shape_Type)
     return Pointer_To_WrapFormat;

   function Get_OLEFormat
     (This : Shape_Type)
     return Pointer_To_OLEFormat;

   function Get_Anchor
     (This : Shape_Type)
     return Pointer_To_uRange;

   function Get_LinkFormat
     (This : Shape_Type)
     return Pointer_To_LinkFormat;

   procedure Apply
     (This : Shape_Type);

   procedure Delete
     (This : Shape_Type);

   function Duplicate
     (This : Shape_Type)
     return Pointer_To_Shape;

   procedure Flip
     (This    : Shape_Type;
      FlipCmd : MsoFlipCmd);

   procedure IncrementLeft
     (This      : Shape_Type;
      Increment : Interfaces.C.C_float);

   procedure IncrementRotation
     (This      : Shape_Type;
      Increment : Interfaces.C.C_float);

   procedure IncrementTop
     (This      : Shape_Type;
      Increment : Interfaces.C.C_float);

   procedure PickUp
     (This : Shape_Type);

   procedure RerouteConnections
     (This : Shape_Type);

   procedure ScaleHeight
     (This                   : Shape_Type;
      Factor                 : Interfaces.C.C_float;
      RelativeToOriginalSize : MsoTriState;
      Scale                  : MsoScaleFrom);

   procedure ScaleWidth
     (This                   : Shape_Type;
      Factor                 : Interfaces.C.C_float;
      RelativeToOriginalSize : MsoTriState;
      Scale                  : MsoScaleFrom);

   procedure uSelect
     (This    : Shape_Type;
      Replace : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   procedure SetShapesDefaultProperties
     (This : Shape_Type);

   function Ungroup
     (This : Shape_Type)
     return Pointer_To_ShapeRange;

   procedure ZOrder
     (This      : Shape_Type;
      ZOrderCmd : MsoZOrderCmd);

   function ConvertToInlineShape
     (This : Shape_Type)
     return Pointer_To_InlineShape;

   function ConvertToFrame
     (This : Shape_Type)
     return Pointer_To_Frame;

   procedure Activate
     (This : Shape_Type);

   function Get_AlternativeText
     (This : Shape_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_AlternativeText
     (This : Shape_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_Script
     (This : Shape_Type)
     return Pointer_To_Script;

   function Get_HasDiagram
     (This : Shape_Type)
     return MsoTriState;

   function Get_Diagram
     (This : Shape_Type)
     return Pointer_To_IMsoDiagram;

   function Get_HasDiagramNode
     (This : Shape_Type)
     return MsoTriState;

   function Get_DiagramNode
     (This : Shape_Type)
     return Pointer_To_DiagramNode;

   function Get_Child
     (This : Shape_Type)
     return MsoTriState;

   function Get_ParentGroup
     (This : Shape_Type)
     return Pointer_To_Shape;

   function Get_CanvasItems
     (This : Shape_Type)
     return Pointer_To_CanvasShapes;

   function Get_ID
     (This : Shape_Type)
     return Interfaces.C.long;

   procedure CanvasCropLeft
     (This      : Shape_Type;
      Increment : Interfaces.C.C_float);

   procedure CanvasCropTop
     (This      : Shape_Type;
      Increment : Interfaces.C.C_float);

   procedure CanvasCropRight
     (This      : Shape_Type;
      Increment : Interfaces.C.C_float);

   procedure CanvasCropBottom
     (This      : Shape_Type;
      Increment : Interfaces.C.C_float);

   procedure Put_RTF
     (This : Shape_Type;
      P1   : GNATCOM.Types.BSTR;
      Free : Boolean := True);

end winword.Shape_Interface;

