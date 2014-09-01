with GNATCOM.Dispinterface;

package winword.uFont_Interface is

   type uFont_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out uFont_Type);

   function Pointer (This : uFont_Type)
     return Pointer_To_uFont;

   procedure Attach (This    : in out uFont_Type;
                     Pointer : in     Pointer_To_uFont);

   function Get_Application
     (This : uFont_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : uFont_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : uFont_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Duplicate
     (This : uFont_Type)
     return Pointer_To_uFont;

   function Get_Bold
     (This : uFont_Type)
     return Interfaces.C.long;

   procedure Put_Bold
     (This : uFont_Type;
      prop : Interfaces.C.long);

   function Get_Italic
     (This : uFont_Type)
     return Interfaces.C.long;

   procedure Put_Italic
     (This : uFont_Type;
      prop : Interfaces.C.long);

   function Get_Hidden
     (This : uFont_Type)
     return Interfaces.C.long;

   procedure Put_Hidden
     (This : uFont_Type;
      prop : Interfaces.C.long);

   function Get_SmallCaps
     (This : uFont_Type)
     return Interfaces.C.long;

   procedure Put_SmallCaps
     (This : uFont_Type;
      prop : Interfaces.C.long);

   function Get_AllCaps
     (This : uFont_Type)
     return Interfaces.C.long;

   procedure Put_AllCaps
     (This : uFont_Type;
      prop : Interfaces.C.long);

   function Get_StrikeThrough
     (This : uFont_Type)
     return Interfaces.C.long;

   procedure Put_StrikeThrough
     (This : uFont_Type;
      prop : Interfaces.C.long);

   function Get_DoubleStrikeThrough
     (This : uFont_Type)
     return Interfaces.C.long;

   procedure Put_DoubleStrikeThrough
     (This : uFont_Type;
      prop : Interfaces.C.long);

   function Get_ColorIndex
     (This : uFont_Type)
     return WdColorIndex;

   procedure Put_ColorIndex
     (This : uFont_Type;
      prop : WdColorIndex);

   function Get_Subscript
     (This : uFont_Type)
     return Interfaces.C.long;

   procedure Put_Subscript
     (This : uFont_Type;
      prop : Interfaces.C.long);

   function Get_Superscript
     (This : uFont_Type)
     return Interfaces.C.long;

   procedure Put_Superscript
     (This : uFont_Type;
      prop : Interfaces.C.long);

   function Get_Underline
     (This : uFont_Type)
     return WdUnderline;

   procedure Put_Underline
     (This : uFont_Type;
      prop : WdUnderline);

   function Get_Size
     (This : uFont_Type)
     return Interfaces.C.C_float;

   procedure Put_Size
     (This : uFont_Type;
      prop : Interfaces.C.C_float);

   function Get_Name
     (This : uFont_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_Name
     (This : uFont_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_Position
     (This : uFont_Type)
     return Interfaces.C.long;

   procedure Put_Position
     (This : uFont_Type;
      prop : Interfaces.C.long);

   function Get_Spacing
     (This : uFont_Type)
     return Interfaces.C.C_float;

   procedure Put_Spacing
     (This : uFont_Type;
      prop : Interfaces.C.C_float);

   function Get_Scaling
     (This : uFont_Type)
     return Interfaces.C.long;

   procedure Put_Scaling
     (This : uFont_Type;
      prop : Interfaces.C.long);

   function Get_Shadow
     (This : uFont_Type)
     return Interfaces.C.long;

   procedure Put_Shadow
     (This : uFont_Type;
      prop : Interfaces.C.long);

   function Get_Outline
     (This : uFont_Type)
     return Interfaces.C.long;

   procedure Put_Outline
     (This : uFont_Type;
      prop : Interfaces.C.long);

   function Get_Emboss
     (This : uFont_Type)
     return Interfaces.C.long;

   procedure Put_Emboss
     (This : uFont_Type;
      prop : Interfaces.C.long);

   function Get_Kerning
     (This : uFont_Type)
     return Interfaces.C.C_float;

   procedure Put_Kerning
     (This : uFont_Type;
      prop : Interfaces.C.C_float);

   function Get_Engrave
     (This : uFont_Type)
     return Interfaces.C.long;

   procedure Put_Engrave
     (This : uFont_Type;
      prop : Interfaces.C.long);

   function Get_Animation
     (This : uFont_Type)
     return WdAnimation;

   procedure Put_Animation
     (This : uFont_Type;
      prop : WdAnimation);

   function Get_Borders
     (This : uFont_Type)
     return Pointer_To_Borders;

   procedure Put_Borders
     (This : uFont_Type;
      prop : Pointer_To_Borders);

   function Get_Shading
     (This : uFont_Type)
     return Pointer_To_Shading;

   function Get_EmphasisMark
     (This : uFont_Type)
     return WdEmphasisMark;

   procedure Put_EmphasisMark
     (This : uFont_Type;
      prop : WdEmphasisMark);

   function Get_DisableCharacterSpaceGrid
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_DisableCharacterSpaceGrid
     (This : uFont_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_NameFarEast
     (This : uFont_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_NameFarEast
     (This : uFont_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_NameAscii
     (This : uFont_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_NameAscii
     (This : uFont_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_NameOther
     (This : uFont_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_NameOther
     (This : uFont_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   procedure Grow
     (This : uFont_Type);

   procedure Shrink
     (This : uFont_Type);

   procedure Reset
     (This : uFont_Type);

   procedure SetAsTemplateDefault
     (This : uFont_Type);

   function Get_Color
     (This : uFont_Type)
     return WdColor;

   procedure Put_Color
     (This : uFont_Type;
      prop : WdColor);

   function Get_BoldBi
     (This : uFont_Type)
     return Interfaces.C.long;

   procedure Put_BoldBi
     (This : uFont_Type;
      prop : Interfaces.C.long);

   function Get_ItalicBi
     (This : uFont_Type)
     return Interfaces.C.long;

   procedure Put_ItalicBi
     (This : uFont_Type;
      prop : Interfaces.C.long);

   function Get_SizeBi
     (This : uFont_Type)
     return Interfaces.C.C_float;

   procedure Put_SizeBi
     (This : uFont_Type;
      prop : Interfaces.C.C_float);

   function Get_NameBi
     (This : uFont_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_NameBi
     (This : uFont_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_ColorIndexBi
     (This : uFont_Type)
     return WdColorIndex;

   procedure Put_ColorIndexBi
     (This : uFont_Type;
      prop : WdColorIndex);

   function Get_DiacriticColor
     (This : uFont_Type)
     return WdColor;

   procedure Put_DiacriticColor
     (This : uFont_Type;
      prop : WdColor);

   function Get_UnderlineColor
     (This : uFont_Type)
     return WdColor;

   procedure Put_UnderlineColor
     (This : uFont_Type;
      prop : WdColor);

end winword.uFont_Interface;

