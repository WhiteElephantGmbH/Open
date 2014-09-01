with GNATCOM.Dispinterface;

package winword.ScopeFolder_Interface is

   type ScopeFolder_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out ScopeFolder_Type);

   function Pointer (This : ScopeFolder_Type)
     return Pointer_To_ScopeFolder;

   procedure Attach (This    : in out ScopeFolder_Type;
                     Pointer : in     Pointer_To_ScopeFolder);

   function Get_Application
     (This    : ScopeFolder_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Creator
     (This      : ScopeFolder_Type)
     return Interfaces.C.long;

   function Get_Name
     (This      : ScopeFolder_Type)
     return GNATCOM.Types.BSTR;

   function Get_Path
     (This      : ScopeFolder_Type)
     return GNATCOM.Types.BSTR;

   function Get_ScopeFolders
     (This            : ScopeFolder_Type)
     return Pointer_To_ScopeFolders;

   procedure AddToSearchFolders
     (This : ScopeFolder_Type);

end winword.ScopeFolder_Interface;

