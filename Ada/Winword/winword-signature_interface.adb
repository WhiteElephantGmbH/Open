with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.Signature_Interface is

   procedure Initialize (This : in out Signature_Type) is
   begin
      Set_IID (This, IID_Signature);
   end Initialize;

   function Pointer (This : Signature_Type)
     return Pointer_To_Signature
   is
   begin
      return To_Pointer_To_Signature (Address (This));
   end Pointer;

   procedure Attach (This    : in out Signature_Type;
                     Pointer : in     Pointer_To_Signature)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This    : Signature_Type)
     return GNATCOM.Types.Pointer_To_IDispatch
   is
       RetVal : aliased GNATCOM.Types.Pointer_To_IDispatch;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Application
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Application;

   function Get_Creator
     (This      : Signature_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Creator
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Creator;

   function Get_Signer
     (This  : Signature_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Signer
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Signer;

   function Get_Issuer
     (This  : Signature_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Issuer
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Issuer;

   function Get_ExpireDate
     (This     : Signature_Type)
     return GNATCOM.Types.VARIANT
   is
       RetVal : aliased GNATCOM.Types.VARIANT;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ExpireDate
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ExpireDate;

   function Get_IsValid
     (This    : Signature_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_IsValid
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_IsValid;

   function Get_AttachCertificate
     (This     : Signature_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AttachCertificate
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AttachCertificate;

   procedure Put_AttachCertificate
     (This     : Signature_Type;
      pfAttach : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AttachCertificate
         (Pointer (This),
          pfAttach));

   end Put_AttachCertificate;

   procedure Delete
     (This : Signature_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Delete
         (Pointer (This)));

   end Delete;

   function Get_Parent
     (This    : Signature_Type)
     return GNATCOM.Types.Pointer_To_IDispatch
   is
       RetVal : aliased GNATCOM.Types.Pointer_To_IDispatch;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Parent
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Parent;

   function Get_IsCertificateExpired
     (This      : Signature_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_IsCertificateExpired
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_IsCertificateExpired;

   function Get_IsCertificateRevoked
     (This      : Signature_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_IsCertificateRevoked
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_IsCertificateRevoked;

   function Get_SignDate
     (This     : Signature_Type)
     return GNATCOM.Types.VARIANT
   is
       RetVal : aliased GNATCOM.Types.VARIANT;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SignDate
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_SignDate;

end winword.Signature_Interface;

