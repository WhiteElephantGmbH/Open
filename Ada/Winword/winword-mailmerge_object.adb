package body winword.MailMerge_Object is

   function Get_Application
     (This : MailMerge_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailMerge_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : MailMerge_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailMerge_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : MailMerge_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailMerge_Get_Parent);
   end Get_Parent;

   function Get_MainDocumentType
     (This : MailMerge_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailMerge_Get_MainDocumentType);
   end Get_MainDocumentType;

   procedure Put_MainDocumentType
     (This : MailMerge_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         MailMerge_Put_MainDocumentType,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_MainDocumentType;

   function Get_State
     (This : MailMerge_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailMerge_Get_State);
   end Get_State;

   function Get_Destination
     (This : MailMerge_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailMerge_Get_Destination);
   end Get_Destination;

   procedure Put_Destination
     (This : MailMerge_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         MailMerge_Put_Destination,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Destination;

   function Get_DataSource
     (This : MailMerge_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailMerge_Get_DataSource);
   end Get_DataSource;

   function Get_Fields
     (This : MailMerge_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailMerge_Get_Fields);
   end Get_Fields;

   function Get_ViewMailMergeFieldCodes
     (This : MailMerge_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailMerge_Get_ViewMailMergeFieldCodes);
   end Get_ViewMailMergeFieldCodes;

   procedure Put_ViewMailMergeFieldCodes
     (This : MailMerge_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         MailMerge_Put_ViewMailMergeFieldCodes,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ViewMailMergeFieldCodes;

   function Get_SuppressBlankLines
     (This : MailMerge_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailMerge_Get_SuppressBlankLines);
   end Get_SuppressBlankLines;

   procedure Put_SuppressBlankLines
     (This : MailMerge_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         MailMerge_Put_SuppressBlankLines,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_SuppressBlankLines;

   function Get_MailAsAttachment
     (This : MailMerge_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailMerge_Get_MailAsAttachment);
   end Get_MailAsAttachment;

   procedure Put_MailAsAttachment
     (This : MailMerge_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         MailMerge_Put_MailAsAttachment,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_MailAsAttachment;

   function Get_MailAddressFieldName
     (This : MailMerge_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailMerge_Get_MailAddressFieldName);
   end Get_MailAddressFieldName;

   procedure Put_MailAddressFieldName
     (This : MailMerge_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         MailMerge_Put_MailAddressFieldName,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_MailAddressFieldName;

   function Get_MailSubject
     (This : MailMerge_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailMerge_Get_MailSubject);
   end Get_MailSubject;

   procedure Put_MailSubject
     (This : MailMerge_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         MailMerge_Put_MailSubject,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_MailSubject;

   procedure CreateDataSource
     (This                  : MailMerge_Type;
      Name                  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      PasswordDocument      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      WritePasswordDocument : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      HeaderRecord          : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      MSQuery               : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      SQLStatement          : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      SQLStatement1         : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Connection            : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      LinkToSource          : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free                  : Boolean := True)
   is
   begin
      Invoke
        (This,
         MailMerge_CreateDataSource,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => LinkToSource,
          2 => Connection,
          3 => SQLStatement1,
          4 => SQLStatement,
          5 => MSQuery,
          6 => HeaderRecord,
          7 => WritePasswordDocument,
          8 => PasswordDocument,
          9 => Name),
         Free);
   end CreateDataSource;

   procedure CreateHeaderSource
     (This                  : MailMerge_Type;
      Name                  : GNATCOM.Types.VARIANT;
      PasswordDocument      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      WritePasswordDocument : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      HeaderRecord          : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free                  : Boolean := True)
   is
   begin
      Invoke
        (This,
         MailMerge_CreateHeaderSource,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => HeaderRecord,
          2 => WritePasswordDocument,
          3 => PasswordDocument,
          4 => Name),
         Free);
   end CreateHeaderSource;

   procedure OpenDataSource2000
     (This                  : MailMerge_Type;
      Name                  : GNATCOM.Types.VARIANT;
      Format                : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ConfirmConversions    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ReadOnly              : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      LinkToSource          : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      AddToRecentFiles      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      PasswordDocument      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      PasswordTemplate      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Revert                : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      WritePasswordDocument : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      WritePasswordTemplate : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Connection            : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      SQLStatement          : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      SQLStatement1         : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free                  : Boolean := True)
   is
   begin
      Invoke
        (This,
         MailMerge_OpenDataSource2000,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => SQLStatement1,
          2 => SQLStatement,
          3 => Connection,
          4 => WritePasswordTemplate,
          5 => WritePasswordDocument,
          6 => Revert,
          7 => PasswordTemplate,
          8 => PasswordDocument,
          9 => AddToRecentFiles,
          10 => LinkToSource,
          11 => ReadOnly,
          12 => ConfirmConversions,
          13 => Format,
          14 => Name),
         Free);
   end OpenDataSource2000;

   procedure OpenHeaderSource2000
     (This                  : MailMerge_Type;
      Name                  : GNATCOM.Types.VARIANT;
      Format                : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ConfirmConversions    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ReadOnly              : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      AddToRecentFiles      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      PasswordDocument      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      PasswordTemplate      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Revert                : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      WritePasswordDocument : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      WritePasswordTemplate : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free                  : Boolean := True)
   is
   begin
      Invoke
        (This,
         MailMerge_OpenHeaderSource2000,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => WritePasswordTemplate,
          2 => WritePasswordDocument,
          3 => Revert,
          4 => PasswordTemplate,
          5 => PasswordDocument,
          6 => AddToRecentFiles,
          7 => ReadOnly,
          8 => ConfirmConversions,
          9 => Format,
          10 => Name),
         Free);
   end OpenHeaderSource2000;

   procedure Execute
     (This  : MailMerge_Type;
      Pause : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free  : Boolean := True)
   is
   begin
      Invoke
        (This,
         MailMerge_Execute,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Pause),
         Free);
   end Execute;

   procedure Check
     (This : MailMerge_Type)
   is
   begin
      Invoke (This, MailMerge_Check);
   end Check;

   procedure EditDataSource
     (This : MailMerge_Type)
   is
   begin
      Invoke (This, MailMerge_EditDataSource);
   end EditDataSource;

   procedure EditHeaderSource
     (This : MailMerge_Type)
   is
   begin
      Invoke (This, MailMerge_EditHeaderSource);
   end EditHeaderSource;

   procedure EditMainDocument
     (This : MailMerge_Type)
   is
   begin
      Invoke (This, MailMerge_EditMainDocument);
   end EditMainDocument;

   procedure UseAddressBook
     (This  : MailMerge_Type;
      uType : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
   is
   begin
      Invoke
        (This,
         MailMerge_UseAddressBook,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => uType),
         Free);
   end UseAddressBook;

   function Get_HighlightMergeFields
     (This : MailMerge_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailMerge_Get_HighlightMergeFields);
   end Get_HighlightMergeFields;

   procedure Put_HighlightMergeFields
     (This : MailMerge_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         MailMerge_Put_HighlightMergeFields,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_HighlightMergeFields;

   function Get_MailFormat
     (This : MailMerge_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailMerge_Get_MailFormat);
   end Get_MailFormat;

   procedure Put_MailFormat
     (This : MailMerge_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         MailMerge_Put_MailFormat,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_MailFormat;

   function Get_ShowSendToCustom
     (This : MailMerge_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailMerge_Get_ShowSendToCustom);
   end Get_ShowSendToCustom;

   procedure Put_ShowSendToCustom
     (This : MailMerge_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         MailMerge_Put_ShowSendToCustom,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ShowSendToCustom;

   function Get_WizardState
     (This : MailMerge_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailMerge_Get_WizardState);
   end Get_WizardState;

   procedure Put_WizardState
     (This : MailMerge_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         MailMerge_Put_WizardState,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_WizardState;

   procedure OpenDataSource
     (This                  : MailMerge_Type;
      Name                  : GNATCOM.Types.VARIANT;
      Format                : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ConfirmConversions    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ReadOnly              : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      LinkToSource          : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      AddToRecentFiles      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      PasswordDocument      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      PasswordTemplate      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Revert                : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      WritePasswordDocument : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      WritePasswordTemplate : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Connection            : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      SQLStatement          : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      SQLStatement1         : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      OpenExclusive         : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      uSubType              : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free                  : Boolean := True)
   is
   begin
      Invoke
        (This,
         MailMerge_OpenDataSource,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => uSubType,
          2 => OpenExclusive,
          3 => SQLStatement1,
          4 => SQLStatement,
          5 => Connection,
          6 => WritePasswordTemplate,
          7 => WritePasswordDocument,
          8 => Revert,
          9 => PasswordTemplate,
          10 => PasswordDocument,
          11 => AddToRecentFiles,
          12 => LinkToSource,
          13 => ReadOnly,
          14 => ConfirmConversions,
          15 => Format,
          16 => Name),
         Free);
   end OpenDataSource;

   procedure OpenHeaderSource
     (This                  : MailMerge_Type;
      Name                  : GNATCOM.Types.VARIANT;
      Format                : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ConfirmConversions    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ReadOnly              : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      AddToRecentFiles      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      PasswordDocument      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      PasswordTemplate      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Revert                : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      WritePasswordDocument : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      WritePasswordTemplate : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      OpenExclusive         : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free                  : Boolean := True)
   is
   begin
      Invoke
        (This,
         MailMerge_OpenHeaderSource,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => OpenExclusive,
          2 => WritePasswordTemplate,
          3 => WritePasswordDocument,
          4 => Revert,
          5 => PasswordTemplate,
          6 => PasswordDocument,
          7 => AddToRecentFiles,
          8 => ReadOnly,
          9 => ConfirmConversions,
          10 => Format,
          11 => Name),
         Free);
   end OpenHeaderSource;

   procedure ShowWizard
     (This             : MailMerge_Type;
      InitialState     : GNATCOM.Types.VARIANT;
      ShowDocumentStep : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ShowTemplateStep : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ShowDataStep     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ShowWriteStep    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ShowPreviewStep  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ShowMergeStep    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free             : Boolean := True)
   is
   begin
      Invoke
        (This,
         MailMerge_ShowWizard,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => ShowMergeStep,
          2 => ShowPreviewStep,
          3 => ShowWriteStep,
          4 => ShowDataStep,
          5 => ShowTemplateStep,
          6 => ShowDocumentStep,
          7 => InitialState),
         Free);
   end ShowWizard;

end winword.MailMerge_Object;

