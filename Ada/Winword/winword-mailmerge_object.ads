with GNATCOM.Dispinterface;

package winword.MailMerge_Object is

   type MailMerge_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : MailMerge_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : MailMerge_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : MailMerge_Type)
     return GNATCOM.Types.VARIANT;

   function Get_MainDocumentType
     (This : MailMerge_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_MainDocumentType
     (This : MailMerge_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_State
     (This : MailMerge_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Destination
     (This : MailMerge_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Destination
     (This : MailMerge_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_DataSource
     (This : MailMerge_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Fields
     (This : MailMerge_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ViewMailMergeFieldCodes
     (This : MailMerge_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ViewMailMergeFieldCodes
     (This : MailMerge_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_SuppressBlankLines
     (This : MailMerge_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_SuppressBlankLines
     (This : MailMerge_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_MailAsAttachment
     (This : MailMerge_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_MailAsAttachment
     (This : MailMerge_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_MailAddressFieldName
     (This : MailMerge_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_MailAddressFieldName
     (This : MailMerge_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_MailSubject
     (This : MailMerge_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_MailSubject
     (This : MailMerge_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

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
      Free                  : Boolean := True);

   procedure CreateHeaderSource
     (This                  : MailMerge_Type;
      Name                  : GNATCOM.Types.VARIANT;
      PasswordDocument      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      WritePasswordDocument : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      HeaderRecord          : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free                  : Boolean := True);

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
      Free                  : Boolean := True);

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
      Free                  : Boolean := True);

   procedure Execute
     (This  : MailMerge_Type;
      Pause : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free  : Boolean := True);

   procedure Check
     (This : MailMerge_Type);

   procedure EditDataSource
     (This : MailMerge_Type);

   procedure EditHeaderSource
     (This : MailMerge_Type);

   procedure EditMainDocument
     (This : MailMerge_Type);

   procedure UseAddressBook
     (This  : MailMerge_Type;
      uType : GNATCOM.Types.VARIANT;
      Free  : Boolean := True);

   function Get_HighlightMergeFields
     (This : MailMerge_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_HighlightMergeFields
     (This : MailMerge_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_MailFormat
     (This : MailMerge_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_MailFormat
     (This : MailMerge_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ShowSendToCustom
     (This : MailMerge_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ShowSendToCustom
     (This : MailMerge_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_WizardState
     (This : MailMerge_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_WizardState
     (This : MailMerge_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

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
      Free                  : Boolean := True);

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
      Free                  : Boolean := True);

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
      Free             : Boolean := True);

end winword.MailMerge_Object;

