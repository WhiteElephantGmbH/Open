with GNATCOM.Dispinterface;

package winword.uProperties_Interface is

   type uProperties_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out uProperties_Type);

   function Pointer (This : uProperties_Type)
     return Pointer_To_uProperties;

   procedure Attach (This    : in out uProperties_Type;
                     Pointer : in     Pointer_To_uProperties);

   function Item
     (This        : uProperties_Type;
      index       : GNATCOM.Types.VARIANT;
      Free        : Boolean := True)
     return Pointer_To_Property;

   function Get_Application
     (This       : uProperties_Type)
     return Pointer_To_Application;

   function Get_Parent
     (This        : uProperties_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Count
     (This      : uProperties_Type)
     return Interfaces.C.long;

   function uNewEnum
     (This        : uProperties_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_VBE
     (This       : uProperties_Type)
     return Pointer_To_VBE;

end winword.uProperties_Interface;

