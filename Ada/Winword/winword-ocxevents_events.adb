package body winword.OCXEvents_Events is

   procedure Invoke
     (dispidMember : in Interfaces.C.long;
      wFlags       : in Interfaces.C.unsigned_short;
      pdispparams  : in GNATCOM.Types.Pointer_To_DISPPARAMS;
      Event_Object : in GNATCOM.Events.Event_Object.Event_Pointer)
   is
      use type Interfaces.C.long;
   begin
      case dispidMember is
         when OCXEvents_GotFocus=>
            GotFocus
              (OCXEvents_Event'Class (Event_Object.all));
         when OCXEvents_LostFocus=>
            LostFocus
              (OCXEvents_Event'Class (Event_Object.all));
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
         IID_OCXEvents,
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
         IID_OCXEvents,
         Event_Interface,
         Free);
   end Set_Events;

   procedure GotFocus
     (This : OCXEvents_Event)
   is
   begin
      null;
   end GotFocus;

   procedure LostFocus
     (This : OCXEvents_Event)
   is
   begin
      null;
   end LostFocus;

end winword.OCXEvents_Events;

