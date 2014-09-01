package body winword.MailMergeField_Object is

   function Get_Application
     (This : MailMergeField_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailMergeField_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : MailMergeField_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailMergeField_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : MailMergeField_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailMergeField_Get_Parent);
   end Get_Parent;

   function Get_Type
     (This : MailMergeField_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailMergeField_Get_Type);
   end Get_Type;

   function Get_Locked
     (This : MailMergeField_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailMergeField_Get_Locked);
   end Get_Locked;

   procedure Put_Locked
     (This : MailMergeField_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         MailMergeField_Put_Locked,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Locked;

   function Get_Code
     (This : MailMergeField_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailMergeField_Get_Code);
   end Get_Code;

   procedure Put_Code
     (This : MailMergeField_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         MailMergeField_Put_Code,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Code;

   function Get_Next
     (This : MailMergeField_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailMergeField_Get_Next);
   end Get_Next;

   function Get_Previous
     (This : MailMergeField_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailMergeField_Get_Previous);
   end Get_Previous;

   procedure uSelect
     (This : MailMergeField_Type)
   is
   begin
      Invoke (This, MailMergeField_uSelect);
   end uSelect;

   procedure Copy
     (This : MailMergeField_Type)
   is
   begin
      Invoke (This, MailMergeField_Copy);
   end Copy;

   procedure Cut
     (This : MailMergeField_Type)
   is
   begin
      Invoke (This, MailMergeField_Cut);
   end Cut;

   procedure Delete
     (This : MailMergeField_Type)
   is
   begin
      Invoke (This, MailMergeField_Delete);
   end Delete;

end winword.MailMergeField_Object;

