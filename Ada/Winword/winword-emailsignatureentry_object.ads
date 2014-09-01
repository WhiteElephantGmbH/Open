with GNATCOM.Dispinterface;

package winword.EmailSignatureEntry_Object is

   type EmailSignatureEntry_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : EmailSignatureEntry_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : EmailSignatureEntry_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : EmailSignatureEntry_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Index
     (This : EmailSignatureEntry_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Name
     (This : EmailSignatureEntry_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Name
     (This : EmailSignatureEntry_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure Delete
     (This : EmailSignatureEntry_Type);

end winword.EmailSignatureEntry_Object;

