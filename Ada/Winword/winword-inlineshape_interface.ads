with GNATCOM.Dispinterface;

package winword.InlineShape_Interface is

   type InlineShape_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out InlineShape_Type);

   function Pointer (This : InlineShape_Type)
     return Pointer_To_InlineShape;

   procedure Attach (This    : in out InlineShape_Type;
                     Pointer : in     Pointer_To_InlineShape);

   function Get_Application
     (This : InlineShape_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : InlineShape_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : InlineShape_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Borders
     (This : InlineShape_Type)
     return Pointer_To_Borders;

   procedure Put_Borders
     (This : InlineShape_Type;
      prop : Pointer_To_Borders);

   function Get_Range
     (This : InlineShape_Type)
     return Pointer_To_uRange;

   function Get_LinkFormat
     (This : InlineShape_Type)
     return Pointer_To_LinkFormat;

   function Get_Field
     (This : InlineShape_Type)
     return Pointer_To_Field;

   function Get_OLEFormat
     (This : InlineShape_Type)
     return Pointer_To_OLEFormat;

   function Get_Type
     (This : InlineShape_Type)
     return WdInlineShapeType;

   function Get_Hyperlink
     (This : InlineShape_Type)
     return Pointer_To_Hyperlink;

   function Get_Height
     (This : InlineShape_Type)
     return Interfaces.C.C_float;

   procedure Put_Height
     (This : InlineShape_Type;
      prop : Interfaces.C.C_float);

   function Get_Width
     (This : InlineShape_Type)
     return Interfaces.C.C_float;

   procedure Put_Width
     (This : InlineShape_Type;
      prop : Interfaces.C.C_float);

   function Get_ScaleHeight
     (This : InlineShape_Type)
     return Interfaces.C.C_float;

   procedure Put_ScaleHeight
     (This : InlineShape_Type;
      prop : Interfaces.C.C_float);

   function Get_ScaleWidth
     (This : InlineShape_Type)
     return Interfaces.C.C_float;

   procedure Put_ScaleWidth
     (This : InlineShape_Type;
      prop : Interfaces.C.C_float);

   function Get_LockAspectRatio
     (This : InlineShape_Type)
     return MsoTriState;

   procedure Put_LockAspectRatio
     (This : InlineShape_Type;
      prop : MsoTriState);

   function Get_Line
     (This : InlineShape_Type)
     return Pointer_To_LineFormat;

   function Get_Fill
     (This : InlineShape_Type)
     return Pointer_To_FillFormat;

   function Get_PictureFormat
     (This : InlineShape_Type)
     return Pointer_To_PictureFormat;

   procedure Put_PictureFormat
     (This : InlineShape_Type;
      prop : Pointer_To_PictureFormat);

   procedure Activate
     (This : InlineShape_Type);

   procedure Reset
     (This : InlineShape_Type);

   procedure Delete
     (This : InlineShape_Type);

   procedure uSelect
     (This : InlineShape_Type);

   function ConvertToShape
     (This : InlineShape_Type)
     return Pointer_To_Shape;

   function Get_HorizontalLineFormat
     (This : InlineShape_Type)
     return Pointer_To_HorizontalLineFormat;

   function Get_Script
     (This : InlineShape_Type)
     return Pointer_To_Script;

   function Get_OWSAnchor
     (This : InlineShape_Type)
     return Interfaces.C.long;

   function Get_TextEffect
     (This : InlineShape_Type)
     return Pointer_To_TextEffectFormat;

   procedure Put_TextEffect
     (This : InlineShape_Type;
      prop : Pointer_To_TextEffectFormat);

   function Get_AlternativeText
     (This : InlineShape_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_AlternativeText
     (This : InlineShape_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_IsPictureBullet
     (This : InlineShape_Type)
     return GNATCOM.Types.VARIANT_BOOL;

end winword.InlineShape_Interface;

