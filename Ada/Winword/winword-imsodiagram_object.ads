with GNATCOM.Dispinterface;

package winword.IMsoDiagram_Object is

   type IMsoDiagram_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : IMsoDiagram_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : IMsoDiagram_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : IMsoDiagram_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Nodes
     (This : IMsoDiagram_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Type
     (This : IMsoDiagram_Type)
     return GNATCOM.Types.VARIANT;

   function Get_AutoLayout
     (This : IMsoDiagram_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AutoLayout
     (This : IMsoDiagram_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Reverse
     (This : IMsoDiagram_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Reverse
     (This : IMsoDiagram_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AutoFormat
     (This : IMsoDiagram_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AutoFormat
     (This : IMsoDiagram_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure Convert
     (This  : IMsoDiagram_Type;
      uType : GNATCOM.Types.VARIANT;
      Free  : Boolean := True);

end winword.IMsoDiagram_Object;

