with GNATCOM.Dispinterface;

package winword.FreeformBuilder_Interface is

   type FreeformBuilder_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out FreeformBuilder_Type);

   function Pointer (This : FreeformBuilder_Type)
     return Pointer_To_FreeformBuilder;

   procedure Attach (This    : in out FreeformBuilder_Type;
                     Pointer : in     Pointer_To_FreeformBuilder);

   function Get_Application
     (This : FreeformBuilder_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : FreeformBuilder_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : FreeformBuilder_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   procedure AddNodes
     (This        : FreeformBuilder_Type;
      SegmentType : MsoSegmentType;
      EditingType : MsoEditingType;
      X1          : Interfaces.C.C_float;
      Y1          : Interfaces.C.C_float;
      X2          : Interfaces.C.C_float;
      Y2          : Interfaces.C.C_float;
      X3          : Interfaces.C.C_float;
      Y3          : Interfaces.C.C_float);

   function ConvertToShape
     (This   : FreeformBuilder_Type;
      Anchor : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Shape;

end winword.FreeformBuilder_Interface;

