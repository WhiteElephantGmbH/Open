with GNATCOM.Dispinterface;

package winword.MappedDataField_Interface is

   type MappedDataField_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out MappedDataField_Type);

   function Pointer (This : MappedDataField_Type)
     return Pointer_To_MappedDataField;

   procedure Attach (This    : in out MappedDataField_Type;
                     Pointer : in     Pointer_To_MappedDataField);

   function Get_Application
     (This : MappedDataField_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : MappedDataField_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : MappedDataField_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Index
     (This : MappedDataField_Type)
     return Interfaces.C.long;

   function Get_DataFieldName
     (This : MappedDataField_Type)
     return GNATCOM.Types.BSTR;

   function Get_Name
     (This : MappedDataField_Type)
     return GNATCOM.Types.BSTR;

   function Get_Value
     (This : MappedDataField_Type)
     return GNATCOM.Types.BSTR;

   function Get_DataFieldIndex
     (This : MappedDataField_Type)
     return Interfaces.C.long;

   procedure Put_DataFieldIndex
     (This : MappedDataField_Type;
      prop : Interfaces.C.long);

end winword.MappedDataField_Interface;

