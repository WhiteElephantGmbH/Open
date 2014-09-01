with GNATCOM.Dispinterface;

package winword.COMAddIns_Object is

   type COMAddIns_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : COMAddIns_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : COMAddIns_Type)
     return GNATCOM.Types.VARIANT;

   function Item
     (This  : COMAddIns_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : COMAddIns_Type)
     return GNATCOM.Types.VARIANT;

   function Getu_NewEnum
     (This : COMAddIns_Type)
     return GNATCOM.Types.VARIANT;

   procedure Update
     (This : COMAddIns_Type);

   function Get_Parent
     (This : COMAddIns_Type)
     return GNATCOM.Types.VARIANT;

   procedure SetAppModal
     (This      : COMAddIns_Type;
      varfModal : GNATCOM.Types.VARIANT;
      Free      : Boolean := True);

end winword.COMAddIns_Object;

