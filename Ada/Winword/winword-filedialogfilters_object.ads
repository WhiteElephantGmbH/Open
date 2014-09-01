with GNATCOM.Dispinterface;

package winword.FileDialogFilters_Object is

   type FileDialogFilters_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : FileDialogFilters_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : FileDialogFilters_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : FileDialogFilters_Type)
     return GNATCOM.Types.VARIANT;

   function Getu_NewEnum
     (This : FileDialogFilters_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : FileDialogFilters_Type)
     return GNATCOM.Types.VARIANT;

   function Item
     (This  : FileDialogFilters_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure Delete
     (This   : FileDialogFilters_Type;
      filter : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free   : Boolean := True);

   procedure Clear
     (This : FileDialogFilters_Type);

   function Add
     (This        : FileDialogFilters_Type;
      Description : GNATCOM.Types.VARIANT;
      Extensions  : GNATCOM.Types.VARIANT;
      Position    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free        : Boolean := True)
     return GNATCOM.Types.VARIANT;

end winword.FileDialogFilters_Object;

