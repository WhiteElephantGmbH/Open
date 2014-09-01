with GNATCOM.Dispinterface;

package winword.OtherCorrectionsExceptions_Object is

   type OtherCorrectionsExceptions_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : OtherCorrectionsExceptions_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : OtherCorrectionsExceptions_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : OtherCorrectionsExceptions_Type)
     return GNATCOM.Types.VARIANT;

   function Getu_NewEnum
     (This : OtherCorrectionsExceptions_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : OtherCorrectionsExceptions_Type)
     return GNATCOM.Types.VARIANT;

   function Item
     (This  : OtherCorrectionsExceptions_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Add
     (This : OtherCorrectionsExceptions_Type;
      Name : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
     return GNATCOM.Types.VARIANT;

end winword.OtherCorrectionsExceptions_Object;

