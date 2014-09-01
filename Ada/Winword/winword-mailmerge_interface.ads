with GNATCOM.Dispinterface;

package winword.MailMerge_Interface is

   type MailMerge_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out MailMerge_Type);

   function Pointer (This : MailMerge_Type)
     return Pointer_To_MailMerge;

   procedure Attach (This    : in out MailMerge_Type;
                     Pointer : in     Pointer_To_MailMerge);

   function Get_Application
     (This : MailMerge_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : MailMerge_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : MailMerge_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_MainDocumentType
     (This : MailMerge_Type)
     return WdMailMergeMainDocType;

   procedure Put_MainDocumentType
     (This : MailMerge_Type;
      prop : WdMailMergeMainDocType);

   function Get_State
     (This : MailMerge_Type)
     return WdMailMergeState;

   function Get_Destination
     (This : MailMerge_Type)
     return WdMailMergeDestination;

   procedure Put_Destination
     (This : MailMerge_Type;
      prop : WdMailMergeDestination);

   function Get_DataSource
     (This : MailMerge_Type)
     return Pointer_To_MailMergeDataSource;

   function Get_Fields
     (This : MailMerge_Type)
     return Pointer_To_MailMergeFields;

   function Get_ViewMailMergeFieldCodes
     (This : MailMerge_Type)
     return Interfaces.C.long;

   procedure Put_ViewMailMergeFieldCodes
     (This : MailMerge_Type;
      prop : Interfaces.C.long);

   function Get_SuppressBlankLines
     (This : MailMerge_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_SuppressBlankLines
     (This : MailMerge_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_MailAsAttachment
     (This : MailMerge_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_MailAsAttachment
     (This : MailMerge_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_MailAddressFieldName
     (This : MailMerge_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_MailAddressFieldName
     (This : MailMerge_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_MailSubject
     (This : MailMerge_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_MailSubject
     (This : MailMerge_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

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
        GNATCOM.Types.PVARIANT_MISSING);

   procedure CreateHeaderSource
     (This                  : MailMerge_Type;
      Name                  : GNATCOM.Types.BSTR;
      PasswordDocument      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      WritePasswordDocument : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      HeaderRecord          : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Free                  : Boolean := True);

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
      Free                  : Boolean := True);

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
      Free                  : Boolean := True);

   procedure Execute
     (This  : MailMerge_Type;
      Pause : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

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
      uType : GNATCOM.Types.BSTR;
      Free  : Boolean := True);

   function Get_HighlightMergeFields
     (This : MailMerge_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_HighlightMergeFields
     (This : MailMerge_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_MailFormat
     (This : MailMerge_Type)
     return WdMailMergeMailFormat;

   procedure Put_MailFormat
     (This : MailMerge_Type;
      prop : WdMailMergeMailFormat);

   function Get_ShowSendToCustom
     (This : MailMerge_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_ShowSendToCustom
     (This : MailMerge_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_WizardState
     (This : MailMerge_Type)
     return Interfaces.C.long;

   procedure Put_WizardState
     (This : MailMerge_Type;
      prop : Interfaces.C.long);

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
      Free                  : Boolean := True);

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
      Free                  : Boolean := True);

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
        GNATCOM.Types.PVARIANT_MISSING);

end winword.MailMerge_Interface;

