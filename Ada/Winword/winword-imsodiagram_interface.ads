with GNATCOM.Dispinterface;

package winword.IMsoDiagram_Interface is

   type IMsoDiagram_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out IMsoDiagram_Type);

   function Pointer (This : IMsoDiagram_Type)
     return Pointer_To_IMsoDiagram;

   procedure Attach (This    : in out IMsoDiagram_Type;
                     Pointer : in     Pointer_To_IMsoDiagram);

   function Get_Application
     (This    : IMsoDiagram_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Creator
     (This      : IMsoDiagram_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This   : IMsoDiagram_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Nodes
     (This  : IMsoDiagram_Type)
     return Pointer_To_DiagramNodes;

   function Get_Type
     (This  : IMsoDiagram_Type)
     return MsoDiagramType;

   function Get_AutoLayout
     (This       : IMsoDiagram_Type)
     return MsoTriState;

   procedure Put_AutoLayout
     (This       : IMsoDiagram_Type;
      AutoLayout : MsoTriState);

   function Get_Reverse
     (This     : IMsoDiagram_Type)
     return MsoTriState;

   procedure Put_Reverse
     (This     : IMsoDiagram_Type;
      uReverse : MsoTriState);

   function Get_AutoFormat
     (This       : IMsoDiagram_Type)
     return MsoTriState;

   procedure Put_AutoFormat
     (This       : IMsoDiagram_Type;
      AutoFormat : MsoTriState);

   procedure Convert
     (This  : IMsoDiagram_Type;
      uType : MsoDiagramType);

end winword.IMsoDiagram_Interface;

