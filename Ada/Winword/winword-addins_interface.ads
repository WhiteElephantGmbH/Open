with GNATCOM.Dispinterface;

package winword.AddIns_Interface is

   type AddIns_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out AddIns_Type);

   function Pointer (This : AddIns_Type)
     return Pointer_To_AddIns;

   procedure Attach (This    : in out AddIns_Type;
                     Pointer : in     Pointer_To_AddIns);

   function Get_Application
     (This : AddIns_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : AddIns_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : AddIns_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Getu_NewEnum
     (This : AddIns_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_Count
     (This : AddIns_Type)
     return Interfaces.C.long;

   function Item
     (This  : AddIns_Type;
      Index : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_AddIn;

   function Add
     (This     : AddIns_Type;
      FileName : GNATCOM.Types.BSTR;
      Install  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Free     : Boolean := True)
     return Pointer_To_AddIn;

   procedure Unload
     (This           : AddIns_Type;
      RemoveFromList : GNATCOM.Types.VARIANT_BOOL);

end winword.AddIns_Interface;

