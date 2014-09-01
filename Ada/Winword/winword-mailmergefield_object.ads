with GNATCOM.Dispinterface;

package winword.MailMergeField_Object is

   type MailMergeField_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : MailMergeField_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : MailMergeField_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : MailMergeField_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Type
     (This : MailMergeField_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Locked
     (This : MailMergeField_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Locked
     (This : MailMergeField_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Code
     (This : MailMergeField_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Code
     (This : MailMergeField_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Next
     (This : MailMergeField_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Previous
     (This : MailMergeField_Type)
     return GNATCOM.Types.VARIANT;

   procedure uSelect
     (This : MailMergeField_Type);

   procedure Copy
     (This : MailMergeField_Type);

   procedure Cut
     (This : MailMergeField_Type);

   procedure Delete
     (This : MailMergeField_Type);

end winword.MailMergeField_Object;

