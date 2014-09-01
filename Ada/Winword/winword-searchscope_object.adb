package body winword.SearchScope_Object is

   function Get_Application
     (This : SearchScope_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, SearchScope_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : SearchScope_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, SearchScope_Get_Creator);
   end Get_Creator;

   function Get_Type
     (This : SearchScope_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, SearchScope_Get_Type);
   end Get_Type;

   function Get_ScopeFolder
     (This : SearchScope_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, SearchScope_Get_ScopeFolder);
   end Get_ScopeFolder;

end winword.SearchScope_Object;

