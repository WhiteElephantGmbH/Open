package body winword.ReadabilityStatistic_Object is

   function Get_Application
     (This : ReadabilityStatistic_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ReadabilityStatistic_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : ReadabilityStatistic_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ReadabilityStatistic_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : ReadabilityStatistic_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ReadabilityStatistic_Get_Parent);
   end Get_Parent;

   function Get_Name
     (This : ReadabilityStatistic_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ReadabilityStatistic_Get_Name);
   end Get_Name;

   function Get_Value
     (This : ReadabilityStatistic_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ReadabilityStatistic_Get_Value);
   end Get_Value;

end winword.ReadabilityStatistic_Object;

