with GNATCOM.Dispinterface;

package winword.ListGallery_Interface is

   type ListGallery_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out ListGallery_Type);

   function Pointer (This : ListGallery_Type)
     return Pointer_To_ListGallery;

   procedure Attach (This    : in out ListGallery_Type;
                     Pointer : in     Pointer_To_ListGallery);

   function Get_ListTemplates
     (This : ListGallery_Type)
     return Pointer_To_ListTemplates;

   function Get_Application
     (This : ListGallery_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : ListGallery_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : ListGallery_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Modified
     (This  : ListGallery_Type;
      Index : Interfaces.C.long)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Reset
     (This  : ListGallery_Type;
      Index : Interfaces.C.long);

end winword.ListGallery_Interface;

