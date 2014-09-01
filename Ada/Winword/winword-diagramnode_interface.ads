with GNATCOM.Dispinterface;

package winword.DiagramNode_Interface is

   type DiagramNode_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out DiagramNode_Type);

   function Pointer (This : DiagramNode_Type)
     return Pointer_To_DiagramNode;

   procedure Attach (This    : in out DiagramNode_Type;
                     Pointer : in     Pointer_To_DiagramNode);

   function Get_Application
     (This    : DiagramNode_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Creator
     (This      : DiagramNode_Type)
     return Interfaces.C.long;

   function AddNode
     (This     : DiagramNode_Type;
      Pos      : MsoRelativeNodePosition;
      NodeType : MsoDiagramNodeType)
     return Pointer_To_DiagramNode;

   procedure Delete
     (This : DiagramNode_Type);

   procedure MoveNode
     (This       : DiagramNode_Type;
      TargetNode : Pointer_To_DiagramNode;
      Pos        : MsoRelativeNodePosition);

   procedure ReplaceNode
     (This       : DiagramNode_Type;
      TargetNode : Pointer_To_DiagramNode);

   procedure SwapNode
     (This         : DiagramNode_Type;
      TargetNode   : Pointer_To_DiagramNode;
      SwapChildren : GNATCOM.Types.VARIANT_BOOL);

   function CloneNode
     (This         : DiagramNode_Type;
      CopyChildren : GNATCOM.Types.VARIANT_BOOL;
      TargetNode   : Pointer_To_DiagramNode;
      Pos          : MsoRelativeNodePosition)
     return Pointer_To_DiagramNode;

   procedure TransferChildren
     (This          : DiagramNode_Type;
      ReceivingNode : Pointer_To_DiagramNode);

   function NextNode
     (This     : DiagramNode_Type)
     return Pointer_To_DiagramNode;

   function PrevNode
     (This     : DiagramNode_Type)
     return Pointer_To_DiagramNode;

   function Get_Parent
     (This   : DiagramNode_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Children
     (This     : DiagramNode_Type)
     return Pointer_To_DiagramNodeChildren;

   function Get_Shape
     (This  : DiagramNode_Type)
     return Pointer_To_Shape;

   function Get_Root
     (This : DiagramNode_Type)
     return Pointer_To_DiagramNode;

   function Get_Diagram
     (This    : DiagramNode_Type)
     return Pointer_To_IMsoDiagram;

   function Get_Layout
     (This  : DiagramNode_Type)
     return MsoOrgChartLayoutType;

   procedure Put_Layout
     (This  : DiagramNode_Type;
      uType : MsoOrgChartLayoutType);

   function Get_TextShape
     (This  : DiagramNode_Type)
     return Pointer_To_Shape;

end winword.DiagramNode_Interface;

