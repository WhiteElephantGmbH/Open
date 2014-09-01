with GNATCOM.Dispinterface;

package winword.uAddIns_Interface is

   type uAddIns_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out uAddIns_Type);

   function Pointer (This : uAddIns_Type)
     return Pointer_To_uAddIns;

   procedure Attach (This    : in out uAddIns_Type;
                     Pointer : in     Pointer_To_uAddIns);

   function Item
     (This     : uAddIns_Type;
      index    : GNATCOM.Types.VARIANT;
      Free     : Boolean := True)
     return Pointer_To_AddIn;

   function Get_VBE
     (This   : uAddIns_Type)
     return Pointer_To_VBE;

   function Get_Parent
     (This   : uAddIns_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Count
     (This      : uAddIns_Type)
     return Interfaces.C.long;

   function uNewEnum
     (This        : uAddIns_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   procedure Update
     (This : uAddIns_Type);

end winword.uAddIns_Interface;

