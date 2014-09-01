with GNATCOM.Dispinterface;

package winword.ListGalleries_Object is

   type ListGalleries_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Getu_NewEnum
     (This : ListGalleries_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : ListGalleries_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Application
     (This : ListGalleries_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : ListGalleries_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : ListGalleries_Type)
     return GNATCOM.Types.VARIANT;

   function Item
     (This  : ListGalleries_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

end winword.ListGalleries_Object;

