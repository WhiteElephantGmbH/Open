with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.Dictionary_Interface is

   procedure Initialize (This : in out Dictionary_Type) is
   begin
      Set_IID (This, IID_Dictionary);
   end Initialize;

   function Pointer (This : Dictionary_Type)
     return Pointer_To_Dictionary
   is
   begin
      return To_Pointer_To_Dictionary (Address (This));
   end Pointer;

   procedure Attach (This    : in out Dictionary_Type;
                     Pointer : in     Pointer_To_Dictionary)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : Dictionary_Type)
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
     (This : Dictionary_Type)
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
     (This : Dictionary_Type)
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
     (This : Dictionary_Type)
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

   function Get_Path
     (This : Dictionary_Type)
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

   function Get_LanguageID
     (This : Dictionary_Type)
     return WdLanguageID
   is
       RetVal : aliased WdLanguageID;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_LanguageID
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_LanguageID;

   procedure Put_LanguageID
     (This : Dictionary_Type;
      prop : WdLanguageID)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_LanguageID
         (Pointer (This),
          prop));

   end Put_LanguageID;

   function Get_ReadOnly
     (This : Dictionary_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ReadOnly
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ReadOnly;

   function Get_Type
     (This : Dictionary_Type)
     return WdDictionaryType
   is
       RetVal : aliased WdDictionaryType;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Type
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Type;

   function Get_LanguageSpecific
     (This : Dictionary_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_LanguageSpecific
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_LanguageSpecific;

   procedure Put_LanguageSpecific
     (This : Dictionary_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_LanguageSpecific
         (Pointer (This),
          prop));

   end Put_LanguageSpecific;

   procedure Delete
     (This : Dictionary_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Delete
         (Pointer (This)));

   end Delete;

end winword.Dictionary_Interface;

