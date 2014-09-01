package body winword.ReadabilityStatistics_Object is

   function Get_Application
     (This : ReadabilityStatistics_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ReadabilityStatistics_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : ReadabilityStatistics_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ReadabilityStatistics_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : ReadabilityStatistics_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ReadabilityStatistics_Get_Parent);
   end Get_Parent;

   function Getu_NewEnum
     (This : ReadabilityStatistics_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ReadabilityStatistics_Getu_NewEnum);
   end Getu_NewEnum;

   function Get_Count
     (This : ReadabilityStatistics_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ReadabilityStatistics_Get_Count);
   end Get_Count;

   function Item
     (This  : ReadabilityStatistics_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         ReadabilityStatistics_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

end winword.ReadabilityStatistics_Object;

