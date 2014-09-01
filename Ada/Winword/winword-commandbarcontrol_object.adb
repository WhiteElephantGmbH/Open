package body winword.CommandBarControl_Object is

   function Get_accParent
     (This : CommandBarControl_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CommandBarControl_Get_accParent);
   end Get_accParent;

   function Get_accChildCount
     (This : CommandBarControl_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CommandBarControl_Get_accChildCount);
   end Get_accChildCount;

   function Get_accChild
     (This     : CommandBarControl_Type;
      varChild : GNATCOM.Types.VARIANT;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get
        (This,
         CommandBarControl_Get_accChild,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => varChild),
         Free);
   end Get_accChild;

   function Get_accName
     (This     : CommandBarControl_Type;
      varChild : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get
        (This,
         CommandBarControl_Get_accName,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => varChild),
         Free);
   end Get_accName;

   function Get_accValue
     (This     : CommandBarControl_Type;
      varChild : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get
        (This,
         CommandBarControl_Get_accValue,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => varChild),
         Free);
   end Get_accValue;

   function Get_accDescription
     (This     : CommandBarControl_Type;
      varChild : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get
        (This,
         CommandBarControl_Get_accDescription,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => varChild),
         Free);
   end Get_accDescription;

   function Get_accRole
     (This     : CommandBarControl_Type;
      varChild : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get
        (This,
         CommandBarControl_Get_accRole,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => varChild),
         Free);
   end Get_accRole;

   function Get_accState
     (This     : CommandBarControl_Type;
      varChild : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get
        (This,
         CommandBarControl_Get_accState,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => varChild),
         Free);
   end Get_accState;

   function Get_accHelp
     (This     : CommandBarControl_Type;
      varChild : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get
        (This,
         CommandBarControl_Get_accHelp,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => varChild),
         Free);
   end Get_accHelp;

   function Get_accHelpTopic
     (This        : CommandBarControl_Type;
      pszHelpFile : GNATCOM.Types.VARIANT;
      varChild    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free        : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get
        (This,
         CommandBarControl_Get_accHelpTopic,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => varChild,
          2 => pszHelpFile),
         Free);
   end Get_accHelpTopic;

   function Get_accKeyboardShortcut
     (This     : CommandBarControl_Type;
      varChild : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get
        (This,
         CommandBarControl_Get_accKeyboardShortcut,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => varChild),
         Free);
   end Get_accKeyboardShortcut;

   function Get_accFocus
     (This : CommandBarControl_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CommandBarControl_Get_accFocus);
   end Get_accFocus;

   function Get_accSelection
     (This : CommandBarControl_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CommandBarControl_Get_accSelection);
   end Get_accSelection;

   function Get_accDefaultAction
     (This     : CommandBarControl_Type;
      varChild : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get
        (This,
         CommandBarControl_Get_accDefaultAction,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => varChild),
         Free);
   end Get_accDefaultAction;

   procedure accSelect
     (This        : CommandBarControl_Type;
      flagsSelect : GNATCOM.Types.VARIANT;
      varChild    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free        : Boolean := True)
   is
   begin
      Invoke
        (This,
         CommandBarControl_accSelect,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => varChild,
          2 => flagsSelect),
         Free);
   end accSelect;

   procedure accLocation
     (This      : CommandBarControl_Type;
      pxLeft    : GNATCOM.Types.VARIANT;
      pyTop     : GNATCOM.Types.VARIANT;
      pcxWidth  : GNATCOM.Types.VARIANT;
      pcyHeight : GNATCOM.Types.VARIANT;
      varChild  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free      : Boolean := True)
   is
   begin
      Invoke
        (This,
         CommandBarControl_accLocation,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => varChild,
          2 => pcyHeight,
          3 => pcxWidth,
          4 => pyTop,
          5 => pxLeft),
         Free);
   end accLocation;

   function accNavigate
     (This     : CommandBarControl_Type;
      navDir   : GNATCOM.Types.VARIANT;
      varStart : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         CommandBarControl_accNavigate,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => varStart,
          2 => navDir),
         Free);
   end accNavigate;

   function accHitTest
     (This  : CommandBarControl_Type;
      xLeft : GNATCOM.Types.VARIANT;
      yTop  : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         CommandBarControl_accHitTest,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => yTop,
          2 => xLeft),
         Free);
   end accHitTest;

   procedure accDoDefaultAction
     (This     : CommandBarControl_Type;
      varChild : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
   is
   begin
      Invoke
        (This,
         CommandBarControl_accDoDefaultAction,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => varChild),
         Free);
   end accDoDefaultAction;

   procedure Put_accName
     (This     : CommandBarControl_Type;
      varChild : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      P2       : GNATCOM.Types.VARIANT;
      Free     : Boolean := True)
   is
   begin
      Put
        (This,
         CommandBarControl_Put_accName,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P2,
          2 => varChild),
         Free);
   end Put_accName;

   procedure Put_accValue
     (This     : CommandBarControl_Type;
      varChild : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      P2       : GNATCOM.Types.VARIANT;
      Free     : Boolean := True)
   is
   begin
      Put
        (This,
         CommandBarControl_Put_accValue,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P2,
          2 => varChild),
         Free);
   end Put_accValue;

   function Get_Application
     (This : CommandBarControl_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CommandBarControl_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : CommandBarControl_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CommandBarControl_Get_Creator);
   end Get_Creator;

   function Get_BeginGroup
     (This : CommandBarControl_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CommandBarControl_Get_BeginGroup);
   end Get_BeginGroup;

   procedure Put_BeginGroup
     (This : CommandBarControl_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         CommandBarControl_Put_BeginGroup,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_BeginGroup;

   function Get_BuiltIn
     (This : CommandBarControl_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CommandBarControl_Get_BuiltIn);
   end Get_BuiltIn;

   function Get_Caption
     (This : CommandBarControl_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CommandBarControl_Get_Caption);
   end Get_Caption;

   procedure Put_Caption
     (This : CommandBarControl_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         CommandBarControl_Put_Caption,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Caption;

   function Get_Control
     (This : CommandBarControl_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CommandBarControl_Get_Control);
   end Get_Control;

   function Copy
     (This   : CommandBarControl_Type;
      Bar    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Before : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         CommandBarControl_Copy,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Before,
          2 => Bar),
         Free);
   end Copy;

   procedure Delete
     (This      : CommandBarControl_Type;
      Temporary : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free      : Boolean := True)
   is
   begin
      Invoke
        (This,
         CommandBarControl_Delete,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Temporary),
         Free);
   end Delete;

   function Get_DescriptionText
     (This : CommandBarControl_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CommandBarControl_Get_DescriptionText);
   end Get_DescriptionText;

   procedure Put_DescriptionText
     (This : CommandBarControl_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         CommandBarControl_Put_DescriptionText,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DescriptionText;

   function Get_Enabled
     (This : CommandBarControl_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CommandBarControl_Get_Enabled);
   end Get_Enabled;

   procedure Put_Enabled
     (This : CommandBarControl_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         CommandBarControl_Put_Enabled,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Enabled;

   procedure Execute
     (This : CommandBarControl_Type)
   is
   begin
      Invoke (This, CommandBarControl_Execute);
   end Execute;

   function Get_Height
     (This : CommandBarControl_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CommandBarControl_Get_Height);
   end Get_Height;

   procedure Put_Height
     (This : CommandBarControl_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         CommandBarControl_Put_Height,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Height;

   function Get_HelpContextId
     (This : CommandBarControl_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CommandBarControl_Get_HelpContextId);
   end Get_HelpContextId;

   procedure Put_HelpContextId
     (This : CommandBarControl_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         CommandBarControl_Put_HelpContextId,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_HelpContextId;

   function Get_HelpFile
     (This : CommandBarControl_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CommandBarControl_Get_HelpFile);
   end Get_HelpFile;

   procedure Put_HelpFile
     (This : CommandBarControl_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         CommandBarControl_Put_HelpFile,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_HelpFile;

   function Get_Id
     (This : CommandBarControl_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CommandBarControl_Get_Id);
   end Get_Id;

   function Get_Index
     (This : CommandBarControl_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CommandBarControl_Get_Index);
   end Get_Index;

   function Get_InstanceId
     (This : CommandBarControl_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CommandBarControl_Get_InstanceId);
   end Get_InstanceId;

   function Move
     (This   : CommandBarControl_Type;
      Bar    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Before : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         CommandBarControl_Move,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Before,
          2 => Bar),
         Free);
   end Move;

   function Get_Left
     (This : CommandBarControl_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CommandBarControl_Get_Left);
   end Get_Left;

   function Get_OLEUsage
     (This : CommandBarControl_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CommandBarControl_Get_OLEUsage);
   end Get_OLEUsage;

   procedure Put_OLEUsage
     (This : CommandBarControl_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         CommandBarControl_Put_OLEUsage,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_OLEUsage;

   function Get_OnAction
     (This : CommandBarControl_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CommandBarControl_Get_OnAction);
   end Get_OnAction;

   procedure Put_OnAction
     (This : CommandBarControl_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         CommandBarControl_Put_OnAction,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_OnAction;

   function Get_Parent
     (This : CommandBarControl_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CommandBarControl_Get_Parent);
   end Get_Parent;

   function Get_Parameter
     (This : CommandBarControl_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CommandBarControl_Get_Parameter);
   end Get_Parameter;

   procedure Put_Parameter
     (This : CommandBarControl_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         CommandBarControl_Put_Parameter,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Parameter;

   function Get_Priority
     (This : CommandBarControl_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CommandBarControl_Get_Priority);
   end Get_Priority;

   procedure Put_Priority
     (This : CommandBarControl_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         CommandBarControl_Put_Priority,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Priority;

   procedure Reset
     (This : CommandBarControl_Type)
   is
   begin
      Invoke (This, CommandBarControl_Reset);
   end Reset;

   procedure SetFocus
     (This : CommandBarControl_Type)
   is
   begin
      Invoke (This, CommandBarControl_SetFocus);
   end SetFocus;

   function Get_Tag
     (This : CommandBarControl_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CommandBarControl_Get_Tag);
   end Get_Tag;

   procedure Put_Tag
     (This : CommandBarControl_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         CommandBarControl_Put_Tag,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Tag;

   function Get_TooltipText
     (This : CommandBarControl_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CommandBarControl_Get_TooltipText);
   end Get_TooltipText;

   procedure Put_TooltipText
     (This : CommandBarControl_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         CommandBarControl_Put_TooltipText,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_TooltipText;

   function Get_Top
     (This : CommandBarControl_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CommandBarControl_Get_Top);
   end Get_Top;

   function Get_Type
     (This : CommandBarControl_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CommandBarControl_Get_Type);
   end Get_Type;

   function Get_Visible
     (This : CommandBarControl_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CommandBarControl_Get_Visible);
   end Get_Visible;

   procedure Put_Visible
     (This : CommandBarControl_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         CommandBarControl_Put_Visible,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Visible;

   function Get_Width
     (This : CommandBarControl_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CommandBarControl_Get_Width);
   end Get_Width;

   procedure Put_Width
     (This : CommandBarControl_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         CommandBarControl_Put_Width,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Width;

   function Get_IsPriorityDropped
     (This : CommandBarControl_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CommandBarControl_Get_IsPriorityDropped);
   end Get_IsPriorityDropped;

   procedure Reserved1
     (This : CommandBarControl_Type)
   is
   begin
      Invoke (This, CommandBarControl_Reserved1);
   end Reserved1;

   procedure Reserved2
     (This : CommandBarControl_Type)
   is
   begin
      Invoke (This, CommandBarControl_Reserved2);
   end Reserved2;

   procedure Reserved3
     (This : CommandBarControl_Type)
   is
   begin
      Invoke (This, CommandBarControl_Reserved3);
   end Reserved3;

   procedure Reserved4
     (This : CommandBarControl_Type)
   is
   begin
      Invoke (This, CommandBarControl_Reserved4);
   end Reserved4;

   procedure Reserved5
     (This : CommandBarControl_Type)
   is
   begin
      Invoke (This, CommandBarControl_Reserved5);
   end Reserved5;

   procedure Reserved6
     (This : CommandBarControl_Type)
   is
   begin
      Invoke (This, CommandBarControl_Reserved6);
   end Reserved6;

   procedure Reserved7
     (This : CommandBarControl_Type)
   is
   begin
      Invoke (This, CommandBarControl_Reserved7);
   end Reserved7;

end winword.CommandBarControl_Object;

