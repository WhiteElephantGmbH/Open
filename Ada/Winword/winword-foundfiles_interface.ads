with GNATCOM.Dispinterface;

package winword.FoundFiles_Interface is

   type FoundFiles_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out FoundFiles_Type);

   function Pointer (This : FoundFiles_Type)
     return Pointer_To_FoundFiles;

   procedure Attach (This    : in out FoundFiles_Type;
                     Pointer : in     Pointer_To_FoundFiles);

   function Get_Application
     (This    : FoundFiles_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Creator
     (This      : FoundFiles_Type)
     return Interfaces.C.long;

   function Get_Item
     (This      : FoundFiles_Type;
      Index     : Interfaces.C.int;
      lcid      : Interfaces.C.long)
     return GNATCOM.Types.BSTR;

   function Get_Count
     (This : FoundFiles_Type)
     return Interfaces.C.long;

   function Getu_NewEnum
     (This      : FoundFiles_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

end winword.FoundFiles_Interface;

