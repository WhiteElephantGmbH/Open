package body winword.MailMergeFieldName_Object is

   function Get_Application
     (This : MailMergeFieldName_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailMergeFieldName_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : MailMergeFieldName_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailMergeFieldName_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : MailMergeFieldName_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailMergeFieldName_Get_Parent);
   end Get_Parent;

   function Get_Name
     (This : MailMergeFieldName_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailMergeFieldName_Get_Name);
   end Get_Name;

   function Get_Index
     (This : MailMergeFieldName_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailMergeFieldName_Get_Index);
   end Get_Index;

end winword.MailMergeFieldName_Object;

