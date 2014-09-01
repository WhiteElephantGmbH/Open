with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.KeyBindings_Interface is

   procedure Initialize (This : in out KeyBindings_Type) is
   begin
      Set_IID (This, IID_KeyBindings);
   end Initialize;

   function Pointer (This : KeyBindings_Type)
     return Pointer_To_KeyBindings
   is
   begin
      return To_Pointer_To_KeyBindings (Address (This));
   end Pointer;

   procedure Attach (This    : in out KeyBindings_Type;
                     Pointer : in     Pointer_To_KeyBindings)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : KeyBindings_Type)
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
     (This : KeyBindings_Type)
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
     (This : KeyBindings_Type)
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

   function Getu_NewEnum
     (This : KeyBindings_Type)
     return GNATCOM.Types.Pointer_To_IUnknown
   is
       RetVal : aliased GNATCOM.Types.Pointer_To_IUnknown;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Getu_NewEnum
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Getu_NewEnum;

   function Get_Count
     (This : KeyBindings_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Count
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Count;

   function Get_Context
     (This : KeyBindings_Type)
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

   function Item
     (This  : KeyBindings_Type;
      Index : Interfaces.C.long)
     return Pointer_To_KeyBinding
   is
       RetVal : aliased Pointer_To_KeyBinding;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Item
         (Pointer (This),
          Index,
          RetVal'Unchecked_Access));

      return RetVal;
   end Item;

   function Add
     (This             : KeyBindings_Type;
      KeyCategory      : WdKeyCategory;
      Command          : GNATCOM.Types.BSTR;
      KeyCode          : Interfaces.C.long;
      KeyCode2         : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      CommandParameter : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Free             : Boolean := True)
     return Pointer_To_KeyBinding
   is
       RetVal : aliased Pointer_To_KeyBinding;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Add
         (Pointer (This),
          KeyCategory,
          Command,
          KeyCode,
          KeyCode2,
          CommandParameter,
          RetVal'Unchecked_Access));

      if Free then
               GNATCOM.Interface.Free (Command);
      
      end if;

      return RetVal;
   end Add;

   procedure ClearAll
     (This : KeyBindings_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ClearAll
         (Pointer (This)));

   end ClearAll;

   function Key
     (This     : KeyBindings_Type;
      KeyCode  : Interfaces.C.long;
      KeyCode2 : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_KeyBinding
   is
       RetVal : aliased Pointer_To_KeyBinding;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Key
         (Pointer (This),
          KeyCode,
          KeyCode2,
          RetVal'Unchecked_Access));

      return RetVal;
   end Key;

end winword.KeyBindings_Interface;

