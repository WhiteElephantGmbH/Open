with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.MailMerge_Interface is

   procedure Initialize (This : in out MailMerge_Type) is
   begin
      Set_IID (This, IID_MailMerge);
   end Initialize;

   function Pointer (This : MailMerge_Type)
     return Pointer_To_MailMerge
   is
   begin
      return To_Pointer_To_MailMerge (Address (This));
   end Pointer;

   procedure Attach (This    : in out MailMerge_Type;
                     Pointer : in     Pointer_To_MailMerge)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : MailMerge_Type)
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
     (This : MailMerge_Type)
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
     (This : MailMerge_Type)
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

   function Get_MainDocumentType
     (This : MailMerge_Type)
     return WdMailMergeMainDocType
   is
       RetVal : aliased WdMailMergeMainDocType;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_MainDocumentType
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_MainDocumentType;

   procedure Put_MainDocumentType
     (This : MailMerge_Type;
      prop : WdMailMergeMainDocType)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_MainDocumentType
         (Pointer (This),
          prop));

   end Put_MainDocumentType;

   function Get_State
     (This : MailMerge_Type)
     return WdMailMergeState
   is
       RetVal : aliased WdMailMergeState;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_State
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_State;

   function Get_Destination
     (This : MailMerge_Type)
     return WdMailMergeDestination
   is
       RetVal : aliased WdMailMergeDestination;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Destination
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Destination;

   procedure Put_Destination
     (This : MailMerge_Type;
      prop : WdMailMergeDestination)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Destination
         (Pointer (This),
          prop));

   end Put_Destination;

   function Get_DataSource
     (This : MailMerge_Type)
     return Pointer_To_MailMergeDataSource
   is
       RetVal : aliased Pointer_To_MailMergeDataSource;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DataSource
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DataSource;

   function Get_Fields
     (This : MailMerge_Type)
     return Pointer_To_MailMergeFields
   is
       RetVal : aliased Pointer_To_MailMergeFields;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Fields
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Fields;

   function Get_ViewMailMergeFieldCodes
     (This : MailMerge_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ViewMailMergeFieldCodes
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ViewMailMergeFieldCodes;

   procedure Put_ViewMailMergeFieldCodes
     (This : MailMerge_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ViewMailMergeFieldCodes
         (Pointer (This),
          prop));

   end Put_ViewMailMergeFieldCodes;

   function Get_SuppressBlankLines
     (This : MailMerge_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SuppressBlankLines
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_SuppressBlankLines;

   procedure Put_SuppressBlankLines
     (This : MailMerge_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_SuppressBlankLines
         (Pointer (This),
          prop));

   end Put_SuppressBlankLines;

   function Get_MailAsAttachment
     (This : MailMerge_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_MailAsAttachment
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_MailAsAttachment;

   procedure Put_MailAsAttachment
     (This : MailMerge_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_MailAsAttachment
         (Pointer (This),
          prop));

   end Put_MailAsAttachment;

   function Get_MailAddressFieldName
     (This : MailMerge_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_MailAddressFieldName
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_MailAddressFieldName;

   procedure Put_MailAddressFieldName
     (This : MailMerge_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_MailAddressFieldName
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_MailAddressFieldName;

   function Get_MailSubject
     (This : MailMerge_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_MailSubject
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_MailSubject;

   procedure Put_MailSubject
     (This : MailMerge_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_MailSubject
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_MailSubject;

   procedure CreateDataSource
     (This                  : MailMerge_Type;
      Name                  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PasswordDocument      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      WritePasswordDocument : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      HeaderRecord          : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      MSQuery               : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SQLStatement          : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SQLStatement1         : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Connection            : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      LinkToSource          : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.CreateDataSource
         (Pointer (This),
          Name,
          PasswordDocument,
          WritePasswordDocument,
          HeaderRecord,
          MSQuery,
          SQLStatement,
          SQLStatement1,
          Connection,
          LinkToSource));

   end CreateDataSource;

   procedure CreateHeaderSource
     (This                  : MailMerge_Type;
      Name                  : GNATCOM.Types.BSTR;
      PasswordDocument      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      WritePasswordDocument : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      HeaderRecord          : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Free                  : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.CreateHeaderSource
         (Pointer (This),
          Name,
          PasswordDocument,
          WritePasswordDocument,
          HeaderRecord));

      if Free then
               GNATCOM.Interface.Free (Name);
      
      end if;

   end CreateHeaderSource;

   procedure OpenDataSource2000
     (This                  : MailMerge_Type;
      Name                  : GNATCOM.Types.BSTR;
      Format                : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ConfirmConversions    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ReadOnly              : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      LinkToSource          : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      AddToRecentFiles      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PasswordDocument      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PasswordTemplate      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Revert                : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      WritePasswordDocument : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      WritePasswordTemplate : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Connection            : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SQLStatement          : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SQLStatement1         : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Free                  : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.OpenDataSource2000
         (Pointer (This),
          Name,
          Format,
          ConfirmConversions,
          ReadOnly,
          LinkToSource,
          AddToRecentFiles,
          PasswordDocument,
          PasswordTemplate,
          Revert,
          WritePasswordDocument,
          WritePasswordTemplate,
          Connection,
          SQLStatement,
          SQLStatement1));

      if Free then
               GNATCOM.Interface.Free (Name);
      
      end if;

   end OpenDataSource2000;

   procedure OpenHeaderSource2000
     (This                  : MailMerge_Type;
      Name                  : GNATCOM.Types.BSTR;
      Format                : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ConfirmConversions    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ReadOnly              : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      AddToRecentFiles      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PasswordDocument      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PasswordTemplate      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Revert                : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      WritePasswordDocument : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      WritePasswordTemplate : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Free                  : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.OpenHeaderSource2000
         (Pointer (This),
          Name,
          Format,
          ConfirmConversions,
          ReadOnly,
          AddToRecentFiles,
          PasswordDocument,
          PasswordTemplate,
          Revert,
          WritePasswordDocument,
          WritePasswordTemplate));

      if Free then
               GNATCOM.Interface.Free (Name);
      
      end if;

   end OpenHeaderSource2000;

   procedure Execute
     (This  : MailMerge_Type;
      Pause : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Execute
         (Pointer (This),
          Pause));

   end Execute;

   procedure Check
     (This : MailMerge_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Check
         (Pointer (This)));

   end Check;

   procedure EditDataSource
     (This : MailMerge_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.EditDataSource
         (Pointer (This)));

   end EditDataSource;

   procedure EditHeaderSource
     (This : MailMerge_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.EditHeaderSource
         (Pointer (This)));

   end EditHeaderSource;

   procedure EditMainDocument
     (This : MailMerge_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.EditMainDocument
         (Pointer (This)));

   end EditMainDocument;

   procedure UseAddressBook
     (This  : MailMerge_Type;
      uType : GNATCOM.Types.BSTR;
      Free  : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.UseAddressBook
         (Pointer (This),
          uType));

      if Free then
               GNATCOM.Interface.Free (uType);
      
      end if;

   end UseAddressBook;

   function Get_HighlightMergeFields
     (This : MailMerge_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_HighlightMergeFields
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_HighlightMergeFields;

   procedure Put_HighlightMergeFields
     (This : MailMerge_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_HighlightMergeFields
         (Pointer (This),
          prop));

   end Put_HighlightMergeFields;

   function Get_MailFormat
     (This : MailMerge_Type)
     return WdMailMergeMailFormat
   is
       RetVal : aliased WdMailMergeMailFormat;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_MailFormat
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_MailFormat;

   procedure Put_MailFormat
     (This : MailMerge_Type;
      prop : WdMailMergeMailFormat)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_MailFormat
         (Pointer (This),
          prop));

   end Put_MailFormat;

   function Get_ShowSendToCustom
     (This : MailMerge_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ShowSendToCustom
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ShowSendToCustom;

   procedure Put_ShowSendToCustom
     (This : MailMerge_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ShowSendToCustom
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_ShowSendToCustom;

   function Get_WizardState
     (This : MailMerge_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_WizardState
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_WizardState;

   procedure Put_WizardState
     (This : MailMerge_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_WizardState
         (Pointer (This),
          prop));

   end Put_WizardState;

   procedure OpenDataSource
     (This                  : MailMerge_Type;
      Name                  : GNATCOM.Types.BSTR;
      Format                : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ConfirmConversions    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ReadOnly              : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      LinkToSource          : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      AddToRecentFiles      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PasswordDocument      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PasswordTemplate      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Revert                : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      WritePasswordDocument : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      WritePasswordTemplate : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Connection            : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SQLStatement          : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SQLStatement1         : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      OpenExclusive         : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      uSubType              : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Free                  : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.OpenDataSource
         (Pointer (This),
          Name,
          Format,
          ConfirmConversions,
          ReadOnly,
          LinkToSource,
          AddToRecentFiles,
          PasswordDocument,
          PasswordTemplate,
          Revert,
          WritePasswordDocument,
          WritePasswordTemplate,
          Connection,
          SQLStatement,
          SQLStatement1,
          OpenExclusive,
          uSubType));

      if Free then
               GNATCOM.Interface.Free (Name);
      
      end if;

   end OpenDataSource;

   procedure OpenHeaderSource
     (This                  : MailMerge_Type;
      Name                  : GNATCOM.Types.BSTR;
      Format                : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ConfirmConversions    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ReadOnly              : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      AddToRecentFiles      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PasswordDocument      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PasswordTemplate      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Revert                : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      WritePasswordDocument : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      WritePasswordTemplate : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      OpenExclusive         : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Free                  : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.OpenHeaderSource
         (Pointer (This),
          Name,
          Format,
          ConfirmConversions,
          ReadOnly,
          AddToRecentFiles,
          PasswordDocument,
          PasswordTemplate,
          Revert,
          WritePasswordDocument,
          WritePasswordTemplate,
          OpenExclusive));

      if Free then
               GNATCOM.Interface.Free (Name);
      
      end if;

   end OpenHeaderSource;

   procedure ShowWizard
     (This             : MailMerge_Type;
      InitialState     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ShowDocumentStep : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ShowTemplateStep : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ShowDataStep     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ShowWriteStep    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ShowPreviewStep  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ShowMergeStep    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ShowWizard
         (Pointer (This),
          InitialState,
          ShowDocumentStep,
          ShowTemplateStep,
          ShowDataStep,
          ShowWriteStep,
          ShowPreviewStep,
          ShowMergeStep));

   end ShowWizard;

end winword.MailMerge_Interface;

