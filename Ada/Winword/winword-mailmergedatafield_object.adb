package body winword.MailMergeDataField_Object is

   function Get_Application
     (This : MailMergeDataField_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailMergeDataField_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : MailMergeDataField_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailMergeDataField_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : MailMergeDataField_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailMergeDataField_Get_Parent);
   end Get_Parent;

   function Get_Value
     (This : MailMergeDataField_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailMergeDataField_Get_Value);
   end Get_Value;

   function Get_Name
     (This : MailMergeDataField_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailMergeDataField_Get_Name);
   end Get_Name;

   function Get_Index
     (This : MailMergeDataField_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailMergeDataField_Get_Index);
   end Get_Index;

end winword.MailMergeDataField_Object;

