with GNATCOM.Dispinterface;

package winword.MailMergeDataFields_Object is

   type MailMergeDataFields_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : MailMergeDataFields_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : MailMergeDataFields_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : MailMergeDataFields_Type)
     return GNATCOM.Types.VARIANT;

   function Getu_NewEnum
     (This : MailMergeDataFields_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : MailMergeDataFields_Type)
     return GNATCOM.Types.VARIANT;

   function Item
     (This  : MailMergeDataFields_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

end winword.MailMergeDataFields_Object;

