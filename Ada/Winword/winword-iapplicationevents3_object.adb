package body winword.IApplicationEvents3_Object is

   procedure Startup
     (This : IApplicationEvents3_Type)
   is
   begin
      Invoke (This, IApplicationEvents3_Startup);
   end Startup;

   procedure Quit
     (This : IApplicationEvents3_Type)
   is
   begin
      Invoke (This, IApplicationEvents3_Quit);
   end Quit;

   procedure DocumentChange
     (This : IApplicationEvents3_Type)
   is
   begin
      Invoke (This, IApplicationEvents3_DocumentChange);
   end DocumentChange;

   procedure DocumentOpen
     (This : IApplicationEvents3_Type;
      Doc  : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Invoke
        (This,
         IApplicationEvents3_DocumentOpen,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Doc),
         Free);
   end DocumentOpen;

   procedure DocumentBeforeClose
     (This   : IApplicationEvents3_Type;
      Doc    : GNATCOM.Types.VARIANT;
      Cancel : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
   is
   begin
      Invoke
        (This,
         IApplicationEvents3_DocumentBeforeClose,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Cancel,
          2 => Doc),
         Free);
   end DocumentBeforeClose;

   procedure DocumentBeforePrint
     (This   : IApplicationEvents3_Type;
      Doc    : GNATCOM.Types.VARIANT;
      Cancel : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
   is
   begin
      Invoke
        (This,
         IApplicationEvents3_DocumentBeforePrint,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Cancel,
          2 => Doc),
         Free);
   end DocumentBeforePrint;

   procedure DocumentBeforeSave
     (This     : IApplicationEvents3_Type;
      Doc      : GNATCOM.Types.VARIANT;
      SaveAsUI : GNATCOM.Types.VARIANT;
      Cancel   : GNATCOM.Types.VARIANT;
      Free     : Boolean := True)
   is
   begin
      Invoke
        (This,
         IApplicationEvents3_DocumentBeforeSave,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Cancel,
          2 => SaveAsUI,
          3 => Doc),
         Free);
   end DocumentBeforeSave;

   procedure NewDocument
     (This : IApplicationEvents3_Type;
      Doc  : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Invoke
        (This,
         IApplicationEvents3_NewDocument,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Doc),
         Free);
   end NewDocument;

   procedure WindowActivate
     (This : IApplicationEvents3_Type;
      Doc  : GNATCOM.Types.VARIANT;
      Wn   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Invoke
        (This,
         IApplicationEvents3_WindowActivate,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Wn,
          2 => Doc),
         Free);
   end WindowActivate;

   procedure WindowDeactivate
     (This : IApplicationEvents3_Type;
      Doc  : GNATCOM.Types.VARIANT;
      Wn   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Invoke
        (This,
         IApplicationEvents3_WindowDeactivate,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Wn,
          2 => Doc),
         Free);
   end WindowDeactivate;

   procedure WindowSelectionChange
     (This : IApplicationEvents3_Type;
      Sel  : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Invoke
        (This,
         IApplicationEvents3_WindowSelectionChange,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Sel),
         Free);
   end WindowSelectionChange;

   procedure WindowBeforeRightClick
     (This   : IApplicationEvents3_Type;
      Sel    : GNATCOM.Types.VARIANT;
      Cancel : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
   is
   begin
      Invoke
        (This,
         IApplicationEvents3_WindowBeforeRightClick,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Cancel,
          2 => Sel),
         Free);
   end WindowBeforeRightClick;

   procedure WindowBeforeDoubleClick
     (This   : IApplicationEvents3_Type;
      Sel    : GNATCOM.Types.VARIANT;
      Cancel : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
   is
   begin
      Invoke
        (This,
         IApplicationEvents3_WindowBeforeDoubleClick,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Cancel,
          2 => Sel),
         Free);
   end WindowBeforeDoubleClick;

   procedure EPostagePropertyDialog
     (This : IApplicationEvents3_Type;
      Doc  : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Invoke
        (This,
         IApplicationEvents3_EPostagePropertyDialog,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Doc),
         Free);
   end EPostagePropertyDialog;

   procedure EPostageInsert
     (This : IApplicationEvents3_Type;
      Doc  : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Invoke
        (This,
         IApplicationEvents3_EPostageInsert,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Doc),
         Free);
   end EPostageInsert;

   procedure MailMergeAfterMerge
     (This      : IApplicationEvents3_Type;
      Doc       : GNATCOM.Types.VARIANT;
      DocResult : GNATCOM.Types.VARIANT;
      Free      : Boolean := True)
   is
   begin
      Invoke
        (This,
         IApplicationEvents3_MailMergeAfterMerge,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => DocResult,
          2 => Doc),
         Free);
   end MailMergeAfterMerge;

   procedure MailMergeAfterRecordMerge
     (This : IApplicationEvents3_Type;
      Doc  : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Invoke
        (This,
         IApplicationEvents3_MailMergeAfterRecordMerge,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Doc),
         Free);
   end MailMergeAfterRecordMerge;

   procedure MailMergeBeforeMerge
     (This        : IApplicationEvents3_Type;
      Doc         : GNATCOM.Types.VARIANT;
      StartRecord : GNATCOM.Types.VARIANT;
      EndRecord   : GNATCOM.Types.VARIANT;
      Cancel      : GNATCOM.Types.VARIANT;
      Free        : Boolean := True)
   is
   begin
      Invoke
        (This,
         IApplicationEvents3_MailMergeBeforeMerge,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Cancel,
          2 => EndRecord,
          3 => StartRecord,
          4 => Doc),
         Free);
   end MailMergeBeforeMerge;

   procedure MailMergeBeforeRecordMerge
     (This   : IApplicationEvents3_Type;
      Doc    : GNATCOM.Types.VARIANT;
      Cancel : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
   is
   begin
      Invoke
        (This,
         IApplicationEvents3_MailMergeBeforeRecordMerge,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Cancel,
          2 => Doc),
         Free);
   end MailMergeBeforeRecordMerge;

   procedure MailMergeDataSourceLoad
     (This : IApplicationEvents3_Type;
      Doc  : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Invoke
        (This,
         IApplicationEvents3_MailMergeDataSourceLoad,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Doc),
         Free);
   end MailMergeDataSourceLoad;

   procedure MailMergeDataSourceValidate
     (This    : IApplicationEvents3_Type;
      Doc     : GNATCOM.Types.VARIANT;
      Handled : GNATCOM.Types.VARIANT;
      Free    : Boolean := True)
   is
   begin
      Invoke
        (This,
         IApplicationEvents3_MailMergeDataSourceValidate,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Handled,
          2 => Doc),
         Free);
   end MailMergeDataSourceValidate;

   procedure MailMergeWizardSendToCustom
     (This : IApplicationEvents3_Type;
      Doc  : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Invoke
        (This,
         IApplicationEvents3_MailMergeWizardSendToCustom,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Doc),
         Free);
   end MailMergeWizardSendToCustom;

   procedure MailMergeWizardStateChange
     (This      : IApplicationEvents3_Type;
      Doc       : GNATCOM.Types.VARIANT;
      FromState : GNATCOM.Types.VARIANT;
      ToState   : GNATCOM.Types.VARIANT;
      Handled   : GNATCOM.Types.VARIANT;
      Free      : Boolean := True)
   is
   begin
      Invoke
        (This,
         IApplicationEvents3_MailMergeWizardStateChange,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Handled,
          2 => ToState,
          3 => FromState,
          4 => Doc),
         Free);
   end MailMergeWizardStateChange;

   procedure WindowSize
     (This : IApplicationEvents3_Type;
      Doc  : GNATCOM.Types.VARIANT;
      Wn   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Invoke
        (This,
         IApplicationEvents3_WindowSize,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Wn,
          2 => Doc),
         Free);
   end WindowSize;

end winword.IApplicationEvents3_Object;

