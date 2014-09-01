with GNATCOM.Dispinterface;

package winword.FileDialogFilter_Object is

   type FileDialogFilter_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : FileDialogFilter_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : FileDialogFilter_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : FileDialogFilter_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Extensions
     (This : FileDialogFilter_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Description
     (This : FileDialogFilter_Type)
     return GNATCOM.Types.VARIANT;

end winword.FileDialogFilter_Object;

