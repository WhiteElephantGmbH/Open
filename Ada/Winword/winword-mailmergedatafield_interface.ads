with GNATCOM.Dispinterface;

package winword.MailMergeDataField_Interface is

   type MailMergeDataField_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out MailMergeDataField_Type);

   function Pointer (This : MailMergeDataField_Type)
     return Pointer_To_MailMergeDataField;

   procedure Attach (This    : in out MailMergeDataField_Type;
                     Pointer : in     Pointer_To_MailMergeDataField);

   function Get_Application
     (This : MailMergeDataField_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : MailMergeDataField_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : MailMergeDataField_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Value
     (This : MailMergeDataField_Type)
     return GNATCOM.Types.BSTR;

   function Get_Name
     (This : MailMergeDataField_Type)
     return GNATCOM.Types.BSTR;

   function Get_Index
     (This : MailMergeDataField_Type)
     return Interfaces.C.long;

end winword.MailMergeDataField_Interface;

