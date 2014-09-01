with GNATCOM.Dispinterface;

package winword.GroupShapes_Object is

   type GroupShapes_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : GroupShapes_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : GroupShapes_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : GroupShapes_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : GroupShapes_Type)
     return GNATCOM.Types.VARIANT;

   function Getu_NewEnum
     (This : GroupShapes_Type)
     return GNATCOM.Types.VARIANT;

   function Item
     (This  : GroupShapes_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function uRange
     (This  : GroupShapes_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

end winword.GroupShapes_Object;

