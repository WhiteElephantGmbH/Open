with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.Dialog_Interface is

   procedure Initialize (This : in out Dialog_Type) is
   begin
      Set_IID (This, IID_Dialog);
   end Initialize;

   function Pointer (This : Dialog_Type)
     return Pointer_To_Dialog
   is
   begin
      return To_Pointer_To_Dialog (Address (This));
   end Pointer;

   procedure Attach (This    : in out Dialog_Type;
                     Pointer : in     Pointer_To_Dialog)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : Dialog_Type)
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
     (This : Dialog_Type)
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
     (This : Dialog_Type)
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

   function Get_DefaultTab
     (This : Dialog_Type)
     return WdWordDialogTab
   is
       RetVal : aliased WdWordDialogTab;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DefaultTab
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DefaultTab;

   procedure Put_DefaultTab
     (This : Dialog_Type;
      prop : WdWordDialogTab)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DefaultTab
         (Pointer (This),
          prop));

   end Put_DefaultTab;

   function Get_Type
     (This : Dialog_Type)
     return WdWordDialog
   is
       RetVal : aliased WdWordDialog;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Type
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Type;

   function Show
     (This    : Dialog_Type;
      TimeOut : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Show
         (Pointer (This),
          TimeOut,
          RetVal'Unchecked_Access));

      return RetVal;
   end Show;

   function Display
     (This    : Dialog_Type;
      TimeOut : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Display
         (Pointer (This),
          TimeOut,
          RetVal'Unchecked_Access));

      return RetVal;
   end Display;

   procedure Execute
     (This : Dialog_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Execute
         (Pointer (This)));

   end Execute;

   procedure Update
     (This : Dialog_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Update
         (Pointer (This)));

   end Update;

   function Get_CommandName
     (This : Dialog_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_CommandName
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_CommandName;

end winword.Dialog_Interface;

