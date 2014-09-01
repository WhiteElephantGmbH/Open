package body winword.Application_Object is

   function Get_Version
     (This : Application_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Application_Get_Version);
   end Get_Version;

end winword.Application_Object;

