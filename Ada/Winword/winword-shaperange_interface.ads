with GNATCOM.Dispinterface;

package winword.ShapeRange_Interface is

   type ShapeRange_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out ShapeRange_Type);

   function Pointer (This : ShapeRange_Type)
     return Pointer_To_ShapeRange;

   procedure Attach (This    : in out ShapeRange_Type;
                     Pointer : in     Pointer_To_ShapeRange);

   function Get_Application
     (This : ShapeRange_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : ShapeRange_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : ShapeRange_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Count
     (This : ShapeRange_Type)
     return Interfaces.C.long;

   function Getu_NewEnum
     (This : ShapeRange_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_Adjustments
     (This : ShapeRange_Type)
     return Pointer_To_Adjustments;

   function Get_AutoShapeType
     (This : ShapeRange_Type)
     return MsoAutoShapeType;

   procedure Put_AutoShapeType
     (This : ShapeRange_Type;
      prop : MsoAutoShapeType);

   function Get_Callout
     (This : ShapeRange_Type)
     return Pointer_To_CalloutFormat;

   function Get_ConnectionSiteCount
     (This : ShapeRange_Type)
     return Interfaces.C.long;

   function Get_Connector
     (This : ShapeRange_Type)
     return MsoTriState;

   function Get_ConnectorFormat
     (This : ShapeRange_Type)
     return Pointer_To_ConnectorFormat;

   function Get_Fill
     (This : ShapeRange_Type)
     return Pointer_To_FillFormat;

   function Get_GroupItems
     (This : ShapeRange_Type)
     return Pointer_To_GroupShapes;

   function Get_Height
     (This : ShapeRange_Type)
     return Interfaces.C.C_float;

   procedure Put_Height
     (This : ShapeRange_Type;
      prop : Interfaces.C.C_float);

   function Get_HorizontalFlip
     (This : ShapeRange_Type)
     return MsoTriState;

   function Get_Left
     (This : ShapeRange_Type)
     return Interfaces.C.C_float;

   procedure Put_Left
     (This : ShapeRange_Type;
      prop : Interfaces.C.C_float);

   function Get_Line
     (This : ShapeRange_Type)
     return Pointer_To_LineFormat;

   function Get_LockAspectRatio
     (This : ShapeRange_Type)
     return MsoTriState;

   procedure Put_LockAspectRatio
     (This : ShapeRange_Type;
      prop : MsoTriState);

   function Get_Name
     (This : ShapeRange_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_Name
     (This : ShapeRange_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_Nodes
     (This : ShapeRange_Type)
     return Pointer_To_ShapeNodes;

   function Get_Rotation
     (This : ShapeRange_Type)
     return Interfaces.C.C_float;

   procedure Put_Rotation
     (This : ShapeRange_Type;
      prop : Interfaces.C.C_float);

   function Get_PictureFormat
     (This : ShapeRange_Type)
     return Pointer_To_PictureFormat;

   function Get_Shadow
     (This : ShapeRange_Type)
     return Pointer_To_ShadowFormat;

   function Get_TextEffect
     (This : ShapeRange_Type)
     return Pointer_To_TextEffectFormat;

   function Get_TextFrame
     (This : ShapeRange_Type)
     return Pointer_To_TextFrame;

   function Get_ThreeD
     (This : ShapeRange_Type)
     return Pointer_To_ThreeDFormat;

   function Get_Top
     (This : ShapeRange_Type)
     return Interfaces.C.C_float;

   procedure Put_Top
     (This : ShapeRange_Type;
      prop : Interfaces.C.C_float);

   function Get_Type
     (This : ShapeRange_Type)
     return MsoShapeType;

   function Get_VerticalFlip
     (This : ShapeRange_Type)
     return MsoTriState;

   function Get_Vertices
     (This : ShapeRange_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Visible
     (This : ShapeRange_Type)
     return MsoTriState;

   procedure Put_Visible
     (This : ShapeRange_Type;
      prop : MsoTriState);

   function Get_Width
     (This : ShapeRange_Type)
     return Interfaces.C.C_float;

   procedure Put_Width
     (This : ShapeRange_Type;
      prop : Interfaces.C.C_float);

   function Get_ZOrderPosition
     (This : ShapeRange_Type)
     return Interfaces.C.long;

   function Get_Hyperlink
     (This : ShapeRange_Type)
     return Pointer_To_Hyperlink;

   function Get_RelativeHorizontalPosition
     (This : ShapeRange_Type)
     return WdRelativeHorizontalPosition;

   procedure Put_RelativeHorizontalPosition
     (This : ShapeRange_Type;
      prop : WdRelativeHorizontalPosition);

   function Get_RelativeVerticalPosition
     (This : ShapeRange_Type)
     return WdRelativeVerticalPosition;

   procedure Put_RelativeVerticalPosition
     (This : ShapeRange_Type;
      prop : WdRelativeVerticalPosition);

   function Get_LockAnchor
     (This : ShapeRange_Type)
     return Interfaces.C.long;

   procedure Put_LockAnchor
     (This : ShapeRange_Type;
      prop : Interfaces.C.long);

   function Get_WrapFormat
     (This : ShapeRange_Type)
     return Pointer_To_WrapFormat;

   function Get_Anchor
     (This : ShapeRange_Type)
     return Pointer_To_uRange;

   function Item
     (This  : ShapeRange_Type;
      Index : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Shape;

   procedure Align
     (This       : ShapeRange_Type;
      Align      : MsoAlignCmd;
      RelativeTo : Interfaces.C.long);

   procedure Apply
     (This : ShapeRange_Type);

   procedure Delete
     (This : ShapeRange_Type);

   procedure Distribute
     (This       : ShapeRange_Type;
      Distribute : MsoDistributeCmd;
      RelativeTo : Interfaces.C.long);

   function Duplicate
     (This : ShapeRange_Type)
     return Pointer_To_ShapeRange;

   procedure Flip
     (This    : ShapeRange_Type;
      FlipCmd : MsoFlipCmd);

   procedure IncrementLeft
     (This      : ShapeRange_Type;
      Increment : Interfaces.C.C_float);

   procedure IncrementRotation
     (This      : ShapeRange_Type;
      Increment : Interfaces.C.C_float);

   procedure IncrementTop
     (This      : ShapeRange_Type;
      Increment : Interfaces.C.C_float);

   function Group
     (This : ShapeRange_Type)
     return Pointer_To_Shape;

   procedure PickUp
     (This : ShapeRange_Type);

   function Regroup
     (This : ShapeRange_Type)
     return Pointer_To_Shape;

   procedure RerouteConnections
     (This : ShapeRange_Type);

   procedure ScaleHeight
     (This                   : ShapeRange_Type;
      Factor                 : Interfaces.C.C_float;
      RelativeToOriginalSize : MsoTriState;
      Scale                  : MsoScaleFrom);

   procedure ScaleWidth
     (This                   : ShapeRange_Type;
      Factor                 : Interfaces.C.C_float;
      RelativeToOriginalSize : MsoTriState;
      Scale                  : MsoScaleFrom);

   procedure uSelect
     (This    : ShapeRange_Type;
      Replace : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   procedure SetShapesDefaultProperties
     (This : ShapeRange_Type);

   function Ungroup
     (This : ShapeRange_Type)
     return Pointer_To_ShapeRange;

   procedure ZOrder
     (This      : ShapeRange_Type;
      ZOrderCmd : MsoZOrderCmd);

   function ConvertToFrame
     (This : ShapeRange_Type)
     return Pointer_To_Frame;

   function ConvertToInlineShape
     (This : ShapeRange_Type)
     return Pointer_To_InlineShape;

   procedure Activate
     (This : ShapeRange_Type);

   function Get_AlternativeText
     (This : ShapeRange_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_AlternativeText
     (This : ShapeRange_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_HasDiagram
     (This : ShapeRange_Type)
     return MsoTriState;

   function Get_Diagram
     (This : ShapeRange_Type)
     return Pointer_To_IMsoDiagram;

   function Get_HasDiagramNode
     (This : ShapeRange_Type)
     return MsoTriState;

   function Get_DiagramNode
     (This : ShapeRange_Type)
     return Pointer_To_DiagramNode;

   function Get_Child
     (This : ShapeRange_Type)
     return MsoTriState;

   function Get_ParentGroup
     (This : ShapeRange_Type)
     return Pointer_To_Shape;

   function Get_CanvasItems
     (This : ShapeRange_Type)
     return Pointer_To_CanvasShapes;

   function Get_ID
     (This : ShapeRange_Type)
     return Interfaces.C.long;

   procedure CanvasCropLeft
     (This      : ShapeRange_Type;
      Increment : Interfaces.C.C_float);

   procedure CanvasCropTop
     (This      : ShapeRange_Type;
      Increment : Interfaces.C.C_float);

   procedure CanvasCropRight
     (This      : ShapeRange_Type;
      Increment : Interfaces.C.C_float);

   procedure CanvasCropBottom
     (This      : ShapeRange_Type;
      Increment : Interfaces.C.C_float);

   procedure Put_RTF
     (This : ShapeRange_Type;
      P1   : GNATCOM.Types.BSTR;
      Free : Boolean := True);

end winword.ShapeRange_Interface;

