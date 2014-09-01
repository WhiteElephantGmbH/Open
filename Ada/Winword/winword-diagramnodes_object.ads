with GNATCOM.Dispinterface;

package winword.DiagramNodes_Object is

   type DiagramNodes_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : DiagramNodes_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : DiagramNodes_Type)
     return GNATCOM.Types.VARIANT;

   function Getu_NewEnum
     (This : DiagramNodes_Type)
     return GNATCOM.Types.VARIANT;

   function Item
     (This  : DiagramNodes_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure SelectAll
     (This : DiagramNodes_Type);

   function Get_Parent
     (This : DiagramNodes_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : DiagramNodes_Type)
     return GNATCOM.Types.VARIANT;

end winword.DiagramNodes_Object;

