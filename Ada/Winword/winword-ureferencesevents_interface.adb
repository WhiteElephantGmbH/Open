with GNATCOM.Errors;

package body winword.uReferencesEvents_Interface is

   procedure Initialize (This : in out uReferencesEvents_Type) is
   begin
      Set_IID (This, IID_uReferencesEvents);
   end Initialize;

   function Pointer (This : uReferencesEvents_Type)
     return Pointer_To_uReferencesEvents
   is
   begin
      return To_Pointer_To_uReferencesEvents (Address (This));
   end Pointer;

   procedure Attach (This    : in out uReferencesEvents_Type;
                     Pointer : in     Pointer_To_uReferencesEvents)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

end winword.uReferencesEvents_Interface;

