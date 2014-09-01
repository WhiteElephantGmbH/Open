with GNATCOM.Dispinterface;

package winword.SearchScope_Object is

   type SearchScope_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : SearchScope_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : SearchScope_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Type
     (This : SearchScope_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ScopeFolder
     (This : SearchScope_Type)
     return GNATCOM.Types.VARIANT;

end winword.SearchScope_Object;

