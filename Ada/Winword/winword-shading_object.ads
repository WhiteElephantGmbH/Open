with GNATCOM.Dispinterface;

package winword.Shading_Object is

   type Shading_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : Shading_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : Shading_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : Shading_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ForegroundPatternColorIndex
     (This : Shading_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ForegroundPatternColorIndex
     (This : Shading_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_BackgroundPatternColorIndex
     (This : Shading_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_BackgroundPatternColorIndex
     (This : Shading_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Texture
     (This : Shading_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Texture
     (This : Shading_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ForegroundPatternColor
     (This : Shading_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ForegroundPatternColor
     (This : Shading_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_BackgroundPatternColor
     (This : Shading_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_BackgroundPatternColor
     (This : Shading_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

end winword.Shading_Object;

