package body winword.EmailSignature_Object is

   function Get_Application
     (This : EmailSignature_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, EmailSignature_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : EmailSignature_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, EmailSignature_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : EmailSignature_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, EmailSignature_Get_Parent);
   end Get_Parent;

   function Get_NewMessageSignature
     (This : EmailSignature_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, EmailSignature_Get_NewMessageSignature);
   end Get_NewMessageSignature;

   procedure Put_NewMessageSignature
     (This : EmailSignature_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         EmailSignature_Put_NewMessageSignature,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_NewMessageSignature;

   function Get_ReplyMessageSignature
     (This : EmailSignature_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, EmailSignature_Get_ReplyMessageSignature);
   end Get_ReplyMessageSignature;

   procedure Put_ReplyMessageSignature
     (This : EmailSignature_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         EmailSignature_Put_ReplyMessageSignature,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ReplyMessageSignature;

   function Get_EmailSignatureEntries
     (This : EmailSignature_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, EmailSignature_Get_EmailSignatureEntries);
   end Get_EmailSignatureEntries;

end winword.EmailSignature_Object;

