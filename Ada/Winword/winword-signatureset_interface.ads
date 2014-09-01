with GNATCOM.Dispinterface;

package winword.SignatureSet_Interface is

   type SignatureSet_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out SignatureSet_Type);

   function Pointer (This : SignatureSet_Type)
     return Pointer_To_SignatureSet;

   procedure Attach (This    : in out SignatureSet_Type;
                     Pointer : in     Pointer_To_SignatureSet);

   function Get_Application
     (This    : SignatureSet_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Creator
     (This      : SignatureSet_Type)
     return Interfaces.C.long;

   function Getu_NewEnum
     (This    : SignatureSet_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_Count
     (This  : SignatureSet_Type)
     return Interfaces.C.int;

   function Get_Item
     (This    : SignatureSet_Type;
      iSig    : Interfaces.C.int)
     return Pointer_To_Signature;

   function Add
     (This    : SignatureSet_Type)
     return Pointer_To_Signature;

   procedure Commit
     (This : SignatureSet_Type);

   function Get_Parent
     (This    : SignatureSet_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

end winword.SignatureSet_Interface;

