with GNATCOM.Dispinterface;

package winword.ApplicationEvents3_Object is

   type ApplicationEvents3_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure QueryInterface
     (This   : ApplicationEvents3_Type;
      riid   : GNATCOM.Types.VARIANT;
      ppvObj : GNATCOM.Types.VARIANT;
      Free   : Boolean := True);

   function AddRef
     (This : ApplicationEvents3_Type)
     return GNATCOM.Types.VARIANT;

   function Release
     (This : ApplicationEvents3_Type)
     return GNATCOM.Types.VARIANT;

   procedure GetTypeInfoCount
     (This    : ApplicationEvents3_Type;
      pctinfo : GNATCOM.Types.VARIANT;
      Free    : Boolean := True);

   procedure GetTypeInfo
     (This    : ApplicationEvents3_Type;
      itinfo  : GNATCOM.Types.VARIANT;
      lcid    : GNATCOM.Types.VARIANT;
      pptinfo : GNATCOM.Types.VARIANT;
      Free    : Boolean := True);

   procedure GetIDsOfNames
     (This      : ApplicationEvents3_Type;
      riid      : GNATCOM.Types.VARIANT;
      rgszNames : GNATCOM.Types.VARIANT;
      cNames    : GNATCOM.Types.VARIANT;
      lcid      : GNATCOM.Types.VARIANT;
      rgdispid  : GNATCOM.Types.VARIANT;
      Free      : Boolean := True);

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
      Free         : Boolean := True);

   procedure Startup
     (This : ApplicationEvents3_Type);

   procedure Quit
     (This : ApplicationEvents3_Type);

   procedure DocumentChange
     (This : ApplicationEvents3_Type);

   procedure DocumentOpen
     (This : ApplicationEvents3_Type;
      Doc  : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure DocumentBeforeClose
     (This   : ApplicationEvents3_Type;
      Doc    : GNATCOM.Types.VARIANT;
      Cancel : GNATCOM.Types.VARIANT;
      Free   : Boolean := True);

   procedure DocumentBeforePrint
     (This   : ApplicationEvents3_Type;
      Doc    : GNATCOM.Types.VARIANT;
      Cancel : GNATCOM.Types.VARIANT;
      Free   : Boolean := True);

   procedure DocumentBeforeSave
     (This     : ApplicationEvents3_Type;
      Doc      : GNATCOM.Types.VARIANT;
      SaveAsUI : GNATCOM.Types.VARIANT;
      Cancel   : GNATCOM.Types.VARIANT;
      Free     : Boolean := True);

   procedure NewDocument
     (This : ApplicationEvents3_Type;
      Doc  : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure WindowActivate
     (This : ApplicationEvents3_Type;
      Doc  : GNATCOM.Types.VARIANT;
      Wn   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure WindowDeactivate
     (This : ApplicationEvents3_Type;
      Doc  : GNATCOM.Types.VARIANT;
      Wn   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure WindowSelectionChange
     (This : ApplicationEvents3_Type;
      Sel  : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure WindowBeforeRightClick
     (This   : ApplicationEvents3_Type;
      Sel    : GNATCOM.Types.VARIANT;
      Cancel : GNATCOM.Types.VARIANT;
      Free   : Boolean := True);

   procedure WindowBeforeDoubleClick
     (This   : ApplicationEvents3_Type;
      Sel    : GNATCOM.Types.VARIANT;
      Cancel : GNATCOM.Types.VARIANT;
      Free   : Boolean := True);

   procedure EPostagePropertyDialog
     (This : ApplicationEvents3_Type;
      Doc  : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure EPostageInsert
     (This : ApplicationEvents3_Type;
      Doc  : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure MailMergeAfterMerge
     (This      : ApplicationEvents3_Type;
      Doc       : GNATCOM.Types.VARIANT;
      DocResult : GNATCOM.Types.VARIANT;
      Free      : Boolean := True);

   procedure MailMergeAfterRecordMerge
     (This : ApplicationEvents3_Type;
      Doc  : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure MailMergeBeforeMerge
     (This        : ApplicationEvents3_Type;
      Doc         : GNATCOM.Types.VARIANT;
      StartRecord : GNATCOM.Types.VARIANT;
      EndRecord   : GNATCOM.Types.VARIANT;
      Cancel      : GNATCOM.Types.VARIANT;
      Free        : Boolean := True);

   procedure MailMergeBeforeRecordMerge
     (This   : ApplicationEvents3_Type;
      Doc    : GNATCOM.Types.VARIANT;
      Cancel : GNATCOM.Types.VARIANT;
      Free   : Boolean := True);

   procedure MailMergeDataSourceLoad
     (This : ApplicationEvents3_Type;
      Doc  : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure MailMergeDataSourceValidate
     (This    : ApplicationEvents3_Type;
      Doc     : GNATCOM.Types.VARIANT;
      Handled : GNATCOM.Types.VARIANT;
      Free    : Boolean := True);

   procedure MailMergeWizardSendToCustom
     (This : ApplicationEvents3_Type;
      Doc  : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure MailMergeWizardStateChange
     (This      : ApplicationEvents3_Type;
      Doc       : GNATCOM.Types.VARIANT;
      FromState : GNATCOM.Types.VARIANT;
      ToState   : GNATCOM.Types.VARIANT;
      Handled   : GNATCOM.Types.VARIANT;
      Free      : Boolean := True);

   procedure WindowSize
     (This : ApplicationEvents3_Type;
      Doc  : GNATCOM.Types.VARIANT;
      Wn   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

end winword.ApplicationEvents3_Object;

