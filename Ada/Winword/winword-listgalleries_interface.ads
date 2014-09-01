with GNATCOM.Dispinterface;

package winword.ListGalleries_Interface is

   type ListGalleries_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out ListGalleries_Type);

   function Pointer (This : ListGalleries_Type)
     return Pointer_To_ListGalleries;

   procedure Attach (This    : in out ListGalleries_Type;
                     Pointer : in     Pointer_To_ListGalleries);

   function Getu_NewEnum
     (This : ListGalleries_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_Count
     (This : ListGalleries_Type)
     return Interfaces.C.long;

   function Get_Application
     (This : ListGalleries_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : ListGalleries_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : ListGalleries_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Item
     (This  : ListGalleries_Type;
      Index : WdListGalleryType)
     return Pointer_To_ListGallery;

end winword.ListGalleries_Interface;

