package body winword.Signature_Object is

   function Get_Application
     (This : Signature_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Signature_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : Signature_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Signature_Get_Creator);
   end Get_Creator;

   function Get_Signer
     (This : Signature_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Signature_Get_Signer);
   end Get_Signer;

   function Get_Issuer
     (This : Signature_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Signature_Get_Issuer);
   end Get_Issuer;

   function Get_ExpireDate
     (This : Signature_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Signature_Get_ExpireDate);
   end Get_ExpireDate;

   function Get_IsValid
     (This : Signature_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Signature_Get_IsValid);
   end Get_IsValid;

   function Get_AttachCertificate
     (This : Signature_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Signature_Get_AttachCertificate);
   end Get_AttachCertificate;

   procedure Put_AttachCertificate
     (This : Signature_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Signature_Put_AttachCertificate,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AttachCertificate;

   procedure Delete
     (This : Signature_Type)
   is
   begin
      Invoke (This, Signature_Delete);
   end Delete;

   function Get_Parent
     (This : Signature_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Signature_Get_Parent);
   end Get_Parent;

   function Get_IsCertificateExpired
     (This : Signature_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Signature_Get_IsCertificateExpired);
   end Get_IsCertificateExpired;

   function Get_IsCertificateRevoked
     (This : Signature_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Signature_Get_IsCertificateRevoked);
   end Get_IsCertificateRevoked;

   function Get_SignDate
     (This : Signature_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Signature_Get_SignDate);
   end Get_SignDate;

end winword.Signature_Object;

