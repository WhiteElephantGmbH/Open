package body winword.FileConverter_Object is

   function Get_Application
     (This : FileConverter_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FileConverter_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : FileConverter_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FileConverter_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : FileConverter_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FileConverter_Get_Parent);
   end Get_Parent;

   function Get_FormatName
     (This : FileConverter_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FileConverter_Get_FormatName);
   end Get_FormatName;

   function Get_ClassName
     (This : FileConverter_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FileConverter_Get_ClassName);
   end Get_ClassName;

   function Get_SaveFormat
     (This : FileConverter_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FileConverter_Get_SaveFormat);
   end Get_SaveFormat;

   function Get_OpenFormat
     (This : FileConverter_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FileConverter_Get_OpenFormat);
   end Get_OpenFormat;

   function Get_CanSave
     (This : FileConverter_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FileConverter_Get_CanSave);
   end Get_CanSave;

   function Get_CanOpen
     (This : FileConverter_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FileConverter_Get_CanOpen);
   end Get_CanOpen;

   function Get_Path
     (This : FileConverter_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FileConverter_Get_Path);
   end Get_Path;

   function Get_Name
     (This : FileConverter_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FileConverter_Get_Name);
   end Get_Name;

   function Get_Extensions
     (This : FileConverter_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FileConverter_Get_Extensions);
   end Get_Extensions;

end winword.FileConverter_Object;

