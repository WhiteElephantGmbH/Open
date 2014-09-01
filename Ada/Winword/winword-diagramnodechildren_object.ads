with GNATCOM.Dispinterface;

package winword.DiagramNodeChildren_Object is

   type DiagramNodeChildren_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : DiagramNodeChildren_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : DiagramNodeChildren_Type)
     return GNATCOM.Types.VARIANT;

   function Getu_NewEnum
     (This : DiagramNodeChildren_Type)
     return GNATCOM.Types.VARIANT;

   function Item
     (This  : DiagramNodeChildren_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function AddNode
     (This     : DiagramNodeChildren_Type;
      Index    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      NodeType : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure SelectAll
     (This : DiagramNodeChildren_Type);

   function Get_Parent
     (This : DiagramNodeChildren_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : DiagramNodeChildren_Type)
     return GNATCOM.Types.VARIANT;

   function Get_FirstChild
     (This : DiagramNodeChildren_Type)
     return GNATCOM.Types.VARIANT;

   function Get_LastChild
     (This : DiagramNodeChildren_Type)
     return GNATCOM.Types.VARIANT;

end winword.DiagramNodeChildren_Object;

