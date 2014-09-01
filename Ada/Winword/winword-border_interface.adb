with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.Border_Interface is

   procedure Initialize (This : in out Border_Type) is
   begin
      Set_IID (This, IID_Border);
   end Initialize;

   function Pointer (This : Border_Type)
     return Pointer_To_Border
   is
   begin
      return To_Pointer_To_Border (Address (This));
   end Pointer;

   procedure Attach (This    : in out Border_Type;
                     Pointer : in     Pointer_To_Border)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : Border_Type)
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
     (This : Border_Type)
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
     (This : Border_Type)
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

   function Get_Visible
     (This : Border_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Visible
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Visible;

   procedure Put_Visible
     (This : Border_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Visible
         (Pointer (This),
          prop));

   end Put_Visible;

   function Get_ColorIndex
     (This : Border_Type)
     return WdColorIndex
   is
       RetVal : aliased WdColorIndex;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ColorIndex
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ColorIndex;

   procedure Put_ColorIndex
     (This : Border_Type;
      prop : WdColorIndex)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ColorIndex
         (Pointer (This),
          prop));

   end Put_ColorIndex;

   function Get_Inside
     (This : Border_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Inside
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Inside;

   function Get_LineStyle
     (This : Border_Type)
     return WdLineStyle
   is
       RetVal : aliased WdLineStyle;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_LineStyle
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_LineStyle;

   procedure Put_LineStyle
     (This : Border_Type;
      prop : WdLineStyle)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_LineStyle
         (Pointer (This),
          prop));

   end Put_LineStyle;

   function Get_LineWidth
     (This : Border_Type)
     return WdLineWidth
   is
       RetVal : aliased WdLineWidth;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_LineWidth
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_LineWidth;

   procedure Put_LineWidth
     (This : Border_Type;
      prop : WdLineWidth)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_LineWidth
         (Pointer (This),
          prop));

   end Put_LineWidth;

   function Get_ArtStyle
     (This : Border_Type)
     return WdPageBorderArt
   is
       RetVal : aliased WdPageBorderArt;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ArtStyle
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ArtStyle;

   procedure Put_ArtStyle
     (This : Border_Type;
      prop : WdPageBorderArt)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ArtStyle
         (Pointer (This),
          prop));

   end Put_ArtStyle;

   function Get_ArtWidth
     (This : Border_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ArtWidth
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ArtWidth;

   procedure Put_ArtWidth
     (This : Border_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ArtWidth
         (Pointer (This),
          prop));

   end Put_ArtWidth;

   function Get_Color
     (This : Border_Type)
     return WdColor
   is
       RetVal : aliased WdColor;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Color
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Color;

   procedure Put_Color
     (This : Border_Type;
      prop : WdColor)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Color
         (Pointer (This),
          prop));

   end Put_Color;

end winword.Border_Interface;

