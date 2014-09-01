with GNATCOM.Dispinterface;

package winword.COMAddIns_Interface is

   type COMAddIns_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out COMAddIns_Type);

   function Pointer (This : COMAddIns_Type)
     return Pointer_To_COMAddIns;

   procedure Attach (This    : in out COMAddIns_Type;
                     Pointer : in     Pointer_To_COMAddIns);

   function Get_Application
     (This    : COMAddIns_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Creator
     (This      : COMAddIns_Type)
     return Interfaces.C.long;

   function Item
     (This     : COMAddIns_Type;
      Index    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_COMAddIn;

   function Get_Count
     (This     : COMAddIns_Type)
     return Interfaces.C.long;

   function Getu_NewEnum
     (This     : COMAddIns_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   procedure Update
     (This : COMAddIns_Type);

   function Get_Parent
     (This    : COMAddIns_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   procedure SetAppModal
     (This      : COMAddIns_Type;
      varfModal : GNATCOM.Types.VARIANT_BOOL);

end winword.COMAddIns_Interface;

