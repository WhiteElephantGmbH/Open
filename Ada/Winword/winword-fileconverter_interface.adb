with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.FileConverter_Interface is

   procedure Initialize (This : in out FileConverter_Type) is
   begin
      Set_IID (This, IID_FileConverter);
   end Initialize;

   function Pointer (This : FileConverter_Type)
     return Pointer_To_FileConverter
   is
   begin
      return To_Pointer_To_FileConverter (Address (This));
   end Pointer;

   procedure Attach (This    : in out FileConverter_Type;
                     Pointer : in     Pointer_To_FileConverter)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : FileConverter_Type)
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
     (This : FileConverter_Type)
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
     (This : FileConverter_Type)
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

   function Get_FormatName
     (This : FileConverter_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_FormatName
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_FormatName;

   function Get_ClassName
     (This : FileConverter_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ClassName
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ClassName;

   function Get_SaveFormat
     (This : FileConverter_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SaveFormat
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_SaveFormat;

   function Get_OpenFormat
     (This : FileConverter_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_OpenFormat
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_OpenFormat;

   function Get_CanSave
     (This : FileConverter_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_CanSave
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_CanSave;

   function Get_CanOpen
     (This : FileConverter_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_CanOpen
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_CanOpen;

   function Get_Path
     (This : FileConverter_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Path
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Path;

   function Get_Name
     (This : FileConverter_Type)
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

   function Get_Extensions
     (This : FileConverter_Type)
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

end winword.FileConverter_Interface;

