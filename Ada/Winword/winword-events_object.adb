package body winword.Events_Object is

   function Get_ReferencesEvents
     (This      : Events_Type;
      VBProject : GNATCOM.Types.VARIANT;
      Free      : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get
        (This,
         Events_Get_ReferencesEvents,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => VBProject),
         Free);
   end Get_ReferencesEvents;

   function Get_CommandBarEvents
     (This              : Events_Type;
      CommandBarControl : GNATCOM.Types.VARIANT;
      Free              : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get
        (This,
         Events_Get_CommandBarEvents,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => CommandBarControl),
         Free);
   end Get_CommandBarEvents;

end winword.Events_Object;

