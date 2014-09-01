with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.TextEffectFormat_Interface is

   procedure Initialize (This : in out TextEffectFormat_Type) is
   begin
      Set_IID (This, IID_TextEffectFormat);
   end Initialize;

   function Pointer (This : TextEffectFormat_Type)
     return Pointer_To_TextEffectFormat
   is
   begin
      return To_Pointer_To_TextEffectFormat (Address (This));
   end Pointer;

   procedure Attach (This    : in out TextEffectFormat_Type;
                     Pointer : in     Pointer_To_TextEffectFormat)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : TextEffectFormat_Type)
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
     (This : TextEffectFormat_Type)
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
     (This : TextEffectFormat_Type)
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

   function Get_Alignment
     (This : TextEffectFormat_Type)
     return MsoTextEffectAlignment
   is
       RetVal : aliased MsoTextEffectAlignment;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Alignment
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Alignment;

   procedure Put_Alignment
     (This : TextEffectFormat_Type;
      prop : MsoTextEffectAlignment)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Alignment
         (Pointer (This),
          prop));

   end Put_Alignment;

   function Get_FontBold
     (This : TextEffectFormat_Type)
     return MsoTriState
   is
       RetVal : aliased MsoTriState;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_FontBold
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_FontBold;

   procedure Put_FontBold
     (This : TextEffectFormat_Type;
      prop : MsoTriState)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_FontBold
         (Pointer (This),
          prop));

   end Put_FontBold;

   function Get_FontItalic
     (This : TextEffectFormat_Type)
     return MsoTriState
   is
       RetVal : aliased MsoTriState;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_FontItalic
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_FontItalic;

   procedure Put_FontItalic
     (This : TextEffectFormat_Type;
      prop : MsoTriState)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_FontItalic
         (Pointer (This),
          prop));

   end Put_FontItalic;

   function Get_FontName
     (This : TextEffectFormat_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_FontName
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_FontName;

   procedure Put_FontName
     (This : TextEffectFormat_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_FontName
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_FontName;

   function Get_FontSize
     (This : TextEffectFormat_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_FontSize
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_FontSize;

   procedure Put_FontSize
     (This : TextEffectFormat_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_FontSize
         (Pointer (This),
          prop));

   end Put_FontSize;

   function Get_KernedPairs
     (This : TextEffectFormat_Type)
     return MsoTriState
   is
       RetVal : aliased MsoTriState;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_KernedPairs
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_KernedPairs;

   procedure Put_KernedPairs
     (This : TextEffectFormat_Type;
      prop : MsoTriState)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_KernedPairs
         (Pointer (This),
          prop));

   end Put_KernedPairs;

   function Get_NormalizedHeight
     (This : TextEffectFormat_Type)
     return MsoTriState
   is
       RetVal : aliased MsoTriState;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_NormalizedHeight
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_NormalizedHeight;

   procedure Put_NormalizedHeight
     (This : TextEffectFormat_Type;
      prop : MsoTriState)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_NormalizedHeight
         (Pointer (This),
          prop));

   end Put_NormalizedHeight;

   function Get_PresetShape
     (This : TextEffectFormat_Type)
     return MsoPresetTextEffectShape
   is
       RetVal : aliased MsoPresetTextEffectShape;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_PresetShape
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_PresetShape;

   procedure Put_PresetShape
     (This : TextEffectFormat_Type;
      prop : MsoPresetTextEffectShape)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_PresetShape
         (Pointer (This),
          prop));

   end Put_PresetShape;

   function Get_PresetTextEffect
     (This : TextEffectFormat_Type)
     return MsoPresetTextEffect
   is
       RetVal : aliased MsoPresetTextEffect;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_PresetTextEffect
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_PresetTextEffect;

   procedure Put_PresetTextEffect
     (This : TextEffectFormat_Type;
      prop : MsoPresetTextEffect)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_PresetTextEffect
         (Pointer (This),
          prop));

   end Put_PresetTextEffect;

   function Get_RotatedChars
     (This : TextEffectFormat_Type)
     return MsoTriState
   is
       RetVal : aliased MsoTriState;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_RotatedChars
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_RotatedChars;

   procedure Put_RotatedChars
     (This : TextEffectFormat_Type;
      prop : MsoTriState)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_RotatedChars
         (Pointer (This),
          prop));

   end Put_RotatedChars;

   function Get_Text
     (This : TextEffectFormat_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Text
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Text;

   procedure Put_Text
     (This : TextEffectFormat_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Text
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_Text;

   function Get_Tracking
     (This : TextEffectFormat_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Tracking
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Tracking;

   procedure Put_Tracking
     (This : TextEffectFormat_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Tracking
         (Pointer (This),
          prop));

   end Put_Tracking;

   procedure ToggleVerticalText
     (This : TextEffectFormat_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ToggleVerticalText
         (Pointer (This)));

   end ToggleVerticalText;

end winword.TextEffectFormat_Interface;

