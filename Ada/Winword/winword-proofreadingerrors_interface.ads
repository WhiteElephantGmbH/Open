with GNATCOM.Dispinterface;

package winword.ProofreadingErrors_Interface is

   type ProofreadingErrors_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out ProofreadingErrors_Type);

   function Pointer (This : ProofreadingErrors_Type)
     return Pointer_To_ProofreadingErrors;

   procedure Attach (This    : in out ProofreadingErrors_Type;
                     Pointer : in     Pointer_To_ProofreadingErrors);

   function Get_Application
     (This : ProofreadingErrors_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : ProofreadingErrors_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : ProofreadingErrors_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Getu_NewEnum
     (This : ProofreadingErrors_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_Count
     (This : ProofreadingErrors_Type)
     return Interfaces.C.long;

   function Get_Type
     (This : ProofreadingErrors_Type)
     return WdProofreadingErrorType;

   function Item
     (This  : ProofreadingErrors_Type;
      Index : Interfaces.C.long)
     return Pointer_To_uRange;

end winword.ProofreadingErrors_Interface;

