package body winword.ApplicationEvents2_Object is

   procedure QueryInterface
     (This   : ApplicationEvents2_Type;
      riid   : GNATCOM.Types.VARIANT;
      ppvObj : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
   is
   begin
      Invoke
        (This,
         ApplicationEvents2_QueryInterface,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => ppvObj,
          2 => riid),
         Free);
   end QueryInterface;

   function AddRef
     (This : ApplicationEvents2_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke (This, ApplicationEvents2_AddRef);
   end AddRef;

   function Release
     (This : ApplicationEvents2_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke (This, ApplicationEvents2_Release);
   end Release;

   procedure GetTypeInfoCount
     (This    : ApplicationEvents2_Type;
      pctinfo : GNATCOM.Types.VARIANT;
      Free    : Boolean := True)
   is
   begin
      Invoke
        (This,
         ApplicationEvents2_GetTypeInfoCount,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => pctinfo),
         Free);
   end GetTypeInfoCount;

   procedure GetTypeInfo
     (This    : ApplicationEvents2_Type;
      itinfo  : GNATCOM.Types.VARIANT;
      lcid    : GNATCOM.Types.VARIANT;
      pptinfo : GNATCOM.Types.VARIANT;
      Free    : Boolean := True)
   is
   begin
      Invoke
        (This,
         ApplicationEvents2_GetTypeInfo,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => pptinfo,
          2 => lcid,
          3 => itinfo),
         Free);
   end GetTypeInfo;

   procedure GetIDsOfNames
     (This      : ApplicationEvents2_Type;
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
         ApplicationEvents2_GetIDsOfNames,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => rgdispid,
          2 => lcid,
          3 => cNames,
          4 => rgszNames,
          5 => riid),
         Free);
   end GetIDsOfNames;

   procedure Invoke
     (This         : ApplicationEvents2_Type;
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
         ApplicationEvents2_Invoke,
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
     (This : ApplicationEvents2_Type)
   is
   begin
      Invoke (This, ApplicationEvents2_Startup);
   end Startup;

   procedure Quit
     (This : ApplicationEvents2_Type)
   is
   begin
      Invoke (This, ApplicationEvents2_Quit);
   end Quit;

   procedure DocumentChange
     (This : ApplicationEvents2_Type)
   is
   begin
      Invoke (This, ApplicationEvents2_DocumentChange);
   end DocumentChange;

   procedure DocumentOpen
     (This : ApplicationEvents2_Type;
      Doc  : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Invoke
        (This,
         ApplicationEvents2_DocumentOpen,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Doc),
         Free);
   end DocumentOpen;

   procedure DocumentBeforeClose
     (This   : ApplicationEvents2_Type;
      Doc    : GNATCOM.Types.VARIANT;
      Cancel : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
   is
   begin
      Invoke
        (This,
         ApplicationEvents2_DocumentBeforeClose,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Cancel,
          2 => Doc),
         Free);
   end DocumentBeforeClose;

   procedure DocumentBeforePrint
     (This   : ApplicationEvents2_Type;
      Doc    : GNATCOM.Types.VARIANT;
      Cancel : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
   is
   begin
      Invoke
        (This,
         ApplicationEvents2_DocumentBeforePrint,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Cancel,
          2 => Doc),
         Free);
   end DocumentBeforePrint;

   procedure DocumentBeforeSave
     (This     : ApplicationEvents2_Type;
      Doc      : GNATCOM.Types.VARIANT;
      SaveAsUI : GNATCOM.Types.VARIANT;
      Cancel   : GNATCOM.Types.VARIANT;
      Free     : Boolean := True)
   is
   begin
      Invoke
        (This,
         ApplicationEvents2_DocumentBeforeSave,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Cancel,
          2 => SaveAsUI,
          3 => Doc),
         Free);
   end DocumentBeforeSave;

   procedure NewDocument
     (This : ApplicationEvents2_Type;
      Doc  : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Invoke
        (This,
         ApplicationEvents2_NewDocument,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Doc),
         Free);
   end NewDocument;

   procedure WindowActivate
     (This : ApplicationEvents2_Type;
      Doc  : GNATCOM.Types.VARIANT;
      Wn   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Invoke
        (This,
         ApplicationEvents2_WindowActivate,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Wn,
          2 => Doc),
         Free);
   end WindowActivate;

   procedure WindowDeactivate
     (This : ApplicationEvents2_Type;
      Doc  : GNATCOM.Types.VARIANT;
      Wn   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Invoke
        (This,
         ApplicationEvents2_WindowDeactivate,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Wn,
          2 => Doc),
         Free);
   end WindowDeactivate;

   procedure WindowSelectionChange
     (This : ApplicationEvents2_Type;
      Sel  : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Invoke
        (This,
         ApplicationEvents2_WindowSelectionChange,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Sel),
         Free);
   end WindowSelectionChange;

   procedure WindowBeforeRightClick
     (This   : ApplicationEvents2_Type;
      Sel    : GNATCOM.Types.VARIANT;
      Cancel : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
   is
   begin
      Invoke
        (This,
         ApplicationEvents2_WindowBeforeRightClick,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Cancel,
          2 => Sel),
         Free);
   end WindowBeforeRightClick;

   procedure WindowBeforeDoubleClick
     (This   : ApplicationEvents2_Type;
      Sel    : GNATCOM.Types.VARIANT;
      Cancel : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
   is
   begin
      Invoke
        (This,
         ApplicationEvents2_WindowBeforeDoubleClick,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Cancel,
          2 => Sel),
         Free);
   end WindowBeforeDoubleClick;

end winword.ApplicationEvents2_Object;

