with GNATCOM.Dispinterface;

package winword.OtherCorrectionsExceptions_Interface is

   type OtherCorrectionsExceptions_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out OtherCorrectionsExceptions_Type);

   function Pointer (This : OtherCorrectionsExceptions_Type)
     return Pointer_To_OtherCorrectionsExceptions;

   procedure Attach (This    : in out OtherCorrectionsExceptions_Type;
                     Pointer : in     Pointer_To_OtherCorrectionsExceptions);

   function Get_Application
     (This : OtherCorrectionsExceptions_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : OtherCorrectionsExceptions_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : OtherCorrectionsExceptions_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Getu_NewEnum
     (This : OtherCorrectionsExceptions_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_Count
     (This : OtherCorrectionsExceptions_Type)
     return Interfaces.C.long;

   function Item
     (This  : OtherCorrectionsExceptions_Type;
      Index : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_OtherCorrectionsException;

   function Add
     (This : OtherCorrectionsExceptions_Type;
      Name : GNATCOM.Types.BSTR;
      Free : Boolean := True)
     return Pointer_To_OtherCorrectionsException;

end winword.OtherCorrectionsExceptions_Interface;

