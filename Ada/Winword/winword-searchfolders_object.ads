with GNATCOM.Dispinterface;

package winword.SearchFolders_Object is

   type SearchFolders_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : SearchFolders_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : SearchFolders_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Item
     (This  : SearchFolders_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : SearchFolders_Type)
     return GNATCOM.Types.VARIANT;

   procedure Add
     (This        : SearchFolders_Type;
      ScopeFolder : GNATCOM.Types.VARIANT;
      Free        : Boolean := True);

   procedure Remove
     (This  : SearchFolders_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True);

   function Getu_NewEnum
     (This : SearchFolders_Type)
     return GNATCOM.Types.VARIANT;

end winword.SearchFolders_Object;

