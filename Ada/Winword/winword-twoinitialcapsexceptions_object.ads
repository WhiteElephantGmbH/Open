with GNATCOM.Dispinterface;

package winword.TwoInitialCapsExceptions_Object is

   type TwoInitialCapsExceptions_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : TwoInitialCapsExceptions_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : TwoInitialCapsExceptions_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : TwoInitialCapsExceptions_Type)
     return GNATCOM.Types.VARIANT;

   function Getu_NewEnum
     (This : TwoInitialCapsExceptions_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : TwoInitialCapsExceptions_Type)
     return GNATCOM.Types.VARIANT;

   function Item
     (This  : TwoInitialCapsExceptions_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Add
     (This : TwoInitialCapsExceptions_Type;
      Name : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
     return GNATCOM.Types.VARIANT;

end winword.TwoInitialCapsExceptions_Object;

