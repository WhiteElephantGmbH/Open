with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.Events_Interface is

   procedure Initialize (This : in out Events_Type) is
   begin
      Set_IID (This, IID_Events);
   end Initialize;

   function Pointer (This : Events_Type)
     return Pointer_To_Events
   is
   begin
      return To_Pointer_To_Events (Address (This));
   end Pointer;

   procedure Attach (This    : in out Events_Type;
                     Pointer : in     Pointer_To_Events)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_ReferencesEvents
     (This      : Events_Type;
      VBProject : Pointer_To_uVBProject)
     return Pointer_To_uReferencesEvents
   is
       RetVal : aliased Pointer_To_uReferencesEvents;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ReferencesEvents
         (Pointer (This),
          VBProject,
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ReferencesEvents;

   function Get_CommandBarEvents
     (This              : Events_Type;
      CommandBarControl : GNATCOM.Types.Pointer_To_IDispatch)
     return Pointer_To_uCommandBarControlEvents
   is
       RetVal : aliased Pointer_To_uCommandBarControlEvents;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_CommandBarEvents
         (Pointer (This),
          CommandBarControl,
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_CommandBarEvents;

end winword.Events_Interface;

