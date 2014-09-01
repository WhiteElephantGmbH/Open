with GNATCOM.Dispinterface;

package winword.ShapeNodes_Interface is

   type ShapeNodes_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out ShapeNodes_Type);

   function Pointer (This : ShapeNodes_Type)
     return Pointer_To_ShapeNodes;

   procedure Attach (This    : in out ShapeNodes_Type;
                     Pointer : in     Pointer_To_ShapeNodes);

   function Get_Application
     (This : ShapeNodes_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : ShapeNodes_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : ShapeNodes_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Count
     (This : ShapeNodes_Type)
     return Interfaces.C.long;

   function Getu_NewEnum
     (This : ShapeNodes_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   procedure Delete
     (This  : ShapeNodes_Type;
      Index : Interfaces.C.long);

   function Item
     (This  : ShapeNodes_Type;
      Index : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_ShapeNode;

   procedure SetEditingType
     (This        : ShapeNodes_Type;
      Index       : Interfaces.C.long;
      EditingType : MsoEditingType);

   procedure SetPosition
     (This  : ShapeNodes_Type;
      Index : Interfaces.C.long;
      X1    : Interfaces.C.C_float;
      Y1    : Interfaces.C.C_float);

   procedure SetSegmentType
     (This        : ShapeNodes_Type;
      Index       : Interfaces.C.long;
      SegmentType : MsoSegmentType);

   procedure Insert
     (This        : ShapeNodes_Type;
      Index       : Interfaces.C.long;
      SegmentType : MsoSegmentType;
      EditingType : MsoEditingType;
      X1          : Interfaces.C.C_float;
      Y1          : Interfaces.C.C_float;
      X2          : Interfaces.C.C_float;
      Y2          : Interfaces.C.C_float;
      X3          : Interfaces.C.C_float;
      Y3          : Interfaces.C.C_float);

end winword.ShapeNodes_Interface;

