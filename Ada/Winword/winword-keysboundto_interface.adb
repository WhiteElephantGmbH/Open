with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.KeysBoundTo_Interface is

   procedure Initialize (This : in out KeysBoundTo_Type) is
   begin
      Set_IID (This, IID_KeysBoundTo);
   end Initialize;

   function Pointer (This : KeysBoundTo_Type)
     return Pointer_To_KeysBoundTo
   is
   begin
      return To_Pointer_To_KeysBoundTo (Address (This));
   end Pointer;

   procedure Attach (This    : in out KeysBoundTo_Type;
                     Pointer : in     Pointer_To_KeysBoundTo)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : KeysBoundTo_Type)
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
     (This : KeysBoundTo_Type)
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
     (This : KeysBoundTo_Type)
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
     (This : KeysBoundTo_Type)
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
     (This : KeysBoundTo_Type)
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

   function Get_KeyCategory
     (This : KeysBoundTo_Type)
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

   function Get_Command
     (This : KeysBoundTo_Type)
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

   function Get_CommandParameter
     (This : KeysBoundTo_Type)
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
     (This : KeysBoundTo_Type)
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
     (This  : KeysBoundTo_Type;
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

   function Key
     (This     : KeysBoundTo_Type;
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

end winword.KeysBoundTo_Interface;

