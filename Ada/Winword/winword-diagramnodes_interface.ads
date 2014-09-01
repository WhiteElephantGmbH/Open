with GNATCOM.Dispinterface;

package winword.DiagramNodes_Interface is

   type DiagramNodes_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out DiagramNodes_Type);

   function Pointer (This : DiagramNodes_Type)
     return Pointer_To_DiagramNodes;

   procedure Attach (This    : in out DiagramNodes_Type;
                     Pointer : in     Pointer_To_DiagramNodes);

   function Get_Application
     (This    : DiagramNodes_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Creator
     (This      : DiagramNodes_Type)
     return Interfaces.C.long;

   function Getu_NewEnum
     (This      : DiagramNodes_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Item
     (This  : DiagramNodes_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return Pointer_To_DiagramNode;

   procedure SelectAll
     (This : DiagramNodes_Type);

   function Get_Parent
     (This   : DiagramNodes_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Count
     (This          : DiagramNodes_Type)
     return Interfaces.C.int;

end winword.DiagramNodes_Interface;

