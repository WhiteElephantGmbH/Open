with GNATCOM.Dispinterface;

package winword.TextEffectFormat_Interface is

   type TextEffectFormat_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out TextEffectFormat_Type);

   function Pointer (This : TextEffectFormat_Type)
     return Pointer_To_TextEffectFormat;

   procedure Attach (This    : in out TextEffectFormat_Type;
                     Pointer : in     Pointer_To_TextEffectFormat);

   function Get_Application
     (This : TextEffectFormat_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : TextEffectFormat_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : TextEffectFormat_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Alignment
     (This : TextEffectFormat_Type)
     return MsoTextEffectAlignment;

   procedure Put_Alignment
     (This : TextEffectFormat_Type;
      prop : MsoTextEffectAlignment);

   function Get_FontBold
     (This : TextEffectFormat_Type)
     return MsoTriState;

   procedure Put_FontBold
     (This : TextEffectFormat_Type;
      prop : MsoTriState);

   function Get_FontItalic
     (This : TextEffectFormat_Type)
     return MsoTriState;

   procedure Put_FontItalic
     (This : TextEffectFormat_Type;
      prop : MsoTriState);

   function Get_FontName
     (This : TextEffectFormat_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_FontName
     (This : TextEffectFormat_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_FontSize
     (This : TextEffectFormat_Type)
     return Interfaces.C.C_float;

   procedure Put_FontSize
     (This : TextEffectFormat_Type;
      prop : Interfaces.C.C_float);

   function Get_KernedPairs
     (This : TextEffectFormat_Type)
     return MsoTriState;

   procedure Put_KernedPairs
     (This : TextEffectFormat_Type;
      prop : MsoTriState);

   function Get_NormalizedHeight
     (This : TextEffectFormat_Type)
     return MsoTriState;

   procedure Put_NormalizedHeight
     (This : TextEffectFormat_Type;
      prop : MsoTriState);

   function Get_PresetShape
     (This : TextEffectFormat_Type)
     return MsoPresetTextEffectShape;

   procedure Put_PresetShape
     (This : TextEffectFormat_Type;
      prop : MsoPresetTextEffectShape);

   function Get_PresetTextEffect
     (This : TextEffectFormat_Type)
     return MsoPresetTextEffect;

   procedure Put_PresetTextEffect
     (This : TextEffectFormat_Type;
      prop : MsoPresetTextEffect);

   function Get_RotatedChars
     (This : TextEffectFormat_Type)
     return MsoTriState;

   procedure Put_RotatedChars
     (This : TextEffectFormat_Type;
      prop : MsoTriState);

   function Get_Text
     (This : TextEffectFormat_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_Text
     (This : TextEffectFormat_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_Tracking
     (This : TextEffectFormat_Type)
     return Interfaces.C.C_float;

   procedure Put_Tracking
     (This : TextEffectFormat_Type;
      prop : Interfaces.C.C_float);

   procedure ToggleVerticalText
     (This : TextEffectFormat_Type);

end winword.TextEffectFormat_Interface;

