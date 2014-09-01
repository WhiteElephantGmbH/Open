package body winword.ApplicationEvents3_Events is

   procedure Invoke
     (dispidMember : in Interfaces.C.long;
      wFlags       : in Interfaces.C.unsigned_short;
      pdispparams  : in GNATCOM.Types.Pointer_To_DISPPARAMS;
      Event_Object : in GNATCOM.Events.Event_Object.Event_Pointer)
   is
      use type Interfaces.C.long;
   begin
      case dispidMember is
         when ApplicationEvents3_QueryInterface=>
            QueryInterface
              (ApplicationEvents3_Event'Class (Event_Object.all),
               pdispparams.rgvarg (1),
               pdispparams.rgvarg (0));
         when ApplicationEvents3_AddRef=>
            AddRef
              (ApplicationEvents3_Event'Class (Event_Object.all));
         when ApplicationEvents3_Release=>
            Release
              (ApplicationEvents3_Event'Class (Event_Object.all));
         when ApplicationEvents3_GetTypeInfoCount=>
            GetTypeInfoCount
              (ApplicationEvents3_Event'Class (Event_Object.all),
               pdispparams.rgvarg (0));
         when ApplicationEvents3_GetTypeInfo=>
            GetTypeInfo
              (ApplicationEvents3_Event'Class (Event_Object.all),
               pdispparams.rgvarg (2),
               pdispparams.rgvarg (1),
               pdispparams.rgvarg (0));
         when ApplicationEvents3_GetIDsOfNames=>
            GetIDsOfNames
              (ApplicationEvents3_Event'Class (Event_Object.all),
               pdispparams.rgvarg (4),
               pdispparams.rgvarg (3),
               pdispparams.rgvarg (2),
               pdispparams.rgvarg (1),
               pdispparams.rgvarg (0));
         when ApplicationEvents3_Invoke=>
            Invoke
              (ApplicationEvents3_Event'Class (Event_Object.all),
               pdispparams.rgvarg (7),
               pdispparams.rgvarg (6),
               pdispparams.rgvarg (5),
               pdispparams.rgvarg (4),
               pdispparams.rgvarg (3),
               pdispparams.rgvarg (2),
               pdispparams.rgvarg (1),
               pdispparams.rgvarg (0));
         when ApplicationEvents3_Startup=>
            Startup
              (ApplicationEvents3_Event'Class (Event_Object.all));
         when ApplicationEvents3_Quit=>
            Quit
              (ApplicationEvents3_Event'Class (Event_Object.all));
         when ApplicationEvents3_DocumentChange=>
            DocumentChange
              (ApplicationEvents3_Event'Class (Event_Object.all));
         when ApplicationEvents3_DocumentOpen=>
            DocumentOpen
              (ApplicationEvents3_Event'Class (Event_Object.all),
               pdispparams.rgvarg (0));
         when ApplicationEvents3_DocumentBeforeClose=>
            DocumentBeforeClose
              (ApplicationEvents3_Event'Class (Event_Object.all),
               pdispparams.rgvarg (1),
               pdispparams.rgvarg (0));
         when ApplicationEvents3_DocumentBeforePrint=>
            DocumentBeforePrint
              (ApplicationEvents3_Event'Class (Event_Object.all),
               pdispparams.rgvarg (1),
               pdispparams.rgvarg (0));
         when ApplicationEvents3_DocumentBeforeSave=>
            DocumentBeforeSave
              (ApplicationEvents3_Event'Class (Event_Object.all),
               pdispparams.rgvarg (2),
               pdispparams.rgvarg (1),
               pdispparams.rgvarg (0));
         when ApplicationEvents3_NewDocument=>
            NewDocument
              (ApplicationEvents3_Event'Class (Event_Object.all),
               pdispparams.rgvarg (0));
         when ApplicationEvents3_WindowActivate=>
            WindowActivate
              (ApplicationEvents3_Event'Class (Event_Object.all),
               pdispparams.rgvarg (1),
               pdispparams.rgvarg (0));
         when ApplicationEvents3_WindowDeactivate=>
            WindowDeactivate
              (ApplicationEvents3_Event'Class (Event_Object.all),
               pdispparams.rgvarg (1),
               pdispparams.rgvarg (0));
         when ApplicationEvents3_WindowSelectionChange=>
            WindowSelectionChange
              (ApplicationEvents3_Event'Class (Event_Object.all),
               pdispparams.rgvarg (0));
         when ApplicationEvents3_WindowBeforeRightClick=>
            WindowBeforeRightClick
              (ApplicationEvents3_Event'Class (Event_Object.all),
               pdispparams.rgvarg (1),
               pdispparams.rgvarg (0));
         when ApplicationEvents3_WindowBeforeDoubleClick=>
            WindowBeforeDoubleClick
              (ApplicationEvents3_Event'Class (Event_Object.all),
               pdispparams.rgvarg (1),
               pdispparams.rgvarg (0));
         when ApplicationEvents3_EPostagePropertyDialog=>
            EPostagePropertyDialog
              (ApplicationEvents3_Event'Class (Event_Object.all),
               pdispparams.rgvarg (0));
         when ApplicationEvents3_EPostageInsert=>
            EPostageInsert
              (ApplicationEvents3_Event'Class (Event_Object.all),
               pdispparams.rgvarg (0));
         when ApplicationEvents3_MailMergeAfterMerge=>
            MailMergeAfterMerge
              (ApplicationEvents3_Event'Class (Event_Object.all),
               pdispparams.rgvarg (1),
               pdispparams.rgvarg (0));
         when ApplicationEvents3_MailMergeAfterRecordMerge=>
            MailMergeAfterRecordMerge
              (ApplicationEvents3_Event'Class (Event_Object.all),
               pdispparams.rgvarg (0));
         when ApplicationEvents3_MailMergeBeforeMerge=>
            MailMergeBeforeMerge
              (ApplicationEvents3_Event'Class (Event_Object.all),
               pdispparams.rgvarg (3),
               pdispparams.rgvarg (2),
               pdispparams.rgvarg (1),
               pdispparams.rgvarg (0));
         when ApplicationEvents3_MailMergeBeforeRecordMerge=>
            MailMergeBeforeRecordMerge
              (ApplicationEvents3_Event'Class (Event_Object.all),
               pdispparams.rgvarg (1),
               pdispparams.rgvarg (0));
         when ApplicationEvents3_MailMergeDataSourceLoad=>
            MailMergeDataSourceLoad
              (ApplicationEvents3_Event'Class (Event_Object.all),
               pdispparams.rgvarg (0));
         when ApplicationEvents3_MailMergeDataSourceValidate=>
            MailMergeDataSourceValidate
              (ApplicationEvents3_Event'Class (Event_Object.all),
               pdispparams.rgvarg (1),
               pdispparams.rgvarg (0));
         when ApplicationEvents3_MailMergeWizardSendToCustom=>
            MailMergeWizardSendToCustom
              (ApplicationEvents3_Event'Class (Event_Object.all),
               pdispparams.rgvarg (0));
         when ApplicationEvents3_MailMergeWizardStateChange=>
            MailMergeWizardStateChange
              (ApplicationEvents3_Event'Class (Event_Object.all),
               pdispparams.rgvarg (3),
               pdispparams.rgvarg (2),
               pdispparams.rgvarg (1),
               pdispparams.rgvarg (0));
         when ApplicationEvents3_WindowSize=>
            WindowSize
              (ApplicationEvents3_Event'Class (Event_Object.all),
               pdispparams.rgvarg (1),
               pdispparams.rgvarg (0));
         when others =>
            null;
      end case;
   end Invoke;

   function Create (From : in GNATCOM.Events.Event_Object.Event_Pointer)
     return GNATCOM.Create.COM_Interface.Pointer_To_COM_Interface_Type
   is
   begin
      return GNATCOM.Events.Event_Object.Create
        (Invoke'Access,
         IID_ApplicationEvents3,
         From);
   end Create;

   procedure Set_Events
     (This            : in out GNATCOM.Events.IConnectionPoint_Type;
      For_Object      : in     GNATCOM.Interface.Interface_Type'Class;
      Event_Interface :
        access GNATCOM.Create.COM_Interface.COM_Interface_Type;
      Free            : Boolean := True)
   is
   begin
      GNATCOM.Events.Set_Events
        (This,
         For_Object,
         IID_ApplicationEvents3,
         Event_Interface,
         Free);
   end Set_Events;

   procedure QueryInterface
     (This   : ApplicationEvents3_Event;
      riid   : GNATCOM.Types.VARIANT;
      ppvObj : GNATCOM.Types.VARIANT)
   is
   begin
      null;
   end QueryInterface;

   procedure AddRef
     (This : ApplicationEvents3_Event)
   is
   begin
      null;
   end AddRef;

   procedure Release
     (This : ApplicationEvents3_Event)
   is
   begin
      null;
   end Release;

   procedure GetTypeInfoCount
     (This    : ApplicationEvents3_Event;
      pctinfo : GNATCOM.Types.VARIANT)
   is
   begin
      null;
   end GetTypeInfoCount;

   procedure GetTypeInfo
     (This    : ApplicationEvents3_Event;
      itinfo  : GNATCOM.Types.VARIANT;
      lcid    : GNATCOM.Types.VARIANT;
      pptinfo : GNATCOM.Types.VARIANT)
   is
   begin
      null;
   end GetTypeInfo;

   procedure GetIDsOfNames
     (This      : ApplicationEvents3_Event;
      riid      : GNATCOM.Types.VARIANT;
      rgszNames : GNATCOM.Types.VARIANT;
      cNames    : GNATCOM.Types.VARIANT;
      lcid      : GNATCOM.Types.VARIANT;
      rgdispid  : GNATCOM.Types.VARIANT)
   is
   begin
      null;
   end GetIDsOfNames;

   procedure Invoke
     (This         : ApplicationEvents3_Event;
      dispidMember : GNATCOM.Types.VARIANT;
      riid         : GNATCOM.Types.VARIANT;
      lcid         : GNATCOM.Types.VARIANT;
      wFlags       : GNATCOM.Types.VARIANT;
      pdispparams  : GNATCOM.Types.VARIANT;
      pvarResult   : GNATCOM.Types.VARIANT;
      pexcepinfo   : GNATCOM.Types.VARIANT;
      puArgErr     : GNATCOM.Types.VARIANT)
   is
   begin
      null;
   end Invoke;

   procedure Startup
     (This : ApplicationEvents3_Event)
   is
   begin
      null;
   end Startup;

   procedure Quit
     (This : ApplicationEvents3_Event)
   is
   begin
      null;
   end Quit;

   procedure DocumentChange
     (This : ApplicationEvents3_Event)
   is
   begin
      null;
   end DocumentChange;

   procedure DocumentOpen
     (This : ApplicationEvents3_Event;
      Doc  : GNATCOM.Types.VARIANT)
   is
   begin
      null;
   end DocumentOpen;

   procedure DocumentBeforeClose
     (This   : ApplicationEvents3_Event;
      Doc    : GNATCOM.Types.VARIANT;
      Cancel : GNATCOM.Types.VARIANT)
   is
   begin
      null;
   end DocumentBeforeClose;

   procedure DocumentBeforePrint
     (This   : ApplicationEvents3_Event;
      Doc    : GNATCOM.Types.VARIANT;
      Cancel : GNATCOM.Types.VARIANT)
   is
   begin
      null;
   end DocumentBeforePrint;

   procedure DocumentBeforeSave
     (This     : ApplicationEvents3_Event;
      Doc      : GNATCOM.Types.VARIANT;
      SaveAsUI : GNATCOM.Types.VARIANT;
      Cancel   : GNATCOM.Types.VARIANT)
   is
   begin
      null;
   end DocumentBeforeSave;

   procedure NewDocument
     (This : ApplicationEvents3_Event;
      Doc  : GNATCOM.Types.VARIANT)
   is
   begin
      null;
   end NewDocument;

   procedure WindowActivate
     (This : ApplicationEvents3_Event;
      Doc  : GNATCOM.Types.VARIANT;
      Wn   : GNATCOM.Types.VARIANT)
   is
   begin
      null;
   end WindowActivate;

   procedure WindowDeactivate
     (This : ApplicationEvents3_Event;
      Doc  : GNATCOM.Types.VARIANT;
      Wn   : GNATCOM.Types.VARIANT)
   is
   begin
      null;
   end WindowDeactivate;

   procedure WindowSelectionChange
     (This : ApplicationEvents3_Event;
      Sel  : GNATCOM.Types.VARIANT)
   is
   begin
      null;
   end WindowSelectionChange;

   procedure WindowBeforeRightClick
     (This   : ApplicationEvents3_Event;
      Sel    : GNATCOM.Types.VARIANT;
      Cancel : GNATCOM.Types.VARIANT)
   is
   begin
      null;
   end WindowBeforeRightClick;

   procedure WindowBeforeDoubleClick
     (This   : ApplicationEvents3_Event;
      Sel    : GNATCOM.Types.VARIANT;
      Cancel : GNATCOM.Types.VARIANT)
   is
   begin
      null;
   end WindowBeforeDoubleClick;

   procedure EPostagePropertyDialog
     (This : ApplicationEvents3_Event;
      Doc  : GNATCOM.Types.VARIANT)
   is
   begin
      null;
   end EPostagePropertyDialog;

   procedure EPostageInsert
     (This : ApplicationEvents3_Event;
      Doc  : GNATCOM.Types.VARIANT)
   is
   begin
      null;
   end EPostageInsert;

   procedure MailMergeAfterMerge
     (This      : ApplicationEvents3_Event;
      Doc       : GNATCOM.Types.VARIANT;
      DocResult : GNATCOM.Types.VARIANT)
   is
   begin
      null;
   end MailMergeAfterMerge;

   procedure MailMergeAfterRecordMerge
     (This : ApplicationEvents3_Event;
      Doc  : GNATCOM.Types.VARIANT)
   is
   begin
      null;
   end MailMergeAfterRecordMerge;

   procedure MailMergeBeforeMerge
     (This        : ApplicationEvents3_Event;
      Doc         : GNATCOM.Types.VARIANT;
      StartRecord : GNATCOM.Types.VARIANT;
      EndRecord   : GNATCOM.Types.VARIANT;
      Cancel      : GNATCOM.Types.VARIANT)
   is
   begin
      null;
   end MailMergeBeforeMerge;

   procedure MailMergeBeforeRecordMerge
     (This   : ApplicationEvents3_Event;
      Doc    : GNATCOM.Types.VARIANT;
      Cancel : GNATCOM.Types.VARIANT)
   is
   begin
      null;
   end MailMergeBeforeRecordMerge;

   procedure MailMergeDataSourceLoad
     (This : ApplicationEvents3_Event;
      Doc  : GNATCOM.Types.VARIANT)
   is
   begin
      null;
   end MailMergeDataSourceLoad;

   procedure MailMergeDataSourceValidate
     (This    : ApplicationEvents3_Event;
      Doc     : GNATCOM.Types.VARIANT;
      Handled : GNATCOM.Types.VARIANT)
   is
   begin
      null;
   end MailMergeDataSourceValidate;

   procedure MailMergeWizardSendToCustom
     (This : ApplicationEvents3_Event;
      Doc  : GNATCOM.Types.VARIANT)
   is
   begin
      null;
   end MailMergeWizardSendToCustom;

   procedure MailMergeWizardStateChange
     (This      : ApplicationEvents3_Event;
      Doc       : GNATCOM.Types.VARIANT;
      FromState : GNATCOM.Types.VARIANT;
      ToState   : GNATCOM.Types.VARIANT;
      Handled   : GNATCOM.Types.VARIANT)
   is
   begin
      null;
   end MailMergeWizardStateChange;

   procedure WindowSize
     (This : ApplicationEvents3_Event;
      Doc  : GNATCOM.Types.VARIANT;
      Wn   : GNATCOM.Types.VARIANT)
   is
   begin
      null;
   end WindowSize;

end winword.ApplicationEvents3_Events;

