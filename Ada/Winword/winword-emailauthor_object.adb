package body winword.EmailAuthor_Object is

   function Get_Application
     (This : EmailAuthor_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, EmailAuthor_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : EmailAuthor_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, EmailAuthor_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : EmailAuthor_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, EmailAuthor_Get_Parent);
   end Get_Parent;

   function Get_Style
     (This : EmailAuthor_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, EmailAuthor_Get_Style);
   end Get_Style;

end winword.EmailAuthor_Object;

