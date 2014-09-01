with GNATCOM.Dispinterface;

package winword.MailMergeFieldName_Object is

   type MailMergeFieldName_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : MailMergeFieldName_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : MailMergeFieldName_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : MailMergeFieldName_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Name
     (This : MailMergeFieldName_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Index
     (This : MailMergeFieldName_Type)
     return GNATCOM.Types.VARIANT;

end winword.MailMergeFieldName_Object;

