with GNATCOM.Events.Event_Object;
with GNATCOM.Create.COM_Interface;
with GNATCOM.Interface;

package winword.ApplicationEvents3_Events is

   type ApplicationEvents3_Event is
     new GNATCOM.Events.Event_Object.Event_Type with null record;

   function Create (From : in GNATCOM.Events.Event_Object.Event_Pointer)
     return GNATCOM.Create.COM_Interface.Pointer_To_COM_Interface_Type;

   procedure Set_Events
     (This            : in out GNATCOM.Events.IConnectionPoint_Type;
      For_Object      : in     GNATCOM.Interface.Interface_Type'Class;
      Event_Interface :
        access GNATCOM.Create.COM_Interface.COM_Interface_Type;
      Free            : Boolean := True);

   procedure QueryInterface
     (This   : ApplicationEvents3_Event;
      riid   : GNATCOM.Types.VARIANT;
      ppvObj : GNATCOM.Types.VARIANT);

   procedure AddRef
     (This : ApplicationEvents3_Event);

   procedure Release
     (This : ApplicationEvents3_Event);

   procedure GetTypeInfoCount
     (This    : ApplicationEvents3_Event;
      pctinfo : GNATCOM.Types.VARIANT);

   procedure GetTypeInfo
     (This    : ApplicationEvents3_Event;
      itinfo  : GNATCOM.Types.VARIANT;
      lcid    : GNATCOM.Types.VARIANT;
      pptinfo : GNATCOM.Types.VARIANT);

   procedure GetIDsOfNames
     (This      : ApplicationEvents3_Event;
      riid      : GNATCOM.Types.VARIANT;
      rgszNames : GNATCOM.Types.VARIANT;
      cNames    : GNATCOM.Types.VARIANT;
      lcid      : GNATCOM.Types.VARIANT;
      rgdispid  : GNATCOM.Types.VARIANT);

   procedure Invoke
     (This         : ApplicationEvents3_Event;
      dispidMember : GNATCOM.Types.VARIANT;
      riid         : GNATCOM.Types.VARIANT;
      lcid         : GNATCOM.Types.VARIANT;
      wFlags       : GNATCOM.Types.VARIANT;
      pdispparams  : GNATCOM.Types.VARIANT;
      pvarResult   : GNATCOM.Types.VARIANT;
      pexcepinfo   : GNATCOM.Types.VARIANT;
      puArgErr     : GNATCOM.Types.VARIANT);

   procedure Startup
     (This : ApplicationEvents3_Event);

   procedure Quit
     (This : ApplicationEvents3_Event);

   procedure DocumentChange
     (This : ApplicationEvents3_Event);

   procedure DocumentOpen
     (This : ApplicationEvents3_Event;
      Doc  : GNATCOM.Types.VARIANT);

   procedure DocumentBeforeClose
     (This   : ApplicationEvents3_Event;
      Doc    : GNATCOM.Types.VARIANT;
      Cancel : GNATCOM.Types.VARIANT);

   procedure DocumentBeforePrint
     (This   : ApplicationEvents3_Event;
      Doc    : GNATCOM.Types.VARIANT;
      Cancel : GNATCOM.Types.VARIANT);

   procedure DocumentBeforeSave
     (This     : ApplicationEvents3_Event;
      Doc      : GNATCOM.Types.VARIANT;
      SaveAsUI : GNATCOM.Types.VARIANT;
      Cancel   : GNATCOM.Types.VARIANT);

   procedure NewDocument
     (This : ApplicationEvents3_Event;
      Doc  : GNATCOM.Types.VARIANT);

   procedure WindowActivate
     (This : ApplicationEvents3_Event;
      Doc  : GNATCOM.Types.VARIANT;
      Wn   : GNATCOM.Types.VARIANT);

   procedure WindowDeactivate
     (This : ApplicationEvents3_Event;
      Doc  : GNATCOM.Types.VARIANT;
      Wn   : GNATCOM.Types.VARIANT);

   procedure WindowSelectionChange
     (This : ApplicationEvents3_Event;
      Sel  : GNATCOM.Types.VARIANT);

   procedure WindowBeforeRightClick
     (This   : ApplicationEvents3_Event;
      Sel    : GNATCOM.Types.VARIANT;
      Cancel : GNATCOM.Types.VARIANT);

   procedure WindowBeforeDoubleClick
     (This   : ApplicationEvents3_Event;
      Sel    : GNATCOM.Types.VARIANT;
      Cancel : GNATCOM.Types.VARIANT);

   procedure EPostagePropertyDialog
     (This : ApplicationEvents3_Event;
      Doc  : GNATCOM.Types.VARIANT);

   procedure EPostageInsert
     (This : ApplicationEvents3_Event;
      Doc  : GNATCOM.Types.VARIANT);

   procedure MailMergeAfterMerge
     (This      : ApplicationEvents3_Event;
      Doc       : GNATCOM.Types.VARIANT;
      DocResult : GNATCOM.Types.VARIANT);

   procedure MailMergeAfterRecordMerge
     (This : ApplicationEvents3_Event;
      Doc  : GNATCOM.Types.VARIANT);

   procedure MailMergeBeforeMerge
     (This        : ApplicationEvents3_Event;
      Doc         : GNATCOM.Types.VARIANT;
      StartRecord : GNATCOM.Types.VARIANT;
      EndRecord   : GNATCOM.Types.VARIANT;
      Cancel      : GNATCOM.Types.VARIANT);

   procedure MailMergeBeforeRecordMerge
     (This   : ApplicationEvents3_Event;
      Doc    : GNATCOM.Types.VARIANT;
      Cancel : GNATCOM.Types.VARIANT);

   procedure MailMergeDataSourceLoad
     (This : ApplicationEvents3_Event;
      Doc  : GNATCOM.Types.VARIANT);

   procedure MailMergeDataSourceValidate
     (This    : ApplicationEvents3_Event;
      Doc     : GNATCOM.Types.VARIANT;
      Handled : GNATCOM.Types.VARIANT);

   procedure MailMergeWizardSendToCustom
     (This : ApplicationEvents3_Event;
      Doc  : GNATCOM.Types.VARIANT);

   procedure MailMergeWizardStateChange
     (This      : ApplicationEvents3_Event;
      Doc       : GNATCOM.Types.VARIANT;
      FromState : GNATCOM.Types.VARIANT;
      ToState   : GNATCOM.Types.VARIANT;
      Handled   : GNATCOM.Types.VARIANT);

   procedure WindowSize
     (This : ApplicationEvents3_Event;
      Doc  : GNATCOM.Types.VARIANT;
      Wn   : GNATCOM.Types.VARIANT);

end winword.ApplicationEvents3_Events;

