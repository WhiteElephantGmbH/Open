with GNATCOM.Dispinterface;

package winword.Borders_Object is

   type Borders_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : Borders_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : Borders_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : Borders_Type)
     return GNATCOM.Types.VARIANT;

   function Getu_NewEnum
     (This : Borders_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : Borders_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Enable
     (This : Borders_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Enable
     (This : Borders_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_DistanceFromTop
     (This : Borders_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DistanceFromTop
     (This : Borders_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Shadow
     (This : Borders_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Shadow
     (This : Borders_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_InsideLineStyle
     (This : Borders_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_InsideLineStyle
     (This : Borders_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_OutsideLineStyle
     (This : Borders_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_OutsideLineStyle
     (This : Borders_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_InsideLineWidth
     (This : Borders_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_InsideLineWidth
     (This : Borders_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_OutsideLineWidth
     (This : Borders_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_OutsideLineWidth
     (This : Borders_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_InsideColorIndex
     (This : Borders_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_InsideColorIndex
     (This : Borders_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_OutsideColorIndex
     (This : Borders_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_OutsideColorIndex
     (This : Borders_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_DistanceFromLeft
     (This : Borders_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DistanceFromLeft
     (This : Borders_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_DistanceFromBottom
     (This : Borders_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DistanceFromBottom
     (This : Borders_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_DistanceFromRight
     (This : Borders_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DistanceFromRight
     (This : Borders_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AlwaysInFront
     (This : Borders_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AlwaysInFront
     (This : Borders_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_SurroundHeader
     (This : Borders_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_SurroundHeader
     (This : Borders_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_SurroundFooter
     (This : Borders_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_SurroundFooter
     (This : Borders_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_JoinBorders
     (This : Borders_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_JoinBorders
     (This : Borders_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_HasHorizontal
     (This : Borders_Type)
     return GNATCOM.Types.VARIANT;

   function Get_HasVertical
     (This : Borders_Type)
     return GNATCOM.Types.VARIANT;

   function Get_DistanceFrom
     (This : Borders_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DistanceFrom
     (This : Borders_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_EnableFirstPageInSection
     (This : Borders_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_EnableFirstPageInSection
     (This : Borders_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_EnableOtherPagesInSection
     (This : Borders_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_EnableOtherPagesInSection
     (This : Borders_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Item
     (This  : Borders_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure ApplyPageBordersToAllSections
     (This : Borders_Type);

   function Get_InsideColor
     (This : Borders_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_InsideColor
     (This : Borders_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_OutsideColor
     (This : Borders_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_OutsideColor
     (This : Borders_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

end winword.Borders_Object;

