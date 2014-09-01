with GNATCOM.Dispinterface;

package winword.IApplicationEvents_Interface is

   type IApplicationEvents_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out IApplicationEvents_Type);

   function Pointer (This : IApplicationEvents_Type)
     return Pointer_To_IApplicationEvents;

   procedure Attach (This    : in out IApplicationEvents_Type;
                     Pointer : in     Pointer_To_IApplicationEvents);

   procedure Startup
     (This : IApplicationEvents_Type);

   procedure Quit
     (This : IApplicationEvents_Type);

   procedure DocumentChange
     (This : IApplicationEvents_Type);

end winword.IApplicationEvents_Interface;

