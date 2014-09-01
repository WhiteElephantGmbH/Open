with GNATCOM.Dispinterface;

package winword.FileConverter_Interface is

   type FileConverter_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out FileConverter_Type);

   function Pointer (This : FileConverter_Type)
     return Pointer_To_FileConverter;

   procedure Attach (This    : in out FileConverter_Type;
                     Pointer : in     Pointer_To_FileConverter);

   function Get_Application
     (This : FileConverter_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : FileConverter_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : FileConverter_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_FormatName
     (This : FileConverter_Type)
     return GNATCOM.Types.BSTR;

   function Get_ClassName
     (This : FileConverter_Type)
     return GNATCOM.Types.BSTR;

   function Get_SaveFormat
     (This : FileConverter_Type)
     return Interfaces.C.long;

   function Get_OpenFormat
     (This : FileConverter_Type)
     return Interfaces.C.long;

   function Get_CanSave
     (This : FileConverter_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   function Get_CanOpen
     (This : FileConverter_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   function Get_Path
     (This : FileConverter_Type)
     return GNATCOM.Types.BSTR;

   function Get_Name
     (This : FileConverter_Type)
     return GNATCOM.Types.BSTR;

   function Get_Extensions
     (This : FileConverter_Type)
     return GNATCOM.Types.BSTR;

end winword.FileConverter_Interface;

