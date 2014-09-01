package body winword.IApplicationEvents2_Object is

   procedure Startup
     (This : IApplicationEvents2_Type)
   is
   begin
      Invoke (This, IApplicationEvents2_Startup);
   end Startup;

   procedure Quit
     (This : IApplicationEvents2_Type)
   is
   begin
      Invoke (This, IApplicationEvents2_Quit);
   end Quit;

   procedure DocumentChange
     (This : IApplicationEvents2_Type)
   is
   begin
      Invoke (This, IApplicationEvents2_DocumentChange);
   end DocumentChange;

   procedure DocumentOpen
     (This : IApplicationEvents2_Type;
      Doc  : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Invoke
        (This,
         IApplicationEvents2_DocumentOpen,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Doc),
         Free);
   end DocumentOpen;

   procedure DocumentBeforeClose
     (This   : IApplicationEvents2_Type;
      Doc    : GNATCOM.Types.VARIANT;
      Cancel : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
   is
   begin
      Invoke
        (This,
         IApplicationEvents2_DocumentBeforeClose,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Cancel,
          2 => Doc),
         Free);
   end DocumentBeforeClose;

   procedure DocumentBeforePrint
     (This   : IApplicationEvents2_Type;
      Doc    : GNATCOM.Types.VARIANT;
      Cancel : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
   is
   begin
      Invoke
        (This,
         IApplicationEvents2_DocumentBeforePrint,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Cancel,
          2 => Doc),
         Free);
   end DocumentBeforePrint;

   procedure DocumentBeforeSave
     (This     : IApplicationEvents2_Type;
      Doc      : GNATCOM.Types.VARIANT;
      SaveAsUI : GNATCOM.Types.VARIANT;
      Cancel   : GNATCOM.Types.VARIANT;
      Free     : Boolean := True)
   is
   begin
      Invoke
        (This,
         IApplicationEvents2_DocumentBeforeSave,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Cancel,
          2 => SaveAsUI,
          3 => Doc),
         Free);
   end DocumentBeforeSave;

   procedure NewDocument
     (This : IApplicationEvents2_Type;
      Doc  : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Invoke
        (This,
         IApplicationEvents2_NewDocument,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Doc),
         Free);
   end NewDocument;

   procedure WindowActivate
     (This : IApplicationEvents2_Type;
      Doc  : GNATCOM.Types.VARIANT;
      Wn   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Invoke
        (This,
         IApplicationEvents2_WindowActivate,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Wn,
          2 => Doc),
         Free);
   end WindowActivate;

   procedure WindowDeactivate
     (This : IApplicationEvents2_Type;
      Doc  : GNATCOM.Types.VARIANT;
      Wn   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Invoke
        (This,
         IApplicationEvents2_WindowDeactivate,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Wn,
          2 => Doc),
         Free);
   end WindowDeactivate;

   procedure WindowSelectionChange
     (This : IApplicationEvents2_Type;
      Sel  : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Invoke
        (This,
         IApplicationEvents2_WindowSelectionChange,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Sel),
         Free);
   end WindowSelectionChange;

   procedure WindowBeforeRightClick
     (This   : IApplicationEvents2_Type;
      Sel    : GNATCOM.Types.VARIANT;
      Cancel : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
   is
   begin
      Invoke
        (This,
         IApplicationEvents2_WindowBeforeRightClick,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Cancel,
          2 => Sel),
         Free);
   end WindowBeforeRightClick;

   procedure WindowBeforeDoubleClick
     (This   : IApplicationEvents2_Type;
      Sel    : GNATCOM.Types.VARIANT;
      Cancel : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
   is
   begin
      Invoke
        (This,
         IApplicationEvents2_WindowBeforeDoubleClick,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Cancel,
          2 => Sel),
         Free);
   end WindowBeforeDoubleClick;

end winword.IApplicationEvents2_Object;

