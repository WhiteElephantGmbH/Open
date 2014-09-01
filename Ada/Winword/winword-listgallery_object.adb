package body winword.ListGallery_Object is

   function Get_ListTemplates
     (This : ListGallery_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ListGallery_Get_ListTemplates);
   end Get_ListTemplates;

   function Get_Application
     (This : ListGallery_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ListGallery_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : ListGallery_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ListGallery_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : ListGallery_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ListGallery_Get_Parent);
   end Get_Parent;

   function Get_Modified
     (This  : ListGallery_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get
        (This,
         ListGallery_Get_Modified,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Get_Modified;

   procedure Reset
     (This  : ListGallery_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
   is
   begin
      Invoke
        (This,
         ListGallery_Reset,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Reset;

end winword.ListGallery_Object;

