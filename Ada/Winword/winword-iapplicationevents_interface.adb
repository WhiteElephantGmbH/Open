with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.IApplicationEvents_Interface is

   procedure Initialize (This : in out IApplicationEvents_Type) is
   begin
      Set_IID (This, IID_IApplicationEvents);
   end Initialize;

   function Pointer (This : IApplicationEvents_Type)
     return Pointer_To_IApplicationEvents
   is
   begin
      return To_Pointer_To_IApplicationEvents (Address (This));
   end Pointer;

   procedure Attach (This    : in out IApplicationEvents_Type;
                     Pointer : in     Pointer_To_IApplicationEvents)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   procedure Startup
     (This : IApplicationEvents_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Startup
         (Pointer (This)));

   end Startup;

   procedure Quit
     (This : IApplicationEvents_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Quit
         (Pointer (This)));

   end Quit;

   procedure DocumentChange
     (This : IApplicationEvents_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.DocumentChange
         (Pointer (This)));

   end DocumentChange;

end winword.IApplicationEvents_Interface;

