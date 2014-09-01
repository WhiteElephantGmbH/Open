package body winword.Email_Object is

   function Get_Application
     (This : Email_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Email_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : Email_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Email_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : Email_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Email_Get_Parent);
   end Get_Parent;

   function Get_CurrentEmailAuthor
     (This : Email_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Email_Get_CurrentEmailAuthor);
   end Get_CurrentEmailAuthor;

end winword.Email_Object;

