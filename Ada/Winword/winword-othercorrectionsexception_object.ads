with GNATCOM.Dispinterface;

package winword.OtherCorrectionsException_Object is

   type OtherCorrectionsException_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : OtherCorrectionsException_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : OtherCorrectionsException_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : OtherCorrectionsException_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Index
     (This : OtherCorrectionsException_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Name
     (This : OtherCorrectionsException_Type)
     return GNATCOM.Types.VARIANT;

   procedure Delete
     (This : OtherCorrectionsException_Type);

end winword.OtherCorrectionsException_Object;

