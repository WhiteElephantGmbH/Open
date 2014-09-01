with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.FileConverters_Interface is

   procedure Initialize (This : in out FileConverters_Type) is
   begin
      Set_IID (This, IID_FileConverters);
   end Initialize;

   function Pointer (This : FileConverters_Type)
     return Pointer_To_FileConverters
   is
   begin
      return To_Pointer_To_FileConverters (Address (This));
   end Pointer;

   procedure Attach (This    : in out FileConverters_Type;
                     Pointer : in     Pointer_To_FileConverters)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : FileConverters_Type)
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
     (This : FileConverters_Type)
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
     (This : FileConverters_Type)
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
     (This : FileConverters_Type)
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

   function Getu_NewEnum
     (This : FileConverters_Type)
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

   function Get_ConvertMacWordChevrons
     (This : FileConverters_Type)
     return WdChevronConvertRule
   is
       RetVal : aliased WdChevronConvertRule;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ConvertMacWordChevrons
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ConvertMacWordChevrons;

   procedure Put_ConvertMacWordChevrons
     (This : FileConverters_Type;
      prop : WdChevronConvertRule)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ConvertMacWordChevrons
         (Pointer (This),
          prop));

   end Put_ConvertMacWordChevrons;

   function Item
     (This  : FileConverters_Type;
      Index : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_FileConverter
   is
       RetVal : aliased Pointer_To_FileConverter;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Item
         (Pointer (This),
          Index,
          RetVal'Unchecked_Access));

      return RetVal;
   end Item;

end winword.FileConverters_Interface;

