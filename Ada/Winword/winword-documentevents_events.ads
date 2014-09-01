with GNATCOM.Events.Event_Object;
with GNATCOM.Create.COM_Interface;
with GNATCOM.Interface;

package winword.DocumentEvents_Events is

   type DocumentEvents_Event is
     new GNATCOM.Events.Event_Object.Event_Type with null record;

   function Create (From : in GNATCOM.Events.Event_Object.Event_Pointer)
     return GNATCOM.Create.COM_Interface.Pointer_To_COM_Interface_Type;

   procedure Set_Events
     (This            : in out GNATCOM.Events.IConnectionPoint_Type;
      For_Object      : in     GNATCOM.Interface.Interface_Type'Class;
      Event_Interface :
        access GNATCOM.Create.COM_Interface.COM_Interface_Type;
      Free            : Boolean := True);

   procedure uNew
     (This : DocumentEvents_Event);

   procedure Open
     (This : DocumentEvents_Event);

   procedure Close
     (This : DocumentEvents_Event);

end winword.DocumentEvents_Events;

