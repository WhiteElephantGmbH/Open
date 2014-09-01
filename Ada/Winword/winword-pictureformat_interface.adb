with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.PictureFormat_Interface is

   procedure Initialize (This : in out PictureFormat_Type) is
   begin
      Set_IID (This, IID_PictureFormat);
   end Initialize;

   function Pointer (This : PictureFormat_Type)
     return Pointer_To_PictureFormat
   is
   begin
      return To_Pointer_To_PictureFormat (Address (This));
   end Pointer;

   procedure Attach (This    : in out PictureFormat_Type;
                     Pointer : in     Pointer_To_PictureFormat)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : PictureFormat_Type)
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
     (This : PictureFormat_Type)
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
     (This : PictureFormat_Type)
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

   function Get_Brightness
     (This : PictureFormat_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Brightness
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Brightness;

   procedure Put_Brightness
     (This : PictureFormat_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Brightness
         (Pointer (This),
          prop));

   end Put_Brightness;

   function Get_ColorType
     (This : PictureFormat_Type)
     return MsoPictureColorType
   is
       RetVal : aliased MsoPictureColorType;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ColorType
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ColorType;

   procedure Put_ColorType
     (This : PictureFormat_Type;
      prop : MsoPictureColorType)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ColorType
         (Pointer (This),
          prop));

   end Put_ColorType;

   function Get_Contrast
     (This : PictureFormat_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Contrast
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Contrast;

   procedure Put_Contrast
     (This : PictureFormat_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Contrast
         (Pointer (This),
          prop));

   end Put_Contrast;

   function Get_CropBottom
     (This : PictureFormat_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_CropBottom
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_CropBottom;

   procedure Put_CropBottom
     (This : PictureFormat_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_CropBottom
         (Pointer (This),
          prop));

   end Put_CropBottom;

   function Get_CropLeft
     (This : PictureFormat_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_CropLeft
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_CropLeft;

   procedure Put_CropLeft
     (This : PictureFormat_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_CropLeft
         (Pointer (This),
          prop));

   end Put_CropLeft;

   function Get_CropRight
     (This : PictureFormat_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_CropRight
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_CropRight;

   procedure Put_CropRight
     (This : PictureFormat_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_CropRight
         (Pointer (This),
          prop));

   end Put_CropRight;

   function Get_CropTop
     (This : PictureFormat_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_CropTop
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_CropTop;

   procedure Put_CropTop
     (This : PictureFormat_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_CropTop
         (Pointer (This),
          prop));

   end Put_CropTop;

   function Get_TransparencyColor
     (This : PictureFormat_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_TransparencyColor
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_TransparencyColor;

   procedure Put_TransparencyColor
     (This : PictureFormat_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_TransparencyColor
         (Pointer (This),
          prop));

   end Put_TransparencyColor;

   function Get_TransparentBackground
     (This : PictureFormat_Type)
     return MsoTriState
   is
       RetVal : aliased MsoTriState;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_TransparentBackground
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_TransparentBackground;

   procedure Put_TransparentBackground
     (This : PictureFormat_Type;
      prop : MsoTriState)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_TransparentBackground
         (Pointer (This),
          prop));

   end Put_TransparentBackground;

   procedure IncrementBrightness
     (This      : PictureFormat_Type;
      Increment : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.IncrementBrightness
         (Pointer (This),
          Increment));

   end IncrementBrightness;

   procedure IncrementContrast
     (This      : PictureFormat_Type;
      Increment : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.IncrementContrast
         (Pointer (This),
          Increment));

   end IncrementContrast;

end winword.PictureFormat_Interface;

