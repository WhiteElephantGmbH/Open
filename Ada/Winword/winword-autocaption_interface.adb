with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.AutoCaption_Interface is

   procedure Initialize (This : in out AutoCaption_Type) is
   begin
      Set_IID (This, IID_AutoCaption);
   end Initialize;

   function Pointer (This : AutoCaption_Type)
     return Pointer_To_AutoCaption
   is
   begin
      return To_Pointer_To_AutoCaption (Address (This));
   end Pointer;

   procedure Attach (This    : in out AutoCaption_Type;
                     Pointer : in     Pointer_To_AutoCaption)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : AutoCaption_Type)
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
     (This : AutoCaption_Type)
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
     (This : AutoCaption_Type)
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
     (This : AutoCaption_Type)
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

   function Get_AutoInsert
     (This : AutoCaption_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoInsert
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AutoInsert;

   procedure Put_AutoInsert
     (This : AutoCaption_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AutoInsert
         (Pointer (This),
          prop));

   end Put_AutoInsert;

   function Get_Index
     (This : AutoCaption_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Index
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Index;

   function Get_CaptionLabel
     (This : AutoCaption_Type)
     return GNATCOM.Types.VARIANT
   is
       RetVal : aliased GNATCOM.Types.VARIANT;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_CaptionLabel
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_CaptionLabel;

   procedure Put_CaptionLabel
     (This : AutoCaption_Type;
      prop : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_CaptionLabel
         (Pointer (This),
          prop));

   end Put_CaptionLabel;

end winword.AutoCaption_Interface;

