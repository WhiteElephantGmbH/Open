with GNATCOM.Dispinterface;

package winword.InlineShape_Object is

   type InlineShape_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : InlineShape_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : InlineShape_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : InlineShape_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Borders
     (This : InlineShape_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Borders
     (This : InlineShape_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Range
     (This : InlineShape_Type)
     return GNATCOM.Types.VARIANT;

   function Get_LinkFormat
     (This : InlineShape_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Field
     (This : InlineShape_Type)
     return GNATCOM.Types.VARIANT;

   function Get_OLEFormat
     (This : InlineShape_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Type
     (This : InlineShape_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Hyperlink
     (This : InlineShape_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Height
     (This : InlineShape_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Height
     (This : InlineShape_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Width
     (This : InlineShape_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Width
     (This : InlineShape_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ScaleHeight
     (This : InlineShape_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ScaleHeight
     (This : InlineShape_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ScaleWidth
     (This : InlineShape_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ScaleWidth
     (This : InlineShape_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_LockAspectRatio
     (This : InlineShape_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_LockAspectRatio
     (This : InlineShape_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Line
     (This : InlineShape_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Fill
     (This : InlineShape_Type)
     return GNATCOM.Types.VARIANT;

   function Get_PictureFormat
     (This : InlineShape_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_PictureFormat
     (This : InlineShape_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

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
     return GNATCOM.Types.VARIANT;

   function Get_HorizontalLineFormat
     (This : InlineShape_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Script
     (This : InlineShape_Type)
     return GNATCOM.Types.VARIANT;

   function Get_OWSAnchor
     (This : InlineShape_Type)
     return GNATCOM.Types.VARIANT;

   function Get_TextEffect
     (This : InlineShape_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_TextEffect
     (This : InlineShape_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AlternativeText
     (This : InlineShape_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AlternativeText
     (This : InlineShape_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_IsPictureBullet
     (This : InlineShape_Type)
     return GNATCOM.Types.VARIANT;

end winword.InlineShape_Object;

