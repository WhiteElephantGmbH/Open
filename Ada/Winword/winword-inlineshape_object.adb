package body winword.InlineShape_Object is

   function Get_Application
     (This : InlineShape_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, InlineShape_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : InlineShape_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, InlineShape_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : InlineShape_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, InlineShape_Get_Parent);
   end Get_Parent;

   function Get_Borders
     (This : InlineShape_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, InlineShape_Get_Borders);
   end Get_Borders;

   procedure Put_Borders
     (This : InlineShape_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         InlineShape_Put_Borders,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Borders;

   function Get_Range
     (This : InlineShape_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, InlineShape_Get_Range);
   end Get_Range;

   function Get_LinkFormat
     (This : InlineShape_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, InlineShape_Get_LinkFormat);
   end Get_LinkFormat;

   function Get_Field
     (This : InlineShape_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, InlineShape_Get_Field);
   end Get_Field;

   function Get_OLEFormat
     (This : InlineShape_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, InlineShape_Get_OLEFormat);
   end Get_OLEFormat;

   function Get_Type
     (This : InlineShape_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, InlineShape_Get_Type);
   end Get_Type;

   function Get_Hyperlink
     (This : InlineShape_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, InlineShape_Get_Hyperlink);
   end Get_Hyperlink;

   function Get_Height
     (This : InlineShape_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, InlineShape_Get_Height);
   end Get_Height;

   procedure Put_Height
     (This : InlineShape_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         InlineShape_Put_Height,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Height;

   function Get_Width
     (This : InlineShape_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, InlineShape_Get_Width);
   end Get_Width;

   procedure Put_Width
     (This : InlineShape_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         InlineShape_Put_Width,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Width;

   function Get_ScaleHeight
     (This : InlineShape_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, InlineShape_Get_ScaleHeight);
   end Get_ScaleHeight;

   procedure Put_ScaleHeight
     (This : InlineShape_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         InlineShape_Put_ScaleHeight,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ScaleHeight;

   function Get_ScaleWidth
     (This : InlineShape_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, InlineShape_Get_ScaleWidth);
   end Get_ScaleWidth;

   procedure Put_ScaleWidth
     (This : InlineShape_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         InlineShape_Put_ScaleWidth,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ScaleWidth;

   function Get_LockAspectRatio
     (This : InlineShape_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, InlineShape_Get_LockAspectRatio);
   end Get_LockAspectRatio;

   procedure Put_LockAspectRatio
     (This : InlineShape_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         InlineShape_Put_LockAspectRatio,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_LockAspectRatio;

   function Get_Line
     (This : InlineShape_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, InlineShape_Get_Line);
   end Get_Line;

   function Get_Fill
     (This : InlineShape_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, InlineShape_Get_Fill);
   end Get_Fill;

   function Get_PictureFormat
     (This : InlineShape_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, InlineShape_Get_PictureFormat);
   end Get_PictureFormat;

   procedure Put_PictureFormat
     (This : InlineShape_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         InlineShape_Put_PictureFormat,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_PictureFormat;

   procedure Activate
     (This : InlineShape_Type)
   is
   begin
      Invoke (This, InlineShape_Activate);
   end Activate;

   procedure Reset
     (This : InlineShape_Type)
   is
   begin
      Invoke (This, InlineShape_Reset);
   end Reset;

   procedure Delete
     (This : InlineShape_Type)
   is
   begin
      Invoke (This, InlineShape_Delete);
   end Delete;

   procedure uSelect
     (This : InlineShape_Type)
   is
   begin
      Invoke (This, InlineShape_uSelect);
   end uSelect;

   function ConvertToShape
     (This : InlineShape_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke (This, InlineShape_ConvertToShape);
   end ConvertToShape;

   function Get_HorizontalLineFormat
     (This : InlineShape_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, InlineShape_Get_HorizontalLineFormat);
   end Get_HorizontalLineFormat;

   function Get_Script
     (This : InlineShape_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, InlineShape_Get_Script);
   end Get_Script;

   function Get_OWSAnchor
     (This : InlineShape_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, InlineShape_Get_OWSAnchor);
   end Get_OWSAnchor;

   function Get_TextEffect
     (This : InlineShape_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, InlineShape_Get_TextEffect);
   end Get_TextEffect;

   procedure Put_TextEffect
     (This : InlineShape_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         InlineShape_Put_TextEffect,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_TextEffect;

   function Get_AlternativeText
     (This : InlineShape_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, InlineShape_Get_AlternativeText);
   end Get_AlternativeText;

   procedure Put_AlternativeText
     (This : InlineShape_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         InlineShape_Put_AlternativeText,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AlternativeText;

   function Get_IsPictureBullet
     (This : InlineShape_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, InlineShape_Get_IsPictureBullet);
   end Get_IsPictureBullet;

end winword.InlineShape_Object;

