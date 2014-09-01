with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.uCommandBars_Interface is

   procedure Initialize (This : in out uCommandBars_Type) is
   begin
      Set_IID (This, IID_uCommandBars);
   end Initialize;

   function Pointer (This : uCommandBars_Type)
     return Pointer_To_uCommandBars
   is
   begin
      return To_Pointer_To_uCommandBars (Address (This));
   end Pointer;

   procedure Attach (This    : in out uCommandBars_Type;
                     Pointer : in     Pointer_To_uCommandBars)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This    : uCommandBars_Type)
     return GNATCOM.Types.Pointer_To_IDispatch
   is
       RetVal : aliased GNATCOM.Types.Pointer_To_IDispatch;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Application
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Application;

   function Get_Creator
     (This      : uCommandBars_Type)
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

   function Get_ActionControl
     (This  : uCommandBars_Type)
     return Pointer_To_CommandBarControl
   is
       RetVal : aliased Pointer_To_CommandBarControl;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ActionControl
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ActionControl;

   function Get_ActiveMenuBar
     (This : uCommandBars_Type)
     return Pointer_To_CommandBar
   is
       RetVal : aliased Pointer_To_CommandBar;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ActiveMenuBar
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ActiveMenuBar;

   function Add
     (This      : uCommandBars_Type;
      Name      : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Position  : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      MenuBar   : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Temporary : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Free      : Boolean := True)
     return Pointer_To_CommandBar
   is
       RetVal : aliased Pointer_To_CommandBar;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Add
         (Pointer (This),
          Name,
          Position,
          MenuBar,
          Temporary,
          RetVal'Unchecked_Access));

      if Free then
               GNATCOM.Interface.Free (Name);
               GNATCOM.Interface.Free (Position);
               GNATCOM.Interface.Free (MenuBar);
               GNATCOM.Interface.Free (Temporary);
      
      end if;

      return RetVal;
   end Add;

   function Get_Count
     (This       : uCommandBars_Type)
     return Interfaces.C.int
   is
       RetVal : aliased Interfaces.C.int;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Count
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Count;

   function Get_DisplayTooltips
     (This                 : uCommandBars_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DisplayTooltips
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DisplayTooltips;

   procedure Put_DisplayTooltips
     (This                 : uCommandBars_Type;
      pvarfDisplayTooltips : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DisplayTooltips
         (Pointer (This),
          pvarfDisplayTooltips));

   end Put_DisplayTooltips;

   function Get_DisplayKeysInTooltips
     (This             : uCommandBars_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DisplayKeysInTooltips
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DisplayKeysInTooltips;

   procedure Put_DisplayKeysInTooltips
     (This             : uCommandBars_Type;
      pvarfDisplayKeys : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DisplayKeysInTooltips
         (Pointer (This),
          pvarfDisplayKeys));

   end Put_DisplayKeysInTooltips;

   function FindControl
     (This    : uCommandBars_Type;
      uType   : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Id      : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Tag     : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Visible : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Free    : Boolean := True)
     return Pointer_To_CommandBarControl
   is
       RetVal : aliased Pointer_To_CommandBarControl;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.FindControl
         (Pointer (This),
          uType,
          Id,
          Tag,
          Visible,
          RetVal'Unchecked_Access));

      if Free then
               GNATCOM.Interface.Free (uType);
               GNATCOM.Interface.Free (Id);
               GNATCOM.Interface.Free (Tag);
               GNATCOM.Interface.Free (Visible);
      
      end if;

      return RetVal;
   end FindControl;

   function Get_Item
     (This  : uCommandBars_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return Pointer_To_CommandBar
   is
       RetVal : aliased Pointer_To_CommandBar;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Item
         (Pointer (This),
          Index,
          RetVal'Unchecked_Access));

      if Free then
               GNATCOM.Interface.Free (Index);
      
      end if;

      return RetVal;
   end Get_Item;

   function Get_LargeButtons
     (This              : uCommandBars_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_LargeButtons
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_LargeButtons;

   procedure Put_LargeButtons
     (This              : uCommandBars_Type;
      pvarfLargeButtons : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_LargeButtons
         (Pointer (This),
          pvarfLargeButtons));

   end Put_LargeButtons;

   function Get_MenuAnimationStyle
     (This : uCommandBars_Type)
     return MsoMenuAnimation
   is
       RetVal : aliased MsoMenuAnimation;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_MenuAnimationStyle
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_MenuAnimationStyle;

   procedure Put_MenuAnimationStyle
     (This : uCommandBars_Type;
      pma  : MsoMenuAnimation)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_MenuAnimationStyle
         (Pointer (This),
          pma));

   end Put_MenuAnimationStyle;

   function Getu_NewEnum
     (This    : uCommandBars_Type)
     return GNATCOM.Types.Pointer_To_IUnknown
   is
       RetVal : aliased GNATCOM.Types.Pointer_To_IUnknown;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Getu_NewEnum
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Getu_NewEnum;

   function Get_Parent
     (This    : uCommandBars_Type)
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

   procedure ReleaseFocus
     (This : uCommandBars_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ReleaseFocus
         (Pointer (This)));

   end ReleaseFocus;

   function Get_IdsString
     (This      : uCommandBars_Type;
      ids       : Interfaces.C.int;
      pbstrName : GNATCOM.Types.Pointer_To_BSTR)
     return Interfaces.C.int
   is
       RetVal : aliased Interfaces.C.int;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_IdsString
         (Pointer (This),
          ids,
          pbstrName,
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_IdsString;

   function Get_TmcGetName
     (This      : uCommandBars_Type;
      tmc       : Interfaces.C.int;
      pbstrName : GNATCOM.Types.Pointer_To_BSTR)
     return Interfaces.C.int
   is
       RetVal : aliased Interfaces.C.int;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_TmcGetName
         (Pointer (This),
          tmc,
          pbstrName,
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_TmcGetName;

   function Get_AdaptiveMenus
     (This               : uCommandBars_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AdaptiveMenus
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AdaptiveMenus;

   procedure Put_AdaptiveMenus
     (This               : uCommandBars_Type;
      pvarfAdaptiveMenus : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AdaptiveMenus
         (Pointer (This),
          pvarfAdaptiveMenus));

   end Put_AdaptiveMenus;

   function FindControls
     (This    : uCommandBars_Type;
      uType   : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Id      : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Tag     : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Visible : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Free    : Boolean := True)
     return Pointer_To_CommandBarControls
   is
       RetVal : aliased Pointer_To_CommandBarControls;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.FindControls
         (Pointer (This),
          uType,
          Id,
          Tag,
          Visible,
          RetVal'Unchecked_Access));

      if Free then
               GNATCOM.Interface.Free (uType);
               GNATCOM.Interface.Free (Id);
               GNATCOM.Interface.Free (Tag);
               GNATCOM.Interface.Free (Visible);
      
      end if;

      return RetVal;
   end FindControls;

   function AddEx
     (This           : uCommandBars_Type;
      TbidOrName     : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Position       : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      MenuBar        : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Temporary      : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      TbtrProtection : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Free           : Boolean := True)
     return Pointer_To_CommandBar
   is
       RetVal : aliased Pointer_To_CommandBar;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.AddEx
         (Pointer (This),
          TbidOrName,
          Position,
          MenuBar,
          Temporary,
          TbtrProtection,
          RetVal'Unchecked_Access));

      if Free then
               GNATCOM.Interface.Free (TbidOrName);
               GNATCOM.Interface.Free (Position);
               GNATCOM.Interface.Free (MenuBar);
               GNATCOM.Interface.Free (Temporary);
               GNATCOM.Interface.Free (TbtrProtection);
      
      end if;

      return RetVal;
   end AddEx;

   function Get_DisplayFonts
     (This              : uCommandBars_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DisplayFonts
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DisplayFonts;

   procedure Put_DisplayFonts
     (This              : uCommandBars_Type;
      pvarfDisplayFonts : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DisplayFonts
         (Pointer (This),
          pvarfDisplayFonts));

   end Put_DisplayFonts;

   function Get_DisableCustomize
     (This                  : uCommandBars_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DisableCustomize
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DisableCustomize;

   procedure Put_DisableCustomize
     (This                  : uCommandBars_Type;
      pvarfDisableCustomize : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DisableCustomize
         (Pointer (This),
          pvarfDisableCustomize));

   end Put_DisableCustomize;

   function Get_DisableAskAQuestionDropdown
     (This                             : uCommandBars_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DisableAskAQuestionDropdown
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DisableAskAQuestionDropdown;

   procedure Put_DisableAskAQuestionDropdown
     (This                             : uCommandBars_Type;
      pvarfDisableAskAQuestionDropdown : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DisableAskAQuestionDropdown
         (Pointer (This),
          pvarfDisableAskAQuestionDropdown));

   end Put_DisableAskAQuestionDropdown;

end winword.uCommandBars_Interface;

