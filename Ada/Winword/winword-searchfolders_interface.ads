with GNATCOM.Dispinterface;

package winword.SearchFolders_Interface is

   type SearchFolders_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out SearchFolders_Type);

   function Pointer (This : SearchFolders_Type)
     return Pointer_To_SearchFolders;

   procedure Attach (This    : in out SearchFolders_Type;
                     Pointer : in     Pointer_To_SearchFolders);

   function Get_Application
     (This    : SearchFolders_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Creator
     (This      : SearchFolders_Type)
     return Interfaces.C.long;

   function Get_Item
     (This           : SearchFolders_Type;
      Index          : Interfaces.C.int)
     return Pointer_To_ScopeFolder;

   function Get_Count
     (This         : SearchFolders_Type)
     return Interfaces.C.int;

   procedure Add
     (This        : SearchFolders_Type;
      ScopeFolder : Pointer_To_ScopeFolder);

   procedure Remove
     (This  : SearchFolders_Type;
      Index : Interfaces.C.int);

   function Getu_NewEnum
     (This      : SearchFolders_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

end winword.SearchFolders_Interface;

