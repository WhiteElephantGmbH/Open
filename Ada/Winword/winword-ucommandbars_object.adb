package body winword.uCommandBars_Object is

   function Get_Application
     (This : uCommandBars_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uCommandBars_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : uCommandBars_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uCommandBars_Get_Creator);
   end Get_Creator;

   function Get_ActionControl
     (This : uCommandBars_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uCommandBars_Get_ActionControl);
   end Get_ActionControl;

   function Get_ActiveMenuBar
     (This : uCommandBars_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uCommandBars_Get_ActiveMenuBar);
   end Get_ActiveMenuBar;

   function Add
     (This      : uCommandBars_Type;
      Name      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Position  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      MenuBar   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Temporary : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free      : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uCommandBars_Add,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Temporary,
          2 => MenuBar,
          3 => Position,
          4 => Name),
         Free);
   end Add;

   function Get_Count
     (This : uCommandBars_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uCommandBars_Get_Count);
   end Get_Count;

   function Get_DisplayTooltips
     (This : uCommandBars_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uCommandBars_Get_DisplayTooltips);
   end Get_DisplayTooltips;

   procedure Put_DisplayTooltips
     (This : uCommandBars_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uCommandBars_Put_DisplayTooltips,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DisplayTooltips;

   function Get_DisplayKeysInTooltips
     (This : uCommandBars_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uCommandBars_Get_DisplayKeysInTooltips);
   end Get_DisplayKeysInTooltips;

   procedure Put_DisplayKeysInTooltips
     (This : uCommandBars_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uCommandBars_Put_DisplayKeysInTooltips,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DisplayKeysInTooltips;

   function FindControl
     (This    : uCommandBars_Type;
      uType   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Id      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Tag     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Visible : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free    : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uCommandBars_FindControl,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Visible,
          2 => Tag,
          3 => Id,
          4 => uType),
         Free);
   end FindControl;

   function Get_Item
     (This  : uCommandBars_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get
        (This,
         uCommandBars_Get_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Get_Item;

   function Get_LargeButtons
     (This : uCommandBars_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uCommandBars_Get_LargeButtons);
   end Get_LargeButtons;

   procedure Put_LargeButtons
     (This : uCommandBars_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uCommandBars_Put_LargeButtons,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_LargeButtons;

   function Get_MenuAnimationStyle
     (This : uCommandBars_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uCommandBars_Get_MenuAnimationStyle);
   end Get_MenuAnimationStyle;

   procedure Put_MenuAnimationStyle
     (This : uCommandBars_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uCommandBars_Put_MenuAnimationStyle,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_MenuAnimationStyle;

   function Getu_NewEnum
     (This : uCommandBars_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uCommandBars_Getu_NewEnum);
   end Getu_NewEnum;

   function Get_Parent
     (This : uCommandBars_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uCommandBars_Get_Parent);
   end Get_Parent;

   procedure ReleaseFocus
     (This : uCommandBars_Type)
   is
   begin
      Invoke (This, uCommandBars_ReleaseFocus);
   end ReleaseFocus;

   function Get_IdsString
     (This      : uCommandBars_Type;
      ids       : GNATCOM.Types.VARIANT;
      pbstrName : GNATCOM.Types.VARIANT;
      Free      : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get
        (This,
         uCommandBars_Get_IdsString,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => pbstrName,
          2 => ids),
         Free);
   end Get_IdsString;

   function Get_TmcGetName
     (This      : uCommandBars_Type;
      tmc       : GNATCOM.Types.VARIANT;
      pbstrName : GNATCOM.Types.VARIANT;
      Free      : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get
        (This,
         uCommandBars_Get_TmcGetName,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => pbstrName,
          2 => tmc),
         Free);
   end Get_TmcGetName;

   function Get_AdaptiveMenus
     (This : uCommandBars_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uCommandBars_Get_AdaptiveMenus);
   end Get_AdaptiveMenus;

   procedure Put_AdaptiveMenus
     (This : uCommandBars_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uCommandBars_Put_AdaptiveMenus,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AdaptiveMenus;

   function FindControls
     (This    : uCommandBars_Type;
      uType   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Id      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Tag     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Visible : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free    : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uCommandBars_FindControls,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Visible,
          2 => Tag,
          3 => Id,
          4 => uType),
         Free);
   end FindControls;

   function AddEx
     (This           : uCommandBars_Type;
      TbidOrName     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Position       : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      MenuBar        : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Temporary      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      TbtrProtection : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free           : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uCommandBars_AddEx,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => TbtrProtection,
          2 => Temporary,
          3 => MenuBar,
          4 => Position,
          5 => TbidOrName),
         Free);
   end AddEx;

   function Get_DisplayFonts
     (This : uCommandBars_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uCommandBars_Get_DisplayFonts);
   end Get_DisplayFonts;

   procedure Put_DisplayFonts
     (This : uCommandBars_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uCommandBars_Put_DisplayFonts,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DisplayFonts;

   function Get_DisableCustomize
     (This : uCommandBars_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uCommandBars_Get_DisableCustomize);
   end Get_DisableCustomize;

   procedure Put_DisableCustomize
     (This : uCommandBars_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uCommandBars_Put_DisableCustomize,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DisableCustomize;

   function Get_DisableAskAQuestionDropdown
     (This : uCommandBars_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uCommandBars_Get_DisableAskAQuestionDropdown);
   end Get_DisableAskAQuestionDropdown;

   procedure Put_DisableAskAQuestionDropdown
     (This : uCommandBars_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uCommandBars_Put_DisableAskAQuestionDropdown,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DisableAskAQuestionDropdown;

end winword.uCommandBars_Object;

