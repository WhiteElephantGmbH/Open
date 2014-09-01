package body winword.SmartTag_Object is

   function Get_Name
     (This : SmartTag_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, SmartTag_Get_Name);
   end Get_Name;

   function Get_XML
     (This : SmartTag_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, SmartTag_Get_XML);
   end Get_XML;

   function Get_Range
     (This : SmartTag_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, SmartTag_Get_Range);
   end Get_Range;

   function Get_DownloadURL
     (This : SmartTag_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, SmartTag_Get_DownloadURL);
   end Get_DownloadURL;

   function Get_Properties
     (This : SmartTag_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, SmartTag_Get_Properties);
   end Get_Properties;

   function Get_Application
     (This : SmartTag_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, SmartTag_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : SmartTag_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, SmartTag_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : SmartTag_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, SmartTag_Get_Parent);
   end Get_Parent;

   procedure uSelect
     (This : SmartTag_Type)
   is
   begin
      Invoke (This, SmartTag_uSelect);
   end uSelect;

   procedure Delete
     (This : SmartTag_Type)
   is
   begin
      Invoke (This, SmartTag_Delete);
   end Delete;

end winword.SmartTag_Object;

