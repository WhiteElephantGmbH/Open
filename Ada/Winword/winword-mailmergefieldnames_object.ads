with GNATCOM.Dispinterface;

package winword.MailMergeFieldNames_Object is

   type MailMergeFieldNames_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : MailMergeFieldNames_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : MailMergeFieldNames_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : MailMergeFieldNames_Type)
     return GNATCOM.Types.VARIANT;

   function Getu_NewEnum
     (This : MailMergeFieldNames_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : MailMergeFieldNames_Type)
     return GNATCOM.Types.VARIANT;

   function Item
     (This  : MailMergeFieldNames_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

end winword.MailMergeFieldNames_Object;

