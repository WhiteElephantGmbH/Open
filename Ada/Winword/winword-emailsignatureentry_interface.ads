with GNATCOM.Dispinterface;

package winword.EmailSignatureEntry_Interface is

   type EmailSignatureEntry_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out EmailSignatureEntry_Type);

   function Pointer (This : EmailSignatureEntry_Type)
     return Pointer_To_EmailSignatureEntry;

   procedure Attach (This    : in out EmailSignatureEntry_Type;
                     Pointer : in     Pointer_To_EmailSignatureEntry);

   function Get_Application
     (This : EmailSignatureEntry_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : EmailSignatureEntry_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : EmailSignatureEntry_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Index
     (This : EmailSignatureEntry_Type)
     return Interfaces.C.long;

   function Get_Name
     (This : EmailSignatureEntry_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_Name
     (This : EmailSignatureEntry_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   procedure Delete
     (This : EmailSignatureEntry_Type);

end winword.EmailSignatureEntry_Interface;

