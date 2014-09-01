with GNATCOM.Dispinterface;

package winword.FileConverter_Object is

   type FileConverter_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : FileConverter_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : FileConverter_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : FileConverter_Type)
     return GNATCOM.Types.VARIANT;

   function Get_FormatName
     (This : FileConverter_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ClassName
     (This : FileConverter_Type)
     return GNATCOM.Types.VARIANT;

   function Get_SaveFormat
     (This : FileConverter_Type)
     return GNATCOM.Types.VARIANT;

   function Get_OpenFormat
     (This : FileConverter_Type)
     return GNATCOM.Types.VARIANT;

   function Get_CanSave
     (This : FileConverter_Type)
     return GNATCOM.Types.VARIANT;

   function Get_CanOpen
     (This : FileConverter_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Path
     (This : FileConverter_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Name
     (This : FileConverter_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Extensions
     (This : FileConverter_Type)
     return GNATCOM.Types.VARIANT;

end winword.FileConverter_Object;

