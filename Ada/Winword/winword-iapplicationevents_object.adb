package body winword.IApplicationEvents_Object is

   procedure Startup
     (This : IApplicationEvents_Type)
   is
   begin
      Invoke (This, IApplicationEvents_Startup);
   end Startup;

   procedure Quit
     (This : IApplicationEvents_Type)
   is
   begin
      Invoke (This, IApplicationEvents_Quit);
   end Quit;

   procedure DocumentChange
     (This : IApplicationEvents_Type)
   is
   begin
      Invoke (This, IApplicationEvents_DocumentChange);
   end DocumentChange;

end winword.IApplicationEvents_Object;

