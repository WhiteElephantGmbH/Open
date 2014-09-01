with GNATCOM.Dispinterface;

package winword.Assistant_Object is

   type Assistant_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : Assistant_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : Assistant_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : Assistant_Type)
     return GNATCOM.Types.VARIANT;

   procedure Move
     (This  : Assistant_Type;
      xLeft : GNATCOM.Types.VARIANT;
      yTop  : GNATCOM.Types.VARIANT;
      Free  : Boolean := True);

   procedure Put_Top
     (This : Assistant_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Top
     (This : Assistant_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Left
     (This : Assistant_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Left
     (This : Assistant_Type)
     return GNATCOM.Types.VARIANT;

   procedure Help
     (This : Assistant_Type);

   function StartWizard
     (This         : Assistant_Type;
      On           : GNATCOM.Types.VARIANT;
      Callback     : GNATCOM.Types.VARIANT;
      PrivateX     : GNATCOM.Types.VARIANT;
      Animation    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      CustomTeaser : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Top          : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Left         : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Bottom       : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Right        : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free         : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure EndWizard
     (This        : Assistant_Type;
      WizardID    : GNATCOM.Types.VARIANT;
      varfSuccess : GNATCOM.Types.VARIANT;
      Animation   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free        : Boolean := True);

   procedure ActivateWizard
     (This      : Assistant_Type;
      WizardID  : GNATCOM.Types.VARIANT;
      act       : GNATCOM.Types.VARIANT;
      Animation : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free      : Boolean := True);

   procedure ResetTips
     (This : Assistant_Type);

   function Get_NewBalloon
     (This : Assistant_Type)
     return GNATCOM.Types.VARIANT;

   function Get_BalloonError
     (This : Assistant_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Visible
     (This : Assistant_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Visible
     (This : Assistant_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Animation
     (This : Assistant_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Animation
     (This : Assistant_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Reduced
     (This : Assistant_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Reduced
     (This : Assistant_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure Put_AssistWithHelp
     (This : Assistant_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AssistWithHelp
     (This : Assistant_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AssistWithWizards
     (This : Assistant_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AssistWithWizards
     (This : Assistant_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AssistWithAlerts
     (This : Assistant_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AssistWithAlerts
     (This : Assistant_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_MoveWhenInTheWay
     (This : Assistant_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_MoveWhenInTheWay
     (This : Assistant_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Sounds
     (This : Assistant_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Sounds
     (This : Assistant_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_FeatureTips
     (This : Assistant_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_FeatureTips
     (This : Assistant_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_MouseTips
     (This : Assistant_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_MouseTips
     (This : Assistant_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_KeyboardShortcutTips
     (This : Assistant_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_KeyboardShortcutTips
     (This : Assistant_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_HighPriorityTips
     (This : Assistant_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_HighPriorityTips
     (This : Assistant_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_TipOfDay
     (This : Assistant_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_TipOfDay
     (This : Assistant_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_GuessHelp
     (This : Assistant_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_GuessHelp
     (This : Assistant_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_SearchWhenProgramming
     (This : Assistant_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_SearchWhenProgramming
     (This : Assistant_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Item
     (This : Assistant_Type)
     return GNATCOM.Types.VARIANT;

   function Get_FileName
     (This : Assistant_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_FileName
     (This : Assistant_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Name
     (This : Assistant_Type)
     return GNATCOM.Types.VARIANT;

   function Get_On
     (This : Assistant_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_On
     (This : Assistant_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function DoAlert
     (This           : Assistant_Type;
      bstrAlertTitle : GNATCOM.Types.VARIANT;
      bstrAlertText  : GNATCOM.Types.VARIANT;
      alb            : GNATCOM.Types.VARIANT;
      alc            : GNATCOM.Types.VARIANT;
      ald            : GNATCOM.Types.VARIANT;
      alq            : GNATCOM.Types.VARIANT;
      varfSysAlert   : GNATCOM.Types.VARIANT;
      Free           : Boolean := True)
     return GNATCOM.Types.VARIANT;

end winword.Assistant_Object;

