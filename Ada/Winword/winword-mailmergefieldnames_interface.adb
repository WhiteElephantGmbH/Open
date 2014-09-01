with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.MailMergeFieldNames_Interface is

   procedure Initialize (This : in out MailMergeFieldNames_Type) is
   begin
      Set_IID (This, IID_MailMergeFieldNames);
   end Initialize;

   function Pointer (This : MailMergeFieldNames_Type)
     return Pointer_To_MailMergeFieldNames
   is
   begin
      return To_Pointer_To_MailMergeFieldNames (Address (This));
   end Pointer;

   procedure Attach (This    : in out MailMergeFieldNames_Type;
                     Pointer : in     Pointer_To_MailMergeFieldNames)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : MailMergeFieldNames_Type)
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
     (This : MailMergeFieldNames_Type)
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
     (This : MailMergeFieldNames_Type)
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
     (This : MailMergeFieldNames_Type)
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
     (This : MailMergeFieldNames_Type)
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

   function Item
     (This  : MailMergeFieldNames_Type;
      Index : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_MailMergeFieldName
   is
       RetVal : aliased Pointer_To_MailMergeFieldName;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Item
         (Pointer (This),
          Index,
          RetVal'Unchecked_Access));

      return RetVal;
   end Item;

end winword.MailMergeFieldNames_Interface;

