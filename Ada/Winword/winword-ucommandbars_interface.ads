with GNATCOM.Dispinterface;

package winword.uCommandBars_Interface is

   type uCommandBars_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out uCommandBars_Type);

   function Pointer (This : uCommandBars_Type)
     return Pointer_To_uCommandBars;

   procedure Attach (This    : in out uCommandBars_Type;
                     Pointer : in     Pointer_To_uCommandBars);

   function Get_Application
     (This    : uCommandBars_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Creator
     (This      : uCommandBars_Type)
     return Interfaces.C.long;

   function Get_ActionControl
     (This  : uCommandBars_Type)
     return Pointer_To_CommandBarControl;

   function Get_ActiveMenuBar
     (This : uCommandBars_Type)
     return Pointer_To_CommandBar;

   function Add
     (This      : uCommandBars_Type;
      Name      : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Position  : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      MenuBar   : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Temporary : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Free      : Boolean := True)
     return Pointer_To_CommandBar;

   function Get_Count
     (This       : uCommandBars_Type)
     return Interfaces.C.int;

   function Get_DisplayTooltips
     (This                 : uCommandBars_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_DisplayTooltips
     (This                 : uCommandBars_Type;
      pvarfDisplayTooltips : GNATCOM.Types.VARIANT_BOOL);

   function Get_DisplayKeysInTooltips
     (This             : uCommandBars_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_DisplayKeysInTooltips
     (This             : uCommandBars_Type;
      pvarfDisplayKeys : GNATCOM.Types.VARIANT_BOOL);

   function FindControl
     (This    : uCommandBars_Type;
      uType   : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Id      : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Tag     : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Visible : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Free    : Boolean := True)
     return Pointer_To_CommandBarControl;

   function Get_Item
     (This  : uCommandBars_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return Pointer_To_CommandBar;

   function Get_LargeButtons
     (This              : uCommandBars_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_LargeButtons
     (This              : uCommandBars_Type;
      pvarfLargeButtons : GNATCOM.Types.VARIANT_BOOL);

   function Get_MenuAnimationStyle
     (This : uCommandBars_Type)
     return MsoMenuAnimation;

   procedure Put_MenuAnimationStyle
     (This : uCommandBars_Type;
      pma  : MsoMenuAnimation);

   function Getu_NewEnum
     (This    : uCommandBars_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_Parent
     (This    : uCommandBars_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   procedure ReleaseFocus
     (This : uCommandBars_Type);

   function Get_IdsString
     (This      : uCommandBars_Type;
      ids       : Interfaces.C.int;
      pbstrName : GNATCOM.Types.Pointer_To_BSTR)
     return Interfaces.C.int;

   function Get_TmcGetName
     (This      : uCommandBars_Type;
      tmc       : Interfaces.C.int;
      pbstrName : GNATCOM.Types.Pointer_To_BSTR)
     return Interfaces.C.int;

   function Get_AdaptiveMenus
     (This               : uCommandBars_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_AdaptiveMenus
     (This               : uCommandBars_Type;
      pvarfAdaptiveMenus : GNATCOM.Types.VARIANT_BOOL);

   function FindControls
     (This    : uCommandBars_Type;
      uType   : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Id      : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Tag     : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Visible : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Free    : Boolean := True)
     return Pointer_To_CommandBarControls;

   function AddEx
     (This           : uCommandBars_Type;
      TbidOrName     : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Position       : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      MenuBar        : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Temporary      : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      TbtrProtection : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Free           : Boolean := True)
     return Pointer_To_CommandBar;

   function Get_DisplayFonts
     (This              : uCommandBars_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_DisplayFonts
     (This              : uCommandBars_Type;
      pvarfDisplayFonts : GNATCOM.Types.VARIANT_BOOL);

   function Get_DisableCustomize
     (This                  : uCommandBars_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_DisableCustomize
     (This                  : uCommandBars_Type;
      pvarfDisableCustomize : GNATCOM.Types.VARIANT_BOOL);

   function Get_DisableAskAQuestionDropdown
     (This                             : uCommandBars_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_DisableAskAQuestionDropdown
     (This                             : uCommandBars_Type;
      pvarfDisableAskAQuestionDropdown : GNATCOM.Types.VARIANT_BOOL);

end winword.uCommandBars_Interface;

