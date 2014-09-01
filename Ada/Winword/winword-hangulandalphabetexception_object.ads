with GNATCOM.Dispinterface;

package winword.HangulAndAlphabetException_Object is

   type HangulAndAlphabetException_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : HangulAndAlphabetException_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : HangulAndAlphabetException_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : HangulAndAlphabetException_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Index
     (This : HangulAndAlphabetException_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Name
     (This : HangulAndAlphabetException_Type)
     return GNATCOM.Types.VARIANT;

   procedure Delete
     (This : HangulAndAlphabetException_Type);

end winword.HangulAndAlphabetException_Object;

