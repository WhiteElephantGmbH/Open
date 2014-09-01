with GNATCOM.Dispinterface;

package winword.GroupShapes_Interface is

   type GroupShapes_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out GroupShapes_Type);

   function Pointer (This : GroupShapes_Type)
     return Pointer_To_GroupShapes;

   procedure Attach (This    : in out GroupShapes_Type;
                     Pointer : in     Pointer_To_GroupShapes);

   function Get_Application
     (This : GroupShapes_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : GroupShapes_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : GroupShapes_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Count
     (This : GroupShapes_Type)
     return Interfaces.C.long;

   function Getu_NewEnum
     (This : GroupShapes_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Item
     (This  : GroupShapes_Type;
      Index : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Shape;

   function uRange
     (This  : GroupShapes_Type;
      Index : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_ShapeRange;

end winword.GroupShapes_Interface;

