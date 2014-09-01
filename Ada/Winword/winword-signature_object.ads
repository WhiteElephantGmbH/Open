with GNATCOM.Dispinterface;

package winword.Signature_Object is

   type Signature_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : Signature_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : Signature_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Signer
     (This : Signature_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Issuer
     (This : Signature_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ExpireDate
     (This : Signature_Type)
     return GNATCOM.Types.VARIANT;

   function Get_IsValid
     (This : Signature_Type)
     return GNATCOM.Types.VARIANT;

   function Get_AttachCertificate
     (This : Signature_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AttachCertificate
     (This : Signature_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure Delete
     (This : Signature_Type);

   function Get_Parent
     (This : Signature_Type)
     return GNATCOM.Types.VARIANT;

   function Get_IsCertificateExpired
     (This : Signature_Type)
     return GNATCOM.Types.VARIANT;

   function Get_IsCertificateRevoked
     (This : Signature_Type)
     return GNATCOM.Types.VARIANT;

   function Get_SignDate
     (This : Signature_Type)
     return GNATCOM.Types.VARIANT;

end winword.Signature_Object;

