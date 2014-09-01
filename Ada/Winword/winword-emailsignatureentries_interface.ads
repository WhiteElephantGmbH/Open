with GNATCOM.Dispinterface;

package winword.EmailSignatureEntries_Interface is

   type EmailSignatureEntries_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out EmailSignatureEntries_Type);

   function Pointer (This : EmailSignatureEntries_Type)
     return Pointer_To_EmailSignatureEntries;

   procedure Attach (This    : in out EmailSignatureEntries_Type;
                     Pointer : in     Pointer_To_EmailSignatureEntries);

   function Get_Application
     (This : EmailSignatureEntries_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : EmailSignatureEntries_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : EmailSignatureEntries_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Getu_NewEnum
     (This : EmailSignatureEntries_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_Count
     (This : EmailSignatureEntries_Type)
     return Interfaces.C.long;

   function Item
     (This  : EmailSignatureEntries_Type;
      Index : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_EmailSignatureEntry;

   function Add
     (This   : EmailSignatureEntries_Type;
      Name   : GNATCOM.Types.BSTR;
      uRange : Pointer_To_uRange;
      Free   : Boolean := True)
     return Pointer_To_EmailSignatureEntry;

end winword.EmailSignatureEntries_Interface;

