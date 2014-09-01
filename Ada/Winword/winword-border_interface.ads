with GNATCOM.Dispinterface;

package winword.Border_Interface is

   type Border_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Border_Type);

   function Pointer (This : Border_Type)
     return Pointer_To_Border;

   procedure Attach (This    : in out Border_Type;
                     Pointer : in     Pointer_To_Border);

   function Get_Application
     (This : Border_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : Border_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : Border_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Visible
     (This : Border_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_Visible
     (This : Border_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_ColorIndex
     (This : Border_Type)
     return WdColorIndex;

   procedure Put_ColorIndex
     (This : Border_Type;
      prop : WdColorIndex);

   function Get_Inside
     (This : Border_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   function Get_LineStyle
     (This : Border_Type)
     return WdLineStyle;

   procedure Put_LineStyle
     (This : Border_Type;
      prop : WdLineStyle);

   function Get_LineWidth
     (This : Border_Type)
     return WdLineWidth;

   procedure Put_LineWidth
     (This : Border_Type;
      prop : WdLineWidth);

   function Get_ArtStyle
     (This : Border_Type)
     return WdPageBorderArt;

   procedure Put_ArtStyle
     (This : Border_Type;
      prop : WdPageBorderArt);

   function Get_ArtWidth
     (This : Border_Type)
     return Interfaces.C.long;

   procedure Put_ArtWidth
     (This : Border_Type;
      prop : Interfaces.C.long);

   function Get_Color
     (This : Border_Type)
     return WdColor;

   procedure Put_Color
     (This : Border_Type;
      prop : WdColor);

end winword.Border_Interface;

