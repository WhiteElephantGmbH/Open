with GNATCOM.Dispinterface;

package winword.SearchScopes_Object is

   type SearchScopes_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : SearchScopes_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : SearchScopes_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Item
     (This  : SearchScopes_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : SearchScopes_Type)
     return GNATCOM.Types.VARIANT;

   function Getu_NewEnum
     (This : SearchScopes_Type)
     return GNATCOM.Types.VARIANT;

end winword.SearchScopes_Object;

