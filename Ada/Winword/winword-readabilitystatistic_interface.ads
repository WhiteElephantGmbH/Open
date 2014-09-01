with GNATCOM.Dispinterface;

package winword.ReadabilityStatistic_Interface is

   type ReadabilityStatistic_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out ReadabilityStatistic_Type);

   function Pointer (This : ReadabilityStatistic_Type)
     return Pointer_To_ReadabilityStatistic;

   procedure Attach (This    : in out ReadabilityStatistic_Type;
                     Pointer : in     Pointer_To_ReadabilityStatistic);

   function Get_Application
     (This : ReadabilityStatistic_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : ReadabilityStatistic_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : ReadabilityStatistic_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Name
     (This : ReadabilityStatistic_Type)
     return GNATCOM.Types.BSTR;

   function Get_Value
     (This : ReadabilityStatistic_Type)
     return Interfaces.C.C_float;

end winword.ReadabilityStatistic_Interface;

