with GNATCOM.Dispinterface;

package winword.ProofreadingErrors_Object is

   type ProofreadingErrors_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : ProofreadingErrors_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : ProofreadingErrors_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : ProofreadingErrors_Type)
     return GNATCOM.Types.VARIANT;

   function Getu_NewEnum
     (This : ProofreadingErrors_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : ProofreadingErrors_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Type
     (This : ProofreadingErrors_Type)
     return GNATCOM.Types.VARIANT;

   function Item
     (This  : ProofreadingErrors_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

end winword.ProofreadingErrors_Object;

