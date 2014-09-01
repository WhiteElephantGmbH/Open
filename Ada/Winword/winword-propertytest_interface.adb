with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.PropertyTest_Interface is

   procedure Initialize (This : in out PropertyTest_Type) is
   begin
      Set_IID (This, IID_PropertyTest);
   end Initialize;

   function Pointer (This : PropertyTest_Type)
     return Pointer_To_PropertyTest
   is
   begin
      return To_Pointer_To_PropertyTest (Address (This));
   end Pointer;

   procedure Attach (This    : in out PropertyTest_Type;
                     Pointer : in     Pointer_To_PropertyTest)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This    : PropertyTest_Type)
     return GNATCOM.Types.Pointer_To_IDispatch
   is
       RetVal : aliased GNATCOM.Types.Pointer_To_IDispatch;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Application
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Application;

   function Get_Creator
     (This      : PropertyTest_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Creator
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Creator;

   function Get_Name
     (This        : PropertyTest_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Name
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Name;

   function Get_Condition
     (This             : PropertyTest_Type)
     return MsoCondition
   is
       RetVal : aliased MsoCondition;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Condition
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Condition;

   function Get_Value
     (This        : PropertyTest_Type)
     return GNATCOM.Types.VARIANT
   is
       RetVal : aliased GNATCOM.Types.VARIANT;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Value
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Value;

   function Get_SecondValue
     (This         : PropertyTest_Type)
     return GNATCOM.Types.VARIANT
   is
       RetVal : aliased GNATCOM.Types.VARIANT;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SecondValue
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_SecondValue;

   function Get_Connector
     (This       : PropertyTest_Type)
     return MsoConnector
   is
       RetVal : aliased MsoConnector;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Connector
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Connector;

end winword.PropertyTest_Interface;

