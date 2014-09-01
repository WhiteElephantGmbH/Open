with GNATCOM.Dispinterface;

package winword.MailMergeFieldNames_Interface is

   type MailMergeFieldNames_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out MailMergeFieldNames_Type);

   function Pointer (This : MailMergeFieldNames_Type)
     return Pointer_To_MailMergeFieldNames;

   procedure Attach (This    : in out MailMergeFieldNames_Type;
                     Pointer : in     Pointer_To_MailMergeFieldNames);

   function Get_Application
     (This : MailMergeFieldNames_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : MailMergeFieldNames_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : MailMergeFieldNames_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Getu_NewEnum
     (This : MailMergeFieldNames_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_Count
     (This : MailMergeFieldNames_Type)
     return Interfaces.C.long;

   function Item
     (This  : MailMergeFieldNames_Type;
      Index : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_MailMergeFieldName;

end winword.MailMergeFieldNames_Interface;

