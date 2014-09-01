package body winword.ScopeFolder_Object is

   function Get_Application
     (This : ScopeFolder_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ScopeFolder_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : ScopeFolder_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ScopeFolder_Get_Creator);
   end Get_Creator;

   function Get_Name
     (This : ScopeFolder_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ScopeFolder_Get_Name);
   end Get_Name;

   function Get_Path
     (This : ScopeFolder_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ScopeFolder_Get_Path);
   end Get_Path;

   function Get_ScopeFolders
     (This : ScopeFolder_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ScopeFolder_Get_ScopeFolders);
   end Get_ScopeFolders;

   procedure AddToSearchFolders
     (This : ScopeFolder_Type)
   is
   begin
      Invoke (This, ScopeFolder_AddToSearchFolders);
   end AddToSearchFolders;

end winword.ScopeFolder_Object;

