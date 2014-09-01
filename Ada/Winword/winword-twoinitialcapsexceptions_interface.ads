with GNATCOM.Dispinterface;

package winword.TwoInitialCapsExceptions_Interface is

   type TwoInitialCapsExceptions_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out TwoInitialCapsExceptions_Type);

   function Pointer (This : TwoInitialCapsExceptions_Type)
     return Pointer_To_TwoInitialCapsExceptions;

   procedure Attach (This    : in out TwoInitialCapsExceptions_Type;
                     Pointer : in     Pointer_To_TwoInitialCapsExceptions);

   function Get_Application
     (This : TwoInitialCapsExceptions_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : TwoInitialCapsExceptions_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : TwoInitialCapsExceptions_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Getu_NewEnum
     (This : TwoInitialCapsExceptions_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_Count
     (This : TwoInitialCapsExceptions_Type)
     return Interfaces.C.long;

   function Item
     (This  : TwoInitialCapsExceptions_Type;
      Index : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_TwoInitialCapsException;

   function Add
     (This : TwoInitialCapsExceptions_Type;
      Name : GNATCOM.Types.BSTR;
      Free : Boolean := True)
     return Pointer_To_TwoInitialCapsException;

end winword.TwoInitialCapsExceptions_Interface;

