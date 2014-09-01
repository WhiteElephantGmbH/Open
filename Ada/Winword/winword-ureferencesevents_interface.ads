with GNATCOM.Interface;

package winword.uReferencesEvents_Interface is

   type uReferencesEvents_Type is
     new GNATCOM.Interface.Interface_Type with null record;

   procedure Initialize (This : in out uReferencesEvents_Type);

   function Pointer (This : uReferencesEvents_Type)
     return Pointer_To_uReferencesEvents;

   procedure Attach (This    : in out uReferencesEvents_Type;
                     Pointer : in     Pointer_To_uReferencesEvents);

end winword.uReferencesEvents_Interface;

