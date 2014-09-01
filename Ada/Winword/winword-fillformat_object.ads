with GNATCOM.Dispinterface;

package winword.FillFormat_Object is

   type FillFormat_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : FillFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : FillFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : FillFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_BackColor
     (This : FillFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ForeColor
     (This : FillFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_GradientColorType
     (This : FillFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_GradientDegree
     (This : FillFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_GradientStyle
     (This : FillFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_GradientVariant
     (This : FillFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Pattern
     (This : FillFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_PresetGradientType
     (This : FillFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_PresetTexture
     (This : FillFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_TextureName
     (This : FillFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_TextureType
     (This : FillFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Transparency
     (This : FillFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Transparency
     (This : FillFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Type
     (This : FillFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Visible
     (This : FillFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Visible
     (This : FillFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure Background
     (This : FillFormat_Type);

   procedure OneColorGradient
     (This    : FillFormat_Type;
      Style   : GNATCOM.Types.VARIANT;
      Variant : GNATCOM.Types.VARIANT;
      Degree  : GNATCOM.Types.VARIANT;
      Free    : Boolean := True);

   procedure Patterned
     (This    : FillFormat_Type;
      Pattern : GNATCOM.Types.VARIANT;
      Free    : Boolean := True);

   procedure PresetGradient
     (This               : FillFormat_Type;
      Style              : GNATCOM.Types.VARIANT;
      Variant            : GNATCOM.Types.VARIANT;
      PresetGradientType : GNATCOM.Types.VARIANT;
      Free               : Boolean := True);

   procedure PresetTextured
     (This          : FillFormat_Type;
      PresetTexture : GNATCOM.Types.VARIANT;
      Free          : Boolean := True);

   procedure Solid
     (This : FillFormat_Type);

   procedure TwoColorGradient
     (This    : FillFormat_Type;
      Style   : GNATCOM.Types.VARIANT;
      Variant : GNATCOM.Types.VARIANT;
      Free    : Boolean := True);

   procedure UserPicture
     (This        : FillFormat_Type;
      PictureFile : GNATCOM.Types.VARIANT;
      Free        : Boolean := True);

   procedure UserTextured
     (This        : FillFormat_Type;
      TextureFile : GNATCOM.Types.VARIANT;
      Free        : Boolean := True);

end winword.FillFormat_Object;

