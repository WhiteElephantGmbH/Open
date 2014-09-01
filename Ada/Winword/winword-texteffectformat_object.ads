with GNATCOM.Dispinterface;

package winword.TextEffectFormat_Object is

   type TextEffectFormat_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : TextEffectFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : TextEffectFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : TextEffectFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Alignment
     (This : TextEffectFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Alignment
     (This : TextEffectFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_FontBold
     (This : TextEffectFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_FontBold
     (This : TextEffectFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_FontItalic
     (This : TextEffectFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_FontItalic
     (This : TextEffectFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_FontName
     (This : TextEffectFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_FontName
     (This : TextEffectFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_FontSize
     (This : TextEffectFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_FontSize
     (This : TextEffectFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_KernedPairs
     (This : TextEffectFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_KernedPairs
     (This : TextEffectFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_NormalizedHeight
     (This : TextEffectFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_NormalizedHeight
     (This : TextEffectFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_PresetShape
     (This : TextEffectFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_PresetShape
     (This : TextEffectFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_PresetTextEffect
     (This : TextEffectFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_PresetTextEffect
     (This : TextEffectFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_RotatedChars
     (This : TextEffectFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_RotatedChars
     (This : TextEffectFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Text
     (This : TextEffectFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Text
     (This : TextEffectFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Tracking
     (This : TextEffectFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Tracking
     (This : TextEffectFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure ToggleVerticalText
     (This : TextEffectFormat_Type);

end winword.TextEffectFormat_Object;

