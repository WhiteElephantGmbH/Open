with GNATCOM.Dispinterface;

package winword.SearchScopes_Interface is

   type SearchScopes_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out SearchScopes_Type);

   function Pointer (This : SearchScopes_Type)
     return Pointer_To_SearchScopes;

   procedure Attach (This    : in out SearchScopes_Type;
                     Pointer : in     Pointer_To_SearchScopes);

   function Get_Application
     (This    : SearchScopes_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Creator
     (This      : SearchScopes_Type)
     return Interfaces.C.long;

   function Get_Item
     (This           : SearchScopes_Type;
      Index          : Interfaces.C.int)
     return Pointer_To_SearchScope;

   function Get_Count
     (This         : SearchScopes_Type)
     return Interfaces.C.int;

   function Getu_NewEnum
     (This      : SearchScopes_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

end winword.SearchScopes_Interface;

