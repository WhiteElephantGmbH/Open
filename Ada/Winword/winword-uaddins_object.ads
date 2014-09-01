with GNATCOM.Dispinterface;

package winword.uAddIns_Object is

   type uAddIns_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Item
     (This  : uAddIns_Type;
      index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Get_VBE
     (This : uAddIns_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : uAddIns_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : uAddIns_Type)
     return GNATCOM.Types.VARIANT;

   function uNewEnum
     (This : uAddIns_Type)
     return GNATCOM.Types.VARIANT;

   procedure Update
     (This : uAddIns_Type);

end winword.uAddIns_Object;

