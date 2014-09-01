with GNATCOM.Dispinterface;

package winword.DiagramNodeChildren_Interface is

   type DiagramNodeChildren_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out DiagramNodeChildren_Type);

   function Pointer (This : DiagramNodeChildren_Type)
     return Pointer_To_DiagramNodeChildren;

   procedure Attach (This    : in out DiagramNodeChildren_Type;
                     Pointer : in     Pointer_To_DiagramNodeChildren);

   function Get_Application
     (This    : DiagramNodeChildren_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Creator
     (This      : DiagramNodeChildren_Type)
     return Interfaces.C.long;

   function Getu_NewEnum
     (This      : DiagramNodeChildren_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Item
     (This  : DiagramNodeChildren_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return Pointer_To_DiagramNode;

   function AddNode
     (This     : DiagramNodeChildren_Type;
      Index    : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      NodeType : MsoDiagramNodeType;
      Free     : Boolean := True)
     return Pointer_To_DiagramNode;

   procedure SelectAll
     (This : DiagramNodeChildren_Type);

   function Get_Parent
     (This   : DiagramNodeChildren_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Count
     (This          : DiagramNodeChildren_Type)
     return Interfaces.C.int;

   function Get_FirstChild
     (This  : DiagramNodeChildren_Type)
     return Pointer_To_DiagramNode;

   function Get_LastChild
     (This : DiagramNodeChildren_Type)
     return Pointer_To_DiagramNode;

end winword.DiagramNodeChildren_Interface;

