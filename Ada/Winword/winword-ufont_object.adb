package body winword.uFont_Object is

   function Get_Application
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uFont_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uFont_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uFont_Get_Parent);
   end Get_Parent;

   function Get_Duplicate
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uFont_Get_Duplicate);
   end Get_Duplicate;

   function Get_Bold
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uFont_Get_Bold);
   end Get_Bold;

   procedure Put_Bold
     (This : uFont_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uFont_Put_Bold,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Bold;

   function Get_Italic
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uFont_Get_Italic);
   end Get_Italic;

   procedure Put_Italic
     (This : uFont_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uFont_Put_Italic,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Italic;

   function Get_Hidden
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uFont_Get_Hidden);
   end Get_Hidden;

   procedure Put_Hidden
     (This : uFont_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uFont_Put_Hidden,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Hidden;

   function Get_SmallCaps
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uFont_Get_SmallCaps);
   end Get_SmallCaps;

   procedure Put_SmallCaps
     (This : uFont_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uFont_Put_SmallCaps,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_SmallCaps;

   function Get_AllCaps
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uFont_Get_AllCaps);
   end Get_AllCaps;

   procedure Put_AllCaps
     (This : uFont_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uFont_Put_AllCaps,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AllCaps;

   function Get_StrikeThrough
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uFont_Get_StrikeThrough);
   end Get_StrikeThrough;

   procedure Put_StrikeThrough
     (This : uFont_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uFont_Put_StrikeThrough,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_StrikeThrough;

   function Get_DoubleStrikeThrough
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uFont_Get_DoubleStrikeThrough);
   end Get_DoubleStrikeThrough;

   procedure Put_DoubleStrikeThrough
     (This : uFont_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uFont_Put_DoubleStrikeThrough,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DoubleStrikeThrough;

   function Get_ColorIndex
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uFont_Get_ColorIndex);
   end Get_ColorIndex;

   procedure Put_ColorIndex
     (This : uFont_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uFont_Put_ColorIndex,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ColorIndex;

   function Get_Subscript
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uFont_Get_Subscript);
   end Get_Subscript;

   procedure Put_Subscript
     (This : uFont_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uFont_Put_Subscript,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Subscript;

   function Get_Superscript
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uFont_Get_Superscript);
   end Get_Superscript;

   procedure Put_Superscript
     (This : uFont_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uFont_Put_Superscript,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Superscript;

   function Get_Underline
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uFont_Get_Underline);
   end Get_Underline;

   procedure Put_Underline
     (This : uFont_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uFont_Put_Underline,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Underline;

   function Get_Size
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uFont_Get_Size);
   end Get_Size;

   procedure Put_Size
     (This : uFont_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uFont_Put_Size,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Size;

   function Get_Name
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uFont_Get_Name);
   end Get_Name;

   procedure Put_Name
     (This : uFont_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uFont_Put_Name,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Name;

   function Get_Position
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uFont_Get_Position);
   end Get_Position;

   procedure Put_Position
     (This : uFont_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uFont_Put_Position,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Position;

   function Get_Spacing
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uFont_Get_Spacing);
   end Get_Spacing;

   procedure Put_Spacing
     (This : uFont_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uFont_Put_Spacing,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Spacing;

   function Get_Scaling
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uFont_Get_Scaling);
   end Get_Scaling;

   procedure Put_Scaling
     (This : uFont_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uFont_Put_Scaling,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Scaling;

   function Get_Shadow
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uFont_Get_Shadow);
   end Get_Shadow;

   procedure Put_Shadow
     (This : uFont_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uFont_Put_Shadow,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Shadow;

   function Get_Outline
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uFont_Get_Outline);
   end Get_Outline;

   procedure Put_Outline
     (This : uFont_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uFont_Put_Outline,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Outline;

   function Get_Emboss
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uFont_Get_Emboss);
   end Get_Emboss;

   procedure Put_Emboss
     (This : uFont_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uFont_Put_Emboss,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Emboss;

   function Get_Kerning
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uFont_Get_Kerning);
   end Get_Kerning;

   procedure Put_Kerning
     (This : uFont_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uFont_Put_Kerning,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Kerning;

   function Get_Engrave
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uFont_Get_Engrave);
   end Get_Engrave;

   procedure Put_Engrave
     (This : uFont_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uFont_Put_Engrave,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Engrave;

   function Get_Animation
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uFont_Get_Animation);
   end Get_Animation;

   procedure Put_Animation
     (This : uFont_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uFont_Put_Animation,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Animation;

   function Get_Borders
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uFont_Get_Borders);
   end Get_Borders;

   procedure Put_Borders
     (This : uFont_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uFont_Put_Borders,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Borders;

   function Get_Shading
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uFont_Get_Shading);
   end Get_Shading;

   function Get_EmphasisMark
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uFont_Get_EmphasisMark);
   end Get_EmphasisMark;

   procedure Put_EmphasisMark
     (This : uFont_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uFont_Put_EmphasisMark,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_EmphasisMark;

   function Get_DisableCharacterSpaceGrid
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uFont_Get_DisableCharacterSpaceGrid);
   end Get_DisableCharacterSpaceGrid;

   procedure Put_DisableCharacterSpaceGrid
     (This : uFont_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uFont_Put_DisableCharacterSpaceGrid,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DisableCharacterSpaceGrid;

   function Get_NameFarEast
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uFont_Get_NameFarEast);
   end Get_NameFarEast;

   procedure Put_NameFarEast
     (This : uFont_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uFont_Put_NameFarEast,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_NameFarEast;

   function Get_NameAscii
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uFont_Get_NameAscii);
   end Get_NameAscii;

   procedure Put_NameAscii
     (This : uFont_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uFont_Put_NameAscii,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_NameAscii;

   function Get_NameOther
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uFont_Get_NameOther);
   end Get_NameOther;

   procedure Put_NameOther
     (This : uFont_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uFont_Put_NameOther,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_NameOther;

   procedure Grow
     (This : uFont_Type)
   is
   begin
      Invoke (This, uFont_Grow);
   end Grow;

   procedure Shrink
     (This : uFont_Type)
   is
   begin
      Invoke (This, uFont_Shrink);
   end Shrink;

   procedure Reset
     (This : uFont_Type)
   is
   begin
      Invoke (This, uFont_Reset);
   end Reset;

   procedure SetAsTemplateDefault
     (This : uFont_Type)
   is
   begin
      Invoke (This, uFont_SetAsTemplateDefault);
   end SetAsTemplateDefault;

   function Get_Color
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uFont_Get_Color);
   end Get_Color;

   procedure Put_Color
     (This : uFont_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uFont_Put_Color,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Color;

   function Get_BoldBi
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uFont_Get_BoldBi);
   end Get_BoldBi;

   procedure Put_BoldBi
     (This : uFont_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uFont_Put_BoldBi,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_BoldBi;

   function Get_ItalicBi
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uFont_Get_ItalicBi);
   end Get_ItalicBi;

   procedure Put_ItalicBi
     (This : uFont_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uFont_Put_ItalicBi,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ItalicBi;

   function Get_SizeBi
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uFont_Get_SizeBi);
   end Get_SizeBi;

   procedure Put_SizeBi
     (This : uFont_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uFont_Put_SizeBi,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_SizeBi;

   function Get_NameBi
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uFont_Get_NameBi);
   end Get_NameBi;

   procedure Put_NameBi
     (This : uFont_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uFont_Put_NameBi,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_NameBi;

   function Get_ColorIndexBi
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uFont_Get_ColorIndexBi);
   end Get_ColorIndexBi;

   procedure Put_ColorIndexBi
     (This : uFont_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uFont_Put_ColorIndexBi,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ColorIndexBi;

   function Get_DiacriticColor
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uFont_Get_DiacriticColor);
   end Get_DiacriticColor;

   procedure Put_DiacriticColor
     (This : uFont_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uFont_Put_DiacriticColor,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DiacriticColor;

   function Get_UnderlineColor
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uFont_Get_UnderlineColor);
   end Get_UnderlineColor;

   procedure Put_UnderlineColor
     (This : uFont_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uFont_Put_UnderlineColor,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_UnderlineColor;

end winword.uFont_Object;

