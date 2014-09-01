with GNATCOM.Dispinterface;

package winword.MailMergeDataSource_Interface is

   type MailMergeDataSource_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out MailMergeDataSource_Type);

   function Pointer (This : MailMergeDataSource_Type)
     return Pointer_To_MailMergeDataSource;

   procedure Attach (This    : in out MailMergeDataSource_Type;
                     Pointer : in     Pointer_To_MailMergeDataSource);

   function Get_Application
     (This : MailMergeDataSource_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : MailMergeDataSource_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : MailMergeDataSource_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Name
     (This : MailMergeDataSource_Type)
     return GNATCOM.Types.BSTR;

   function Get_HeaderSourceName
     (This : MailMergeDataSource_Type)
     return GNATCOM.Types.BSTR;

   function Get_Type
     (This : MailMergeDataSource_Type)
     return WdMailMergeDataSource;

   function Get_HeaderSourceType
     (This : MailMergeDataSource_Type)
     return WdMailMergeDataSource;

   function Get_ConnectString
     (This : MailMergeDataSource_Type)
     return GNATCOM.Types.BSTR;

   function Get_QueryString
     (This : MailMergeDataSource_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_QueryString
     (This : MailMergeDataSource_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_ActiveRecord
     (This : MailMergeDataSource_Type)
     return WdMailMergeActiveRecord;

   procedure Put_ActiveRecord
     (This : MailMergeDataSource_Type;
      prop : WdMailMergeActiveRecord);

   function Get_FirstRecord
     (This : MailMergeDataSource_Type)
     return Interfaces.C.long;

   procedure Put_FirstRecord
     (This : MailMergeDataSource_Type;
      prop : Interfaces.C.long);

   function Get_LastRecord
     (This : MailMergeDataSource_Type)
     return Interfaces.C.long;

   procedure Put_LastRecord
     (This : MailMergeDataSource_Type;
      prop : Interfaces.C.long);

   function Get_FieldNames
     (This : MailMergeDataSource_Type)
     return Pointer_To_MailMergeFieldNames;

   function Get_DataFields
     (This : MailMergeDataSource_Type)
     return Pointer_To_MailMergeDataFields;

   function FindRecord2000
     (This     : MailMergeDataSource_Type;
      FindText : GNATCOM.Types.BSTR;
      Field    : GNATCOM.Types.BSTR;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT_BOOL;

   function Get_RecordCount
     (This : MailMergeDataSource_Type)
     return Interfaces.C.long;

   function Get_Included
     (This : MailMergeDataSource_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_Included
     (This : MailMergeDataSource_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_InvalidAddress
     (This : MailMergeDataSource_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_InvalidAddress
     (This : MailMergeDataSource_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_InvalidComments
     (This : MailMergeDataSource_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_InvalidComments
     (This : MailMergeDataSource_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_MappedDataFields
     (This : MailMergeDataSource_Type)
     return Pointer_To_MappedDataFields;

   function Get_TableName
     (This : MailMergeDataSource_Type)
     return GNATCOM.Types.BSTR;

   function FindRecord
     (This     : MailMergeDataSource_Type;
      FindText : GNATCOM.Types.BSTR;
      Field    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure SetAllIncludedFlags
     (This     : MailMergeDataSource_Type;
      Included : GNATCOM.Types.VARIANT_BOOL);

   procedure SetAllErrorFlags
     (This           : MailMergeDataSource_Type;
      Invalid        : GNATCOM.Types.VARIANT_BOOL;
      InvalidComment : GNATCOM.Types.BSTR;
      Free           : Boolean := True);

   procedure Close
     (This : MailMergeDataSource_Type);

end winword.MailMergeDataSource_Interface;

