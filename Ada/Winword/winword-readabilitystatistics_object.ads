with GNATCOM.Dispinterface;

package winword.ReadabilityStatistics_Object is

   type ReadabilityStatistics_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : ReadabilityStatistics_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : ReadabilityStatistics_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : ReadabilityStatistics_Type)
     return GNATCOM.Types.VARIANT;

   function Getu_NewEnum
     (This : ReadabilityStatistics_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : ReadabilityStatistics_Type)
     return GNATCOM.Types.VARIANT;

   function Item
     (This  : ReadabilityStatistics_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

end winword.ReadabilityStatistics_Object;

