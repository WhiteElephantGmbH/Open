with GNATCOM.Dispinterface;

package winword.FirstLetterException_Object is

   type FirstLetterException_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : FirstLetterException_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : FirstLetterException_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : FirstLetterException_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Index
     (This : FirstLetterException_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Name
     (This : FirstLetterException_Type)
     return GNATCOM.Types.VARIANT;

   procedure Delete
     (This : FirstLetterException_Type);

end winword.FirstLetterException_Object;

