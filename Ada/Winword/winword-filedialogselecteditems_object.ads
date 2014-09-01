with GNATCOM.Dispinterface;

package winword.FileDialogSelectedItems_Object is

   type FileDialogSelectedItems_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : FileDialogSelectedItems_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : FileDialogSelectedItems_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : FileDialogSelectedItems_Type)
     return GNATCOM.Types.VARIANT;

   function Getu_NewEnum
     (This : FileDialogSelectedItems_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : FileDialogSelectedItems_Type)
     return GNATCOM.Types.VARIANT;

   function Item
     (This  : FileDialogSelectedItems_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

end winword.FileDialogSelectedItems_Object;

