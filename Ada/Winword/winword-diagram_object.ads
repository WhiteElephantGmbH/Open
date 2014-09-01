with GNATCOM.Dispinterface;

package winword.Diagram_Object is

   type Diagram_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : Diagram_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : Diagram_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : Diagram_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Nodes
     (This : Diagram_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Type
     (This : Diagram_Type)
     return GNATCOM.Types.VARIANT;

   function Get_AutoLayout
     (This : Diagram_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AutoLayout
     (This : Diagram_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Reverse
     (This : Diagram_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Reverse
     (This : Diagram_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AutoFormat
     (This : Diagram_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AutoFormat
     (This : Diagram_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure Convert
     (This  : Diagram_Type;
      uType : GNATCOM.Types.VARIANT;
      Free  : Boolean := True);

end winword.Diagram_Object;

