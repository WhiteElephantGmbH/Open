with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.Fields_Interface is

   procedure Initialize (This : in out Fields_Type) is
   begin
      Set_IID (This, IID_Fields);
   end Initialize;

   function Pointer (This : Fields_Type)
     return Pointer_To_Fields
   is
   begin
      return To_Pointer_To_Fields (Address (This));
   end Pointer;

   procedure Attach (This    : in out Fields_Type;
                     Pointer : in     Pointer_To_Fields)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : Fields_Type)
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
     (This : Fields_Type)
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
     (This : Fields_Type)
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

   function Get_Count
     (This : Fields_Type)
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

   function Get_Locked
     (This : Fields_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Locked
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Locked;

   procedure Put_Locked
     (This : Fields_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Locked
         (Pointer (This),
          prop));

   end Put_Locked;

   function Getu_NewEnum
     (This : Fields_Type)
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

   function Item
     (This  : Fields_Type;
      Index : Interfaces.C.long)
     return Pointer_To_Field
   is
       RetVal : aliased Pointer_To_Field;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Item
         (Pointer (This),
          Index,
          RetVal'Unchecked_Access));

      return RetVal;
   end Item;

   procedure ToggleShowCodes
     (This : Fields_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ToggleShowCodes
         (Pointer (This)));

   end ToggleShowCodes;

   function Update
     (This : Fields_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Update
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Update;

   procedure Unlink
     (This : Fields_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Unlink
         (Pointer (This)));

   end Unlink;

   procedure UpdateSource
     (This : Fields_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.UpdateSource
         (Pointer (This)));

   end UpdateSource;

   function Add
     (This               : Fields_Type;
      uRange             : Pointer_To_uRange;
      uType              : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Text               : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PreserveFormatting : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Field
   is
       RetVal : aliased Pointer_To_Field;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Add
         (Pointer (This),
          uRange,
          uType,
          Text,
          PreserveFormatting,
          RetVal'Unchecked_Access));

      return RetVal;
   end Add;

end winword.Fields_Interface;

