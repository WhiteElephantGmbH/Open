package body winword.MappedDataField_Object is

   function Get_Application
     (This : MappedDataField_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MappedDataField_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : MappedDataField_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MappedDataField_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : MappedDataField_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MappedDataField_Get_Parent);
   end Get_Parent;

   function Get_Index
     (This : MappedDataField_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MappedDataField_Get_Index);
   end Get_Index;

   function Get_DataFieldName
     (This : MappedDataField_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MappedDataField_Get_DataFieldName);
   end Get_DataFieldName;

   function Get_Name
     (This : MappedDataField_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MappedDataField_Get_Name);
   end Get_Name;

   function Get_Value
     (This : MappedDataField_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MappedDataField_Get_Value);
   end Get_Value;

   function Get_DataFieldIndex
     (This : MappedDataField_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MappedDataField_Get_DataFieldIndex);
   end Get_DataFieldIndex;

   procedure Put_DataFieldIndex
     (This : MappedDataField_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         MappedDataField_Put_DataFieldIndex,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DataFieldIndex;

end winword.MappedDataField_Object;

