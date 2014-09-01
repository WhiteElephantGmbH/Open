with GNATCOM.Dispinterface;

package winword.PropertyTest_Object is

   type PropertyTest_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : PropertyTest_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : PropertyTest_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Name
     (This : PropertyTest_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Condition
     (This : PropertyTest_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Value
     (This : PropertyTest_Type)
     return GNATCOM.Types.VARIANT;

   function Get_SecondValue
     (This : PropertyTest_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Connector
     (This : PropertyTest_Type)
     return GNATCOM.Types.VARIANT;

end winword.PropertyTest_Object;

