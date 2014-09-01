with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.DiagramNode_Interface is

   procedure Initialize (This : in out DiagramNode_Type) is
   begin
      Set_IID (This, IID_DiagramNode);
   end Initialize;

   function Pointer (This : DiagramNode_Type)
     return Pointer_To_DiagramNode
   is
   begin
      return To_Pointer_To_DiagramNode (Address (This));
   end Pointer;

   procedure Attach (This    : in out DiagramNode_Type;
                     Pointer : in     Pointer_To_DiagramNode)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This    : DiagramNode_Type)
     return GNATCOM.Types.Pointer_To_IDispatch
   is
       RetVal : aliased GNATCOM.Types.Pointer_To_IDispatch;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Application
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Application;

   function Get_Creator
     (This      : DiagramNode_Type)
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

   function AddNode
     (This     : DiagramNode_Type;
      Pos      : MsoRelativeNodePosition;
      NodeType : MsoDiagramNodeType)
     return Pointer_To_DiagramNode
   is
       RetVal : aliased Pointer_To_DiagramNode;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.AddNode
         (Pointer (This),
          Pos,
          NodeType,
          RetVal'Unchecked_Access));

      return RetVal;
   end AddNode;

   procedure Delete
     (This : DiagramNode_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Delete
         (Pointer (This)));

   end Delete;

   procedure MoveNode
     (This       : DiagramNode_Type;
      TargetNode : Pointer_To_DiagramNode;
      Pos        : MsoRelativeNodePosition)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.MoveNode
         (Pointer (This),
          TargetNode,
          Pos));

   end MoveNode;

   procedure ReplaceNode
     (This       : DiagramNode_Type;
      TargetNode : Pointer_To_DiagramNode)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ReplaceNode
         (Pointer (This),
          TargetNode));

   end ReplaceNode;

   procedure SwapNode
     (This         : DiagramNode_Type;
      TargetNode   : Pointer_To_DiagramNode;
      SwapChildren : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.SwapNode
         (Pointer (This),
          TargetNode,
          SwapChildren));

   end SwapNode;

   function CloneNode
     (This         : DiagramNode_Type;
      CopyChildren : GNATCOM.Types.VARIANT_BOOL;
      TargetNode   : Pointer_To_DiagramNode;
      Pos          : MsoRelativeNodePosition)
     return Pointer_To_DiagramNode
   is
       RetVal : aliased Pointer_To_DiagramNode;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.CloneNode
         (Pointer (This),
          CopyChildren,
          TargetNode,
          Pos,
          RetVal'Unchecked_Access));

      return RetVal;
   end CloneNode;

   procedure TransferChildren
     (This          : DiagramNode_Type;
      ReceivingNode : Pointer_To_DiagramNode)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.TransferChildren
         (Pointer (This),
          ReceivingNode));

   end TransferChildren;

   function NextNode
     (This     : DiagramNode_Type)
     return Pointer_To_DiagramNode
   is
       RetVal : aliased Pointer_To_DiagramNode;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.NextNode
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end NextNode;

   function PrevNode
     (This     : DiagramNode_Type)
     return Pointer_To_DiagramNode
   is
       RetVal : aliased Pointer_To_DiagramNode;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.PrevNode
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end PrevNode;

   function Get_Parent
     (This   : DiagramNode_Type)
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

   function Get_Children
     (This     : DiagramNode_Type)
     return Pointer_To_DiagramNodeChildren
   is
       RetVal : aliased Pointer_To_DiagramNodeChildren;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Children
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Children;

   function Get_Shape
     (This  : DiagramNode_Type)
     return Pointer_To_Shape
   is
       RetVal : aliased Pointer_To_Shape;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Shape
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Shape;

   function Get_Root
     (This : DiagramNode_Type)
     return Pointer_To_DiagramNode
   is
       RetVal : aliased Pointer_To_DiagramNode;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Root
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Root;

   function Get_Diagram
     (This    : DiagramNode_Type)
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

   function Get_Layout
     (This  : DiagramNode_Type)
     return MsoOrgChartLayoutType
   is
       RetVal : aliased MsoOrgChartLayoutType;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Layout
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Layout;

   procedure Put_Layout
     (This  : DiagramNode_Type;
      uType : MsoOrgChartLayoutType)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Layout
         (Pointer (This),
          uType));

   end Put_Layout;

   function Get_TextShape
     (This  : DiagramNode_Type)
     return Pointer_To_Shape
   is
       RetVal : aliased Pointer_To_Shape;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_TextShape
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_TextShape;

end winword.DiagramNode_Interface;

