with GNATCOM.Dispinterface;

package winword.MailMergeDataSource_Object is

   type MailMergeDataSource_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : MailMergeDataSource_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : MailMergeDataSource_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : MailMergeDataSource_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Name
     (This : MailMergeDataSource_Type)
     return GNATCOM.Types.VARIANT;

   function Get_HeaderSourceName
     (This : MailMergeDataSource_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Type
     (This : MailMergeDataSource_Type)
     return GNATCOM.Types.VARIANT;

   function Get_HeaderSourceType
     (This : MailMergeDataSource_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ConnectString
     (This : MailMergeDataSource_Type)
     return GNATCOM.Types.VARIANT;

   function Get_QueryString
     (This : MailMergeDataSource_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_QueryString
     (This : MailMergeDataSource_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ActiveRecord
     (This : MailMergeDataSource_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ActiveRecord
     (This : MailMergeDataSource_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_FirstRecord
     (This : MailMergeDataSource_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_FirstRecord
     (This : MailMergeDataSource_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_LastRecord
     (This : MailMergeDataSource_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_LastRecord
     (This : MailMergeDataSource_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_FieldNames
     (This : MailMergeDataSource_Type)
     return GNATCOM.Types.VARIANT;

   function Get_DataFields
     (This : MailMergeDataSource_Type)
     return GNATCOM.Types.VARIANT;

   function FindRecord2000
     (This     : MailMergeDataSource_Type;
      FindText : GNATCOM.Types.VARIANT;
      Field    : GNATCOM.Types.VARIANT;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Get_RecordCount
     (This : MailMergeDataSource_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Included
     (This : MailMergeDataSource_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Included
     (This : MailMergeDataSource_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_InvalidAddress
     (This : MailMergeDataSource_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_InvalidAddress
     (This : MailMergeDataSource_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_InvalidComments
     (This : MailMergeDataSource_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_InvalidComments
     (This : MailMergeDataSource_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_MappedDataFields
     (This : MailMergeDataSource_Type)
     return GNATCOM.Types.VARIANT;

   function Get_TableName
     (This : MailMergeDataSource_Type)
     return GNATCOM.Types.VARIANT;

   function FindRecord
     (This     : MailMergeDataSource_Type;
      FindText : GNATCOM.Types.VARIANT;
      Field    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure SetAllIncludedFlags
     (This     : MailMergeDataSource_Type;
      Included : GNATCOM.Types.VARIANT;
      Free     : Boolean := True);

   procedure SetAllErrorFlags
     (This           : MailMergeDataSource_Type;
      Invalid        : GNATCOM.Types.VARIANT;
      InvalidComment : GNATCOM.Types.VARIANT;
      Free           : Boolean := True);

   procedure Close
     (This : MailMergeDataSource_Type);

end winword.MailMergeDataSource_Object;

