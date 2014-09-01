with GNATCOM.Dispinterface;

package winword.Events_Interface is

   type Events_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Events_Type);

   function Pointer (This : Events_Type)
     return Pointer_To_Events;

   procedure Attach (This    : in out Events_Type;
                     Pointer : in     Pointer_To_Events);

   function Get_ReferencesEvents
     (This      : Events_Type;
      VBProject : Pointer_To_uVBProject)
     return Pointer_To_uReferencesEvents;

   function Get_CommandBarEvents
     (This              : Events_Type;
      CommandBarControl : GNATCOM.Types.Pointer_To_IDispatch)
     return Pointer_To_uCommandBarControlEvents;

end winword.Events_Interface;

