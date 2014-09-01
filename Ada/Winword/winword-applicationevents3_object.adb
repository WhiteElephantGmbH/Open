package body winword.ApplicationEvents3_Object is

   procedure QueryInterface
     (This   : ApplicationEvents3_Type;
      riid   : GNATCOM.Types.VARIANT;
      ppvObj : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
   is
   begin
      Invoke
        (This,
         ApplicationEvents3_QueryInterface,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => ppvObj,
          2 => riid),
         Free);
   end QueryInterface;

   function AddRef
     (This : ApplicationEvents3_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke (This, ApplicationEvents3_AddRef);
   end AddRef;

   function Release
     (This : ApplicationEvents3_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke (This, ApplicationEvents3_Release);
   end Release;

   procedure GetTypeInfoCount
     (This    : ApplicationEvents3_Type;
      pctinfo : GNATCOM.Types.VARIANT;
      Free    : Boolean := True)
   is
   begin
      Invoke
        (This,
         ApplicationEvents3_GetTypeInfoCount,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => pctinfo),
         Free);
   end GetTypeInfoCount;

   procedure GetTypeInfo
     (This    : ApplicationEvents3_Type;
      itinfo  : GNATCOM.Types.VARIANT;
      lcid    : GNATCOM.Types.VARIANT;
      pptinfo : GNATCOM.Types.VARIANT;
      Free    : Boolean := True)
   is
   begin
      Invoke
        (This,
         ApplicationEvents3_GetTypeInfo,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => pptinfo,
          2 => lcid,
          3 => itinfo),
         Free);
   end GetTypeInfo;

   procedure GetIDsOfNames
     (This      : ApplicationEvents3_Type;
      riid      : GNATCOM.Types.VARIANT;
      rgszNames : GNATCOM.Types.VARIANT;
      cNames    : GNATCOM.Types.VARIANT;
      lcid      : GNATCOM.Types.VARIANT;
      rgdispid  : GNATCOM.Types.VARIANT;
      Free      : Boolean := True)
   is
   begin
      Invoke
        (This,
         ApplicationEvents3_GetIDsOfNames,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => rgdispid,
          2 => lcid,
          3 => cNames,
          4 => rgszNames,
          5 => riid),
         Free);
   end GetIDsOfNames;

   procedure Invoke
     (This         : ApplicationEvents3_Type;
      dispidMember : GNATCOM.Types.VARIANT;
      riid         : GNATCOM.Types.VARIANT;
      lcid         : GNATCOM.Types.VARIANT;
      wFlags       : GNATCOM.Types.VARIANT;
      pdispparams  : GNATCOM.Types.VARIANT;
      pvarResult   : GNATCOM.Types.VARIANT;
      pexcepinfo   : GNATCOM.Types.VARIANT;
      puArgErr     : GNATCOM.Types.VARIANT;
      Free         : Boolean := True)
   is
   begin
      Invoke
        (This,
         ApplicationEvents3_Invoke,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => puArgErr,
          2 => pexcepinfo,
          3 => pvarResult,
          4 => pdispparams,
          5 => wFlags,
          6 => lcid,
          7 => riid,
          8 => dispidMember),
         Free);
   end Invoke;

   procedure Startup
     (This : ApplicationEvents3_Type)
   is
   begin
      Invoke (This, ApplicationEvents3_Startup);
   end Startup;

   procedure Quit
     (This : ApplicationEvents3_Type)
   is
   begin
      Invoke (This, ApplicationEvents3_Quit);
   end Quit;

   procedure DocumentChange
     (This : ApplicationEvents3_Type)
   is
   begin
      Invoke (This, ApplicationEvents3_DocumentChange);
   end DocumentChange;

   procedure DocumentOpen
     (This : ApplicationEvents3_Type;
      Doc  : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Invoke
        (This,
         ApplicationEvents3_DocumentOpen,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Doc),
         Free);
   end DocumentOpen;

   procedure DocumentBeforeClose
     (This   : ApplicationEvents3_Type;
      Doc    : GNATCOM.Types.VARIANT;
      Cancel : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
   is
   begin
      Invoke
        (This,
         ApplicationEvents3_DocumentBeforeClose,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Cancel,
          2 => Doc),
         Free);
   end DocumentBeforeClose;

   procedure DocumentBeforePrint
     (This   : ApplicationEvents3_Type;
      Doc    : GNATCOM.Types.VARIANT;
      Cancel : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
   is
   begin
      Invoke
        (This,
         ApplicationEvents3_DocumentBeforePrint,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Cancel,
          2 => Doc),
         Free);
   end DocumentBeforePrint;

   procedure DocumentBeforeSave
     (This     : ApplicationEvents3_Type;
      Doc      : GNATCOM.Types.VARIANT;
      SaveAsUI : GNATCOM.Types.VARIANT;
      Cancel   : GNATCOM.Types.VARIANT;
      Free     : Boolean := True)
   is
   begin
      Invoke
        (This,
         ApplicationEvents3_DocumentBeforeSave,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Cancel,
          2 => SaveAsUI,
          3 => Doc),
         Free);
   end DocumentBeforeSave;

   procedure NewDocument
     (This : ApplicationEvents3_Type;
      Doc  : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Invoke
        (This,
         ApplicationEvents3_NewDocument,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Doc),
         Free);
   end NewDocument;

   procedure WindowActivate
     (This : ApplicationEvents3_Type;
      Doc  : GNATCOM.Types.VARIANT;
      Wn   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Invoke
        (This,
         ApplicationEvents3_WindowActivate,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Wn,
          2 => Doc),
         Free);
   end WindowActivate;

   procedure WindowDeactivate
     (This : ApplicationEvents3_Type;
      Doc  : GNATCOM.Types.VARIANT;
      Wn   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Invoke
        (This,
         ApplicationEvents3_WindowDeactivate,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Wn,
          2 => Doc),
         Free);
   end WindowDeactivate;

   procedure WindowSelectionChange
     (This : ApplicationEvents3_Type;
      Sel  : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Invoke
        (This,
         ApplicationEvents3_WindowSelectionChange,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Sel),
         Free);
   end WindowSelectionChange;

   procedure WindowBeforeRightClick
     (This   : ApplicationEvents3_Type;
      Sel    : GNATCOM.Types.VARIANT;
      Cancel : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
   is
   begin
      Invoke
        (This,
         ApplicationEvents3_WindowBeforeRightClick,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Cancel,
          2 => Sel),
         Free);
   end WindowBeforeRightClick;

   procedure WindowBeforeDoubleClick
     (This   : ApplicationEvents3_Type;
      Sel    : GNATCOM.Types.VARIANT;
      Cancel : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
   is
   begin
      Invoke
        (This,
         ApplicationEvents3_WindowBeforeDoubleClick,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Cancel,
          2 => Sel),
         Free);
   end WindowBeforeDoubleClick;

   procedure EPostagePropertyDialog
     (This : ApplicationEvents3_Type;
      Doc  : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Invoke
        (This,
         ApplicationEvents3_EPostagePropertyDialog,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Doc),
         Free);
   end EPostagePropertyDialog;

   procedure EPostageInsert
     (This : ApplicationEvents3_Type;
      Doc  : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Invoke
        (This,
         ApplicationEvents3_EPostageInsert,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Doc),
         Free);
   end EPostageInsert;

   procedure MailMergeAfterMerge
     (This      : ApplicationEvents3_Type;
      Doc       : GNATCOM.Types.VARIANT;
      DocResult : GNATCOM.Types.VARIANT;
      Free      : Boolean := True)
   is
   begin
      Invoke
        (This,
         ApplicationEvents3_MailMergeAfterMerge,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => DocResult,
          2 => Doc),
         Free);
   end MailMergeAfterMerge;

   procedure MailMergeAfterRecordMerge
     (This : ApplicationEvents3_Type;
      Doc  : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Invoke
        (This,
         ApplicationEvents3_MailMergeAfterRecordMerge,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Doc),
         Free);
   end MailMergeAfterRecordMerge;

   procedure MailMergeBeforeMerge
     (This        : ApplicationEvents3_Type;
      Doc         : GNATCOM.Types.VARIANT;
      StartRecord : GNATCOM.Types.VARIANT;
      EndRecord   : GNATCOM.Types.VARIANT;
      Cancel      : GNATCOM.Types.VARIANT;
      Free        : Boolean := True)
   is
   begin
      Invoke
        (This,
         ApplicationEvents3_MailMergeBeforeMerge,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Cancel,
          2 => EndRecord,
          3 => StartRecord,
          4 => Doc),
         Free);
   end MailMergeBeforeMerge;

   procedure MailMergeBeforeRecordMerge
     (This   : ApplicationEvents3_Type;
      Doc    : GNATCOM.Types.VARIANT;
      Cancel : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
   is
   begin
      Invoke
        (This,
         ApplicationEvents3_MailMergeBeforeRecordMerge,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Cancel,
          2 => Doc),
         Free);
   end MailMergeBeforeRecordMerge;

   procedure MailMergeDataSourceLoad
     (This : ApplicationEvents3_Type;
      Doc  : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Invoke
        (This,
         ApplicationEvents3_MailMergeDataSourceLoad,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Doc),
         Free);
   end MailMergeDataSourceLoad;

   procedure MailMergeDataSourceValidate
     (This    : ApplicationEvents3_Type;
      Doc     : GNATCOM.Types.VARIANT;
      Handled : GNATCOM.Types.VARIANT;
      Free    : Boolean := True)
   is
   begin
      Invoke
        (This,
         ApplicationEvents3_MailMergeDataSourceValidate,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Handled,
          2 => Doc),
         Free);
   end MailMergeDataSourceValidate;

   procedure MailMergeWizardSendToCustom
     (This : ApplicationEvents3_Type;
      Doc  : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Invoke
        (This,
         ApplicationEvents3_MailMergeWizardSendToCustom,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Doc),
         Free);
   end MailMergeWizardSendToCustom;

   procedure MailMergeWizardStateChange
     (This      : ApplicationEvents3_Type;
      Doc       : GNATCOM.Types.VARIANT;
      FromState : GNATCOM.Types.VARIANT;
      ToState   : GNATCOM.Types.VARIANT;
      Handled   : GNATCOM.Types.VARIANT;
      Free      : Boolean := True)
   is
   begin
      Invoke
        (This,
         ApplicationEvents3_MailMergeWizardStateChange,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Handled,
          2 => ToState,
          3 => FromState,
          4 => Doc),
         Free);
   end MailMergeWizardStateChange;

   procedure WindowSize
     (This : ApplicationEvents3_Type;
      Doc  : GNATCOM.Types.VARIANT;
      Wn   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Invoke
        (This,
         ApplicationEvents3_WindowSize,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Wn,
          2 => Doc),
         Free);
   end WindowSize;

end winword.ApplicationEvents3_Object;

