with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.TextRetrievalMode_Interface is

   procedure Initialize (This : in out TextRetrievalMode_Type) is
   begin
      Set_IID (This, IID_TextRetrievalMode);
   end Initialize;

   function Pointer (This : TextRetrievalMode_Type)
     return Pointer_To_TextRetrievalMode
   is
   begin
      return To_Pointer_To_TextRetrievalMode (Address (This));
   end Pointer;

   procedure Attach (This    : in out TextRetrievalMode_Type;
                     Pointer : in     Pointer_To_TextRetrievalMode)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : TextRetrievalMode_Type)
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
     (This : TextRetrievalMode_Type)
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
     (This : TextRetrievalMode_Type)
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

   function Get_ViewType
     (This : TextRetrievalMode_Type)
     return WdViewType
   is
       RetVal : aliased WdViewType;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ViewType
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ViewType;

   procedure Put_ViewType
     (This : TextRetrievalMode_Type;
      prop : WdViewType)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ViewType
         (Pointer (This),
          prop));

   end Put_ViewType;

   function Get_Duplicate
     (This : TextRetrievalMode_Type)
     return Pointer_To_TextRetrievalMode
   is
       RetVal : aliased Pointer_To_TextRetrievalMode;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Duplicate
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Duplicate;

   function Get_IncludeHiddenText
     (This : TextRetrievalMode_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_IncludeHiddenText
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_IncludeHiddenText;

   procedure Put_IncludeHiddenText
     (This : TextRetrievalMode_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_IncludeHiddenText
         (Pointer (This),
          prop));

   end Put_IncludeHiddenText;

   function Get_IncludeFieldCodes
     (This : TextRetrievalMode_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_IncludeFieldCodes
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_IncludeFieldCodes;

   procedure Put_IncludeFieldCodes
     (This : TextRetrievalMode_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_IncludeFieldCodes
         (Pointer (This),
          prop));

   end Put_IncludeFieldCodes;

end winword.TextRetrievalMode_Interface;

