package body winword.TextEffectFormat_Object is

   function Get_Application
     (This : TextEffectFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TextEffectFormat_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : TextEffectFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TextEffectFormat_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : TextEffectFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TextEffectFormat_Get_Parent);
   end Get_Parent;

   function Get_Alignment
     (This : TextEffectFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TextEffectFormat_Get_Alignment);
   end Get_Alignment;

   procedure Put_Alignment
     (This : TextEffectFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TextEffectFormat_Put_Alignment,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Alignment;

   function Get_FontBold
     (This : TextEffectFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TextEffectFormat_Get_FontBold);
   end Get_FontBold;

   procedure Put_FontBold
     (This : TextEffectFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TextEffectFormat_Put_FontBold,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_FontBold;

   function Get_FontItalic
     (This : TextEffectFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TextEffectFormat_Get_FontItalic);
   end Get_FontItalic;

   procedure Put_FontItalic
     (This : TextEffectFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TextEffectFormat_Put_FontItalic,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_FontItalic;

   function Get_FontName
     (This : TextEffectFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TextEffectFormat_Get_FontName);
   end Get_FontName;

   procedure Put_FontName
     (This : TextEffectFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TextEffectFormat_Put_FontName,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_FontName;

   function Get_FontSize
     (This : TextEffectFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TextEffectFormat_Get_FontSize);
   end Get_FontSize;

   procedure Put_FontSize
     (This : TextEffectFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TextEffectFormat_Put_FontSize,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_FontSize;

   function Get_KernedPairs
     (This : TextEffectFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TextEffectFormat_Get_KernedPairs);
   end Get_KernedPairs;

   procedure Put_KernedPairs
     (This : TextEffectFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TextEffectFormat_Put_KernedPairs,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_KernedPairs;

   function Get_NormalizedHeight
     (This : TextEffectFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TextEffectFormat_Get_NormalizedHeight);
   end Get_NormalizedHeight;

   procedure Put_NormalizedHeight
     (This : TextEffectFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TextEffectFormat_Put_NormalizedHeight,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_NormalizedHeight;

   function Get_PresetShape
     (This : TextEffectFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TextEffectFormat_Get_PresetShape);
   end Get_PresetShape;

   procedure Put_PresetShape
     (This : TextEffectFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TextEffectFormat_Put_PresetShape,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_PresetShape;

   function Get_PresetTextEffect
     (This : TextEffectFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TextEffectFormat_Get_PresetTextEffect);
   end Get_PresetTextEffect;

   procedure Put_PresetTextEffect
     (This : TextEffectFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TextEffectFormat_Put_PresetTextEffect,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_PresetTextEffect;

   function Get_RotatedChars
     (This : TextEffectFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TextEffectFormat_Get_RotatedChars);
   end Get_RotatedChars;

   procedure Put_RotatedChars
     (This : TextEffectFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TextEffectFormat_Put_RotatedChars,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_RotatedChars;

   function Get_Text
     (This : TextEffectFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TextEffectFormat_Get_Text);
   end Get_Text;

   procedure Put_Text
     (This : TextEffectFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TextEffectFormat_Put_Text,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Text;

   function Get_Tracking
     (This : TextEffectFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TextEffectFormat_Get_Tracking);
   end Get_Tracking;

   procedure Put_Tracking
     (This : TextEffectFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TextEffectFormat_Put_Tracking,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Tracking;

   procedure ToggleVerticalText
     (This : TextEffectFormat_Type)
   is
   begin
      Invoke (This, TextEffectFormat_ToggleVerticalText);
   end ToggleVerticalText;

end winword.TextEffectFormat_Object;

