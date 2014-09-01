with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.KeyBinding_Interface is

   procedure Initialize (This : in out KeyBinding_Type) is
   begin
      Set_IID (This, IID_KeyBinding);
   end Initialize;

   function Pointer (This : KeyBinding_Type)
     return Pointer_To_KeyBinding
   is
   begin
      return To_Pointer_To_KeyBinding (Address (This));
   end Pointer;

   procedure Attach (This    : in out KeyBinding_Type;
                     Pointer : in     Pointer_To_KeyBinding)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : KeyBinding_Type)
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
     (This : KeyBinding_Type)
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
     (This : KeyBinding_Type)
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

   function Get_Command
     (This : KeyBinding_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Command
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Command;

   function Get_KeyString
     (This : KeyBinding_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_KeyString
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_KeyString;

   function Get_Protected
     (This : KeyBinding_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Protected
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Protected;

   function Get_KeyCategory
     (This : KeyBinding_Type)
     return WdKeyCategory
   is
       RetVal : aliased WdKeyCategory;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_KeyCategory
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_KeyCategory;

   function Get_KeyCode
     (This : KeyBinding_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_KeyCode
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_KeyCode;

   function Get_KeyCode2
     (This : KeyBinding_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_KeyCode2
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_KeyCode2;

   function Get_CommandParameter
     (This : KeyBinding_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_CommandParameter
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_CommandParameter;

   function Get_Context
     (This : KeyBinding_Type)
     return GNATCOM.Types.Pointer_To_IDispatch
   is
       RetVal : aliased GNATCOM.Types.Pointer_To_IDispatch;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Context
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Context;

   procedure Clear
     (This : KeyBinding_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Clear
         (Pointer (This)));

   end Clear;

   procedure Disable
     (This : KeyBinding_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Disable
         (Pointer (This)));

   end Disable;

   procedure Execute
     (This : KeyBinding_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Execute
         (Pointer (This)));

   end Execute;

   procedure Rebind
     (This             : KeyBinding_Type;
      KeyCategory      : WdKeyCategory;
      Command          : GNATCOM.Types.BSTR;
      CommandParameter : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Free             : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Rebind
         (Pointer (This),
          KeyCategory,
          Command,
          CommandParameter));

      if Free then
               GNATCOM.Interface.Free (Command);
      
      end if;

   end Rebind;

end winword.KeyBinding_Interface;

