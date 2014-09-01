package body winword.DiagramNode_Object is

   function Get_Application
     (This : DiagramNode_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, DiagramNode_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : DiagramNode_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, DiagramNode_Get_Creator);
   end Get_Creator;

   function AddNode
     (This     : DiagramNode_Type;
      Pos      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      NodeType : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         DiagramNode_AddNode,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => NodeType,
          2 => Pos),
         Free);
   end AddNode;

   procedure Delete
     (This : DiagramNode_Type)
   is
   begin
      Invoke (This, DiagramNode_Delete);
   end Delete;

   procedure MoveNode
     (This       : DiagramNode_Type;
      TargetNode : GNATCOM.Types.VARIANT;
      Pos        : GNATCOM.Types.VARIANT;
      Free       : Boolean := True)
   is
   begin
      Invoke
        (This,
         DiagramNode_MoveNode,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Pos,
          2 => TargetNode),
         Free);
   end MoveNode;

   procedure ReplaceNode
     (This       : DiagramNode_Type;
      TargetNode : GNATCOM.Types.VARIANT;
      Free       : Boolean := True)
   is
   begin
      Invoke
        (This,
         DiagramNode_ReplaceNode,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => TargetNode),
         Free);
   end ReplaceNode;

   procedure SwapNode
     (This         : DiagramNode_Type;
      TargetNode   : GNATCOM.Types.VARIANT;
      SwapChildren : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free         : Boolean := True)
   is
   begin
      Invoke
        (This,
         DiagramNode_SwapNode,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => SwapChildren,
          2 => TargetNode),
         Free);
   end SwapNode;

   function CloneNode
     (This         : DiagramNode_Type;
      CopyChildren : GNATCOM.Types.VARIANT;
      TargetNode   : GNATCOM.Types.VARIANT;
      Pos          : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free         : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         DiagramNode_CloneNode,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Pos,
          2 => TargetNode,
          3 => CopyChildren),
         Free);
   end CloneNode;

   procedure TransferChildren
     (This          : DiagramNode_Type;
      ReceivingNode : GNATCOM.Types.VARIANT;
      Free          : Boolean := True)
   is
   begin
      Invoke
        (This,
         DiagramNode_TransferChildren,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => ReceivingNode),
         Free);
   end TransferChildren;

   function NextNode
     (This : DiagramNode_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke (This, DiagramNode_NextNode);
   end NextNode;

   function PrevNode
     (This : DiagramNode_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke (This, DiagramNode_PrevNode);
   end PrevNode;

   function Get_Parent
     (This : DiagramNode_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, DiagramNode_Get_Parent);
   end Get_Parent;

   function Get_Children
     (This : DiagramNode_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, DiagramNode_Get_Children);
   end Get_Children;

   function Get_Shape
     (This : DiagramNode_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, DiagramNode_Get_Shape);
   end Get_Shape;

   function Get_Root
     (This : DiagramNode_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, DiagramNode_Get_Root);
   end Get_Root;

   function Get_Diagram
     (This : DiagramNode_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, DiagramNode_Get_Diagram);
   end Get_Diagram;

   function Get_Layout
     (This : DiagramNode_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, DiagramNode_Get_Layout);
   end Get_Layout;

   procedure Put_Layout
     (This : DiagramNode_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         DiagramNode_Put_Layout,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Layout;

   function Get_TextShape
     (This : DiagramNode_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, DiagramNode_Get_TextShape);
   end Get_TextShape;

end winword.DiagramNode_Object;

