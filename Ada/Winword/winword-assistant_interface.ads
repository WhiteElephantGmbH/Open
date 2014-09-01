with GNATCOM.Dispinterface;

package winword.Assistant_Interface is

   type Assistant_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Assistant_Type);

   function Pointer (This : Assistant_Type)
     return Pointer_To_Assistant;

   procedure Attach (This    : in out Assistant_Type;
                     Pointer : in     Pointer_To_Assistant);

   function Get_Application
     (This    : Assistant_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Creator
     (This      : Assistant_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This    : Assistant_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   procedure Move
     (This  : Assistant_Type;
      xLeft : Interfaces.C.int;
      yTop  : Interfaces.C.int);

   procedure Put_Top
     (This  : Assistant_Type;
      pyTop : Interfaces.C.int);

   function Get_Top
     (This  : Assistant_Type)
     return Interfaces.C.int;

   procedure Put_Left
     (This   : Assistant_Type;
      pxLeft : Interfaces.C.int);

   function Get_Left
     (This   : Assistant_Type)
     return Interfaces.C.int;

   procedure Help
     (This : Assistant_Type);

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
     return Interfaces.C.long;

   procedure EndWizard
     (This        : Assistant_Type;
      WizardID    : Interfaces.C.long;
      varfSuccess : GNATCOM.Types.VARIANT_BOOL;
      Animation   : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Free        : Boolean := True);

   procedure ActivateWizard
     (This      : Assistant_Type;
      WizardID  : Interfaces.C.long;
      act       : MsoWizardActType;
      Animation : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Free      : Boolean := True);

   procedure ResetTips
     (This : Assistant_Type);

   function Get_NewBalloon
     (This   : Assistant_Type)
     return Pointer_To_Balloon;

   function Get_BalloonError
     (This : Assistant_Type)
     return MsoBalloonErrorType;

   function Get_Visible
     (This         : Assistant_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_Visible
     (This         : Assistant_Type;
      pvarfVisible : GNATCOM.Types.VARIANT_BOOL);

   function Get_Animation
     (This : Assistant_Type)
     return MsoAnimationType;

   procedure Put_Animation
     (This : Assistant_Type;
      pfca : MsoAnimationType);

   function Get_Reduced
     (This         : Assistant_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_Reduced
     (This         : Assistant_Type;
      pvarfReduced : GNATCOM.Types.VARIANT_BOOL);

   procedure Put_AssistWithHelp
     (This                : Assistant_Type;
      pvarfAssistWithHelp : GNATCOM.Types.VARIANT_BOOL);

   function Get_AssistWithHelp
     (This                : Assistant_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_AssistWithWizards
     (This                   : Assistant_Type;
      pvarfAssistWithWizards : GNATCOM.Types.VARIANT_BOOL);

   function Get_AssistWithWizards
     (This                   : Assistant_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_AssistWithAlerts
     (This                  : Assistant_Type;
      pvarfAssistWithAlerts : GNATCOM.Types.VARIANT_BOOL);

   function Get_AssistWithAlerts
     (This                  : Assistant_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_MoveWhenInTheWay
     (This      : Assistant_Type;
      pvarfMove : GNATCOM.Types.VARIANT_BOOL);

   function Get_MoveWhenInTheWay
     (This      : Assistant_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_Sounds
     (This        : Assistant_Type;
      pvarfSounds : GNATCOM.Types.VARIANT_BOOL);

   function Get_Sounds
     (This        : Assistant_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_FeatureTips
     (This          : Assistant_Type;
      pvarfFeatures : GNATCOM.Types.VARIANT_BOOL);

   function Get_FeatureTips
     (This          : Assistant_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_MouseTips
     (This       : Assistant_Type;
      pvarfMouse : GNATCOM.Types.VARIANT_BOOL);

   function Get_MouseTips
     (This       : Assistant_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_KeyboardShortcutTips
     (This                   : Assistant_Type;
      pvarfKeyboardShortcuts : GNATCOM.Types.VARIANT_BOOL);

   function Get_KeyboardShortcutTips
     (This                   : Assistant_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_HighPriorityTips
     (This                  : Assistant_Type;
      pvarfHighPriorityTips : GNATCOM.Types.VARIANT_BOOL);

   function Get_HighPriorityTips
     (This                  : Assistant_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_TipOfDay
     (This          : Assistant_Type;
      pvarfTipOfDay : GNATCOM.Types.VARIANT_BOOL);

   function Get_TipOfDay
     (This          : Assistant_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_GuessHelp
     (This           : Assistant_Type;
      pvarfGuessHelp : GNATCOM.Types.VARIANT_BOOL);

   function Get_GuessHelp
     (This           : Assistant_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_SearchWhenProgramming
     (This                 : Assistant_Type;
      pvarfSearchInProgram : GNATCOM.Types.VARIANT_BOOL);

   function Get_SearchWhenProgramming
     (This                 : Assistant_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   function Get_Item
     (This      : Assistant_Type)
     return GNATCOM.Types.BSTR;

   function Get_FileName
     (This  : Assistant_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_FileName
     (This  : Assistant_Type;
      pbstr : GNATCOM.Types.BSTR;
      Free  : Boolean := True);

   function Get_Name
     (This      : Assistant_Type)
     return GNATCOM.Types.BSTR;

   function Get_On
     (This    : Assistant_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_On
     (This    : Assistant_Type;
      pvarfOn : GNATCOM.Types.VARIANT_BOOL);

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
     return Interfaces.C.int;

end winword.Assistant_Interface;

