with GNATCOM.Dispinterface;

package winword.ScopeFolder_Object is

   type ScopeFolder_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : ScopeFolder_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : ScopeFolder_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Name
     (This : ScopeFolder_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Path
     (This : ScopeFolder_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ScopeFolders
     (This : ScopeFolder_Type)
     return GNATCOM.Types.VARIANT;

   procedure AddToSearchFolders
     (This : ScopeFolder_Type);

end winword.ScopeFolder_Object;

