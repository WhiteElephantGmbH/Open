with GNATCOM.Dispinterface;

package winword.FileConverters_Interface is

   type FileConverters_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out FileConverters_Type);

   function Pointer (This : FileConverters_Type)
     return Pointer_To_FileConverters;

   procedure Attach (This    : in out FileConverters_Type;
                     Pointer : in     Pointer_To_FileConverters);

   function Get_Application
     (This : FileConverters_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : FileConverters_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : FileConverters_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Count
     (This : FileConverters_Type)
     return Interfaces.C.long;

   function Getu_NewEnum
     (This : FileConverters_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_ConvertMacWordChevrons
     (This : FileConverters_Type)
     return WdChevronConvertRule;

   procedure Put_ConvertMacWordChevrons
     (This : FileConverters_Type;
      prop : WdChevronConvertRule);

   function Item
     (This  : FileConverters_Type;
      Index : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_FileConverter;

end winword.FileConverters_Interface;

