with GNATCOM.Dispinterface;

package winword.ReadabilityStatistic_Object is

   type ReadabilityStatistic_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : ReadabilityStatistic_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : ReadabilityStatistic_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : ReadabilityStatistic_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Name
     (This : ReadabilityStatistic_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Value
     (This : ReadabilityStatistic_Type)
     return GNATCOM.Types.VARIANT;

end winword.ReadabilityStatistic_Object;

