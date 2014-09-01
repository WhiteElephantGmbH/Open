package body winword.PropertyTest_Object is

   function Get_Application
     (This : PropertyTest_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, PropertyTest_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : PropertyTest_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, PropertyTest_Get_Creator);
   end Get_Creator;

   function Get_Name
     (This : PropertyTest_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, PropertyTest_Get_Name);
   end Get_Name;

   function Get_Condition
     (This : PropertyTest_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, PropertyTest_Get_Condition);
   end Get_Condition;

   function Get_Value
     (This : PropertyTest_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, PropertyTest_Get_Value);
   end Get_Value;

   function Get_SecondValue
     (This : PropertyTest_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, PropertyTest_Get_SecondValue);
   end Get_SecondValue;

   function Get_Connector
     (This : PropertyTest_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, PropertyTest_Get_Connector);
   end Get_Connector;

end winword.PropertyTest_Object;

