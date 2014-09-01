package body winword.MailMergeDataFields_Object is

   function Get_Application
     (This : MailMergeDataFields_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailMergeDataFields_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : MailMergeDataFields_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailMergeDataFields_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : MailMergeDataFields_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailMergeDataFields_Get_Parent);
   end Get_Parent;

   function Getu_NewEnum
     (This : MailMergeDataFields_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailMergeDataFields_Getu_NewEnum);
   end Getu_NewEnum;

   function Get_Count
     (This : MailMergeDataFields_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailMergeDataFields_Get_Count);
   end Get_Count;

   function Item
     (This  : MailMergeDataFields_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         MailMergeDataFields_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

end winword.MailMergeDataFields_Object;

