with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.Frame_Interface is

   procedure Initialize (This : in out Frame_Type) is
   begin
      Set_IID (This, IID_Frame);
   end Initialize;

   function Pointer (This : Frame_Type)
     return Pointer_To_Frame
   is
   begin
      return To_Pointer_To_Frame (Address (This));
   end Pointer;

   procedure Attach (This    : in out Frame_Type;
                     Pointer : in     Pointer_To_Frame)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : Frame_Type)
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
     (This : Frame_Type)
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
     (This : Frame_Type)
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

   function Get_HeightRule
     (This : Frame_Type)
     return WdFrameSizeRule
   is
       RetVal : aliased WdFrameSizeRule;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_HeightRule
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_HeightRule;

   procedure Put_HeightRule
     (This : Frame_Type;
      prop : WdFrameSizeRule)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_HeightRule
         (Pointer (This),
          prop));

   end Put_HeightRule;

   function Get_WidthRule
     (This : Frame_Type)
     return WdFrameSizeRule
   is
       RetVal : aliased WdFrameSizeRule;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_WidthRule
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_WidthRule;

   procedure Put_WidthRule
     (This : Frame_Type;
      prop : WdFrameSizeRule)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_WidthRule
         (Pointer (This),
          prop));

   end Put_WidthRule;

   function Get_HorizontalDistanceFromText
     (This : Frame_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_HorizontalDistanceFromText
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_HorizontalDistanceFromText;

   procedure Put_HorizontalDistanceFromText
     (This : Frame_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_HorizontalDistanceFromText
         (Pointer (This),
          prop));

   end Put_HorizontalDistanceFromText;

   function Get_Height
     (This : Frame_Type)
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
     (This : Frame_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Height
         (Pointer (This),
          prop));

   end Put_Height;

   function Get_HorizontalPosition
     (This : Frame_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_HorizontalPosition
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_HorizontalPosition;

   procedure Put_HorizontalPosition
     (This : Frame_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_HorizontalPosition
         (Pointer (This),
          prop));

   end Put_HorizontalPosition;

   function Get_LockAnchor
     (This : Frame_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_LockAnchor
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_LockAnchor;

   procedure Put_LockAnchor
     (This : Frame_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_LockAnchor
         (Pointer (This),
          prop));

   end Put_LockAnchor;

   function Get_RelativeHorizontalPosition
     (This : Frame_Type)
     return WdRelativeHorizontalPosition
   is
       RetVal : aliased WdRelativeHorizontalPosition;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_RelativeHorizontalPosition
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_RelativeHorizontalPosition;

   procedure Put_RelativeHorizontalPosition
     (This : Frame_Type;
      prop : WdRelativeHorizontalPosition)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_RelativeHorizontalPosition
         (Pointer (This),
          prop));

   end Put_RelativeHorizontalPosition;

   function Get_RelativeVerticalPosition
     (This : Frame_Type)
     return WdRelativeVerticalPosition
   is
       RetVal : aliased WdRelativeVerticalPosition;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_RelativeVerticalPosition
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_RelativeVerticalPosition;

   procedure Put_RelativeVerticalPosition
     (This : Frame_Type;
      prop : WdRelativeVerticalPosition)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_RelativeVerticalPosition
         (Pointer (This),
          prop));

   end Put_RelativeVerticalPosition;

   function Get_VerticalDistanceFromText
     (This : Frame_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_VerticalDistanceFromText
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_VerticalDistanceFromText;

   procedure Put_VerticalDistanceFromText
     (This : Frame_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_VerticalDistanceFromText
         (Pointer (This),
          prop));

   end Put_VerticalDistanceFromText;

   function Get_VerticalPosition
     (This : Frame_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_VerticalPosition
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_VerticalPosition;

   procedure Put_VerticalPosition
     (This : Frame_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_VerticalPosition
         (Pointer (This),
          prop));

   end Put_VerticalPosition;

   function Get_Width
     (This : Frame_Type)
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
     (This : Frame_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Width
         (Pointer (This),
          prop));

   end Put_Width;

   function Get_TextWrap
     (This : Frame_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_TextWrap
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_TextWrap;

   procedure Put_TextWrap
     (This : Frame_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_TextWrap
         (Pointer (This),
          prop));

   end Put_TextWrap;

   function Get_Shading
     (This : Frame_Type)
     return Pointer_To_Shading
   is
       RetVal : aliased Pointer_To_Shading;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Shading
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Shading;

   function Get_Borders
     (This : Frame_Type)
     return Pointer_To_Borders
   is
       RetVal : aliased Pointer_To_Borders;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Borders
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Borders;

   procedure Put_Borders
     (This : Frame_Type;
      prop : Pointer_To_Borders)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Borders
         (Pointer (This),
          prop));

   end Put_Borders;

   function Get_Range
     (This : Frame_Type)
     return Pointer_To_uRange
   is
       RetVal : aliased Pointer_To_uRange;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Range
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Range;

   procedure Delete
     (This : Frame_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Delete
         (Pointer (This)));

   end Delete;

   procedure uSelect
     (This : Frame_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.uSelect
         (Pointer (This)));

   end uSelect;

   procedure Copy
     (This : Frame_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Copy
         (Pointer (This)));

   end Copy;

   procedure Cut
     (This : Frame_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Cut
         (Pointer (This)));

   end Cut;

end winword.Frame_Interface;

