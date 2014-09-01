with GNATCOM.Dispinterface;

package winword.uFont_Object is

   type uFont_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Duplicate
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Bold
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Bold
     (This : uFont_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Italic
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Italic
     (This : uFont_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Hidden
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Hidden
     (This : uFont_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_SmallCaps
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_SmallCaps
     (This : uFont_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AllCaps
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AllCaps
     (This : uFont_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_StrikeThrough
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_StrikeThrough
     (This : uFont_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_DoubleStrikeThrough
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DoubleStrikeThrough
     (This : uFont_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ColorIndex
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ColorIndex
     (This : uFont_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Subscript
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Subscript
     (This : uFont_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Superscript
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Superscript
     (This : uFont_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Underline
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Underline
     (This : uFont_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Size
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Size
     (This : uFont_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Name
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Name
     (This : uFont_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Position
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Position
     (This : uFont_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Spacing
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Spacing
     (This : uFont_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Scaling
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Scaling
     (This : uFont_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Shadow
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Shadow
     (This : uFont_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Outline
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Outline
     (This : uFont_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Emboss
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Emboss
     (This : uFont_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Kerning
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Kerning
     (This : uFont_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Engrave
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Engrave
     (This : uFont_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Animation
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Animation
     (This : uFont_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Borders
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Borders
     (This : uFont_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Shading
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT;

   function Get_EmphasisMark
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_EmphasisMark
     (This : uFont_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_DisableCharacterSpaceGrid
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DisableCharacterSpaceGrid
     (This : uFont_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_NameFarEast
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_NameFarEast
     (This : uFont_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_NameAscii
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_NameAscii
     (This : uFont_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_NameOther
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_NameOther
     (This : uFont_Type;
      P1   : GNATCOM.Types.VARIANT;
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
     return GNATCOM.Types.VARIANT;

   procedure Put_Color
     (This : uFont_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_BoldBi
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_BoldBi
     (This : uFont_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ItalicBi
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ItalicBi
     (This : uFont_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_SizeBi
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_SizeBi
     (This : uFont_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_NameBi
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_NameBi
     (This : uFont_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ColorIndexBi
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ColorIndexBi
     (This : uFont_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_DiacriticColor
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DiacriticColor
     (This : uFont_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_UnderlineColor
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_UnderlineColor
     (This : uFont_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

end winword.uFont_Object;

