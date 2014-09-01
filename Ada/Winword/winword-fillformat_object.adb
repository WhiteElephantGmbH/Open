package body winword.FillFormat_Object is

   function Get_Application
     (This : FillFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FillFormat_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : FillFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FillFormat_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : FillFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FillFormat_Get_Parent);
   end Get_Parent;

   function Get_BackColor
     (This : FillFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FillFormat_Get_BackColor);
   end Get_BackColor;

   function Get_ForeColor
     (This : FillFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FillFormat_Get_ForeColor);
   end Get_ForeColor;

   function Get_GradientColorType
     (This : FillFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FillFormat_Get_GradientColorType);
   end Get_GradientColorType;

   function Get_GradientDegree
     (This : FillFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FillFormat_Get_GradientDegree);
   end Get_GradientDegree;

   function Get_GradientStyle
     (This : FillFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FillFormat_Get_GradientStyle);
   end Get_GradientStyle;

   function Get_GradientVariant
     (This : FillFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FillFormat_Get_GradientVariant);
   end Get_GradientVariant;

   function Get_Pattern
     (This : FillFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FillFormat_Get_Pattern);
   end Get_Pattern;

   function Get_PresetGradientType
     (This : FillFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FillFormat_Get_PresetGradientType);
   end Get_PresetGradientType;

   function Get_PresetTexture
     (This : FillFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FillFormat_Get_PresetTexture);
   end Get_PresetTexture;

   function Get_TextureName
     (This : FillFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FillFormat_Get_TextureName);
   end Get_TextureName;

   function Get_TextureType
     (This : FillFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FillFormat_Get_TextureType);
   end Get_TextureType;

   function Get_Transparency
     (This : FillFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FillFormat_Get_Transparency);
   end Get_Transparency;

   procedure Put_Transparency
     (This : FillFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         FillFormat_Put_Transparency,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Transparency;

   function Get_Type
     (This : FillFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FillFormat_Get_Type);
   end Get_Type;

   function Get_Visible
     (This : FillFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FillFormat_Get_Visible);
   end Get_Visible;

   procedure Put_Visible
     (This : FillFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         FillFormat_Put_Visible,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Visible;

   procedure Background
     (This : FillFormat_Type)
   is
   begin
      Invoke (This, FillFormat_Background);
   end Background;

   procedure OneColorGradient
     (This    : FillFormat_Type;
      Style   : GNATCOM.Types.VARIANT;
      Variant : GNATCOM.Types.VARIANT;
      Degree  : GNATCOM.Types.VARIANT;
      Free    : Boolean := True)
   is
   begin
      Invoke
        (This,
         FillFormat_OneColorGradient,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Degree,
          2 => Variant,
          3 => Style),
         Free);
   end OneColorGradient;

   procedure Patterned
     (This    : FillFormat_Type;
      Pattern : GNATCOM.Types.VARIANT;
      Free    : Boolean := True)
   is
   begin
      Invoke
        (This,
         FillFormat_Patterned,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Pattern),
         Free);
   end Patterned;

   procedure PresetGradient
     (This               : FillFormat_Type;
      Style              : GNATCOM.Types.VARIANT;
      Variant            : GNATCOM.Types.VARIANT;
      PresetGradientType : GNATCOM.Types.VARIANT;
      Free               : Boolean := True)
   is
   begin
      Invoke
        (This,
         FillFormat_PresetGradient,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => PresetGradientType,
          2 => Variant,
          3 => Style),
         Free);
   end PresetGradient;

   procedure PresetTextured
     (This          : FillFormat_Type;
      PresetTexture : GNATCOM.Types.VARIANT;
      Free          : Boolean := True)
   is
   begin
      Invoke
        (This,
         FillFormat_PresetTextured,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => PresetTexture),
         Free);
   end PresetTextured;

   procedure Solid
     (This : FillFormat_Type)
   is
   begin
      Invoke (This, FillFormat_Solid);
   end Solid;

   procedure TwoColorGradient
     (This    : FillFormat_Type;
      Style   : GNATCOM.Types.VARIANT;
      Variant : GNATCOM.Types.VARIANT;
      Free    : Boolean := True)
   is
   begin
      Invoke
        (This,
         FillFormat_TwoColorGradient,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Variant,
          2 => Style),
         Free);
   end TwoColorGradient;

   procedure UserPicture
     (This        : FillFormat_Type;
      PictureFile : GNATCOM.Types.VARIANT;
      Free        : Boolean := True)
   is
   begin
      Invoke
        (This,
         FillFormat_UserPicture,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => PictureFile),
         Free);
   end UserPicture;

   procedure UserTextured
     (This        : FillFormat_Type;
      TextureFile : GNATCOM.Types.VARIANT;
      Free        : Boolean := True)
   is
   begin
      Invoke
        (This,
         FillFormat_UserTextured,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => TextureFile),
         Free);
   end UserTextured;

end winword.FillFormat_Object;

