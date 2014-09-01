with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.Versions_Interface is

   procedure Initialize (This : in out Versions_Type) is
   begin
      Set_IID (This, IID_Versions);
   end Initialize;

   function Pointer (This : Versions_Type)
     return Pointer_To_Versions
   is
   begin
      return To_Pointer_To_Versions (Address (This));
   end Pointer;

   procedure Attach (This    : in out Versions_Type;
                     Pointer : in     Pointer_To_Versions)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : Versions_Type)
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
     (This : Versions_Type)
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
     (This : Versions_Type)
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
     (This : Versions_Type)
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
     (This : Versions_Type)
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

   function Get_AutoVersion
     (This : Versions_Type)
     return WdAutoVersions
   is
       RetVal : aliased WdAutoVersions;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoVersion
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AutoVersion;

   procedure Put_AutoVersion
     (This : Versions_Type;
      prop : WdAutoVersions)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AutoVersion
         (Pointer (This),
          prop));

   end Put_AutoVersion;

   function Item
     (This  : Versions_Type;
      Index : Interfaces.C.long)
     return Pointer_To_Version
   is
       RetVal : aliased Pointer_To_Version;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Item
         (Pointer (This),
          Index,
          RetVal'Unchecked_Access));

      return RetVal;
   end Item;

   procedure Save
     (This    : Versions_Type;
      Comment : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Save
         (Pointer (This),
          Comment));

   end Save;

end winword.Versions_Interface;

