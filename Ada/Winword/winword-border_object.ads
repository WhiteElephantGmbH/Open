with GNATCOM.Dispinterface;

package winword.Border_Object is

   type Border_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : Border_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : Border_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : Border_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Visible
     (This : Border_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Visible
     (This : Border_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ColorIndex
     (This : Border_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ColorIndex
     (This : Border_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Inside
     (This : Border_Type)
     return GNATCOM.Types.VARIANT;

   function Get_LineStyle
     (This : Border_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_LineStyle
     (This : Border_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_LineWidth
     (This : Border_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_LineWidth
     (This : Border_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ArtStyle
     (This : Border_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ArtStyle
     (This : Border_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ArtWidth
     (This : Border_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ArtWidth
     (This : Border_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Color
     (This : Border_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Color
     (This : Border_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

end winword.Border_Object;

