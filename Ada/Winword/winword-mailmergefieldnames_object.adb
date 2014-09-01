package body winword.MailMergeFieldNames_Object is

   function Get_Application
     (This : MailMergeFieldNames_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailMergeFieldNames_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : MailMergeFieldNames_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailMergeFieldNames_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : MailMergeFieldNames_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailMergeFieldNames_Get_Parent);
   end Get_Parent;

   function Getu_NewEnum
     (This : MailMergeFieldNames_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailMergeFieldNames_Getu_NewEnum);
   end Getu_NewEnum;

   function Get_Count
     (This : MailMergeFieldNames_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailMergeFieldNames_Get_Count);
   end Get_Count;

   function Item
     (This  : MailMergeFieldNames_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         MailMergeFieldNames_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

end winword.MailMergeFieldNames_Object;

