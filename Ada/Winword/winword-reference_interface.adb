with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.Reference_Interface is

   procedure Initialize (This : in out Reference_Type) is
   begin
      Set_IID (This, IID_Reference);
   end Initialize;

   function Pointer (This : Reference_Type)
     return Pointer_To_Reference
   is
   begin
      return To_Pointer_To_Reference (Address (This));
   end Pointer;

   procedure Attach (This    : in out Reference_Type;
                     Pointer : in     Pointer_To_Reference)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Collection
     (This    : Reference_Type)
     return Pointer_To_uReferences
   is
       RetVal : aliased Pointer_To_uReferences;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Collection
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Collection;

   function Get_VBE
     (This       : Reference_Type)
     return Pointer_To_VBE
   is
       RetVal : aliased Pointer_To_VBE;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_VBE
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_VBE;

   function Get_Name
     (This      : Reference_Type)
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

   function Get_Guid
     (This      : Reference_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Guid
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Guid;

   function Get_Major
     (This   : Reference_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Major
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Major;

   function Get_Minor
     (This   : Reference_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Minor
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Minor;

   function Get_FullPath
     (This          : Reference_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_FullPath
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_FullPath;

   function Get_BuiltIn
     (This        : Reference_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_BuiltIn
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_BuiltIn;

   function Get_IsBroken
     (This       : Reference_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_IsBroken
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_IsBroken;

   function Get_Type
     (This  : Reference_Type)
     return vbext_RefKind
   is
       RetVal : aliased vbext_RefKind;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Type
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Type;

   function Get_Description
     (This      : Reference_Type)
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

end winword.Reference_Interface;

