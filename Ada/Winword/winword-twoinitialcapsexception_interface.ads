with GNATCOM.Dispinterface;

package winword.TwoInitialCapsException_Interface is

   type TwoInitialCapsException_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out TwoInitialCapsException_Type);

   function Pointer (This : TwoInitialCapsException_Type)
     return Pointer_To_TwoInitialCapsException;

   procedure Attach (This    : in out TwoInitialCapsException_Type;
                     Pointer : in     Pointer_To_TwoInitialCapsException);

   function Get_Application
     (This : TwoInitialCapsException_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : TwoInitialCapsException_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : TwoInitialCapsException_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Index
     (This : TwoInitialCapsException_Type)
     return Interfaces.C.long;

   function Get_Name
     (This : TwoInitialCapsException_Type)
     return GNATCOM.Types.BSTR;

   procedure Delete
     (This : TwoInitialCapsException_Type);

end winword.TwoInitialCapsException_Interface;

