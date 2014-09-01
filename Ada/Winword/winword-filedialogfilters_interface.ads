with GNATCOM.Dispinterface;

package winword.FileDialogFilters_Interface is

   type FileDialogFilters_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out FileDialogFilters_Type);

   function Pointer (This : FileDialogFilters_Type)
     return Pointer_To_FileDialogFilters;

   procedure Attach (This    : in out FileDialogFilters_Type;
                     Pointer : in     Pointer_To_FileDialogFilters);

   function Get_Application
     (This    : FileDialogFilters_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Creator
     (This      : FileDialogFilters_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This   : FileDialogFilters_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Getu_NewEnum
     (This    : FileDialogFilters_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_Count
     (This      : FileDialogFilters_Type)
     return Interfaces.C.long;

   function Item
     (This  : FileDialogFilters_Type;
      Index : Interfaces.C.int)
     return Pointer_To_FileDialogFilter;

   procedure Delete
     (This   : FileDialogFilters_Type;
      filter : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Free   : Boolean := True);

   procedure Clear
     (This : FileDialogFilters_Type);

   function Add
     (This        : FileDialogFilters_Type;
      Description : GNATCOM.Types.BSTR;
      Extensions  : GNATCOM.Types.BSTR;
      Position    : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Free        : Boolean := True)
     return Pointer_To_FileDialogFilter;

end winword.FileDialogFilters_Interface;

