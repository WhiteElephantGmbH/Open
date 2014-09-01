with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.FileDialogFilter_Interface is

   procedure Initialize (This : in out FileDialogFilter_Type) is
   begin
      Set_IID (This, IID_FileDialogFilter);
   end Initialize;

   function Pointer (This : FileDialogFilter_Type)
     return Pointer_To_FileDialogFilter
   is
   begin
      return To_Pointer_To_FileDialogFilter (Address (This));
   end Pointer;

   procedure Attach (This    : in out FileDialogFilter_Type;
                     Pointer : in     Pointer_To_FileDialogFilter)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This    : FileDialogFilter_Type)
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
     (This      : FileDialogFilter_Type)
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
     (This   : FileDialogFilter_Type)
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

   function Get_Extensions
     (This       : FileDialogFilter_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Extensions
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Extensions;

   function Get_Description
     (This        : FileDialogFilter_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Description
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Description;

end winword.FileDialogFilter_Interface;

