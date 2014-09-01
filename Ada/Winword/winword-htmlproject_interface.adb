with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.HTMLProject_Interface is

   procedure Initialize (This : in out HTMLProject_Type) is
   begin
      Set_IID (This, IID_HTMLProject);
   end Initialize;

   function Pointer (This : HTMLProject_Type)
     return Pointer_To_HTMLProject
   is
   begin
      return To_Pointer_To_HTMLProject (Address (This));
   end Pointer;

   procedure Attach (This    : in out HTMLProject_Type;
                     Pointer : in     Pointer_To_HTMLProject)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This    : HTMLProject_Type)
     return GNATCOM.Types.Pointer_To_IDispatch
   is
       RetVal : aliased GNATCOM.Types.Pointer_To_IDispatch;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Application
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Application;

   function Get_Creator
     (This      : HTMLProject_Type)
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

   function Get_State
     (This  : HTMLProject_Type)
     return MsoHTMLProjectState
   is
       RetVal : aliased MsoHTMLProjectState;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_State
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_State;

   procedure RefreshProject
     (This    : HTMLProject_Type;
      Refresh : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.RefreshProject
         (Pointer (This),
          Refresh));

   end RefreshProject;

   procedure RefreshDocument
     (This    : HTMLProject_Type;
      Refresh : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.RefreshDocument
         (Pointer (This),
          Refresh));

   end RefreshDocument;

   function Get_HTMLProjectItems
     (This             : HTMLProject_Type)
     return Pointer_To_HTMLProjectItems
   is
       RetVal : aliased Pointer_To_HTMLProjectItems;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_HTMLProjectItems
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_HTMLProjectItems;

   function Get_Parent
     (This    : HTMLProject_Type)
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

   procedure Open
     (This     : HTMLProject_Type;
      OpenKind : MsoHTMLProjectOpen)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Open
         (Pointer (This),
          OpenKind));

   end Open;

end winword.HTMLProject_Interface;

