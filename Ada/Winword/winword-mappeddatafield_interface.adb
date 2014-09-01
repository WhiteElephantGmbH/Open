with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.MappedDataField_Interface is

   procedure Initialize (This : in out MappedDataField_Type) is
   begin
      Set_IID (This, IID_MappedDataField);
   end Initialize;

   function Pointer (This : MappedDataField_Type)
     return Pointer_To_MappedDataField
   is
   begin
      return To_Pointer_To_MappedDataField (Address (This));
   end Pointer;

   procedure Attach (This    : in out MappedDataField_Type;
                     Pointer : in     Pointer_To_MappedDataField)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : MappedDataField_Type)
     return Pointer_To_uApplication
   is
       RetVal : aliased Pointer_To_uApplication;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Application
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Application;

   function Get_Creator
     (This : MappedDataField_Type)
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

   function Get_Parent
     (This : MappedDataField_Type)
     return GNATCOM.Types.Pointer_To_IDispatch
   is
       RetVal : aliased GNATCOM.Types.Pointer_To_IDispatch;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Parent
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Parent;

   function Get_Index
     (This : MappedDataField_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Index
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Index;

   function Get_DataFieldName
     (This : MappedDataField_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DataFieldName
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DataFieldName;

   function Get_Name
     (This : MappedDataField_Type)
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

   function Get_Value
     (This : MappedDataField_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Value
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Value;

   function Get_DataFieldIndex
     (This : MappedDataField_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DataFieldIndex
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DataFieldIndex;

   procedure Put_DataFieldIndex
     (This : MappedDataField_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DataFieldIndex
         (Pointer (This),
          prop));

   end Put_DataFieldIndex;

end winword.MappedDataField_Interface;

