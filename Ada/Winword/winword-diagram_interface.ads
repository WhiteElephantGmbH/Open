with GNATCOM.Dispinterface;

package winword.Diagram_Interface is

   type Diagram_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Diagram_Type);

   function Pointer (This : Diagram_Type)
     return Pointer_To_Diagram;

   procedure Attach (This    : in out Diagram_Type;
                     Pointer : in     Pointer_To_Diagram);

   function Get_Application
     (This : Diagram_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : Diagram_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : Diagram_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Nodes
     (This : Diagram_Type)
     return Pointer_To_DiagramNodes;

   function Get_Type
     (This : Diagram_Type)
     return MsoDiagramType;

   function Get_AutoLayout
     (This : Diagram_Type)
     return MsoTriState;

   procedure Put_AutoLayout
     (This : Diagram_Type;
      prop : MsoTriState);

   function Get_Reverse
     (This : Diagram_Type)
     return MsoTriState;

   procedure Put_Reverse
     (This : Diagram_Type;
      prop : MsoTriState);

   function Get_AutoFormat
     (This : Diagram_Type)
     return MsoTriState;

   procedure Put_AutoFormat
     (This : Diagram_Type;
      prop : MsoTriState);

   procedure Convert
     (This  : Diagram_Type;
      uType : MsoDiagramType);

end winword.Diagram_Interface;

