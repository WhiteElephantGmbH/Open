with GNATCOM.Dispinterface;

package winword.ApplicationEvents2_Object is

   type ApplicationEvents2_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure QueryInterface
     (This   : ApplicationEvents2_Type;
      riid   : GNATCOM.Types.VARIANT;
      ppvObj : GNATCOM.Types.VARIANT;
      Free   : Boolean := True);

   function AddRef
     (This : ApplicationEvents2_Type)
     return GNATCOM.Types.VARIANT;

   function Release
     (This : ApplicationEvents2_Type)
     return GNATCOM.Types.VARIANT;

   procedure GetTypeInfoCount
     (This    : ApplicationEvents2_Type;
      pctinfo : GNATCOM.Types.VARIANT;
      Free    : Boolean := True);

   procedure GetTypeInfo
     (This    : ApplicationEvents2_Type;
      itinfo  : GNATCOM.Types.VARIANT;
      lcid    : GNATCOM.Types.VARIANT;
      pptinfo : GNATCOM.Types.VARIANT;
      Free    : Boolean := True);

   procedure GetIDsOfNames
     (This      : ApplicationEvents2_Type;
      riid      : GNATCOM.Types.VARIANT;
      rgszNames : GNATCOM.Types.VARIANT;
      cNames    : GNATCOM.Types.VARIANT;
      lcid      : GNATCOM.Types.VARIANT;
      rgdispid  : GNATCOM.Types.VARIANT;
      Free      : Boolean := True);

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
      Free         : Boolean := True);

   procedure Startup
     (This : ApplicationEvents2_Type);

   procedure Quit
     (This : ApplicationEvents2_Type);

   procedure DocumentChange
     (This : ApplicationEvents2_Type);

   procedure DocumentOpen
     (This : ApplicationEvents2_Type;
      Doc  : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure DocumentBeforeClose
     (This   : ApplicationEvents2_Type;
      Doc    : GNATCOM.Types.VARIANT;
      Cancel : GNATCOM.Types.VARIANT;
      Free   : Boolean := True);

   procedure DocumentBeforePrint
     (This   : ApplicationEvents2_Type;
      Doc    : GNATCOM.Types.VARIANT;
      Cancel : GNATCOM.Types.VARIANT;
      Free   : Boolean := True);

   procedure DocumentBeforeSave
     (This     : ApplicationEvents2_Type;
      Doc      : GNATCOM.Types.VARIANT;
      SaveAsUI : GNATCOM.Types.VARIANT;
      Cancel   : GNATCOM.Types.VARIANT;
      Free     : Boolean := True);

   procedure NewDocument
     (This : ApplicationEvents2_Type;
      Doc  : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure WindowActivate
     (This : ApplicationEvents2_Type;
      Doc  : GNATCOM.Types.VARIANT;
      Wn   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure WindowDeactivate
     (This : ApplicationEvents2_Type;
      Doc  : GNATCOM.Types.VARIANT;
      Wn   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure WindowSelectionChange
     (This : ApplicationEvents2_Type;
      Sel  : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure WindowBeforeRightClick
     (This   : ApplicationEvents2_Type;
      Sel    : GNATCOM.Types.VARIANT;
      Cancel : GNATCOM.Types.VARIANT;
      Free   : Boolean := True);

   procedure WindowBeforeDoubleClick
     (This   : ApplicationEvents2_Type;
      Sel    : GNATCOM.Types.VARIANT;
      Cancel : GNATCOM.Types.VARIANT;
      Free   : Boolean := True);

end winword.ApplicationEvents2_Object;

