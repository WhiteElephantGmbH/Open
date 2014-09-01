with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.uFont_Interface is

   procedure Initialize (This : in out uFont_Type) is
   begin
      Set_IID (This, IID_uFont);
   end Initialize;

   function Pointer (This : uFont_Type)
     return Pointer_To_uFont
   is
   begin
      return To_Pointer_To_uFont (Address (This));
   end Pointer;

   procedure Attach (This    : in out uFont_Type;
                     Pointer : in     Pointer_To_uFont)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : uFont_Type)
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
     (This : uFont_Type)
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
     (This : uFont_Type)
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

   function Get_Duplicate
     (This : uFont_Type)
     return Pointer_To_uFont
   is
       RetVal : aliased Pointer_To_uFont;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Duplicate
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Duplicate;

   function Get_Bold
     (This : uFont_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Bold
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Bold;

   procedure Put_Bold
     (This : uFont_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Bold
         (Pointer (This),
          prop));

   end Put_Bold;

   function Get_Italic
     (This : uFont_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Italic
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Italic;

   procedure Put_Italic
     (This : uFont_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Italic
         (Pointer (This),
          prop));

   end Put_Italic;

   function Get_Hidden
     (This : uFont_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Hidden
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Hidden;

   procedure Put_Hidden
     (This : uFont_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Hidden
         (Pointer (This),
          prop));

   end Put_Hidden;

   function Get_SmallCaps
     (This : uFont_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SmallCaps
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_SmallCaps;

   procedure Put_SmallCaps
     (This : uFont_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_SmallCaps
         (Pointer (This),
          prop));

   end Put_SmallCaps;

   function Get_AllCaps
     (This : uFont_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AllCaps
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AllCaps;

   procedure Put_AllCaps
     (This : uFont_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AllCaps
         (Pointer (This),
          prop));

   end Put_AllCaps;

   function Get_StrikeThrough
     (This : uFont_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_StrikeThrough
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_StrikeThrough;

   procedure Put_StrikeThrough
     (This : uFont_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_StrikeThrough
         (Pointer (This),
          prop));

   end Put_StrikeThrough;

   function Get_DoubleStrikeThrough
     (This : uFont_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DoubleStrikeThrough
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DoubleStrikeThrough;

   procedure Put_DoubleStrikeThrough
     (This : uFont_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DoubleStrikeThrough
         (Pointer (This),
          prop));

   end Put_DoubleStrikeThrough;

   function Get_ColorIndex
     (This : uFont_Type)
     return WdColorIndex
   is
       RetVal : aliased WdColorIndex;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ColorIndex
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ColorIndex;

   procedure Put_ColorIndex
     (This : uFont_Type;
      prop : WdColorIndex)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ColorIndex
         (Pointer (This),
          prop));

   end Put_ColorIndex;

   function Get_Subscript
     (This : uFont_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Subscript
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Subscript;

   procedure Put_Subscript
     (This : uFont_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Subscript
         (Pointer (This),
          prop));

   end Put_Subscript;

   function Get_Superscript
     (This : uFont_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Superscript
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Superscript;

   procedure Put_Superscript
     (This : uFont_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Superscript
         (Pointer (This),
          prop));

   end Put_Superscript;

   function Get_Underline
     (This : uFont_Type)
     return WdUnderline
   is
       RetVal : aliased WdUnderline;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Underline
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Underline;

   procedure Put_Underline
     (This : uFont_Type;
      prop : WdUnderline)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Underline
         (Pointer (This),
          prop));

   end Put_Underline;

   function Get_Size
     (This : uFont_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Size
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Size;

   procedure Put_Size
     (This : uFont_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Size
         (Pointer (This),
          prop));

   end Put_Size;

   function Get_Name
     (This : uFont_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Name
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Name;

   procedure Put_Name
     (This : uFont_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Name
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_Name;

   function Get_Position
     (This : uFont_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Position
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Position;

   procedure Put_Position
     (This : uFont_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Position
         (Pointer (This),
          prop));

   end Put_Position;

   function Get_Spacing
     (This : uFont_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Spacing
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Spacing;

   procedure Put_Spacing
     (This : uFont_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Spacing
         (Pointer (This),
          prop));

   end Put_Spacing;

   function Get_Scaling
     (This : uFont_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Scaling
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Scaling;

   procedure Put_Scaling
     (This : uFont_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Scaling
         (Pointer (This),
          prop));

   end Put_Scaling;

   function Get_Shadow
     (This : uFont_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Shadow
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Shadow;

   procedure Put_Shadow
     (This : uFont_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Shadow
         (Pointer (This),
          prop));

   end Put_Shadow;

   function Get_Outline
     (This : uFont_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Outline
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Outline;

   procedure Put_Outline
     (This : uFont_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Outline
         (Pointer (This),
          prop));

   end Put_Outline;

   function Get_Emboss
     (This : uFont_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Emboss
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Emboss;

   procedure Put_Emboss
     (This : uFont_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Emboss
         (Pointer (This),
          prop));

   end Put_Emboss;

   function Get_Kerning
     (This : uFont_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Kerning
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Kerning;

   procedure Put_Kerning
     (This : uFont_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Kerning
         (Pointer (This),
          prop));

   end Put_Kerning;

   function Get_Engrave
     (This : uFont_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Engrave
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Engrave;

   procedure Put_Engrave
     (This : uFont_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Engrave
         (Pointer (This),
          prop));

   end Put_Engrave;

   function Get_Animation
     (This : uFont_Type)
     return WdAnimation
   is
       RetVal : aliased WdAnimation;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Animation
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Animation;

   procedure Put_Animation
     (This : uFont_Type;
      prop : WdAnimation)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Animation
         (Pointer (This),
          prop));

   end Put_Animation;

   function Get_Borders
     (This : uFont_Type)
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
     (This : uFont_Type;
      prop : Pointer_To_Borders)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Borders
         (Pointer (This),
          prop));

   end Put_Borders;

   function Get_Shading
     (This : uFont_Type)
     return Pointer_To_Shading
   is
       RetVal : aliased Pointer_To_Shading;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Shading
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Shading;

   function Get_EmphasisMark
     (This : uFont_Type)
     return WdEmphasisMark
   is
       RetVal : aliased WdEmphasisMark;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_EmphasisMark
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_EmphasisMark;

   procedure Put_EmphasisMark
     (This : uFont_Type;
      prop : WdEmphasisMark)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_EmphasisMark
         (Pointer (This),
          prop));

   end Put_EmphasisMark;

   function Get_DisableCharacterSpaceGrid
     (This : uFont_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DisableCharacterSpaceGrid
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DisableCharacterSpaceGrid;

   procedure Put_DisableCharacterSpaceGrid
     (This : uFont_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DisableCharacterSpaceGrid
         (Pointer (This),
          prop));

   end Put_DisableCharacterSpaceGrid;

   function Get_NameFarEast
     (This : uFont_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_NameFarEast
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_NameFarEast;

   procedure Put_NameFarEast
     (This : uFont_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_NameFarEast
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_NameFarEast;

   function Get_NameAscii
     (This : uFont_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_NameAscii
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_NameAscii;

   procedure Put_NameAscii
     (This : uFont_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_NameAscii
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_NameAscii;

   function Get_NameOther
     (This : uFont_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_NameOther
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_NameOther;

   procedure Put_NameOther
     (This : uFont_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_NameOther
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_NameOther;

   procedure Grow
     (This : uFont_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Grow
         (Pointer (This)));

   end Grow;

   procedure Shrink
     (This : uFont_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Shrink
         (Pointer (This)));

   end Shrink;

   procedure Reset
     (This : uFont_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Reset
         (Pointer (This)));

   end Reset;

   procedure SetAsTemplateDefault
     (This : uFont_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.SetAsTemplateDefault
         (Pointer (This)));

   end SetAsTemplateDefault;

   function Get_Color
     (This : uFont_Type)
     return WdColor
   is
       RetVal : aliased WdColor;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Color
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Color;

   procedure Put_Color
     (This : uFont_Type;
      prop : WdColor)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Color
         (Pointer (This),
          prop));

   end Put_Color;

   function Get_BoldBi
     (This : uFont_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_BoldBi
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_BoldBi;

   procedure Put_BoldBi
     (This : uFont_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_BoldBi
         (Pointer (This),
          prop));

   end Put_BoldBi;

   function Get_ItalicBi
     (This : uFont_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ItalicBi
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ItalicBi;

   procedure Put_ItalicBi
     (This : uFont_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ItalicBi
         (Pointer (This),
          prop));

   end Put_ItalicBi;

   function Get_SizeBi
     (This : uFont_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SizeBi
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_SizeBi;

   procedure Put_SizeBi
     (This : uFont_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_SizeBi
         (Pointer (This),
          prop));

   end Put_SizeBi;

   function Get_NameBi
     (This : uFont_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_NameBi
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_NameBi;

   procedure Put_NameBi
     (This : uFont_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_NameBi
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_NameBi;

   function Get_ColorIndexBi
     (This : uFont_Type)
     return WdColorIndex
   is
       RetVal : aliased WdColorIndex;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ColorIndexBi
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ColorIndexBi;

   procedure Put_ColorIndexBi
     (This : uFont_Type;
      prop : WdColorIndex)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ColorIndexBi
         (Pointer (This),
          prop));

   end Put_ColorIndexBi;

   function Get_DiacriticColor
     (This : uFont_Type)
     return WdColor
   is
       RetVal : aliased WdColor;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DiacriticColor
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DiacriticColor;

   procedure Put_DiacriticColor
     (This : uFont_Type;
      prop : WdColor)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DiacriticColor
         (Pointer (This),
          prop));

   end Put_DiacriticColor;

   function Get_UnderlineColor
     (This : uFont_Type)
     return WdColor
   is
       RetVal : aliased WdColor;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_UnderlineColor
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_UnderlineColor;

   procedure Put_UnderlineColor
     (This : uFont_Type;
      prop : WdColor)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_UnderlineColor
         (Pointer (This),
          prop));

   end Put_UnderlineColor;

end winword.uFont_Interface;

