with GNATCOM.Dispinterface;

package winword.FileDialogFilter_Interface is

   type FileDialogFilter_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out FileDialogFilter_Type);

   function Pointer (This : FileDialogFilter_Type)
     return Pointer_To_FileDialogFilter;

   procedure Attach (This    : in out FileDialogFilter_Type;
                     Pointer : in     Pointer_To_FileDialogFilter);

   function Get_Application
     (This    : FileDialogFilter_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Creator
     (This      : FileDialogFilter_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This   : FileDialogFilter_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Extensions
     (This       : FileDialogFilter_Type)
     return GNATCOM.Types.BSTR;

   function Get_Description
     (This        : FileDialogFilter_Type)
     return GNATCOM.Types.BSTR;

end winword.FileDialogFilter_Interface;

