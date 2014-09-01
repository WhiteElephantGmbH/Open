with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.DropDown_Interface is

   procedure Initialize (This : in out DropDown_Type) is
   begin
      Set_IID (This, IID_DropDown);
   end Initialize;

   function Pointer (This : DropDown_Type)
     return Pointer_To_DropDown
   is
   begin
      return To_Pointer_To_DropDown (Address (This));
   end Pointer;

   procedure Attach (This    : in out DropDown_Type;
                     Pointer : in     Pointer_To_DropDown)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : DropDown_Type)
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
     (This : DropDown_Type)
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
     (This : DropDown_Type)
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
     (This : DropDown_Type)
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

   function Get_Default
     (This : DropDown_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Default
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Default;

   procedure Put_Default
     (This : DropDown_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Default
         (Pointer (This),
          prop));

   end Put_Default;

   function Get_Value
     (This : DropDown_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Value
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Value;

   procedure Put_Value
     (This : DropDown_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Value
         (Pointer (This),
          prop));

   end Put_Value;

   function Get_ListEntries
     (This : DropDown_Type)
     return Pointer_To_ListEntries
   is
       RetVal : aliased Pointer_To_ListEntries;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ListEntries
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ListEntries;

end winword.DropDown_Interface;

