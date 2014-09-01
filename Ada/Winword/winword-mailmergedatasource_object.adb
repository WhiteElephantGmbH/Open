package body winword.MailMergeDataSource_Object is

   function Get_Application
     (This : MailMergeDataSource_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailMergeDataSource_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : MailMergeDataSource_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailMergeDataSource_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : MailMergeDataSource_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailMergeDataSource_Get_Parent);
   end Get_Parent;

   function Get_Name
     (This : MailMergeDataSource_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailMergeDataSource_Get_Name);
   end Get_Name;

   function Get_HeaderSourceName
     (This : MailMergeDataSource_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailMergeDataSource_Get_HeaderSourceName);
   end Get_HeaderSourceName;

   function Get_Type
     (This : MailMergeDataSource_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailMergeDataSource_Get_Type);
   end Get_Type;

   function Get_HeaderSourceType
     (This : MailMergeDataSource_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailMergeDataSource_Get_HeaderSourceType);
   end Get_HeaderSourceType;

   function Get_ConnectString
     (This : MailMergeDataSource_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailMergeDataSource_Get_ConnectString);
   end Get_ConnectString;

   function Get_QueryString
     (This : MailMergeDataSource_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailMergeDataSource_Get_QueryString);
   end Get_QueryString;

   procedure Put_QueryString
     (This : MailMergeDataSource_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         MailMergeDataSource_Put_QueryString,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_QueryString;

   function Get_ActiveRecord
     (This : MailMergeDataSource_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailMergeDataSource_Get_ActiveRecord);
   end Get_ActiveRecord;

   procedure Put_ActiveRecord
     (This : MailMergeDataSource_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         MailMergeDataSource_Put_ActiveRecord,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ActiveRecord;

   function Get_FirstRecord
     (This : MailMergeDataSource_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailMergeDataSource_Get_FirstRecord);
   end Get_FirstRecord;

   procedure Put_FirstRecord
     (This : MailMergeDataSource_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         MailMergeDataSource_Put_FirstRecord,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_FirstRecord;

   function Get_LastRecord
     (This : MailMergeDataSource_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailMergeDataSource_Get_LastRecord);
   end Get_LastRecord;

   procedure Put_LastRecord
     (This : MailMergeDataSource_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         MailMergeDataSource_Put_LastRecord,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_LastRecord;

   function Get_FieldNames
     (This : MailMergeDataSource_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailMergeDataSource_Get_FieldNames);
   end Get_FieldNames;

   function Get_DataFields
     (This : MailMergeDataSource_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailMergeDataSource_Get_DataFields);
   end Get_DataFields;

   function FindRecord2000
     (This     : MailMergeDataSource_Type;
      FindText : GNATCOM.Types.VARIANT;
      Field    : GNATCOM.Types.VARIANT;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         MailMergeDataSource_FindRecord2000,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Field,
          2 => FindText),
         Free);
   end FindRecord2000;

   function Get_RecordCount
     (This : MailMergeDataSource_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailMergeDataSource_Get_RecordCount);
   end Get_RecordCount;

   function Get_Included
     (This : MailMergeDataSource_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailMergeDataSource_Get_Included);
   end Get_Included;

   procedure Put_Included
     (This : MailMergeDataSource_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         MailMergeDataSource_Put_Included,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Included;

   function Get_InvalidAddress
     (This : MailMergeDataSource_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailMergeDataSource_Get_InvalidAddress);
   end Get_InvalidAddress;

   procedure Put_InvalidAddress
     (This : MailMergeDataSource_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         MailMergeDataSource_Put_InvalidAddress,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_InvalidAddress;

   function Get_InvalidComments
     (This : MailMergeDataSource_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailMergeDataSource_Get_InvalidComments);
   end Get_InvalidComments;

   procedure Put_InvalidComments
     (This : MailMergeDataSource_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         MailMergeDataSource_Put_InvalidComments,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_InvalidComments;

   function Get_MappedDataFields
     (This : MailMergeDataSource_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailMergeDataSource_Get_MappedDataFields);
   end Get_MappedDataFields;

   function Get_TableName
     (This : MailMergeDataSource_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailMergeDataSource_Get_TableName);
   end Get_TableName;

   function FindRecord
     (This     : MailMergeDataSource_Type;
      FindText : GNATCOM.Types.VARIANT;
      Field    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         MailMergeDataSource_FindRecord,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Field,
          2 => FindText),
         Free);
   end FindRecord;

   procedure SetAllIncludedFlags
     (This     : MailMergeDataSource_Type;
      Included : GNATCOM.Types.VARIANT;
      Free     : Boolean := True)
   is
   begin
      Invoke
        (This,
         MailMergeDataSource_SetAllIncludedFlags,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Included),
         Free);
   end SetAllIncludedFlags;

   procedure SetAllErrorFlags
     (This           : MailMergeDataSource_Type;
      Invalid        : GNATCOM.Types.VARIANT;
      InvalidComment : GNATCOM.Types.VARIANT;
      Free           : Boolean := True)
   is
   begin
      Invoke
        (This,
         MailMergeDataSource_SetAllErrorFlags,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => InvalidComment,
          2 => Invalid),
         Free);
   end SetAllErrorFlags;

   procedure Close
     (This : MailMergeDataSource_Type)
   is
   begin
      Invoke (This, MailMergeDataSource_Close);
   end Close;

end winword.MailMergeDataSource_Object;

