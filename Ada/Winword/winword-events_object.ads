with GNATCOM.Dispinterface;

package winword.Events_Object is

   type Events_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_ReferencesEvents
     (This      : Events_Type;
      VBProject : GNATCOM.Types.VARIANT;
      Free      : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Get_CommandBarEvents
     (This              : Events_Type;
      CommandBarControl : GNATCOM.Types.VARIANT;
      Free              : Boolean := True)
     return GNATCOM.Types.VARIANT;

end winword.Events_Object;

