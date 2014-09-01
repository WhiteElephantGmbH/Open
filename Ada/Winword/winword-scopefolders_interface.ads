with GNATCOM.Dispinterface;

package winword.ScopeFolders_Interface is

   type ScopeFolders_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out ScopeFolders_Type);

   function Pointer (This : ScopeFolders_Type)
     return Pointer_To_ScopeFolders;

   procedure Attach (This    : in out ScopeFolders_Type;
                     Pointer : in     Pointer_To_ScopeFolders);

   function Get_Application
     (This    : ScopeFolders_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Creator
     (This      : ScopeFolders_Type)
     return Interfaces.C.long;

   function Get_Item
     (This           : ScopeFolders_Type;
      Index          : Interfaces.C.int)
     return Pointer_To_ScopeFolder;

   function Get_Count
     (This         : ScopeFolders_Type)
     return Interfaces.C.int;

   function Getu_NewEnum
     (This      : ScopeFolders_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

end winword.ScopeFolders_Interface;

