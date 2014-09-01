with GNATCOM.Dispinterface;

package winword.IApplicationEvents_Object is

   type IApplicationEvents_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Startup
     (This : IApplicationEvents_Type);

   procedure Quit
     (This : IApplicationEvents_Type);

   procedure DocumentChange
     (This : IApplicationEvents_Type);

end winword.IApplicationEvents_Object;

