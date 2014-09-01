with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.uTask_Interface is

   procedure Initialize (This : in out uTask_Type) is
   begin
      Set_IID (This, IID_uTask);
   end Initialize;

   function Pointer (This : uTask_Type)
     return Pointer_To_uTask
   is
   begin
      return To_Pointer_To_uTask (Address (This));
   end Pointer;

   procedure Attach (This    : in out uTask_Type;
                     Pointer : in     Pointer_To_uTask)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : uTask_Type)
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
     (This : uTask_Type)
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
     (This : uTask_Type)
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

   function Get_Name
     (This : uTask_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Name
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Name;

   function Get_Left
     (This : uTask_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Left
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Left;

   procedure Put_Left
     (This : uTask_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Left
         (Pointer (This),
          prop));

   end Put_Left;

   function Get_Top
     (This : uTask_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Top
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Top;

   procedure Put_Top
     (This : uTask_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Top
         (Pointer (This),
          prop));

   end Put_Top;

   function Get_Width
     (This : uTask_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Width
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Width;

   procedure Put_Width
     (This : uTask_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Width
         (Pointer (This),
          prop));

   end Put_Width;

   function Get_Height
     (This : uTask_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Height
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Height;

   procedure Put_Height
     (This : uTask_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Height
         (Pointer (This),
          prop));

   end Put_Height;

   function Get_WindowState
     (This : uTask_Type)
     return WdWindowState
   is
       RetVal : aliased WdWindowState;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_WindowState
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_WindowState;

   procedure Put_WindowState
     (This : uTask_Type;
      prop : WdWindowState)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_WindowState
         (Pointer (This),
          prop));

   end Put_WindowState;

   function Get_Visible
     (This : uTask_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Visible
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Visible;

   procedure Put_Visible
     (This : uTask_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Visible
         (Pointer (This),
          prop));

   end Put_Visible;

   procedure Activate
     (This : uTask_Type;
      Wait : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Activate
         (Pointer (This),
          Wait));

   end Activate;

   procedure Close
     (This : uTask_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Close
         (Pointer (This)));

   end Close;

   procedure Move
     (This : uTask_Type;
      Left : Interfaces.C.long;
      Top  : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Move
         (Pointer (This),
          Left,
          Top));

   end Move;

   procedure Resize
     (This   : uTask_Type;
      Width  : Interfaces.C.long;
      Height : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Resize
         (Pointer (This),
          Width,
          Height));

   end Resize;

   procedure SendWindowMessage
     (This    : uTask_Type;
      Message : Interfaces.C.long;
      wParam  : Interfaces.C.long;
      lParam  : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.SendWindowMessage
         (Pointer (This),
          Message,
          wParam,
          lParam));

   end SendWindowMessage;

end winword.uTask_Interface;

