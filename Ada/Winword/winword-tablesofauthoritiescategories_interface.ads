with GNATCOM.Dispinterface;

package winword.TablesOfAuthoritiesCategories_Interface is

   type TablesOfAuthoritiesCategories_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out TablesOfAuthoritiesCategories_Type);

   function Pointer (This : TablesOfAuthoritiesCategories_Type)
     return Pointer_To_TablesOfAuthoritiesCategories;

   procedure Attach (This    : in out TablesOfAuthoritiesCategories_Type;
                     Pointer : in     Pointer_To_TablesOfAuthoritiesCategories);

   function Get_Application
     (This : TablesOfAuthoritiesCategories_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : TablesOfAuthoritiesCategories_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : TablesOfAuthoritiesCategories_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Getu_NewEnum
     (This : TablesOfAuthoritiesCategories_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_Count
     (This : TablesOfAuthoritiesCategories_Type)
     return Interfaces.C.long;

   function Item
     (This  : TablesOfAuthoritiesCategories_Type;
      Index : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_TableOfAuthoritiesCategory;

end winword.TablesOfAuthoritiesCategories_Interface;

