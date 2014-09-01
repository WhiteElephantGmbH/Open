with GNATCOM.Dispinterface;

package winword.FileDialogSelectedItems_Interface is

   type FileDialogSelectedItems_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out FileDialogSelectedItems_Type);

   function Pointer (This : FileDialogSelectedItems_Type)
     return Pointer_To_FileDialogSelectedItems;

   procedure Attach (This    : in out FileDialogSelectedItems_Type;
                     Pointer : in     Pointer_To_FileDialogSelectedItems);

   function Get_Application
     (This    : FileDialogSelectedItems_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Creator
     (This      : FileDialogSelectedItems_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This   : FileDialogSelectedItems_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Getu_NewEnum
     (This    : FileDialogSelectedItems_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_Count
     (This    : FileDialogSelectedItems_Type)
     return Interfaces.C.long;

   function Item
     (This  : FileDialogSelectedItems_Type;
      Index : Interfaces.C.int)
     return GNATCOM.Types.BSTR;

end winword.FileDialogSelectedItems_Interface;

