with GNATCOM.Dispinterface;

package winword.MailMergeDataFields_Interface is

   type MailMergeDataFields_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out MailMergeDataFields_Type);

   function Pointer (This : MailMergeDataFields_Type)
     return Pointer_To_MailMergeDataFields;

   procedure Attach (This    : in out MailMergeDataFields_Type;
                     Pointer : in     Pointer_To_MailMergeDataFields);

   function Get_Application
     (This : MailMergeDataFields_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : MailMergeDataFields_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : MailMergeDataFields_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Getu_NewEnum
     (This : MailMergeDataFields_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_Count
     (This : MailMergeDataFields_Type)
     return Interfaces.C.long;

   function Item
     (This  : MailMergeDataFields_Type;
      Index : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_MailMergeDataField;

end winword.MailMergeDataFields_Interface;

