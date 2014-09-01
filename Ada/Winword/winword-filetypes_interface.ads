with GNATCOM.Dispinterface;

package winword.FileTypes_Interface is

   type FileTypes_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out FileTypes_Type);

   function Pointer (This : FileTypes_Type)
     return Pointer_To_FileTypes;

   procedure Attach (This    : in out FileTypes_Type;
                     Pointer : in     Pointer_To_FileTypes);

   function Get_Application
     (This    : FileTypes_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Creator
     (This      : FileTypes_Type)
     return Interfaces.C.long;

   function Get_Item
     (This           : FileTypes_Type;
      Index          : Interfaces.C.int)
     return MsoFileType;

   function Get_Count
     (This         : FileTypes_Type)
     return Interfaces.C.int;

   procedure Add
     (This     : FileTypes_Type;
      FileType : MsoFileType);

   procedure Remove
     (This  : FileTypes_Type;
      Index : Interfaces.C.int);

   function Getu_NewEnum
     (This      : FileTypes_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

end winword.FileTypes_Interface;

