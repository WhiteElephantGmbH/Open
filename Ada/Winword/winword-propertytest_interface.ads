with GNATCOM.Dispinterface;

package winword.PropertyTest_Interface is

   type PropertyTest_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out PropertyTest_Type);

   function Pointer (This : PropertyTest_Type)
     return Pointer_To_PropertyTest;

   procedure Attach (This    : in out PropertyTest_Type;
                     Pointer : in     Pointer_To_PropertyTest);

   function Get_Application
     (This    : PropertyTest_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Creator
     (This      : PropertyTest_Type)
     return Interfaces.C.long;

   function Get_Name
     (This        : PropertyTest_Type)
     return GNATCOM.Types.BSTR;

   function Get_Condition
     (This             : PropertyTest_Type)
     return MsoCondition;

   function Get_Value
     (This        : PropertyTest_Type)
     return GNATCOM.Types.VARIANT;

   function Get_SecondValue
     (This         : PropertyTest_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Connector
     (This       : PropertyTest_Type)
     return MsoConnector;

end winword.PropertyTest_Interface;

