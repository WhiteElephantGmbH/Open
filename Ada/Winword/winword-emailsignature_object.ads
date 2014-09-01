with GNATCOM.Dispinterface;

package winword.EmailSignature_Object is

   type EmailSignature_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : EmailSignature_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : EmailSignature_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : EmailSignature_Type)
     return GNATCOM.Types.VARIANT;

   function Get_NewMessageSignature
     (This : EmailSignature_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_NewMessageSignature
     (This : EmailSignature_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ReplyMessageSignature
     (This : EmailSignature_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ReplyMessageSignature
     (This : EmailSignature_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_EmailSignatureEntries
     (This : EmailSignature_Type)
     return GNATCOM.Types.VARIANT;

end winword.EmailSignature_Object;

