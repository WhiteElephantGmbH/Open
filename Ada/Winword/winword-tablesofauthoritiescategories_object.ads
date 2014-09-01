with GNATCOM.Dispinterface;

package winword.TablesOfAuthoritiesCategories_Object is

   type TablesOfAuthoritiesCategories_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : TablesOfAuthoritiesCategories_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : TablesOfAuthoritiesCategories_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : TablesOfAuthoritiesCategories_Type)
     return GNATCOM.Types.VARIANT;

   function Getu_NewEnum
     (This : TablesOfAuthoritiesCategories_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : TablesOfAuthoritiesCategories_Type)
     return GNATCOM.Types.VARIANT;

   function Item
     (This  : TablesOfAuthoritiesCategories_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

end winword.TablesOfAuthoritiesCategories_Object;

