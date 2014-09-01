with GNATCOM.Dispinterface;

package winword.MappedDataField_Object is

   type MappedDataField_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : MappedDataField_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : MappedDataField_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : MappedDataField_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Index
     (This : MappedDataField_Type)
     return GNATCOM.Types.VARIANT;

   function Get_DataFieldName
     (This : MappedDataField_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Name
     (This : MappedDataField_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Value
     (This : MappedDataField_Type)
     return GNATCOM.Types.VARIANT;

   function Get_DataFieldIndex
     (This : MappedDataField_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DataFieldIndex
     (This : MappedDataField_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

end winword.MappedDataField_Object;

