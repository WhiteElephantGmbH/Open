with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.Assistant_Interface is

   procedure Initialize (This : in out Assistant_Type) is
   begin
      Set_IID (This, IID_Assistant);
   end Initialize;

   function Pointer (This : Assistant_Type)
     return Pointer_To_Assistant
   is
   begin
      return To_Pointer_To_Assistant (Address (This));
   end Pointer;

   procedure Attach (This    : in out Assistant_Type;
                     Pointer : in     Pointer_To_Assistant)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This    : Assistant_Type)
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
     (This      : Assistant_Type)
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
     (This    : Assistant_Type)
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

   procedure Move
     (This  : Assistant_Type;
      xLeft : Interfaces.C.int;
      yTop  : Interfaces.C.int)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Move
         (Pointer (This),
          xLeft,
          yTop));

   end Move;

   procedure Put_Top
     (This  : Assistant_Type;
      pyTop : Interfaces.C.int)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Top
         (Pointer (This),
          pyTop));

   end Put_Top;

   function Get_Top
     (This  : Assistant_Type)
     return Interfaces.C.int
   is
       RetVal : aliased Interfaces.C.int;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Top
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Top;

   procedure Put_Left
     (This   : Assistant_Type;
      pxLeft : Interfaces.C.int)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Left
         (Pointer (This),
          pxLeft));

   end Put_Left;

   function Get_Left
     (This   : Assistant_Type)
     return Interfaces.C.int
   is
       RetVal : aliased Interfaces.C.int;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Left
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Left;

   procedure Help
     (This : Assistant_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Help
         (Pointer (This)));

   end Help;

   function StartWizard
     (This         : Assistant_Type;
      On           : GNATCOM.Types.VARIANT_BOOL;
      Callback     : GNATCOM.Types.BSTR;
      PrivateX     : Interfaces.C.long;
      Animation    : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      CustomTeaser : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Top          : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Left         : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Bottom       : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Right        : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Free         : Boolean := True)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.StartWizard
         (Pointer (This),
          On,
          Callback,
          PrivateX,
          Animation,
          CustomTeaser,
          Top,
          Left,
          Bottom,
          Right,
          RetVal'Unchecked_Access));

      if Free then
               GNATCOM.Interface.Free (Callback);
               GNATCOM.Interface.Free (Animation);
               GNATCOM.Interface.Free (CustomTeaser);
               GNATCOM.Interface.Free (Top);
               GNATCOM.Interface.Free (Left);
               GNATCOM.Interface.Free (Bottom);
               GNATCOM.Interface.Free (Right);
      
      end if;

      return RetVal;
   end StartWizard;

   procedure EndWizard
     (This        : Assistant_Type;
      WizardID    : Interfaces.C.long;
      varfSuccess : GNATCOM.Types.VARIANT_BOOL;
      Animation   : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Free        : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.EndWizard
         (Pointer (This),
          WizardID,
          varfSuccess,
          Animation));

      if Free then
               GNATCOM.Interface.Free (Animation);
      
      end if;

   end EndWizard;

   procedure ActivateWizard
     (This      : Assistant_Type;
      WizardID  : Interfaces.C.long;
      act       : MsoWizardActType;
      Animation : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Free      : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ActivateWizard
         (Pointer (This),
          WizardID,
          act,
          Animation));

      if Free then
               GNATCOM.Interface.Free (Animation);
      
      end if;

   end ActivateWizard;

   procedure ResetTips
     (This : Assistant_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ResetTips
         (Pointer (This)));

   end ResetTips;

   function Get_NewBalloon
     (This   : Assistant_Type)
     return Pointer_To_Balloon
   is
       RetVal : aliased Pointer_To_Balloon;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_NewBalloon
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_NewBalloon;

   function Get_BalloonError
     (This : Assistant_Type)
     return MsoBalloonErrorType
   is
       RetVal : aliased MsoBalloonErrorType;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_BalloonError
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_BalloonError;

   function Get_Visible
     (This         : Assistant_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Visible
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Visible;

   procedure Put_Visible
     (This         : Assistant_Type;
      pvarfVisible : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Visible
         (Pointer (This),
          pvarfVisible));

   end Put_Visible;

   function Get_Animation
     (This : Assistant_Type)
     return MsoAnimationType
   is
       RetVal : aliased MsoAnimationType;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Animation
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Animation;

   procedure Put_Animation
     (This : Assistant_Type;
      pfca : MsoAnimationType)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Animation
         (Pointer (This),
          pfca));

   end Put_Animation;

   function Get_Reduced
     (This         : Assistant_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Reduced
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Reduced;

   procedure Put_Reduced
     (This         : Assistant_Type;
      pvarfReduced : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Reduced
         (Pointer (This),
          pvarfReduced));

   end Put_Reduced;

   procedure Put_AssistWithHelp
     (This                : Assistant_Type;
      pvarfAssistWithHelp : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AssistWithHelp
         (Pointer (This),
          pvarfAssistWithHelp));

   end Put_AssistWithHelp;

   function Get_AssistWithHelp
     (This                : Assistant_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AssistWithHelp
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AssistWithHelp;

   procedure Put_AssistWithWizards
     (This                   : Assistant_Type;
      pvarfAssistWithWizards : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AssistWithWizards
         (Pointer (This),
          pvarfAssistWithWizards));

   end Put_AssistWithWizards;

   function Get_AssistWithWizards
     (This                   : Assistant_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AssistWithWizards
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AssistWithWizards;

   procedure Put_AssistWithAlerts
     (This                  : Assistant_Type;
      pvarfAssistWithAlerts : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AssistWithAlerts
         (Pointer (This),
          pvarfAssistWithAlerts));

   end Put_AssistWithAlerts;

   function Get_AssistWithAlerts
     (This                  : Assistant_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AssistWithAlerts
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AssistWithAlerts;

   procedure Put_MoveWhenInTheWay
     (This      : Assistant_Type;
      pvarfMove : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_MoveWhenInTheWay
         (Pointer (This),
          pvarfMove));

   end Put_MoveWhenInTheWay;

   function Get_MoveWhenInTheWay
     (This      : Assistant_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_MoveWhenInTheWay
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_MoveWhenInTheWay;

   procedure Put_Sounds
     (This        : Assistant_Type;
      pvarfSounds : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Sounds
         (Pointer (This),
          pvarfSounds));

   end Put_Sounds;

   function Get_Sounds
     (This        : Assistant_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Sounds
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Sounds;

   procedure Put_FeatureTips
     (This          : Assistant_Type;
      pvarfFeatures : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_FeatureTips
         (Pointer (This),
          pvarfFeatures));

   end Put_FeatureTips;

   function Get_FeatureTips
     (This          : Assistant_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_FeatureTips
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_FeatureTips;

   procedure Put_MouseTips
     (This       : Assistant_Type;
      pvarfMouse : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_MouseTips
         (Pointer (This),
          pvarfMouse));

   end Put_MouseTips;

   function Get_MouseTips
     (This       : Assistant_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_MouseTips
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_MouseTips;

   procedure Put_KeyboardShortcutTips
     (This                   : Assistant_Type;
      pvarfKeyboardShortcuts : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_KeyboardShortcutTips
         (Pointer (This),
          pvarfKeyboardShortcuts));

   end Put_KeyboardShortcutTips;

   function Get_KeyboardShortcutTips
     (This                   : Assistant_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_KeyboardShortcutTips
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_KeyboardShortcutTips;

   procedure Put_HighPriorityTips
     (This                  : Assistant_Type;
      pvarfHighPriorityTips : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_HighPriorityTips
         (Pointer (This),
          pvarfHighPriorityTips));

   end Put_HighPriorityTips;

   function Get_HighPriorityTips
     (This                  : Assistant_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_HighPriorityTips
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_HighPriorityTips;

   procedure Put_TipOfDay
     (This          : Assistant_Type;
      pvarfTipOfDay : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_TipOfDay
         (Pointer (This),
          pvarfTipOfDay));

   end Put_TipOfDay;

   function Get_TipOfDay
     (This          : Assistant_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_TipOfDay
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_TipOfDay;

   procedure Put_GuessHelp
     (This           : Assistant_Type;
      pvarfGuessHelp : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_GuessHelp
         (Pointer (This),
          pvarfGuessHelp));

   end Put_GuessHelp;

   function Get_GuessHelp
     (This           : Assistant_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_GuessHelp
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_GuessHelp;

   procedure Put_SearchWhenProgramming
     (This                 : Assistant_Type;
      pvarfSearchInProgram : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_SearchWhenProgramming
         (Pointer (This),
          pvarfSearchInProgram));

   end Put_SearchWhenProgramming;

   function Get_SearchWhenProgramming
     (This                 : Assistant_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SearchWhenProgramming
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_SearchWhenProgramming;

   function Get_Item
     (This      : Assistant_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Item
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Item;

   function Get_FileName
     (This  : Assistant_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_FileName
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_FileName;

   procedure Put_FileName
     (This  : Assistant_Type;
      pbstr : GNATCOM.Types.BSTR;
      Free  : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_FileName
         (Pointer (This),
          pbstr));

      if Free then
               GNATCOM.Interface.Free (pbstr);
      
      end if;

   end Put_FileName;

   function Get_Name
     (This      : Assistant_Type)
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

   function Get_On
     (This    : Assistant_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_On
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_On;

   procedure Put_On
     (This    : Assistant_Type;
      pvarfOn : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_On
         (Pointer (This),
          pvarfOn));

   end Put_On;

   function DoAlert
     (This           : Assistant_Type;
      bstrAlertTitle : GNATCOM.Types.BSTR;
      bstrAlertText  : GNATCOM.Types.BSTR;
      alb            : MsoAlertButtonType;
      alc            : MsoAlertIconType;
      ald            : MsoAlertDefaultType;
      alq            : MsoAlertCancelType;
      varfSysAlert   : GNATCOM.Types.VARIANT_BOOL;
      Free           : Boolean := True)
     return Interfaces.C.int
   is
       RetVal : aliased Interfaces.C.int;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.DoAlert
         (Pointer (This),
          bstrAlertTitle,
          bstrAlertText,
          alb,
          alc,
          ald,
          alq,
          varfSysAlert,
          RetVal'Unchecked_Access));

      if Free then
               GNATCOM.Interface.Free (bstrAlertTitle);
               GNATCOM.Interface.Free (bstrAlertText);
      
      end if;

      return RetVal;
   end DoAlert;

end winword.Assistant_Interface;

