package body winword.PictureFormat_Object is

   function Get_Application
     (This : PictureFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, PictureFormat_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : PictureFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, PictureFormat_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : PictureFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, PictureFormat_Get_Parent);
   end Get_Parent;

   function Get_Brightness
     (This : PictureFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, PictureFormat_Get_Brightness);
   end Get_Brightness;

   procedure Put_Brightness
     (This : PictureFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         PictureFormat_Put_Brightness,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Brightness;

   function Get_ColorType
     (This : PictureFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, PictureFormat_Get_ColorType);
   end Get_ColorType;

   procedure Put_ColorType
     (This : PictureFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         PictureFormat_Put_ColorType,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ColorType;

   function Get_Contrast
     (This : PictureFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, PictureFormat_Get_Contrast);
   end Get_Contrast;

   procedure Put_Contrast
     (This : PictureFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         PictureFormat_Put_Contrast,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Contrast;

   function Get_CropBottom
     (This : PictureFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, PictureFormat_Get_CropBottom);
   end Get_CropBottom;

   procedure Put_CropBottom
     (This : PictureFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         PictureFormat_Put_CropBottom,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_CropBottom;

   function Get_CropLeft
     (This : PictureFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, PictureFormat_Get_CropLeft);
   end Get_CropLeft;

   procedure Put_CropLeft
     (This : PictureFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         PictureFormat_Put_CropLeft,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_CropLeft;

   function Get_CropRight
     (This : PictureFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, PictureFormat_Get_CropRight);
   end Get_CropRight;

   procedure Put_CropRight
     (This : PictureFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         PictureFormat_Put_CropRight,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_CropRight;

   function Get_CropTop
     (This : PictureFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, PictureFormat_Get_CropTop);
   end Get_CropTop;

   procedure Put_CropTop
     (This : PictureFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         PictureFormat_Put_CropTop,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_CropTop;

   function Get_TransparencyColor
     (This : PictureFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, PictureFormat_Get_TransparencyColor);
   end Get_TransparencyColor;

   procedure Put_TransparencyColor
     (This : PictureFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         PictureFormat_Put_TransparencyColor,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_TransparencyColor;

   function Get_TransparentBackground
     (This : PictureFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, PictureFormat_Get_TransparentBackground);
   end Get_TransparentBackground;

   procedure Put_TransparentBackground
     (This : PictureFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         PictureFormat_Put_TransparentBackground,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_TransparentBackground;

   procedure IncrementBrightness
     (This      : PictureFormat_Type;
      Increment : GNATCOM.Types.VARIANT;
      Free      : Boolean := True)
   is
   begin
      Invoke
        (This,
         PictureFormat_IncrementBrightness,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Increment),
         Free);
   end IncrementBrightness;

   procedure IncrementContrast
     (This      : PictureFormat_Type;
      Increment : GNATCOM.Types.VARIANT;
      Free      : Boolean := True)
   is
   begin
      Invoke
        (This,
         PictureFormat_IncrementContrast,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Increment),
         Free);
   end IncrementContrast;

end winword.PictureFormat_Object;

