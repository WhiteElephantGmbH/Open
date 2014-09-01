with GNATCOM.Dispinterface;

package winword.ShapeNode_Object is

   type ShapeNode_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : ShapeNode_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : ShapeNode_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : ShapeNode_Type)
     return GNATCOM.Types.VARIANT;

   function Get_EditingType
     (This : ShapeNode_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Points
     (This : ShapeNode_Type)
     return GNATCOM.Types.VARIANT;

   function Get_SegmentType
     (This : ShapeNode_Type)
     return GNATCOM.Types.VARIANT;

end winword.ShapeNode_Object;

