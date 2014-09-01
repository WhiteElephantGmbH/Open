with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.CheckBox_Interface is

   procedure Initialize (This : in out CheckBox_Type) is
   begin
      Set_IID (This, IID_CheckBox);
   end Initialize;

   function Pointer (This : CheckBox_Type)
     return Pointer_To_CheckBox
   is
   begin
      return To_Pointer_To_CheckBox (Address (This));
   end Pointer;

   procedure Attach (This    : in out CheckBox_Type;
                     Pointer : in     Pointer_To_CheckBox)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : CheckBox_Type)
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
     (This : CheckBox_Type)
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
     (This : CheckBox_Type)
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

   function Get_Valid
     (This : CheckBox_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Valid
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Valid;

   function Get_AutoSize
     (This : CheckBox_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoSize
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AutoSize;

   procedure Put_AutoSize
     (This : CheckBox_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AutoSize
         (Pointer (This),
          prop));

   end Put_AutoSize;

   function Get_Size
     (This : CheckBox_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Size
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Size;

   procedure Put_Size
     (This : CheckBox_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Size
         (Pointer (This),
          prop));

   end Put_Size;

   function Get_Default
     (This : CheckBox_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Default
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Default;

   procedure Put_Default
     (This : CheckBox_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Default
         (Pointer (This),
          prop));

   end Put_Default;

   function Get_Value
     (This : CheckBox_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Value
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Value;

   procedure Put_Value
     (This : CheckBox_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Value
         (Pointer (This),
          prop));

   end Put_Value;

end winword.CheckBox_Interface;

