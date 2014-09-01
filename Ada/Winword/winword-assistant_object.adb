package body winword.Assistant_Object is

   function Get_Application
     (This : Assistant_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Assistant_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : Assistant_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Assistant_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : Assistant_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Assistant_Get_Parent);
   end Get_Parent;

   procedure Move
     (This  : Assistant_Type;
      xLeft : GNATCOM.Types.VARIANT;
      yTop  : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
   is
   begin
      Invoke
        (This,
         Assistant_Move,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => yTop,
          2 => xLeft),
         Free);
   end Move;

   procedure Put_Top
     (This : Assistant_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Assistant_Put_Top,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Top;

   function Get_Top
     (This : Assistant_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Assistant_Get_Top);
   end Get_Top;

   procedure Put_Left
     (This : Assistant_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Assistant_Put_Left,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Left;

   function Get_Left
     (This : Assistant_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Assistant_Get_Left);
   end Get_Left;

   procedure Help
     (This : Assistant_Type)
   is
   begin
      Invoke (This, Assistant_Help);
   end Help;

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
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Assistant_StartWizard,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Right,
          2 => Bottom,
          3 => Left,
          4 => Top,
          5 => CustomTeaser,
          6 => Animation,
          7 => PrivateX,
          8 => Callback,
          9 => On),
         Free);
   end StartWizard;

   procedure EndWizard
     (This        : Assistant_Type;
      WizardID    : GNATCOM.Types.VARIANT;
      varfSuccess : GNATCOM.Types.VARIANT;
      Animation   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free        : Boolean := True)
   is
   begin
      Invoke
        (This,
         Assistant_EndWizard,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Animation,
          2 => varfSuccess,
          3 => WizardID),
         Free);
   end EndWizard;

   procedure ActivateWizard
     (This      : Assistant_Type;
      WizardID  : GNATCOM.Types.VARIANT;
      act       : GNATCOM.Types.VARIANT;
      Animation : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free      : Boolean := True)
   is
   begin
      Invoke
        (This,
         Assistant_ActivateWizard,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Animation,
          2 => act,
          3 => WizardID),
         Free);
   end ActivateWizard;

   procedure ResetTips
     (This : Assistant_Type)
   is
   begin
      Invoke (This, Assistant_ResetTips);
   end ResetTips;

   function Get_NewBalloon
     (This : Assistant_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Assistant_Get_NewBalloon);
   end Get_NewBalloon;

   function Get_BalloonError
     (This : Assistant_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Assistant_Get_BalloonError);
   end Get_BalloonError;

   function Get_Visible
     (This : Assistant_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Assistant_Get_Visible);
   end Get_Visible;

   procedure Put_Visible
     (This : Assistant_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Assistant_Put_Visible,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Visible;

   function Get_Animation
     (This : Assistant_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Assistant_Get_Animation);
   end Get_Animation;

   procedure Put_Animation
     (This : Assistant_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Assistant_Put_Animation,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Animation;

   function Get_Reduced
     (This : Assistant_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Assistant_Get_Reduced);
   end Get_Reduced;

   procedure Put_Reduced
     (This : Assistant_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Assistant_Put_Reduced,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Reduced;

   procedure Put_AssistWithHelp
     (This : Assistant_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Assistant_Put_AssistWithHelp,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AssistWithHelp;

   function Get_AssistWithHelp
     (This : Assistant_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Assistant_Get_AssistWithHelp);
   end Get_AssistWithHelp;

   procedure Put_AssistWithWizards
     (This : Assistant_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Assistant_Put_AssistWithWizards,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AssistWithWizards;

   function Get_AssistWithWizards
     (This : Assistant_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Assistant_Get_AssistWithWizards);
   end Get_AssistWithWizards;

   procedure Put_AssistWithAlerts
     (This : Assistant_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Assistant_Put_AssistWithAlerts,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AssistWithAlerts;

   function Get_AssistWithAlerts
     (This : Assistant_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Assistant_Get_AssistWithAlerts);
   end Get_AssistWithAlerts;

   procedure Put_MoveWhenInTheWay
     (This : Assistant_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Assistant_Put_MoveWhenInTheWay,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_MoveWhenInTheWay;

   function Get_MoveWhenInTheWay
     (This : Assistant_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Assistant_Get_MoveWhenInTheWay);
   end Get_MoveWhenInTheWay;

   procedure Put_Sounds
     (This : Assistant_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Assistant_Put_Sounds,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Sounds;

   function Get_Sounds
     (This : Assistant_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Assistant_Get_Sounds);
   end Get_Sounds;

   procedure Put_FeatureTips
     (This : Assistant_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Assistant_Put_FeatureTips,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_FeatureTips;

   function Get_FeatureTips
     (This : Assistant_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Assistant_Get_FeatureTips);
   end Get_FeatureTips;

   procedure Put_MouseTips
     (This : Assistant_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Assistant_Put_MouseTips,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_MouseTips;

   function Get_MouseTips
     (This : Assistant_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Assistant_Get_MouseTips);
   end Get_MouseTips;

   procedure Put_KeyboardShortcutTips
     (This : Assistant_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Assistant_Put_KeyboardShortcutTips,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_KeyboardShortcutTips;

   function Get_KeyboardShortcutTips
     (This : Assistant_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Assistant_Get_KeyboardShortcutTips);
   end Get_KeyboardShortcutTips;

   procedure Put_HighPriorityTips
     (This : Assistant_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Assistant_Put_HighPriorityTips,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_HighPriorityTips;

   function Get_HighPriorityTips
     (This : Assistant_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Assistant_Get_HighPriorityTips);
   end Get_HighPriorityTips;

   procedure Put_TipOfDay
     (This : Assistant_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Assistant_Put_TipOfDay,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_TipOfDay;

   function Get_TipOfDay
     (This : Assistant_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Assistant_Get_TipOfDay);
   end Get_TipOfDay;

   procedure Put_GuessHelp
     (This : Assistant_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Assistant_Put_GuessHelp,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_GuessHelp;

   function Get_GuessHelp
     (This : Assistant_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Assistant_Get_GuessHelp);
   end Get_GuessHelp;

   procedure Put_SearchWhenProgramming
     (This : Assistant_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Assistant_Put_SearchWhenProgramming,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_SearchWhenProgramming;

   function Get_SearchWhenProgramming
     (This : Assistant_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Assistant_Get_SearchWhenProgramming);
   end Get_SearchWhenProgramming;

   function Get_Item
     (This : Assistant_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Assistant_Get_Item);
   end Get_Item;

   function Get_FileName
     (This : Assistant_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Assistant_Get_FileName);
   end Get_FileName;

   procedure Put_FileName
     (This : Assistant_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Assistant_Put_FileName,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_FileName;

   function Get_Name
     (This : Assistant_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Assistant_Get_Name);
   end Get_Name;

   function Get_On
     (This : Assistant_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Assistant_Get_On);
   end Get_On;

   procedure Put_On
     (This : Assistant_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Assistant_Put_On,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_On;

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
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Assistant_DoAlert,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => varfSysAlert,
          2 => alq,
          3 => ald,
          4 => alc,
          5 => alb,
          6 => bstrAlertText,
          7 => bstrAlertTitle),
         Free);
   end DoAlert;

end winword.Assistant_Object;

