with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.Borders_Interface is

   procedure Initialize (This : in out Borders_Type) is
   begin
      Set_IID (This, IID_Borders);
   end Initialize;

   function Pointer (This : Borders_Type)
     return Pointer_To_Borders
   is
   begin
      return To_Pointer_To_Borders (Address (This));
   end Pointer;

   procedure Attach (This    : in out Borders_Type;
                     Pointer : in     Pointer_To_Borders)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : Borders_Type)
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
     (This : Borders_Type)
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
     (This : Borders_Type)
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
     (This : Borders_Type)
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
     (This : Borders_Type)
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

   function Get_Enable
     (This : Borders_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Enable
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Enable;

   procedure Put_Enable
     (This : Borders_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Enable
         (Pointer (This),
          prop));

   end Put_Enable;

   function Get_DistanceFromTop
     (This : Borders_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DistanceFromTop
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DistanceFromTop;

   procedure Put_DistanceFromTop
     (This : Borders_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DistanceFromTop
         (Pointer (This),
          prop));

   end Put_DistanceFromTop;

   function Get_Shadow
     (This : Borders_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Shadow
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Shadow;

   procedure Put_Shadow
     (This : Borders_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Shadow
         (Pointer (This),
          prop));

   end Put_Shadow;

   function Get_InsideLineStyle
     (This : Borders_Type)
     return WdLineStyle
   is
       RetVal : aliased WdLineStyle;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_InsideLineStyle
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_InsideLineStyle;

   procedure Put_InsideLineStyle
     (This : Borders_Type;
      prop : WdLineStyle)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_InsideLineStyle
         (Pointer (This),
          prop));

   end Put_InsideLineStyle;

   function Get_OutsideLineStyle
     (This : Borders_Type)
     return WdLineStyle
   is
       RetVal : aliased WdLineStyle;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_OutsideLineStyle
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_OutsideLineStyle;

   procedure Put_OutsideLineStyle
     (This : Borders_Type;
      prop : WdLineStyle)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_OutsideLineStyle
         (Pointer (This),
          prop));

   end Put_OutsideLineStyle;

   function Get_InsideLineWidth
     (This : Borders_Type)
     return WdLineWidth
   is
       RetVal : aliased WdLineWidth;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_InsideLineWidth
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_InsideLineWidth;

   procedure Put_InsideLineWidth
     (This : Borders_Type;
      prop : WdLineWidth)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_InsideLineWidth
         (Pointer (This),
          prop));

   end Put_InsideLineWidth;

   function Get_OutsideLineWidth
     (This : Borders_Type)
     return WdLineWidth
   is
       RetVal : aliased WdLineWidth;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_OutsideLineWidth
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_OutsideLineWidth;

   procedure Put_OutsideLineWidth
     (This : Borders_Type;
      prop : WdLineWidth)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_OutsideLineWidth
         (Pointer (This),
          prop));

   end Put_OutsideLineWidth;

   function Get_InsideColorIndex
     (This : Borders_Type)
     return WdColorIndex
   is
       RetVal : aliased WdColorIndex;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_InsideColorIndex
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_InsideColorIndex;

   procedure Put_InsideColorIndex
     (This : Borders_Type;
      prop : WdColorIndex)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_InsideColorIndex
         (Pointer (This),
          prop));

   end Put_InsideColorIndex;

   function Get_OutsideColorIndex
     (This : Borders_Type)
     return WdColorIndex
   is
       RetVal : aliased WdColorIndex;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_OutsideColorIndex
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_OutsideColorIndex;

   procedure Put_OutsideColorIndex
     (This : Borders_Type;
      prop : WdColorIndex)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_OutsideColorIndex
         (Pointer (This),
          prop));

   end Put_OutsideColorIndex;

   function Get_DistanceFromLeft
     (This : Borders_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DistanceFromLeft
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DistanceFromLeft;

   procedure Put_DistanceFromLeft
     (This : Borders_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DistanceFromLeft
         (Pointer (This),
          prop));

   end Put_DistanceFromLeft;

   function Get_DistanceFromBottom
     (This : Borders_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DistanceFromBottom
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DistanceFromBottom;

   procedure Put_DistanceFromBottom
     (This : Borders_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DistanceFromBottom
         (Pointer (This),
          prop));

   end Put_DistanceFromBottom;

   function Get_DistanceFromRight
     (This : Borders_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DistanceFromRight
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DistanceFromRight;

   procedure Put_DistanceFromRight
     (This : Borders_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DistanceFromRight
         (Pointer (This),
          prop));

   end Put_DistanceFromRight;

   function Get_AlwaysInFront
     (This : Borders_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AlwaysInFront
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AlwaysInFront;

   procedure Put_AlwaysInFront
     (This : Borders_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AlwaysInFront
         (Pointer (This),
          prop));

   end Put_AlwaysInFront;

   function Get_SurroundHeader
     (This : Borders_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SurroundHeader
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_SurroundHeader;

   procedure Put_SurroundHeader
     (This : Borders_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_SurroundHeader
         (Pointer (This),
          prop));

   end Put_SurroundHeader;

   function Get_SurroundFooter
     (This : Borders_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SurroundFooter
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_SurroundFooter;

   procedure Put_SurroundFooter
     (This : Borders_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_SurroundFooter
         (Pointer (This),
          prop));

   end Put_SurroundFooter;

   function Get_JoinBorders
     (This : Borders_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_JoinBorders
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_JoinBorders;

   procedure Put_JoinBorders
     (This : Borders_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_JoinBorders
         (Pointer (This),
          prop));

   end Put_JoinBorders;

   function Get_HasHorizontal
     (This : Borders_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_HasHorizontal
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_HasHorizontal;

   function Get_HasVertical
     (This : Borders_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_HasVertical
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_HasVertical;

   function Get_DistanceFrom
     (This : Borders_Type)
     return WdBorderDistanceFrom
   is
       RetVal : aliased WdBorderDistanceFrom;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DistanceFrom
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DistanceFrom;

   procedure Put_DistanceFrom
     (This : Borders_Type;
      prop : WdBorderDistanceFrom)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DistanceFrom
         (Pointer (This),
          prop));

   end Put_DistanceFrom;

   function Get_EnableFirstPageInSection
     (This : Borders_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_EnableFirstPageInSection
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_EnableFirstPageInSection;

   procedure Put_EnableFirstPageInSection
     (This : Borders_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_EnableFirstPageInSection
         (Pointer (This),
          prop));

   end Put_EnableFirstPageInSection;

   function Get_EnableOtherPagesInSection
     (This : Borders_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_EnableOtherPagesInSection
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_EnableOtherPagesInSection;

   procedure Put_EnableOtherPagesInSection
     (This : Borders_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_EnableOtherPagesInSection
         (Pointer (This),
          prop));

   end Put_EnableOtherPagesInSection;

   function Item
     (This  : Borders_Type;
      Index : WdBorderType)
     return Pointer_To_Border
   is
       RetVal : aliased Pointer_To_Border;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Item
         (Pointer (This),
          Index,
          RetVal'Unchecked_Access));

      return RetVal;
   end Item;

   procedure ApplyPageBordersToAllSections
     (This : Borders_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ApplyPageBordersToAllSections
         (Pointer (This)));

   end ApplyPageBordersToAllSections;

   function Get_InsideColor
     (This : Borders_Type)
     return WdColor
   is
       RetVal : aliased WdColor;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_InsideColor
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_InsideColor;

   procedure Put_InsideColor
     (This : Borders_Type;
      prop : WdColor)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_InsideColor
         (Pointer (This),
          prop));

   end Put_InsideColor;

   function Get_OutsideColor
     (This : Borders_Type)
     return WdColor
   is
       RetVal : aliased WdColor;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_OutsideColor
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_OutsideColor;

   procedure Put_OutsideColor
     (This : Borders_Type;
      prop : WdColor)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_OutsideColor
         (Pointer (This),
          prop));

   end Put_OutsideColor;

end winword.Borders_Interface;

