package body winword.EmailSignatureEntry_Object is

   function Get_Application
     (This : EmailSignatureEntry_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, EmailSignatureEntry_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : EmailSignatureEntry_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, EmailSignatureEntry_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : EmailSignatureEntry_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, EmailSignatureEntry_Get_Parent);
   end Get_Parent;

   function Get_Index
     (This : EmailSignatureEntry_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, EmailSignatureEntry_Get_Index);
   end Get_Index;

   function Get_Name
     (This : EmailSignatureEntry_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, EmailSignatureEntry_Get_Name);
   end Get_Name;

   procedure Put_Name
     (This : EmailSignatureEntry_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         EmailSignatureEntry_Put_Name,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Name;

   procedure Delete
     (This : EmailSignatureEntry_Type)
   is
   begin
      Invoke (This, EmailSignatureEntry_Delete);
   end Delete;

end winword.EmailSignatureEntry_Object;

