with GNATCOM.Dispinterface;

package winword.FillFormat_Interface is

   type FillFormat_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out FillFormat_Type);

   function Pointer (This : FillFormat_Type)
     return Pointer_To_FillFormat;

   procedure Attach (This    : in out FillFormat_Type;
                     Pointer : in     Pointer_To_FillFormat);

   function Get_Application
     (This : FillFormat_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : FillFormat_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : FillFormat_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_BackColor
     (This : FillFormat_Type)
     return Pointer_To_ColorFormat;

   function Get_ForeColor
     (This : FillFormat_Type)
     return Pointer_To_ColorFormat;

   function Get_GradientColorType
     (This : FillFormat_Type)
     return MsoGradientColorType;

   function Get_GradientDegree
     (This : FillFormat_Type)
     return Interfaces.C.C_float;

   function Get_GradientStyle
     (This : FillFormat_Type)
     return MsoGradientStyle;

   function Get_GradientVariant
     (This : FillFormat_Type)
     return Interfaces.C.long;

   function Get_Pattern
     (This : FillFormat_Type)
     return MsoPatternType;

   function Get_PresetGradientType
     (This : FillFormat_Type)
     return MsoPresetGradientType;

   function Get_PresetTexture
     (This : FillFormat_Type)
     return MsoPresetTexture;

   function Get_TextureName
     (This : FillFormat_Type)
     return GNATCOM.Types.BSTR;

   function Get_TextureType
     (This : FillFormat_Type)
     return MsoTextureType;

   function Get_Transparency
     (This : FillFormat_Type)
     return Interfaces.C.C_float;

   procedure Put_Transparency
     (This : FillFormat_Type;
      prop : Interfaces.C.C_float);

   function Get_Type
     (This : FillFormat_Type)
     return MsoFillType;

   function Get_Visible
     (This : FillFormat_Type)
     return MsoTriState;

   procedure Put_Visible
     (This : FillFormat_Type;
      prop : MsoTriState);

   procedure Background
     (This : FillFormat_Type);

   procedure OneColorGradient
     (This    : FillFormat_Type;
      Style   : MsoGradientStyle;
      Variant : Interfaces.C.long;
      Degree  : Interfaces.C.C_float);

   procedure Patterned
     (This    : FillFormat_Type;
      Pattern : MsoPatternType);

   procedure PresetGradient
     (This               : FillFormat_Type;
      Style              : MsoGradientStyle;
      Variant            : Interfaces.C.long;
      PresetGradientType : MsoPresetGradientType);

   procedure PresetTextured
     (This          : FillFormat_Type;
      PresetTexture : MsoPresetTexture);

   procedure Solid
     (This : FillFormat_Type);

   procedure TwoColorGradient
     (This    : FillFormat_Type;
      Style   : MsoGradientStyle;
      Variant : Interfaces.C.long);

   procedure UserPicture
     (This        : FillFormat_Type;
      PictureFile : GNATCOM.Types.BSTR;
      Free        : Boolean := True);

   procedure UserTextured
     (This        : FillFormat_Type;
      TextureFile : GNATCOM.Types.BSTR;
      Free        : Boolean := True);

end winword.FillFormat_Interface;

