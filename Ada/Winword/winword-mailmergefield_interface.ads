with GNATCOM.Dispinterface;

package winword.MailMergeField_Interface is

   type MailMergeField_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out MailMergeField_Type);

   function Pointer (This : MailMergeField_Type)
     return Pointer_To_MailMergeField;

   procedure Attach (This    : in out MailMergeField_Type;
                     Pointer : in     Pointer_To_MailMergeField);

   function Get_Application
     (This : MailMergeField_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : MailMergeField_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : MailMergeField_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Type
     (This : MailMergeField_Type)
     return WdFieldType;

   function Get_Locked
     (This : MailMergeField_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_Locked
     (This : MailMergeField_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_Code
     (This : MailMergeField_Type)
     return Pointer_To_uRange;

   procedure Put_Code
     (This : MailMergeField_Type;
      prop : Pointer_To_uRange);

   function Get_Next
     (This : MailMergeField_Type)
     return Pointer_To_MailMergeField;

   function Get_Previous
     (This : MailMergeField_Type)
     return Pointer_To_MailMergeField;

   procedure uSelect
     (This : MailMergeField_Type);

   procedure Copy
     (This : MailMergeField_Type);

   procedure Cut
     (This : MailMergeField_Type);

   procedure Delete
     (This : MailMergeField_Type);

end winword.MailMergeField_Interface;

