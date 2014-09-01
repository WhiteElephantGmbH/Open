with GNATCOM.Dispinterface;

package winword.ReadabilityStatistics_Interface is

   type ReadabilityStatistics_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out ReadabilityStatistics_Type);

   function Pointer (This : ReadabilityStatistics_Type)
     return Pointer_To_ReadabilityStatistics;

   procedure Attach (This    : in out ReadabilityStatistics_Type;
                     Pointer : in     Pointer_To_ReadabilityStatistics);

   function Get_Application
     (This : ReadabilityStatistics_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : ReadabilityStatistics_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : ReadabilityStatistics_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Getu_NewEnum
     (This : ReadabilityStatistics_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_Count
     (This : ReadabilityStatistics_Type)
     return Interfaces.C.long;

   function Item
     (This  : ReadabilityStatistics_Type;
      Index : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_ReadabilityStatistic;

end winword.ReadabilityStatistics_Interface;

