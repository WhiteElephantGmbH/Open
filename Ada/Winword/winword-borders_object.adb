package body winword.Borders_Object is

   function Get_Application
     (This : Borders_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Borders_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : Borders_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Borders_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : Borders_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Borders_Get_Parent);
   end Get_Parent;

   function Getu_NewEnum
     (This : Borders_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Borders_Getu_NewEnum);
   end Getu_NewEnum;

   function Get_Count
     (This : Borders_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Borders_Get_Count);
   end Get_Count;

   function Get_Enable
     (This : Borders_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Borders_Get_Enable);
   end Get_Enable;

   procedure Put_Enable
     (This : Borders_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Borders_Put_Enable,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Enable;

   function Get_DistanceFromTop
     (This : Borders_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Borders_Get_DistanceFromTop);
   end Get_DistanceFromTop;

   procedure Put_DistanceFromTop
     (This : Borders_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Borders_Put_DistanceFromTop,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DistanceFromTop;

   function Get_Shadow
     (This : Borders_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Borders_Get_Shadow);
   end Get_Shadow;

   procedure Put_Shadow
     (This : Borders_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Borders_Put_Shadow,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Shadow;

   function Get_InsideLineStyle
     (This : Borders_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Borders_Get_InsideLineStyle);
   end Get_InsideLineStyle;

   procedure Put_InsideLineStyle
     (This : Borders_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Borders_Put_InsideLineStyle,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_InsideLineStyle;

   function Get_OutsideLineStyle
     (This : Borders_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Borders_Get_OutsideLineStyle);
   end Get_OutsideLineStyle;

   procedure Put_OutsideLineStyle
     (This : Borders_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Borders_Put_OutsideLineStyle,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_OutsideLineStyle;

   function Get_InsideLineWidth
     (This : Borders_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Borders_Get_InsideLineWidth);
   end Get_InsideLineWidth;

   procedure Put_InsideLineWidth
     (This : Borders_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Borders_Put_InsideLineWidth,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_InsideLineWidth;

   function Get_OutsideLineWidth
     (This : Borders_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Borders_Get_OutsideLineWidth);
   end Get_OutsideLineWidth;

   procedure Put_OutsideLineWidth
     (This : Borders_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Borders_Put_OutsideLineWidth,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_OutsideLineWidth;

   function Get_InsideColorIndex
     (This : Borders_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Borders_Get_InsideColorIndex);
   end Get_InsideColorIndex;

   procedure Put_InsideColorIndex
     (This : Borders_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Borders_Put_InsideColorIndex,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_InsideColorIndex;

   function Get_OutsideColorIndex
     (This : Borders_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Borders_Get_OutsideColorIndex);
   end Get_OutsideColorIndex;

   procedure Put_OutsideColorIndex
     (This : Borders_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Borders_Put_OutsideColorIndex,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_OutsideColorIndex;

   function Get_DistanceFromLeft
     (This : Borders_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Borders_Get_DistanceFromLeft);
   end Get_DistanceFromLeft;

   procedure Put_DistanceFromLeft
     (This : Borders_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Borders_Put_DistanceFromLeft,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DistanceFromLeft;

   function Get_DistanceFromBottom
     (This : Borders_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Borders_Get_DistanceFromBottom);
   end Get_DistanceFromBottom;

   procedure Put_DistanceFromBottom
     (This : Borders_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Borders_Put_DistanceFromBottom,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DistanceFromBottom;

   function Get_DistanceFromRight
     (This : Borders_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Borders_Get_DistanceFromRight);
   end Get_DistanceFromRight;

   procedure Put_DistanceFromRight
     (This : Borders_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Borders_Put_DistanceFromRight,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DistanceFromRight;

   function Get_AlwaysInFront
     (This : Borders_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Borders_Get_AlwaysInFront);
   end Get_AlwaysInFront;

   procedure Put_AlwaysInFront
     (This : Borders_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Borders_Put_AlwaysInFront,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AlwaysInFront;

   function Get_SurroundHeader
     (This : Borders_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Borders_Get_SurroundHeader);
   end Get_SurroundHeader;

   procedure Put_SurroundHeader
     (This : Borders_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Borders_Put_SurroundHeader,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_SurroundHeader;

   function Get_SurroundFooter
     (This : Borders_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Borders_Get_SurroundFooter);
   end Get_SurroundFooter;

   procedure Put_SurroundFooter
     (This : Borders_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Borders_Put_SurroundFooter,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_SurroundFooter;

   function Get_JoinBorders
     (This : Borders_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Borders_Get_JoinBorders);
   end Get_JoinBorders;

   procedure Put_JoinBorders
     (This : Borders_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Borders_Put_JoinBorders,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_JoinBorders;

   function Get_HasHorizontal
     (This : Borders_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Borders_Get_HasHorizontal);
   end Get_HasHorizontal;

   function Get_HasVertical
     (This : Borders_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Borders_Get_HasVertical);
   end Get_HasVertical;

   function Get_DistanceFrom
     (This : Borders_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Borders_Get_DistanceFrom);
   end Get_DistanceFrom;

   procedure Put_DistanceFrom
     (This : Borders_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Borders_Put_DistanceFrom,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DistanceFrom;

   function Get_EnableFirstPageInSection
     (This : Borders_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Borders_Get_EnableFirstPageInSection);
   end Get_EnableFirstPageInSection;

   procedure Put_EnableFirstPageInSection
     (This : Borders_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Borders_Put_EnableFirstPageInSection,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_EnableFirstPageInSection;

   function Get_EnableOtherPagesInSection
     (This : Borders_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Borders_Get_EnableOtherPagesInSection);
   end Get_EnableOtherPagesInSection;

   procedure Put_EnableOtherPagesInSection
     (This : Borders_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Borders_Put_EnableOtherPagesInSection,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_EnableOtherPagesInSection;

   function Item
     (This  : Borders_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Borders_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

   procedure ApplyPageBordersToAllSections
     (This : Borders_Type)
   is
   begin
      Invoke (This, Borders_ApplyPageBordersToAllSections);
   end ApplyPageBordersToAllSections;

   function Get_InsideColor
     (This : Borders_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Borders_Get_InsideColor);
   end Get_InsideColor;

   procedure Put_InsideColor
     (This : Borders_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Borders_Put_InsideColor,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_InsideColor;

   function Get_OutsideColor
     (This : Borders_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Borders_Get_OutsideColor);
   end Get_OutsideColor;

   procedure Put_OutsideColor
     (This : Borders_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Borders_Put_OutsideColor,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_OutsideColor;

end winword.Borders_Object;

