package body winword.FileDialogFilter_Object is

   function Get_Application
     (This : FileDialogFilter_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FileDialogFilter_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : FileDialogFilter_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FileDialogFilter_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : FileDialogFilter_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FileDialogFilter_Get_Parent);
   end Get_Parent;

   function Get_Extensions
     (This : FileDialogFilter_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FileDialogFilter_Get_Extensions);
   end Get_Extensions;

   function Get_Description
     (This : FileDialogFilter_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FileDialogFilter_Get_Description);
   end Get_Description;

end winword.FileDialogFilter_Object;

