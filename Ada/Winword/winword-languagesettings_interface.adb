with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.LanguageSettings_Interface is

   procedure Initialize (This : in out LanguageSettings_Type) is
   begin
      Set_IID (This, IID_LanguageSettings);
   end Initialize;

   function Pointer (This : LanguageSettings_Type)
     return Pointer_To_LanguageSettings
   is
   begin
      return To_Pointer_To_LanguageSettings (Address (This));
   end Pointer;

   procedure Attach (This    : in out LanguageSettings_Type;
                     Pointer : in     Pointer_To_LanguageSettings)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This    : LanguageSettings_Type)
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
     (This      : LanguageSettings_Type)
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

   function Get_LanguageID
     (This : LanguageSettings_Type;
      Id   : MsoAppLanguageID)
     return Interfaces.C.int
   is
       RetVal : aliased Interfaces.C.int;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_LanguageID
         (Pointer (This),
          Id,
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_LanguageID;

   function Get_LanguagePreferredForEditing
     (This : LanguageSettings_Type;
      lid  : MsoLanguageID)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_LanguagePreferredForEditing
         (Pointer (This),
          lid,
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_LanguagePreferredForEditing;

   function Get_Parent
     (This    : LanguageSettings_Type)
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

end winword.LanguageSettings_Interface;

