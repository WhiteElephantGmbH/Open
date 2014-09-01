with GNATCOM.Dispinterface;

package winword.PictureFormat_Object is

   type PictureFormat_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : PictureFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : PictureFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : PictureFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Brightness
     (This : PictureFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Brightness
     (This : PictureFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ColorType
     (This : PictureFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ColorType
     (This : PictureFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Contrast
     (This : PictureFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Contrast
     (This : PictureFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_CropBottom
     (This : PictureFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_CropBottom
     (This : PictureFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_CropLeft
     (This : PictureFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_CropLeft
     (This : PictureFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_CropRight
     (This : PictureFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_CropRight
     (This : PictureFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_CropTop
     (This : PictureFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_CropTop
     (This : PictureFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_TransparencyColor
     (This : PictureFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_TransparencyColor
     (This : PictureFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_TransparentBackground
     (This : PictureFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_TransparentBackground
     (This : PictureFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure IncrementBrightness
     (This      : PictureFormat_Type;
      Increment : GNATCOM.Types.VARIANT;
      Free      : Boolean := True);

   procedure IncrementContrast
     (This      : PictureFormat_Type;
      Increment : GNATCOM.Types.VARIANT;
      Free      : Boolean := True);

end winword.PictureFormat_Object;

