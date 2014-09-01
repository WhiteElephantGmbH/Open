with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.CustomLabel_Interface is

   procedure Initialize (This : in out CustomLabel_Type) is
   begin
      Set_IID (This, IID_CustomLabel);
   end Initialize;

   function Pointer (This : CustomLabel_Type)
     return Pointer_To_CustomLabel
   is
   begin
      return To_Pointer_To_CustomLabel (Address (This));
   end Pointer;

   procedure Attach (This    : in out CustomLabel_Type;
                     Pointer : in     Pointer_To_CustomLabel)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : CustomLabel_Type)
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
     (This : CustomLabel_Type)
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
     (This : CustomLabel_Type)
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

   function Get_Index
     (This : CustomLabel_Type)
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

   function Get_Name
     (This : CustomLabel_Type)
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

   procedure Put_Name
     (This : CustomLabel_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Name
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_Name;

   function Get_TopMargin
     (This : CustomLabel_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_TopMargin
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_TopMargin;

   procedure Put_TopMargin
     (This : CustomLabel_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_TopMargin
         (Pointer (This),
          prop));

   end Put_TopMargin;

   function Get_SideMargin
     (This : CustomLabel_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SideMargin
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_SideMargin;

   procedure Put_SideMargin
     (This : CustomLabel_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_SideMargin
         (Pointer (This),
          prop));

   end Put_SideMargin;

   function Get_Height
     (This : CustomLabel_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Height
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Height;

   procedure Put_Height
     (This : CustomLabel_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Height
         (Pointer (This),
          prop));

   end Put_Height;

   function Get_Width
     (This : CustomLabel_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Width
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Width;

   procedure Put_Width
     (This : CustomLabel_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Width
         (Pointer (This),
          prop));

   end Put_Width;

   function Get_VerticalPitch
     (This : CustomLabel_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_VerticalPitch
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_VerticalPitch;

   procedure Put_VerticalPitch
     (This : CustomLabel_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_VerticalPitch
         (Pointer (This),
          prop));

   end Put_VerticalPitch;

   function Get_HorizontalPitch
     (This : CustomLabel_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_HorizontalPitch
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_HorizontalPitch;

   procedure Put_HorizontalPitch
     (This : CustomLabel_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_HorizontalPitch
         (Pointer (This),
          prop));

   end Put_HorizontalPitch;

   function Get_NumberAcross
     (This : CustomLabel_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_NumberAcross
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_NumberAcross;

   procedure Put_NumberAcross
     (This : CustomLabel_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_NumberAcross
         (Pointer (This),
          prop));

   end Put_NumberAcross;

   function Get_NumberDown
     (This : CustomLabel_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_NumberDown
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_NumberDown;

   procedure Put_NumberDown
     (This : CustomLabel_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_NumberDown
         (Pointer (This),
          prop));

   end Put_NumberDown;

   function Get_DotMatrix
     (This : CustomLabel_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DotMatrix
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DotMatrix;

   function Get_PageSize
     (This : CustomLabel_Type)
     return WdCustomLabelPageSize
   is
       RetVal : aliased WdCustomLabelPageSize;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_PageSize
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_PageSize;

   procedure Put_PageSize
     (This : CustomLabel_Type;
      prop : WdCustomLabelPageSize)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_PageSize
         (Pointer (This),
          prop));

   end Put_PageSize;

   function Get_Valid
     (This : CustomLabel_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Valid
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Valid;

   procedure Delete
     (This : CustomLabel_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Delete
         (Pointer (This)));

   end Delete;

end winword.CustomLabel_Interface;

