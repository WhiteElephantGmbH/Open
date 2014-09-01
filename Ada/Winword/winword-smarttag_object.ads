with GNATCOM.Dispinterface;

package winword.SmartTag_Object is

   type SmartTag_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Name
     (This : SmartTag_Type)
     return GNATCOM.Types.VARIANT;

   function Get_XML
     (This : SmartTag_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Range
     (This : SmartTag_Type)
     return GNATCOM.Types.VARIANT;

   function Get_DownloadURL
     (This : SmartTag_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Properties
     (This : SmartTag_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Application
     (This : SmartTag_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : SmartTag_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : SmartTag_Type)
     return GNATCOM.Types.VARIANT;

   procedure uSelect
     (This : SmartTag_Type);

   procedure Delete
     (This : SmartTag_Type);

end winword.SmartTag_Object;

