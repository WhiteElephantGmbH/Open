with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.FillFormat_Interface is

   procedure Initialize (This : in out FillFormat_Type) is
   begin
      Set_IID (This, IID_FillFormat);
   end Initialize;

   function Pointer (This : FillFormat_Type)
     return Pointer_To_FillFormat
   is
   begin
      return To_Pointer_To_FillFormat (Address (This));
   end Pointer;

   procedure Attach (This    : in out FillFormat_Type;
                     Pointer : in     Pointer_To_FillFormat)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : FillFormat_Type)
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
     (This : FillFormat_Type)
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
     (This : FillFormat_Type)
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

   function Get_BackColor
     (This : FillFormat_Type)
     return Pointer_To_ColorFormat
   is
       RetVal : aliased Pointer_To_ColorFormat;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_BackColor
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_BackColor;

   function Get_ForeColor
     (This : FillFormat_Type)
     return Pointer_To_ColorFormat
   is
       RetVal : aliased Pointer_To_ColorFormat;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ForeColor
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ForeColor;

   function Get_GradientColorType
     (This : FillFormat_Type)
     return MsoGradientColorType
   is
       RetVal : aliased MsoGradientColorType;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_GradientColorType
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_GradientColorType;

   function Get_GradientDegree
     (This : FillFormat_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_GradientDegree
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_GradientDegree;

   function Get_GradientStyle
     (This : FillFormat_Type)
     return MsoGradientStyle
   is
       RetVal : aliased MsoGradientStyle;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_GradientStyle
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_GradientStyle;

   function Get_GradientVariant
     (This : FillFormat_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_GradientVariant
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_GradientVariant;

   function Get_Pattern
     (This : FillFormat_Type)
     return MsoPatternType
   is
       RetVal : aliased MsoPatternType;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Pattern
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Pattern;

   function Get_PresetGradientType
     (This : FillFormat_Type)
     return MsoPresetGradientType
   is
       RetVal : aliased MsoPresetGradientType;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_PresetGradientType
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_PresetGradientType;

   function Get_PresetTexture
     (This : FillFormat_Type)
     return MsoPresetTexture
   is
       RetVal : aliased MsoPresetTexture;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_PresetTexture
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_PresetTexture;

   function Get_TextureName
     (This : FillFormat_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_TextureName
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_TextureName;

   function Get_TextureType
     (This : FillFormat_Type)
     return MsoTextureType
   is
       RetVal : aliased MsoTextureType;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_TextureType
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_TextureType;

   function Get_Transparency
     (This : FillFormat_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Transparency
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Transparency;

   procedure Put_Transparency
     (This : FillFormat_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Transparency
         (Pointer (This),
          prop));

   end Put_Transparency;

   function Get_Type
     (This : FillFormat_Type)
     return MsoFillType
   is
       RetVal : aliased MsoFillType;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Type
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Type;

   function Get_Visible
     (This : FillFormat_Type)
     return MsoTriState
   is
       RetVal : aliased MsoTriState;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Visible
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Visible;

   procedure Put_Visible
     (This : FillFormat_Type;
      prop : MsoTriState)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Visible
         (Pointer (This),
          prop));

   end Put_Visible;

   procedure Background
     (This : FillFormat_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Background
         (Pointer (This)));

   end Background;

   procedure OneColorGradient
     (This    : FillFormat_Type;
      Style   : MsoGradientStyle;
      Variant : Interfaces.C.long;
      Degree  : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.OneColorGradient
         (Pointer (This),
          Style,
          Variant,
          Degree));

   end OneColorGradient;

   procedure Patterned
     (This    : FillFormat_Type;
      Pattern : MsoPatternType)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Patterned
         (Pointer (This),
          Pattern));

   end Patterned;

   procedure PresetGradient
     (This               : FillFormat_Type;
      Style              : MsoGradientStyle;
      Variant            : Interfaces.C.long;
      PresetGradientType : MsoPresetGradientType)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.PresetGradient
         (Pointer (This),
          Style,
          Variant,
          PresetGradientType));

   end PresetGradient;

   procedure PresetTextured
     (This          : FillFormat_Type;
      PresetTexture : MsoPresetTexture)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.PresetTextured
         (Pointer (This),
          PresetTexture));

   end PresetTextured;

   procedure Solid
     (This : FillFormat_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Solid
         (Pointer (This)));

   end Solid;

   procedure TwoColorGradient
     (This    : FillFormat_Type;
      Style   : MsoGradientStyle;
      Variant : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.TwoColorGradient
         (Pointer (This),
          Style,
          Variant));

   end TwoColorGradient;

   procedure UserPicture
     (This        : FillFormat_Type;
      PictureFile : GNATCOM.Types.BSTR;
      Free        : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.UserPicture
         (Pointer (This),
          PictureFile));

      if Free then
               GNATCOM.Interface.Free (PictureFile);
      
      end if;

   end UserPicture;

   procedure UserTextured
     (This        : FillFormat_Type;
      TextureFile : GNATCOM.Types.BSTR;
      Free        : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.UserTextured
         (Pointer (This),
          TextureFile));

      if Free then
               GNATCOM.Interface.Free (TextureFile);
      
      end if;

   end UserTextured;

end winword.FillFormat_Interface;

