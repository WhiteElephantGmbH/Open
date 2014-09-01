with GNATCOM.Dispinterface;

package winword.ShapeNode_Interface is

   type ShapeNode_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out ShapeNode_Type);

   function Pointer (This : ShapeNode_Type)
     return Pointer_To_ShapeNode;

   procedure Attach (This    : in out ShapeNode_Type;
                     Pointer : in     Pointer_To_ShapeNode);

   function Get_Application
     (This : ShapeNode_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : ShapeNode_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : ShapeNode_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_EditingType
     (This : ShapeNode_Type)
     return MsoEditingType;

   function Get_Points
     (This : ShapeNode_Type)
     return GNATCOM.Types.VARIANT;

   function Get_SegmentType
     (This : ShapeNode_Type)
     return MsoSegmentType;

end winword.ShapeNode_Interface;

