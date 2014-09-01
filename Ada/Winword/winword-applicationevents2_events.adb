package body winword.ApplicationEvents2_Events is

   procedure Invoke
     (dispidMember : in Interfaces.C.long;
      wFlags       : in Interfaces.C.unsigned_short;
      pdispparams  : in GNATCOM.Types.Pointer_To_DISPPARAMS;
      Event_Object : in GNATCOM.Events.Event_Object.Event_Pointer)
   is
      use type Interfaces.C.long;
   begin
      case dispidMember is
         when ApplicationEvents2_QueryInterface=>
            QueryInterface
              (ApplicationEvents2_Event'Class (Event_Object.all),
               pdispparams.rgvarg (1),
               pdispparams.rgvarg (0));
         when ApplicationEvents2_AddRef=>
            AddRef
              (ApplicationEvents2_Event'Class (Event_Object.all));
         when ApplicationEvents2_Release=>
            Release
              (ApplicationEvents2_Event'Class (Event_Object.all));
         when ApplicationEvents2_GetTypeInfoCount=>
            GetTypeInfoCount
              (ApplicationEvents2_Event'Class (Event_Object.all),
               pdispparams.rgvarg (0));
         when ApplicationEvents2_GetTypeInfo=>
            GetTypeInfo
              (ApplicationEvents2_Event'Class (Event_Object.all),
               pdispparams.rgvarg (2),
               pdispparams.rgvarg (1),
               pdispparams.rgvarg (0));
         when ApplicationEvents2_GetIDsOfNames=>
            GetIDsOfNames
              (ApplicationEvents2_Event'Class (Event_Object.all),
               pdispparams.rgvarg (4),
               pdispparams.rgvarg (3),
               pdispparams.rgvarg (2),
               pdispparams.rgvarg (1),
               pdispparams.rgvarg (0));
         when ApplicationEvents2_Invoke=>
            Invoke
              (ApplicationEvents2_Event'Class (Event_Object.all),
               pdispparams.rgvarg (7),
               pdispparams.rgvarg (6),
               pdispparams.rgvarg (5),
               pdispparams.rgvarg (4),
               pdispparams.rgvarg (3),
               pdispparams.rgvarg (2),
               pdispparams.rgvarg (1),
               pdispparams.rgvarg (0));
         when ApplicationEvents2_Startup=>
            Startup
              (ApplicationEvents2_Event'Class (Event_Object.all));
         when ApplicationEvents2_Quit=>
            Quit
              (ApplicationEvents2_Event'Class (Event_Object.all));
         when ApplicationEvents2_DocumentChange=>
            DocumentChange
              (ApplicationEvents2_Event'Class (Event_Object.all));
         when ApplicationEvents2_DocumentOpen=>
            DocumentOpen
              (ApplicationEvents2_Event'Class (Event_Object.all),
               pdispparams.rgvarg (0));
         when ApplicationEvents2_DocumentBeforeClose=>
            DocumentBeforeClose
              (ApplicationEvents2_Event'Class (Event_Object.all),
               pdispparams.rgvarg (1),
               pdispparams.rgvarg (0));
         when ApplicationEvents2_DocumentBeforePrint=>
            DocumentBeforePrint
              (ApplicationEvents2_Event'Class (Event_Object.all),
               pdispparams.rgvarg (1),
               pdispparams.rgvarg (0));
         when ApplicationEvents2_DocumentBeforeSave=>
            DocumentBeforeSave
              (ApplicationEvents2_Event'Class (Event_Object.all),
               pdispparams.rgvarg (2),
               pdispparams.rgvarg (1),
               pdispparams.rgvarg (0));
         when ApplicationEvents2_NewDocument=>
            NewDocument
              (ApplicationEvents2_Event'Class (Event_Object.all),
               pdispparams.rgvarg (0));
         when ApplicationEvents2_WindowActivate=>
            WindowActivate
              (ApplicationEvents2_Event'Class (Event_Object.all),
               pdispparams.rgvarg (1),
               pdispparams.rgvarg (0));
         when ApplicationEvents2_WindowDeactivate=>
            WindowDeactivate
              (ApplicationEvents2_Event'Class (Event_Object.all),
               pdispparams.rgvarg (1),
               pdispparams.rgvarg (0));
         when ApplicationEvents2_WindowSelectionChange=>
            WindowSelectionChange
              (ApplicationEvents2_Event'Class (Event_Object.all),
               pdispparams.rgvarg (0));
         when ApplicationEvents2_WindowBeforeRightClick=>
            WindowBeforeRightClick
              (ApplicationEvents2_Event'Class (Event_Object.all),
               pdispparams.rgvarg (1),
               pdispparams.rgvarg (0));
         when ApplicationEvents2_WindowBeforeDoubleClick=>
            WindowBeforeDoubleClick
              (ApplicationEvents2_Event'Class (Event_Object.all),
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
         IID_ApplicationEvents2,
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
         IID_ApplicationEvents2,
         Event_Interface,
         Free);
   end Set_Events;

   procedure QueryInterface
     (This   : ApplicationEvents2_Event;
      riid   : GNATCOM.Types.VARIANT;
      ppvObj : GNATCOM.Types.VARIANT)
   is
   begin
      null;
   end QueryInterface;

   procedure AddRef
     (This : ApplicationEvents2_Event)
   is
   begin
      null;
   end AddRef;

   procedure Release
     (This : ApplicationEvents2_Event)
   is
   begin
      null;
   end Release;

   procedure GetTypeInfoCount
     (This    : ApplicationEvents2_Event;
      pctinfo : GNATCOM.Types.VARIANT)
   is
   begin
      null;
   end GetTypeInfoCount;

   procedure GetTypeInfo
     (This    : ApplicationEvents2_Event;
      itinfo  : GNATCOM.Types.VARIANT;
      lcid    : GNATCOM.Types.VARIANT;
      pptinfo : GNATCOM.Types.VARIANT)
   is
   begin
      null;
   end GetTypeInfo;

   procedure GetIDsOfNames
     (This      : ApplicationEvents2_Event;
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
     (This         : ApplicationEvents2_Event;
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
     (This : ApplicationEvents2_Event)
   is
   begin
      null;
   end Startup;

   procedure Quit
     (This : ApplicationEvents2_Event)
   is
   begin
      null;
   end Quit;

   procedure DocumentChange
     (This : ApplicationEvents2_Event)
   is
   begin
      null;
   end DocumentChange;

   procedure DocumentOpen
     (This : ApplicationEvents2_Event;
      Doc  : GNATCOM.Types.VARIANT)
   is
   begin
      null;
   end DocumentOpen;

   procedure DocumentBeforeClose
     (This   : ApplicationEvents2_Event;
      Doc    : GNATCOM.Types.VARIANT;
      Cancel : GNATCOM.Types.VARIANT)
   is
   begin
      null;
   end DocumentBeforeClose;

   procedure DocumentBeforePrint
     (This   : ApplicationEvents2_Event;
      Doc    : GNATCOM.Types.VARIANT;
      Cancel : GNATCOM.Types.VARIANT)
   is
   begin
      null;
   end DocumentBeforePrint;

   procedure DocumentBeforeSave
     (This     : ApplicationEvents2_Event;
      Doc      : GNATCOM.Types.VARIANT;
      SaveAsUI : GNATCOM.Types.VARIANT;
      Cancel   : GNATCOM.Types.VARIANT)
   is
   begin
      null;
   end DocumentBeforeSave;

   procedure NewDocument
     (This : ApplicationEvents2_Event;
      Doc  : GNATCOM.Types.VARIANT)
   is
   begin
      null;
   end NewDocument;

   procedure WindowActivate
     (This : ApplicationEvents2_Event;
      Doc  : GNATCOM.Types.VARIANT;
      Wn   : GNATCOM.Types.VARIANT)
   is
   begin
      null;
   end WindowActivate;

   procedure WindowDeactivate
     (This : ApplicationEvents2_Event;
      Doc  : GNATCOM.Types.VARIANT;
      Wn   : GNATCOM.Types.VARIANT)
   is
   begin
      null;
   end WindowDeactivate;

   procedure WindowSelectionChange
     (This : ApplicationEvents2_Event;
      Sel  : GNATCOM.Types.VARIANT)
   is
   begin
      null;
   end WindowSelectionChange;

   procedure WindowBeforeRightClick
     (This   : ApplicationEvents2_Event;
      Sel    : GNATCOM.Types.VARIANT;
      Cancel : GNATCOM.Types.VARIANT)
   is
   begin
      null;
   end WindowBeforeRightClick;

   procedure WindowBeforeDoubleClick
     (This   : ApplicationEvents2_Event;
      Sel    : GNATCOM.Types.VARIANT;
      Cancel : GNATCOM.Types.VARIANT)
   is
   begin
      null;
   end WindowBeforeDoubleClick;

end winword.ApplicationEvents2_Events;

