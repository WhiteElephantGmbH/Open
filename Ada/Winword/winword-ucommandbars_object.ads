with GNATCOM.Dispinterface;

package winword.uCommandBars_Object is

   type uCommandBars_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : uCommandBars_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : uCommandBars_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ActionControl
     (This : uCommandBars_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ActiveMenuBar
     (This : uCommandBars_Type)
     return GNATCOM.Types.VARIANT;

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
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : uCommandBars_Type)
     return GNATCOM.Types.VARIANT;

   function Get_DisplayTooltips
     (This : uCommandBars_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DisplayTooltips
     (This : uCommandBars_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_DisplayKeysInTooltips
     (This : uCommandBars_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DisplayKeysInTooltips
     (This : uCommandBars_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

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
     return GNATCOM.Types.VARIANT;

   function Get_Item
     (This  : uCommandBars_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Get_LargeButtons
     (This : uCommandBars_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_LargeButtons
     (This : uCommandBars_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_MenuAnimationStyle
     (This : uCommandBars_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_MenuAnimationStyle
     (This : uCommandBars_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Getu_NewEnum
     (This : uCommandBars_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : uCommandBars_Type)
     return GNATCOM.Types.VARIANT;

   procedure ReleaseFocus
     (This : uCommandBars_Type);

   function Get_IdsString
     (This      : uCommandBars_Type;
      ids       : GNATCOM.Types.VARIANT;
      pbstrName : GNATCOM.Types.VARIANT;
      Free      : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Get_TmcGetName
     (This      : uCommandBars_Type;
      tmc       : GNATCOM.Types.VARIANT;
      pbstrName : GNATCOM.Types.VARIANT;
      Free      : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Get_AdaptiveMenus
     (This : uCommandBars_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AdaptiveMenus
     (This : uCommandBars_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

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
     return GNATCOM.Types.VARIANT;

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
     return GNATCOM.Types.VARIANT;

   function Get_DisplayFonts
     (This : uCommandBars_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DisplayFonts
     (This : uCommandBars_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_DisableCustomize
     (This : uCommandBars_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DisableCustomize
     (This : uCommandBars_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_DisableAskAQuestionDropdown
     (This : uCommandBars_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DisableAskAQuestionDropdown
     (This : uCommandBars_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

end winword.uCommandBars_Object;

