with GNATCOM.Dispinterface;

package winword.SignatureSet_Object is

   type SignatureSet_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : SignatureSet_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : SignatureSet_Type)
     return GNATCOM.Types.VARIANT;

   function Getu_NewEnum
     (This : SignatureSet_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : SignatureSet_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Item
     (This : SignatureSet_Type;
      iSig : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Add
     (This : SignatureSet_Type)
     return GNATCOM.Types.VARIANT;

   procedure Commit
     (This : SignatureSet_Type);

   function Get_Parent
     (This : SignatureSet_Type)
     return GNATCOM.Types.VARIANT;

end winword.SignatureSet_Object;

