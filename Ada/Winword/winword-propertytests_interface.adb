with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.PropertyTests_Interface is

   procedure Initialize (This : in out PropertyTests_Type) is
   begin
      Set_IID (This, IID_PropertyTests);
   end Initialize;

   function Pointer (This : PropertyTests_Type)
     return Pointer_To_PropertyTests
   is
   begin
      return To_Pointer_To_PropertyTests (Address (This));
   end Pointer;

   procedure Attach (This    : in out PropertyTests_Type;
                     Pointer : in     Pointer_To_PropertyTests)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This    : PropertyTests_Type)
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
     (This      : PropertyTests_Type)
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

   function Get_Item
     (This       : PropertyTests_Type;
      Index      : Interfaces.C.int;
      lcid       : Interfaces.C.long)
     return Pointer_To_PropertyTest
   is
       RetVal : aliased Pointer_To_PropertyTest;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Item
         (Pointer (This),
          Index,
          lcid,
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Item;

   function Get_Count
     (This : PropertyTests_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Count
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Count;

   procedure Add
     (This        : PropertyTests_Type;
      Name        : GNATCOM.Types.BSTR;
      Condition   : MsoCondition;
      Value       : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      SecondValue : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Connector   : MsoConnector;
      Free        : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Add
         (Pointer (This),
          Name,
          Condition,
          Value,
          SecondValue,
          Connector));

      if Free then
               GNATCOM.Interface.Free (Name);
               GNATCOM.Interface.Free (Value);
               GNATCOM.Interface.Free (SecondValue);
      
      end if;

   end Add;

   procedure Remove
     (This  : PropertyTests_Type;
      Index : Interfaces.C.int)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Remove
         (Pointer (This),
          Index));

   end Remove;

   function Getu_NewEnum
     (This      : PropertyTests_Type)
     return GNATCOM.Types.Pointer_To_IUnknown
   is
       RetVal : aliased GNATCOM.Types.Pointer_To_IUnknown;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Getu_NewEnum
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Getu_NewEnum;

end winword.PropertyTests_Interface;

