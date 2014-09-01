with GNATCOM.Dispinterface;

package winword.IApplicationEvents2_Object is

   type IApplicationEvents2_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Startup
     (This : IApplicationEvents2_Type);

   procedure Quit
     (This : IApplicationEvents2_Type);

   procedure DocumentChange
     (This : IApplicationEvents2_Type);

   procedure DocumentOpen
     (This : IApplicationEvents2_Type;
      Doc  : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure DocumentBeforeClose
     (This   : IApplicationEvents2_Type;
      Doc    : GNATCOM.Types.VARIANT;
      Cancel : GNATCOM.Types.VARIANT;
      Free   : Boolean := True);

   procedure DocumentBeforePrint
     (This   : IApplicationEvents2_Type;
      Doc    : GNATCOM.Types.VARIANT;
      Cancel : GNATCOM.Types.VARIANT;
      Free   : Boolean := True);

   procedure DocumentBeforeSave
     (This     : IApplicationEvents2_Type;
      Doc      : GNATCOM.Types.VARIANT;
      SaveAsUI : GNATCOM.Types.VARIANT;
      Cancel   : GNATCOM.Types.VARIANT;
      Free     : Boolean := True);

   procedure NewDocument
     (This : IApplicationEvents2_Type;
      Doc  : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure WindowActivate
     (This : IApplicationEvents2_Type;
      Doc  : GNATCOM.Types.VARIANT;
      Wn   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure WindowDeactivate
     (This : IApplicationEvents2_Type;
      Doc  : GNATCOM.Types.VARIANT;
      Wn   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure WindowSelectionChange
     (This : IApplicationEvents2_Type;
      Sel  : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure WindowBeforeRightClick
     (This   : IApplicationEvents2_Type;
      Sel    : GNATCOM.Types.VARIANT;
      Cancel : GNATCOM.Types.VARIANT;
      Free   : Boolean := True);

   procedure WindowBeforeDoubleClick
     (This   : IApplicationEvents2_Type;
      Sel    : GNATCOM.Types.VARIANT;
      Cancel : GNATCOM.Types.VARIANT;
      Free   : Boolean := True);

end winword.IApplicationEvents2_Object;

