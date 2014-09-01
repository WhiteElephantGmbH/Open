with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.Browser_Interface is

   procedure Initialize (This : in out Browser_Type) is
   begin
      Set_IID (This, IID_Browser);
   end Initialize;

   function Pointer (This : Browser_Type)
     return Pointer_To_Browser
   is
   begin
      return To_Pointer_To_Browser (Address (This));
   end Pointer;

   procedure Attach (This    : in out Browser_Type;
                     Pointer : in     Pointer_To_Browser)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : Browser_Type)
     return Pointer_To_uApplication
   is
       RetVal : aliased Pointer_To_uApplication;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Application
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Application;

   function Get_Creator
     (This : Browser_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Creator
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Creator;

   function Get_Parent
     (This : Browser_Type)
     return GNATCOM.Types.Pointer_To_IDispatch
   is
       RetVal : aliased GNATCOM.Types.Pointer_To_IDispatch;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Parent
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Parent;

   function Get_Target
     (This : Browser_Type)
     return WdBrowseTarget
   is
       RetVal : aliased WdBrowseTarget;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Target
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Target;

   procedure Put_Target
     (This : Browser_Type;
      prop : WdBrowseTarget)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Target
         (Pointer (This),
          prop));

   end Put_Target;

   procedure Next
     (This : Browser_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Next
         (Pointer (This)));

   end Next;

   procedure Previous
     (This : Browser_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Previous
         (Pointer (This)));

   end Previous;

end winword.Browser_Interface;

