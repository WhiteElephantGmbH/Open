with GNATCOM.Dispinterface;

package winword.MailMergeFieldName_Interface is

   type MailMergeFieldName_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out MailMergeFieldName_Type);

   function Pointer (This : MailMergeFieldName_Type)
     return Pointer_To_MailMergeFieldName;

   procedure Attach (This    : in out MailMergeFieldName_Type;
                     Pointer : in     Pointer_To_MailMergeFieldName);

   function Get_Application
     (This : MailMergeFieldName_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : MailMergeFieldName_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : MailMergeFieldName_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Name
     (This : MailMergeFieldName_Type)
     return GNATCOM.Types.BSTR;

   function Get_Index
     (This : MailMergeFieldName_Type)
     return Interfaces.C.long;

end winword.MailMergeFieldName_Interface;

