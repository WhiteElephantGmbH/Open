with GNATCOM.Dispinterface;

package winword.Borders_Interface is

   type Borders_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Borders_Type);

   function Pointer (This : Borders_Type)
     return Pointer_To_Borders;

   procedure Attach (This    : in out Borders_Type;
                     Pointer : in     Pointer_To_Borders);

   function Get_Application
     (This : Borders_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : Borders_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : Borders_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Getu_NewEnum
     (This : Borders_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_Count
     (This : Borders_Type)
     return Interfaces.C.long;

   function Get_Enable
     (This : Borders_Type)
     return Interfaces.C.long;

   procedure Put_Enable
     (This : Borders_Type;
      prop : Interfaces.C.long);

   function Get_DistanceFromTop
     (This : Borders_Type)
     return Interfaces.C.long;

   procedure Put_DistanceFromTop
     (This : Borders_Type;
      prop : Interfaces.C.long);

   function Get_Shadow
     (This : Borders_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_Shadow
     (This : Borders_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_InsideLineStyle
     (This : Borders_Type)
     return WdLineStyle;

   procedure Put_InsideLineStyle
     (This : Borders_Type;
      prop : WdLineStyle);

   function Get_OutsideLineStyle
     (This : Borders_Type)
     return WdLineStyle;

   procedure Put_OutsideLineStyle
     (This : Borders_Type;
      prop : WdLineStyle);

   function Get_InsideLineWidth
     (This : Borders_Type)
     return WdLineWidth;

   procedure Put_InsideLineWidth
     (This : Borders_Type;
      prop : WdLineWidth);

   function Get_OutsideLineWidth
     (This : Borders_Type)
     return WdLineWidth;

   procedure Put_OutsideLineWidth
     (This : Borders_Type;
      prop : WdLineWidth);

   function Get_InsideColorIndex
     (This : Borders_Type)
     return WdColorIndex;

   procedure Put_InsideColorIndex
     (This : Borders_Type;
      prop : WdColorIndex);

   function Get_OutsideColorIndex
     (This : Borders_Type)
     return WdColorIndex;

   procedure Put_OutsideColorIndex
     (This : Borders_Type;
      prop : WdColorIndex);

   function Get_DistanceFromLeft
     (This : Borders_Type)
     return Interfaces.C.long;

   procedure Put_DistanceFromLeft
     (This : Borders_Type;
      prop : Interfaces.C.long);

   function Get_DistanceFromBottom
     (This : Borders_Type)
     return Interfaces.C.long;

   procedure Put_DistanceFromBottom
     (This : Borders_Type;
      prop : Interfaces.C.long);

   function Get_DistanceFromRight
     (This : Borders_Type)
     return Interfaces.C.long;

   procedure Put_DistanceFromRight
     (This : Borders_Type;
      prop : Interfaces.C.long);

   function Get_AlwaysInFront
     (This : Borders_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_AlwaysInFront
     (This : Borders_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_SurroundHeader
     (This : Borders_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_SurroundHeader
     (This : Borders_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_SurroundFooter
     (This : Borders_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_SurroundFooter
     (This : Borders_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_JoinBorders
     (This : Borders_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_JoinBorders
     (This : Borders_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_HasHorizontal
     (This : Borders_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   function Get_HasVertical
     (This : Borders_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   function Get_DistanceFrom
     (This : Borders_Type)
     return WdBorderDistanceFrom;

   procedure Put_DistanceFrom
     (This : Borders_Type;
      prop : WdBorderDistanceFrom);

   function Get_EnableFirstPageInSection
     (This : Borders_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_EnableFirstPageInSection
     (This : Borders_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_EnableOtherPagesInSection
     (This : Borders_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_EnableOtherPagesInSection
     (This : Borders_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Item
     (This  : Borders_Type;
      Index : WdBorderType)
     return Pointer_To_Border;

   procedure ApplyPageBordersToAllSections
     (This : Borders_Type);

   function Get_InsideColor
     (This : Borders_Type)
     return WdColor;

   procedure Put_InsideColor
     (This : Borders_Type;
      prop : WdColor);

   function Get_OutsideColor
     (This : Borders_Type)
     return WdColor;

   procedure Put_OutsideColor
     (This : Borders_Type;
      prop : WdColor);

end winword.Borders_Interface;

