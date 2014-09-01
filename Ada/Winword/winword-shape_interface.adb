with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.Shape_Interface is

   procedure Initialize (This : in out Shape_Type) is
   begin
      Set_IID (This, IID_Shape);
   end Initialize;

   function Pointer (This : Shape_Type)
     return Pointer_To_Shape
   is
   begin
      return To_Pointer_To_Shape (Address (This));
   end Pointer;

   procedure Attach (This    : in out Shape_Type;
                     Pointer : in     Pointer_To_Shape)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : Shape_Type)
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
     (This : Shape_Type)
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
     (This : Shape_Type)
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

   function Get_Adjustments
     (This : Shape_Type)
     return Pointer_To_Adjustments
   is
       RetVal : aliased Pointer_To_Adjustments;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Adjustments
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Adjustments;

   function Get_AutoShapeType
     (This : Shape_Type)
     return MsoAutoShapeType
   is
       RetVal : aliased MsoAutoShapeType;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoShapeType
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AutoShapeType;

   procedure Put_AutoShapeType
     (This : Shape_Type;
      prop : MsoAutoShapeType)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AutoShapeType
         (Pointer (This),
          prop));

   end Put_AutoShapeType;

   function Get_Callout
     (This : Shape_Type)
     return Pointer_To_CalloutFormat
   is
       RetVal : aliased Pointer_To_CalloutFormat;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Callout
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Callout;

   function Get_ConnectionSiteCount
     (This : Shape_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ConnectionSiteCount
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ConnectionSiteCount;

   function Get_Connector
     (This : Shape_Type)
     return MsoTriState
   is
       RetVal : aliased MsoTriState;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Connector
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Connector;

   function Get_ConnectorFormat
     (This : Shape_Type)
     return Pointer_To_ConnectorFormat
   is
       RetVal : aliased Pointer_To_ConnectorFormat;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ConnectorFormat
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ConnectorFormat;

   function Get_Fill
     (This : Shape_Type)
     return Pointer_To_FillFormat
   is
       RetVal : aliased Pointer_To_FillFormat;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Fill
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Fill;

   function Get_GroupItems
     (This : Shape_Type)
     return Pointer_To_GroupShapes
   is
       RetVal : aliased Pointer_To_GroupShapes;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_GroupItems
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_GroupItems;

   function Get_Height
     (This : Shape_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Height
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Height;

   procedure Put_Height
     (This : Shape_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Height
         (Pointer (This),
          prop));

   end Put_Height;

   function Get_HorizontalFlip
     (This : Shape_Type)
     return MsoTriState
   is
       RetVal : aliased MsoTriState;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_HorizontalFlip
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_HorizontalFlip;

   function Get_Left
     (This : Shape_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Left
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Left;

   procedure Put_Left
     (This : Shape_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Left
         (Pointer (This),
          prop));

   end Put_Left;

   function Get_Line
     (This : Shape_Type)
     return Pointer_To_LineFormat
   is
       RetVal : aliased Pointer_To_LineFormat;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Line
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Line;

   function Get_LockAspectRatio
     (This : Shape_Type)
     return MsoTriState
   is
       RetVal : aliased MsoTriState;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_LockAspectRatio
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_LockAspectRatio;

   procedure Put_LockAspectRatio
     (This : Shape_Type;
      prop : MsoTriState)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_LockAspectRatio
         (Pointer (This),
          prop));

   end Put_LockAspectRatio;

   function Get_Name
     (This : Shape_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Name
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Name;

   procedure Put_Name
     (This : Shape_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Name
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_Name;

   function Get_Nodes
     (This : Shape_Type)
     return Pointer_To_ShapeNodes
   is
       RetVal : aliased Pointer_To_ShapeNodes;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Nodes
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Nodes;

   function Get_Rotation
     (This : Shape_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Rotation
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Rotation;

   procedure Put_Rotation
     (This : Shape_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Rotation
         (Pointer (This),
          prop));

   end Put_Rotation;

   function Get_PictureFormat
     (This : Shape_Type)
     return Pointer_To_PictureFormat
   is
       RetVal : aliased Pointer_To_PictureFormat;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_PictureFormat
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_PictureFormat;

   function Get_Shadow
     (This : Shape_Type)
     return Pointer_To_ShadowFormat
   is
       RetVal : aliased Pointer_To_ShadowFormat;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Shadow
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Shadow;

   function Get_TextEffect
     (This : Shape_Type)
     return Pointer_To_TextEffectFormat
   is
       RetVal : aliased Pointer_To_TextEffectFormat;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_TextEffect
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_TextEffect;

   function Get_TextFrame
     (This : Shape_Type)
     return Pointer_To_TextFrame
   is
       RetVal : aliased Pointer_To_TextFrame;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_TextFrame
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_TextFrame;

   function Get_ThreeD
     (This : Shape_Type)
     return Pointer_To_ThreeDFormat
   is
       RetVal : aliased Pointer_To_ThreeDFormat;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ThreeD
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ThreeD;

   function Get_Top
     (This : Shape_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Top
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Top;

   procedure Put_Top
     (This : Shape_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Top
         (Pointer (This),
          prop));

   end Put_Top;

   function Get_Type
     (This : Shape_Type)
     return MsoShapeType
   is
       RetVal : aliased MsoShapeType;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Type
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Type;

   function Get_VerticalFlip
     (This : Shape_Type)
     return MsoTriState
   is
       RetVal : aliased MsoTriState;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_VerticalFlip
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_VerticalFlip;

   function Get_Vertices
     (This : Shape_Type)
     return GNATCOM.Types.VARIANT
   is
       RetVal : aliased GNATCOM.Types.VARIANT;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Vertices
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Vertices;

   function Get_Visible
     (This : Shape_Type)
     return MsoTriState
   is
       RetVal : aliased MsoTriState;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Visible
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Visible;

   procedure Put_Visible
     (This : Shape_Type;
      prop : MsoTriState)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Visible
         (Pointer (This),
          prop));

   end Put_Visible;

   function Get_Width
     (This : Shape_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Width
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Width;

   procedure Put_Width
     (This : Shape_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Width
         (Pointer (This),
          prop));

   end Put_Width;

   function Get_ZOrderPosition
     (This : Shape_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ZOrderPosition
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ZOrderPosition;

   function Get_Hyperlink
     (This : Shape_Type)
     return Pointer_To_Hyperlink
   is
       RetVal : aliased Pointer_To_Hyperlink;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Hyperlink
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Hyperlink;

   function Get_RelativeHorizontalPosition
     (This : Shape_Type)
     return WdRelativeHorizontalPosition
   is
       RetVal : aliased WdRelativeHorizontalPosition;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_RelativeHorizontalPosition
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_RelativeHorizontalPosition;

   procedure Put_RelativeHorizontalPosition
     (This : Shape_Type;
      prop : WdRelativeHorizontalPosition)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_RelativeHorizontalPosition
         (Pointer (This),
          prop));

   end Put_RelativeHorizontalPosition;

   function Get_RelativeVerticalPosition
     (This : Shape_Type)
     return WdRelativeVerticalPosition
   is
       RetVal : aliased WdRelativeVerticalPosition;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_RelativeVerticalPosition
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_RelativeVerticalPosition;

   procedure Put_RelativeVerticalPosition
     (This : Shape_Type;
      prop : WdRelativeVerticalPosition)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_RelativeVerticalPosition
         (Pointer (This),
          prop));

   end Put_RelativeVerticalPosition;

   function Get_LockAnchor
     (This : Shape_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_LockAnchor
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_LockAnchor;

   procedure Put_LockAnchor
     (This : Shape_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_LockAnchor
         (Pointer (This),
          prop));

   end Put_LockAnchor;

   function Get_WrapFormat
     (This : Shape_Type)
     return Pointer_To_WrapFormat
   is
       RetVal : aliased Pointer_To_WrapFormat;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_WrapFormat
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_WrapFormat;

   function Get_OLEFormat
     (This : Shape_Type)
     return Pointer_To_OLEFormat
   is
       RetVal : aliased Pointer_To_OLEFormat;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_OLEFormat
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_OLEFormat;

   function Get_Anchor
     (This : Shape_Type)
     return Pointer_To_uRange
   is
       RetVal : aliased Pointer_To_uRange;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Anchor
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Anchor;

   function Get_LinkFormat
     (This : Shape_Type)
     return Pointer_To_LinkFormat
   is
       RetVal : aliased Pointer_To_LinkFormat;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_LinkFormat
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_LinkFormat;

   procedure Apply
     (This : Shape_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Apply
         (Pointer (This)));

   end Apply;

   procedure Delete
     (This : Shape_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Delete
         (Pointer (This)));

   end Delete;

   function Duplicate
     (This : Shape_Type)
     return Pointer_To_Shape
   is
       RetVal : aliased Pointer_To_Shape;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Duplicate
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Duplicate;

   procedure Flip
     (This    : Shape_Type;
      FlipCmd : MsoFlipCmd)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Flip
         (Pointer (This),
          FlipCmd));

   end Flip;

   procedure IncrementLeft
     (This      : Shape_Type;
      Increment : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.IncrementLeft
         (Pointer (This),
          Increment));

   end IncrementLeft;

   procedure IncrementRotation
     (This      : Shape_Type;
      Increment : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.IncrementRotation
         (Pointer (This),
          Increment));

   end IncrementRotation;

   procedure IncrementTop
     (This      : Shape_Type;
      Increment : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.IncrementTop
         (Pointer (This),
          Increment));

   end IncrementTop;

   procedure PickUp
     (This : Shape_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.PickUp
         (Pointer (This)));

   end PickUp;

   procedure RerouteConnections
     (This : Shape_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.RerouteConnections
         (Pointer (This)));

   end RerouteConnections;

   procedure ScaleHeight
     (This                   : Shape_Type;
      Factor                 : Interfaces.C.C_float;
      RelativeToOriginalSize : MsoTriState;
      Scale                  : MsoScaleFrom)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ScaleHeight
         (Pointer (This),
          Factor,
          RelativeToOriginalSize,
          Scale));

   end ScaleHeight;

   procedure ScaleWidth
     (This                   : Shape_Type;
      Factor                 : Interfaces.C.C_float;
      RelativeToOriginalSize : MsoTriState;
      Scale                  : MsoScaleFrom)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ScaleWidth
         (Pointer (This),
          Factor,
          RelativeToOriginalSize,
          Scale));

   end ScaleWidth;

   procedure uSelect
     (This    : Shape_Type;
      Replace : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.uSelect
         (Pointer (This),
          Replace));

   end uSelect;

   procedure SetShapesDefaultProperties
     (This : Shape_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.SetShapesDefaultProperties
         (Pointer (This)));

   end SetShapesDefaultProperties;

   function Ungroup
     (This : Shape_Type)
     return Pointer_To_ShapeRange
   is
       RetVal : aliased Pointer_To_ShapeRange;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Ungroup
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Ungroup;

   procedure ZOrder
     (This      : Shape_Type;
      ZOrderCmd : MsoZOrderCmd)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ZOrder
         (Pointer (This),
          ZOrderCmd));

   end ZOrder;

   function ConvertToInlineShape
     (This : Shape_Type)
     return Pointer_To_InlineShape
   is
       RetVal : aliased Pointer_To_InlineShape;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ConvertToInlineShape
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end ConvertToInlineShape;

   function ConvertToFrame
     (This : Shape_Type)
     return Pointer_To_Frame
   is
       RetVal : aliased Pointer_To_Frame;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ConvertToFrame
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end ConvertToFrame;

   procedure Activate
     (This : Shape_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Activate
         (Pointer (This)));

   end Activate;

   function Get_AlternativeText
     (This : Shape_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AlternativeText
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AlternativeText;

   procedure Put_AlternativeText
     (This : Shape_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AlternativeText
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_AlternativeText;

   function Get_Script
     (This : Shape_Type)
     return Pointer_To_Script
   is
       RetVal : aliased Pointer_To_Script;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Script
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Script;

   function Get_HasDiagram
     (This : Shape_Type)
     return MsoTriState
   is
       RetVal : aliased MsoTriState;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_HasDiagram
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_HasDiagram;

   function Get_Diagram
     (This : Shape_Type)
     return Pointer_To_IMsoDiagram
   is
       RetVal : aliased Pointer_To_IMsoDiagram;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Diagram
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Diagram;

   function Get_HasDiagramNode
     (This : Shape_Type)
     return MsoTriState
   is
       RetVal : aliased MsoTriState;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_HasDiagramNode
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_HasDiagramNode;

   function Get_DiagramNode
     (This : Shape_Type)
     return Pointer_To_DiagramNode
   is
       RetVal : aliased Pointer_To_DiagramNode;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DiagramNode
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DiagramNode;

   function Get_Child
     (This : Shape_Type)
     return MsoTriState
   is
       RetVal : aliased MsoTriState;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Child
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Child;

   function Get_ParentGroup
     (This : Shape_Type)
     return Pointer_To_Shape
   is
       RetVal : aliased Pointer_To_Shape;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ParentGroup
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ParentGroup;

   function Get_CanvasItems
     (This : Shape_Type)
     return Pointer_To_CanvasShapes
   is
       RetVal : aliased Pointer_To_CanvasShapes;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_CanvasItems
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_CanvasItems;

   function Get_ID
     (This : Shape_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ID
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ID;

   procedure CanvasCropLeft
     (This      : Shape_Type;
      Increment : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.CanvasCropLeft
         (Pointer (This),
          Increment));

   end CanvasCropLeft;

   procedure CanvasCropTop
     (This      : Shape_Type;
      Increment : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.CanvasCropTop
         (Pointer (This),
          Increment));

   end CanvasCropTop;

   procedure CanvasCropRight
     (This      : Shape_Type;
      Increment : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.CanvasCropRight
         (Pointer (This),
          Increment));

   end CanvasCropRight;

   procedure CanvasCropBottom
     (This      : Shape_Type;
      Increment : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.CanvasCropBottom
         (Pointer (This),
          Increment));

   end CanvasCropBottom;

   procedure Put_RTF
     (This : Shape_Type;
      P1   : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_RTF
         (Pointer (This),
          P1));

      if Free then
               GNATCOM.Interface.Free (P1);
      
      end if;

   end Put_RTF;

end winword.Shape_Interface;

