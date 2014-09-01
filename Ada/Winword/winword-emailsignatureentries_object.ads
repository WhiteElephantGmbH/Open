with GNATCOM.Dispinterface;

package winword.EmailSignatureEntries_Object is

   type EmailSignatureEntries_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : EmailSignatureEntries_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : EmailSignatureEntries_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : EmailSignatureEntries_Type)
     return GNATCOM.Types.VARIANT;

   function Getu_NewEnum
     (This : EmailSignatureEntries_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : EmailSignatureEntries_Type)
     return GNATCOM.Types.VARIANT;

   function Item
     (This  : EmailSignatureEntries_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Add
     (This   : EmailSignatureEntries_Type;
      Name   : GNATCOM.Types.VARIANT;
      uRange : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT;

end winword.EmailSignatureEntries_Object;

