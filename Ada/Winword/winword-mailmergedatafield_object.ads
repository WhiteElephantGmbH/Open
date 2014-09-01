with GNATCOM.Dispinterface;

package winword.MailMergeDataField_Object is

   type MailMergeDataField_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : MailMergeDataField_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : MailMergeDataField_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : MailMergeDataField_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Value
     (This : MailMergeDataField_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Name
     (This : MailMergeDataField_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Index
     (This : MailMergeDataField_Type)
     return GNATCOM.Types.VARIANT;

end winword.MailMergeDataField_Object;

