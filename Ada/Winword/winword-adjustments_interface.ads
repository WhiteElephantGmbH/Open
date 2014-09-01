with GNATCOM.Dispinterface;

package winword.Adjustments_Interface is

   type Adjustments_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Adjustments_Type);

   function Pointer (This : Adjustments_Type)
     return Pointer_To_Adjustments;

   procedure Attach (This    : in out Adjustments_Type;
                     Pointer : in     Pointer_To_Adjustments);

   function Get_Application
     (This : Adjustments_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : Adjustments_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : Adjustments_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Count
     (This : Adjustments_Type)
     return Interfaces.C.long;

   function Get_Item
     (This  : Adjustments_Type;
      Index : Interfaces.C.long)
     return Interfaces.C.C_float;

   procedure Put_Item
     (This  : Adjustments_Type;
      Index : Interfaces.C.long;
      prop  : Interfaces.C.C_float);

end winword.Adjustments_Interface;

