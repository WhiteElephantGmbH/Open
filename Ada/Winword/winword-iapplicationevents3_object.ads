with GNATCOM.Dispinterface;

package winword.IApplicationEvents3_Object is

   type IApplicationEvents3_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Startup
     (This : IApplicationEvents3_Type);

   procedure Quit
     (This : IApplicationEvents3_Type);

   procedure DocumentChange
     (This : IApplicationEvents3_Type);

   procedure DocumentOpen
     (This : IApplicationEvents3_Type;
      Doc  : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure DocumentBeforeClose
     (This   : IApplicationEvents3_Type;
      Doc    : GNATCOM.Types.VARIANT;
      Cancel : GNATCOM.Types.VARIANT;
      Free   : Boolean := True);

   procedure DocumentBeforePrint
     (This   : IApplicationEvents3_Type;
      Doc    : GNATCOM.Types.VARIANT;
      Cancel : GNATCOM.Types.VARIANT;
      Free   : Boolean := True);

   procedure DocumentBeforeSave
     (This     : IApplicationEvents3_Type;
      Doc      : GNATCOM.Types.VARIANT;
      SaveAsUI : GNATCOM.Types.VARIANT;
      Cancel   : GNATCOM.Types.VARIANT;
      Free     : Boolean := True);

   procedure NewDocument
     (This : IApplicationEvents3_Type;
      Doc  : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure WindowActivate
     (This : IApplicationEvents3_Type;
      Doc  : GNATCOM.Types.VARIANT;
      Wn   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure WindowDeactivate
     (This : IApplicationEvents3_Type;
      Doc  : GNATCOM.Types.VARIANT;
      Wn   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure WindowSelectionChange
     (This : IApplicationEvents3_Type;
      Sel  : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure WindowBeforeRightClick
     (This   : IApplicationEvents3_Type;
      Sel    : GNATCOM.Types.VARIANT;
      Cancel : GNATCOM.Types.VARIANT;
      Free   : Boolean := True);

   procedure WindowBeforeDoubleClick
     (This   : IApplicationEvents3_Type;
      Sel    : GNATCOM.Types.VARIANT;
      Cancel : GNATCOM.Types.VARIANT;
      Free   : Boolean := True);

   procedure EPostagePropertyDialog
     (This : IApplicationEvents3_Type;
      Doc  : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure EPostageInsert
     (This : IApplicationEvents3_Type;
      Doc  : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure MailMergeAfterMerge
     (This      : IApplicationEvents3_Type;
      Doc       : GNATCOM.Types.VARIANT;
      DocResult : GNATCOM.Types.VARIANT;
      Free      : Boolean := True);

   procedure MailMergeAfterRecordMerge
     (This : IApplicationEvents3_Type;
      Doc  : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure MailMergeBeforeMerge
     (This        : IApplicationEvents3_Type;
      Doc         : GNATCOM.Types.VARIANT;
      StartRecord : GNATCOM.Types.VARIANT;
      EndRecord   : GNATCOM.Types.VARIANT;
      Cancel      : GNATCOM.Types.VARIANT;
      Free        : Boolean := True);

   procedure MailMergeBeforeRecordMerge
     (This   : IApplicationEvents3_Type;
      Doc    : GNATCOM.Types.VARIANT;
      Cancel : GNATCOM.Types.VARIANT;
      Free   : Boolean := True);

   procedure MailMergeDataSourceLoad
     (This : IApplicationEvents3_Type;
      Doc  : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure MailMergeDataSourceValidate
     (This    : IApplicationEvents3_Type;
      Doc     : GNATCOM.Types.VARIANT;
      Handled : GNATCOM.Types.VARIANT;
      Free    : Boolean := True);

   procedure MailMergeWizardSendToCustom
     (This : IApplicationEvents3_Type;
      Doc  : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure MailMergeWizardStateChange
     (This      : IApplicationEvents3_Type;
      Doc       : GNATCOM.Types.VARIANT;
      FromState : GNATCOM.Types.VARIANT;
      ToState   : GNATCOM.Types.VARIANT;
      Handled   : GNATCOM.Types.VARIANT;
      Free      : Boolean := True);

   procedure WindowSize
     (This : IApplicationEvents3_Type;
      Doc  : GNATCOM.Types.VARIANT;
      Wn   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

end winword.IApplicationEvents3_Object;

