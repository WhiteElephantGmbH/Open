with GNATCOM.Dispinterface;

package winword.SmartTag_Interface is

   type SmartTag_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out SmartTag_Type);

   function Pointer (This : SmartTag_Type)
     return Pointer_To_SmartTag;

   procedure Attach (This    : in out SmartTag_Type;
                     Pointer : in     Pointer_To_SmartTag);

   function Get_Name
     (This : SmartTag_Type)
     return GNATCOM.Types.BSTR;

   function Get_XML
     (This : SmartTag_Type)
     return GNATCOM.Types.BSTR;

   function Get_Range
     (This : SmartTag_Type)
     return Pointer_To_uRange;

   function Get_DownloadURL
     (This : SmartTag_Type)
     return GNATCOM.Types.BSTR;

   function Get_Properties
     (This : SmartTag_Type)
     return Pointer_To_CustomProperties;

   function Get_Application
     (This : SmartTag_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : SmartTag_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : SmartTag_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   procedure uSelect
     (This : SmartTag_Type);

   procedure Delete
     (This : SmartTag_Type);

end winword.SmartTag_Interface;

