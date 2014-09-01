with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.InlineShape_Interface is

   procedure Initialize (This : in out InlineShape_Type) is
   begin
      Set_IID (This, IID_InlineShape);
   end Initialize;

   function Pointer (This : InlineShape_Type)
     return Pointer_To_InlineShape
   is
   begin
      return To_Pointer_To_InlineShape (Address (This));
   end Pointer;

   procedure Attach (This    : in out InlineShape_Type;
                     Pointer : in     Pointer_To_InlineShape)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : InlineShape_Type)
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
     (This : InlineShape_Type)
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
     (This : InlineShape_Type)
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

   function Get_Borders
     (This : InlineShape_Type)
     return Pointer_To_Borders
   is
       RetVal : aliased Pointer_To_Borders;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Borders
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Borders;

   procedure Put_Borders
     (This : InlineShape_Type;
      prop : Pointer_To_Borders)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Borders
         (Pointer (This),
          prop));

   end Put_Borders;

   function Get_Range
     (This : InlineShape_Type)
     return Pointer_To_uRange
   is
       RetVal : aliased Pointer_To_uRange;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Range
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Range;

   function Get_LinkFormat
     (This : InlineShape_Type)
     return Pointer_To_LinkFormat
   is
       RetVal : aliased Pointer_To_LinkFormat;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_LinkFormat
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_LinkFormat;

   function Get_Field
     (This : InlineShape_Type)
     return Pointer_To_Field
   is
       RetVal : aliased Pointer_To_Field;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Field
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Field;

   function Get_OLEFormat
     (This : InlineShape_Type)
     return Pointer_To_OLEFormat
   is
       RetVal : aliased Pointer_To_OLEFormat;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_OLEFormat
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_OLEFormat;

   function Get_Type
     (This : InlineShape_Type)
     return WdInlineShapeType
   is
       RetVal : aliased WdInlineShapeType;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Type
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Type;

   function Get_Hyperlink
     (This : InlineShape_Type)
     return Pointer_To_Hyperlink
   is
       RetVal : aliased Pointer_To_Hyperlink;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Hyperlink
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Hyperlink;

   function Get_Height
     (This : InlineShape_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Height
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Height;

   procedure Put_Height
     (This : InlineShape_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Height
         (Pointer (This),
          prop));

   end Put_Height;

   function Get_Width
     (This : InlineShape_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Width
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Width;

   procedure Put_Width
     (This : InlineShape_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Width
         (Pointer (This),
          prop));

   end Put_Width;

   function Get_ScaleHeight
     (This : InlineShape_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ScaleHeight
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ScaleHeight;

   procedure Put_ScaleHeight
     (This : InlineShape_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ScaleHeight
         (Pointer (This),
          prop));

   end Put_ScaleHeight;

   function Get_ScaleWidth
     (This : InlineShape_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ScaleWidth
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ScaleWidth;

   procedure Put_ScaleWidth
     (This : InlineShape_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ScaleWidth
         (Pointer (This),
          prop));

   end Put_ScaleWidth;

   function Get_LockAspectRatio
     (This : InlineShape_Type)
     return MsoTriState
   is
       RetVal : aliased MsoTriState;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_LockAspectRatio
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_LockAspectRatio;

   procedure Put_LockAspectRatio
     (This : InlineShape_Type;
      prop : MsoTriState)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_LockAspectRatio
         (Pointer (This),
          prop));

   end Put_LockAspectRatio;

   function Get_Line
     (This : InlineShape_Type)
     return Pointer_To_LineFormat
   is
       RetVal : aliased Pointer_To_LineFormat;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Line
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Line;

   function Get_Fill
     (This : InlineShape_Type)
     return Pointer_To_FillFormat
   is
       RetVal : aliased Pointer_To_FillFormat;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Fill
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Fill;

   function Get_PictureFormat
     (This : InlineShape_Type)
     return Pointer_To_PictureFormat
   is
       RetVal : aliased Pointer_To_PictureFormat;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_PictureFormat
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_PictureFormat;

   procedure Put_PictureFormat
     (This : InlineShape_Type;
      prop : Pointer_To_PictureFormat)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_PictureFormat
         (Pointer (This),
          prop));

   end Put_PictureFormat;

   procedure Activate
     (This : InlineShape_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Activate
         (Pointer (This)));

   end Activate;

   procedure Reset
     (This : InlineShape_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Reset
         (Pointer (This)));

   end Reset;

   procedure Delete
     (This : InlineShape_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Delete
         (Pointer (This)));

   end Delete;

   procedure uSelect
     (This : InlineShape_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.uSelect
         (Pointer (This)));

   end uSelect;

   function ConvertToShape
     (This : InlineShape_Type)
     return Pointer_To_Shape
   is
       RetVal : aliased Pointer_To_Shape;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ConvertToShape
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end ConvertToShape;

   function Get_HorizontalLineFormat
     (This : InlineShape_Type)
     return Pointer_To_HorizontalLineFormat
   is
       RetVal : aliased Pointer_To_HorizontalLineFormat;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_HorizontalLineFormat
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_HorizontalLineFormat;

   function Get_Script
     (This : InlineShape_Type)
     return Pointer_To_Script
   is
       RetVal : aliased Pointer_To_Script;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Script
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Script;

   function Get_OWSAnchor
     (This : InlineShape_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_OWSAnchor
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_OWSAnchor;

   function Get_TextEffect
     (This : InlineShape_Type)
     return Pointer_To_TextEffectFormat
   is
       RetVal : aliased Pointer_To_TextEffectFormat;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_TextEffect
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_TextEffect;

   procedure Put_TextEffect
     (This : InlineShape_Type;
      prop : Pointer_To_TextEffectFormat)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_TextEffect
         (Pointer (This),
          prop));

   end Put_TextEffect;

   function Get_AlternativeText
     (This : InlineShape_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AlternativeText
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AlternativeText;

   procedure Put_AlternativeText
     (This : InlineShape_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AlternativeText
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_AlternativeText;

   function Get_IsPictureBullet
     (This : InlineShape_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_IsPictureBullet
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_IsPictureBullet;

end winword.InlineShape_Interface;

