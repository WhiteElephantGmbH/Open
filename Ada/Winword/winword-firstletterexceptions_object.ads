with GNATCOM.Dispinterface;

package winword.FirstLetterExceptions_Object is

   type FirstLetterExceptions_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : FirstLetterExceptions_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : FirstLetterExceptions_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : FirstLetterExceptions_Type)
     return GNATCOM.Types.VARIANT;

   function Getu_NewEnum
     (This : FirstLetterExceptions_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : FirstLetterExceptions_Type)
     return GNATCOM.Types.VARIANT;

   function Item
     (This  : FirstLetterExceptions_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Add
     (This : FirstLetterExceptions_Type;
      Name : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
     return GNATCOM.Types.VARIANT;

end winword.FirstLetterExceptions_Object;

