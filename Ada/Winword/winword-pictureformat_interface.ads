with GNATCOM.Dispinterface;

package winword.PictureFormat_Interface is

   type PictureFormat_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out PictureFormat_Type);

   function Pointer (This : PictureFormat_Type)
     return Pointer_To_PictureFormat;

   procedure Attach (This    : in out PictureFormat_Type;
                     Pointer : in     Pointer_To_PictureFormat);

   function Get_Application
     (This : PictureFormat_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : PictureFormat_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : PictureFormat_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Brightness
     (This : PictureFormat_Type)
     return Interfaces.C.C_float;

   procedure Put_Brightness
     (This : PictureFormat_Type;
      prop : Interfaces.C.C_float);

   function Get_ColorType
     (This : PictureFormat_Type)
     return MsoPictureColorType;

   procedure Put_ColorType
     (This : PictureFormat_Type;
      prop : MsoPictureColorType);

   function Get_Contrast
     (This : PictureFormat_Type)
     return Interfaces.C.C_float;

   procedure Put_Contrast
     (This : PictureFormat_Type;
      prop : Interfaces.C.C_float);

   function Get_CropBottom
     (This : PictureFormat_Type)
     return Interfaces.C.C_float;

   procedure Put_CropBottom
     (This : PictureFormat_Type;
      prop : Interfaces.C.C_float);

   function Get_CropLeft
     (This : PictureFormat_Type)
     return Interfaces.C.C_float;

   procedure Put_CropLeft
     (This : PictureFormat_Type;
      prop : Interfaces.C.C_float);

   function Get_CropRight
     (This : PictureFormat_Type)
     return Interfaces.C.C_float;

   procedure Put_CropRight
     (This : PictureFormat_Type;
      prop : Interfaces.C.C_float);

   function Get_CropTop
     (This : PictureFormat_Type)
     return Interfaces.C.C_float;

   procedure Put_CropTop
     (This : PictureFormat_Type;
      prop : Interfaces.C.C_float);

   function Get_TransparencyColor
     (This : PictureFormat_Type)
     return Interfaces.C.long;

   procedure Put_TransparencyColor
     (This : PictureFormat_Type;
      prop : Interfaces.C.long);

   function Get_TransparentBackground
     (This : PictureFormat_Type)
     return MsoTriState;

   procedure Put_TransparentBackground
     (This : PictureFormat_Type;
      prop : MsoTriState);

   procedure IncrementBrightness
     (This      : PictureFormat_Type;
      Increment : Interfaces.C.C_float);

   procedure IncrementContrast
     (This      : PictureFormat_Type;
      Increment : Interfaces.C.C_float);

end winword.PictureFormat_Interface;

