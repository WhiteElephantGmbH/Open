with GNATCOM.Dispinterface;

package winword.HangulAndAlphabetExceptions_Object is

   type HangulAndAlphabetExceptions_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : HangulAndAlphabetExceptions_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : HangulAndAlphabetExceptions_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : HangulAndAlphabetExceptions_Type)
     return GNATCOM.Types.VARIANT;

   function Getu_NewEnum
     (This : HangulAndAlphabetExceptions_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : HangulAndAlphabetExceptions_Type)
     return GNATCOM.Types.VARIANT;

   function Item
     (This  : HangulAndAlphabetExceptions_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Add
     (This : HangulAndAlphabetExceptions_Type;
      Name : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
     return GNATCOM.Types.VARIANT;

end winword.HangulAndAlphabetExceptions_Object;

