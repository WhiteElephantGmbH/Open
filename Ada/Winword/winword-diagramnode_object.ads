with GNATCOM.Dispinterface;

package winword.DiagramNode_Object is

   type DiagramNode_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : DiagramNode_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : DiagramNode_Type)
     return GNATCOM.Types.VARIANT;

   function AddNode
     (This     : DiagramNode_Type;
      Pos      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      NodeType : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure Delete
     (This : DiagramNode_Type);

   procedure MoveNode
     (This       : DiagramNode_Type;
      TargetNode : GNATCOM.Types.VARIANT;
      Pos        : GNATCOM.Types.VARIANT;
      Free       : Boolean := True);

   procedure ReplaceNode
     (This       : DiagramNode_Type;
      TargetNode : GNATCOM.Types.VARIANT;
      Free       : Boolean := True);

   procedure SwapNode
     (This         : DiagramNode_Type;
      TargetNode   : GNATCOM.Types.VARIANT;
      SwapChildren : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free         : Boolean := True);

   function CloneNode
     (This         : DiagramNode_Type;
      CopyChildren : GNATCOM.Types.VARIANT;
      TargetNode   : GNATCOM.Types.VARIANT;
      Pos          : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free         : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure TransferChildren
     (This          : DiagramNode_Type;
      ReceivingNode : GNATCOM.Types.VARIANT;
      Free          : Boolean := True);

   function NextNode
     (This : DiagramNode_Type)
     return GNATCOM.Types.VARIANT;

   function PrevNode
     (This : DiagramNode_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : DiagramNode_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Children
     (This : DiagramNode_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Shape
     (This : DiagramNode_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Root
     (This : DiagramNode_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Diagram
     (This : DiagramNode_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Layout
     (This : DiagramNode_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Layout
     (This : DiagramNode_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_TextShape
     (This : DiagramNode_Type)
     return GNATCOM.Types.VARIANT;

end winword.DiagramNode_Object;

