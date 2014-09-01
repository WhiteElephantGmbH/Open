with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.MailMergeDataSource_Interface is

   procedure Initialize (This : in out MailMergeDataSource_Type) is
   begin
      Set_IID (This, IID_MailMergeDataSource);
   end Initialize;

   function Pointer (This : MailMergeDataSource_Type)
     return Pointer_To_MailMergeDataSource
   is
   begin
      return To_Pointer_To_MailMergeDataSource (Address (This));
   end Pointer;

   procedure Attach (This    : in out MailMergeDataSource_Type;
                     Pointer : in     Pointer_To_MailMergeDataSource)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : MailMergeDataSource_Type)
     return Pointer_To_uApplication
   is
       RetVal : aliased Pointer_To_uApplication;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Application
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Application;

   function Get_Creator
     (This : MailMergeDataSource_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Creator
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Creator;

   function Get_Parent
     (This : MailMergeDataSource_Type)
     return GNATCOM.Types.Pointer_To_IDispatch
   is
       RetVal : aliased GNATCOM.Types.Pointer_To_IDispatch;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Parent
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Parent;

   function Get_Name
     (This : MailMergeDataSource_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Name
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Name;

   function Get_HeaderSourceName
     (This : MailMergeDataSource_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_HeaderSourceName
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_HeaderSourceName;

   function Get_Type
     (This : MailMergeDataSource_Type)
     return WdMailMergeDataSource
   is
       RetVal : aliased WdMailMergeDataSource;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Type
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Type;

   function Get_HeaderSourceType
     (This : MailMergeDataSource_Type)
     return WdMailMergeDataSource
   is
       RetVal : aliased WdMailMergeDataSource;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_HeaderSourceType
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_HeaderSourceType;

   function Get_ConnectString
     (This : MailMergeDataSource_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ConnectString
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ConnectString;

   function Get_QueryString
     (This : MailMergeDataSource_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_QueryString
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_QueryString;

   procedure Put_QueryString
     (This : MailMergeDataSource_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_QueryString
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_QueryString;

   function Get_ActiveRecord
     (This : MailMergeDataSource_Type)
     return WdMailMergeActiveRecord
   is
       RetVal : aliased WdMailMergeActiveRecord;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ActiveRecord
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ActiveRecord;

   procedure Put_ActiveRecord
     (This : MailMergeDataSource_Type;
      prop : WdMailMergeActiveRecord)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ActiveRecord
         (Pointer (This),
          prop));

   end Put_ActiveRecord;

   function Get_FirstRecord
     (This : MailMergeDataSource_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_FirstRecord
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_FirstRecord;

   procedure Put_FirstRecord
     (This : MailMergeDataSource_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_FirstRecord
         (Pointer (This),
          prop));

   end Put_FirstRecord;

   function Get_LastRecord
     (This : MailMergeDataSource_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_LastRecord
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_LastRecord;

   procedure Put_LastRecord
     (This : MailMergeDataSource_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_LastRecord
         (Pointer (This),
          prop));

   end Put_LastRecord;

   function Get_FieldNames
     (This : MailMergeDataSource_Type)
     return Pointer_To_MailMergeFieldNames
   is
       RetVal : aliased Pointer_To_MailMergeFieldNames;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_FieldNames
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_FieldNames;

   function Get_DataFields
     (This : MailMergeDataSource_Type)
     return Pointer_To_MailMergeDataFields
   is
       RetVal : aliased Pointer_To_MailMergeDataFields;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DataFields
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DataFields;

   function FindRecord2000
     (This     : MailMergeDataSource_Type;
      FindText : GNATCOM.Types.BSTR;
      Field    : GNATCOM.Types.BSTR;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.FindRecord2000
         (Pointer (This),
          FindText,
          Field,
          RetVal'Unchecked_Access));

      if Free then
               GNATCOM.Interface.Free (FindText);
               GNATCOM.Interface.Free (Field);
      
      end if;

      return RetVal;
   end FindRecord2000;

   function Get_RecordCount
     (This : MailMergeDataSource_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_RecordCount
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_RecordCount;

   function Get_Included
     (This : MailMergeDataSource_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Included
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Included;

   procedure Put_Included
     (This : MailMergeDataSource_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Included
         (Pointer (This),
          prop));

   end Put_Included;

   function Get_InvalidAddress
     (This : MailMergeDataSource_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_InvalidAddress
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_InvalidAddress;

   procedure Put_InvalidAddress
     (This : MailMergeDataSource_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_InvalidAddress
         (Pointer (This),
          prop));

   end Put_InvalidAddress;

   function Get_InvalidComments
     (This : MailMergeDataSource_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_InvalidComments
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_InvalidComments;

   procedure Put_InvalidComments
     (This : MailMergeDataSource_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_InvalidComments
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_InvalidComments;

   function Get_MappedDataFields
     (This : MailMergeDataSource_Type)
     return Pointer_To_MappedDataFields
   is
       RetVal : aliased Pointer_To_MappedDataFields;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_MappedDataFields
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_MappedDataFields;

   function Get_TableName
     (This : MailMergeDataSource_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_TableName
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_TableName;

   function FindRecord
     (This     : MailMergeDataSource_Type;
      FindText : GNATCOM.Types.BSTR;
      Field    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.FindRecord
         (Pointer (This),
          FindText,
          Field,
          RetVal'Unchecked_Access));

      if Free then
               GNATCOM.Interface.Free (FindText);
      
      end if;

      return RetVal;
   end FindRecord;

   procedure SetAllIncludedFlags
     (This     : MailMergeDataSource_Type;
      Included : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.SetAllIncludedFlags
         (Pointer (This),
          Included));

   end SetAllIncludedFlags;

   procedure SetAllErrorFlags
     (This           : MailMergeDataSource_Type;
      Invalid        : GNATCOM.Types.VARIANT_BOOL;
      InvalidComment : GNATCOM.Types.BSTR;
      Free           : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.SetAllErrorFlags
         (Pointer (This),
          Invalid,
          InvalidComment));

      if Free then
               GNATCOM.Interface.Free (InvalidComment);
      
      end if;

   end SetAllErrorFlags;

   procedure Close
     (This : MailMergeDataSource_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Close
         (Pointer (This)));

   end Close;

end winword.MailMergeDataSource_Interface;

