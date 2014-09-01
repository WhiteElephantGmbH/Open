with GNATCOM.Dispinterface;

package winword.Signature_Interface is

   type Signature_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Signature_Type);

   function Pointer (This : Signature_Type)
     return Pointer_To_Signature;

   procedure Attach (This    : in out Signature_Type;
                     Pointer : in     Pointer_To_Signature);

   function Get_Application
     (This    : Signature_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Creator
     (This      : Signature_Type)
     return Interfaces.C.long;

   function Get_Signer
     (This  : Signature_Type)
     return GNATCOM.Types.BSTR;

   function Get_Issuer
     (This  : Signature_Type)
     return GNATCOM.Types.BSTR;

   function Get_ExpireDate
     (This     : Signature_Type)
     return GNATCOM.Types.VARIANT;

   function Get_IsValid
     (This    : Signature_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   function Get_AttachCertificate
     (This     : Signature_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_AttachCertificate
     (This     : Signature_Type;
      pfAttach : GNATCOM.Types.VARIANT_BOOL);

   procedure Delete
     (This : Signature_Type);

   function Get_Parent
     (This    : Signature_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_IsCertificateExpired
     (This      : Signature_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   function Get_IsCertificateRevoked
     (This      : Signature_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   function Get_SignDate
     (This     : Signature_Type)
     return GNATCOM.Types.VARIANT;

end winword.Signature_Interface;

