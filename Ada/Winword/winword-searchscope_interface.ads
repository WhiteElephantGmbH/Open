with GNATCOM.Dispinterface;

package winword.SearchScope_Interface is

   type SearchScope_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out SearchScope_Type);

   function Pointer (This : SearchScope_Type)
     return Pointer_To_SearchScope;

   procedure Attach (This    : in out SearchScope_Type;
                     Pointer : in     Pointer_To_SearchScope);

   function Get_Application
     (This    : SearchScope_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Creator
     (This      : SearchScope_Type)
     return Interfaces.C.long;

   function Get_Type
     (This              : SearchScope_Type)
     return MsoSearchIn;

   function Get_ScopeFolder
     (This           : SearchScope_Type)
     return Pointer_To_ScopeFolder;

end winword.SearchScope_Interface;

