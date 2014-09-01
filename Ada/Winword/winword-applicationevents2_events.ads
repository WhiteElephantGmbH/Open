with GNATCOM.Events.Event_Object;
with GNATCOM.Create.COM_Interface;
with GNATCOM.Interface;

package winword.ApplicationEvents2_Events is

   type ApplicationEvents2_Event is
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
     (This   : ApplicationEvents2_Event;
      riid   : GNATCOM.Types.VARIANT;
      ppvObj : GNATCOM.Types.VARIANT);

   procedure AddRef
     (This : ApplicationEvents2_Event);

   procedure Release
     (This : ApplicationEvents2_Event);

   procedure GetTypeInfoCount
     (This    : ApplicationEvents2_Event;
      pctinfo : GNATCOM.Types.VARIANT);

   procedure GetTypeInfo
     (This    : ApplicationEvents2_Event;
      itinfo  : GNATCOM.Types.VARIANT;
      lcid    : GNATCOM.Types.VARIANT;
      pptinfo : GNATCOM.Types.VARIANT);

   procedure GetIDsOfNames
     (This      : ApplicationEvents2_Event;
      riid      : GNATCOM.Types.VARIANT;
      rgszNames : GNATCOM.Types.VARIANT;
      cNames    : GNATCOM.Types.VARIANT;
      lcid      : GNATCOM.Types.VARIANT;
      rgdispid  : GNATCOM.Types.VARIANT);

   procedure Invoke
     (This         : ApplicationEvents2_Event;
      dispidMember : GNATCOM.Types.VARIANT;
      riid         : GNATCOM.Types.VARIANT;
      lcid         : GNATCOM.Types.VARIANT;
      wFlags       : GNATCOM.Types.VARIANT;
      pdispparams  : GNATCOM.Types.VARIANT;
      pvarResult   : GNATCOM.Types.VARIANT;
      pexcepinfo   : GNATCOM.Types.VARIANT;
      puArgErr     : GNATCOM.Types.VARIANT);

   procedure Startup
     (This : ApplicationEvents2_Event);

   procedure Quit
     (This : ApplicationEvents2_Event);

   procedure DocumentChange
     (This : ApplicationEvents2_Event);

   procedure DocumentOpen
     (This : ApplicationEvents2_Event;
      Doc  : GNATCOM.Types.VARIANT);

   procedure DocumentBeforeClose
     (This   : ApplicationEvents2_Event;
      Doc    : GNATCOM.Types.VARIANT;
      Cancel : GNATCOM.Types.VARIANT);

   procedure DocumentBeforePrint
     (This   : ApplicationEvents2_Event;
      Doc    : GNATCOM.Types.VARIANT;
      Cancel : GNATCOM.Types.VARIANT);

   procedure DocumentBeforeSave
     (This     : ApplicationEvents2_Event;
      Doc      : GNATCOM.Types.VARIANT;
      SaveAsUI : GNATCOM.Types.VARIANT;
      Cancel   : GNATCOM.Types.VARIANT);

   procedure NewDocument
     (This : ApplicationEvents2_Event;
      Doc  : GNATCOM.Types.VARIANT);

   procedure WindowActivate
     (This : ApplicationEvents2_Event;
      Doc  : GNATCOM.Types.VARIANT;
      Wn   : GNATCOM.Types.VARIANT);

   procedure WindowDeactivate
     (This : ApplicationEvents2_Event;
      Doc  : GNATCOM.Types.VARIANT;
      Wn   : GNATCOM.Types.VARIANT);

   procedure WindowSelectionChange
     (This : ApplicationEvents2_Event;
      Sel  : GNATCOM.Types.VARIANT);

   procedure WindowBeforeRightClick
     (This   : ApplicationEvents2_Event;
      Sel    : GNATCOM.Types.VARIANT;
      Cancel : GNATCOM.Types.VARIANT);

   procedure WindowBeforeDoubleClick
     (This   : ApplicationEvents2_Event;
      Sel    : GNATCOM.Types.VARIANT;
      Cancel : GNATCOM.Types.VARIANT);

end winword.ApplicationEvents2_Events;

