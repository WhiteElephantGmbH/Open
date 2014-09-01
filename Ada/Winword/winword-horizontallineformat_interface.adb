with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.HorizontalLineFormat_Interface is

   procedure Initialize (This : in out HorizontalLineFormat_Type) is
   begin
      Set_IID (This, IID_HorizontalLineFormat);
   end Initialize;

   function Pointer (This : HorizontalLineFormat_Type)
     return Pointer_To_HorizontalLineFormat
   is
   begin
      return To_Pointer_To_HorizontalLineFormat (Address (This));
   end Pointer;

   procedure Attach (This    : in out HorizontalLineFormat_Type;
                     Pointer : in     Pointer_To_HorizontalLineFormat)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : HorizontalLineFormat_Type)
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
     (This : HorizontalLineFormat_Type)
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
     (This : HorizontalLineFormat_Type)
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

   function Get_PercentWidth
     (This : HorizontalLineFormat_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_PercentWidth
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_PercentWidth;

   procedure Put_PercentWidth
     (This : HorizontalLineFormat_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_PercentWidth
         (Pointer (This),
          prop));

   end Put_PercentWidth;

   function Get_NoShade
     (This : HorizontalLineFormat_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_NoShade
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_NoShade;

   procedure Put_NoShade
     (This : HorizontalLineFormat_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_NoShade
         (Pointer (This),
          prop));

   end Put_NoShade;

   function Get_Alignment
     (This : HorizontalLineFormat_Type)
     return WdHorizontalLineAlignment
   is
       RetVal : aliased WdHorizontalLineAlignment;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Alignment
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Alignment;

   procedure Put_Alignment
     (This : HorizontalLineFormat_Type;
      prop : WdHorizontalLineAlignment)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Alignment
         (Pointer (This),
          prop));

   end Put_Alignment;

   function Get_WidthType
     (This : HorizontalLineFormat_Type)
     return WdHorizontalLineWidthType
   is
       RetVal : aliased WdHorizontalLineWidthType;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_WidthType
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_WidthType;

   procedure Put_WidthType
     (This : HorizontalLineFormat_Type;
      prop : WdHorizontalLineWidthType)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_WidthType
         (Pointer (This),
          prop));

   end Put_WidthType;

end winword.HorizontalLineFormat_Interface;

