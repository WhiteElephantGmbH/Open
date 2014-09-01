with GNATCOM.Dispinterface;

package winword.EmailSignature_Interface is

   type EmailSignature_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out EmailSignature_Type);

   function Pointer (This : EmailSignature_Type)
     return Pointer_To_EmailSignature;

   procedure Attach (This    : in out EmailSignature_Type;
                     Pointer : in     Pointer_To_EmailSignature);

   function Get_Application
     (This : EmailSignature_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : EmailSignature_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : EmailSignature_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_NewMessageSignature
     (This : EmailSignature_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_NewMessageSignature
     (This : EmailSignature_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_ReplyMessageSignature
     (This : EmailSignature_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_ReplyMessageSignature
     (This : EmailSignature_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_EmailSignatureEntries
     (This : EmailSignature_Type)
     return Pointer_To_EmailSignatureEntries;

end winword.EmailSignature_Interface;

