with GNATCOM.Dispinterface;

package winword.AddIns_Object is

   type AddIns_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : AddIns_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : AddIns_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : AddIns_Type)
     return GNATCOM.Types.VARIANT;

   function Getu_NewEnum
     (This : AddIns_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : AddIns_Type)
     return GNATCOM.Types.VARIANT;

   function Item
     (This  : AddIns_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Add
     (This     : AddIns_Type;
      FileName : GNATCOM.Types.VARIANT;
      Install  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure Unload
     (This           : AddIns_Type;
      RemoveFromList : GNATCOM.Types.VARIANT;
      Free           : Boolean := True);

end winword.AddIns_Object;

