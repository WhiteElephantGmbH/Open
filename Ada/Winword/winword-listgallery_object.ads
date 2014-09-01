with GNATCOM.Dispinterface;

package winword.ListGallery_Object is

   type ListGallery_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_ListTemplates
     (This : ListGallery_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Application
     (This : ListGallery_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : ListGallery_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : ListGallery_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Modified
     (This  : ListGallery_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure Reset
     (This  : ListGallery_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True);

end winword.ListGallery_Object;

