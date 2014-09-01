with GNATCOM.Dispinterface;

package winword.Zooms_Object is

   type Zooms_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : Zooms_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : Zooms_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : Zooms_Type)
     return GNATCOM.Types.VARIANT;

   function Item
     (This  : Zooms_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

end winword.Zooms_Object;

