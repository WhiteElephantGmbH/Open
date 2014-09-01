with GNATCOM.Dispinterface;

package winword.CommandBarControl_Object is

   type CommandBarControl_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_accParent
     (This : CommandBarControl_Type)
     return GNATCOM.Types.VARIANT;

   function Get_accChildCount
     (This : CommandBarControl_Type)
     return GNATCOM.Types.VARIANT;

   function Get_accChild
     (This     : CommandBarControl_Type;
      varChild : GNATCOM.Types.VARIANT;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Get_accName
     (This     : CommandBarControl_Type;
      varChild : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Get_accValue
     (This     : CommandBarControl_Type;
      varChild : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Get_accDescription
     (This     : CommandBarControl_Type;
      varChild : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Get_accRole
     (This     : CommandBarControl_Type;
      varChild : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Get_accState
     (This     : CommandBarControl_Type;
      varChild : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Get_accHelp
     (This     : CommandBarControl_Type;
      varChild : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Get_accHelpTopic
     (This        : CommandBarControl_Type;
      pszHelpFile : GNATCOM.Types.VARIANT;
      varChild    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free        : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Get_accKeyboardShortcut
     (This     : CommandBarControl_Type;
      varChild : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Get_accFocus
     (This : CommandBarControl_Type)
     return GNATCOM.Types.VARIANT;

   function Get_accSelection
     (This : CommandBarControl_Type)
     return GNATCOM.Types.VARIANT;

   function Get_accDefaultAction
     (This     : CommandBarControl_Type;
      varChild : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure accSelect
     (This        : CommandBarControl_Type;
      flagsSelect : GNATCOM.Types.VARIANT;
      varChild    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free        : Boolean := True);

   procedure accLocation
     (This      : CommandBarControl_Type;
      pxLeft    : GNATCOM.Types.VARIANT;
      pyTop     : GNATCOM.Types.VARIANT;
      pcxWidth  : GNATCOM.Types.VARIANT;
      pcyHeight : GNATCOM.Types.VARIANT;
      varChild  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free      : Boolean := True);

   function accNavigate
     (This     : CommandBarControl_Type;
      navDir   : GNATCOM.Types.VARIANT;
      varStart : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function accHitTest
     (This  : CommandBarControl_Type;
      xLeft : GNATCOM.Types.VARIANT;
      yTop  : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure accDoDefaultAction
     (This     : CommandBarControl_Type;
      varChild : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True);

   procedure Put_accName
     (This     : CommandBarControl_Type;
      varChild : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      P2       : GNATCOM.Types.VARIANT;
      Free     : Boolean := True);

   procedure Put_accValue
     (This     : CommandBarControl_Type;
      varChild : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      P2       : GNATCOM.Types.VARIANT;
      Free     : Boolean := True);

   function Get_Application
     (This : CommandBarControl_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : CommandBarControl_Type)
     return GNATCOM.Types.VARIANT;

   function Get_BeginGroup
     (This : CommandBarControl_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_BeginGroup
     (This : CommandBarControl_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_BuiltIn
     (This : CommandBarControl_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Caption
     (This : CommandBarControl_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Caption
     (This : CommandBarControl_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Control
     (This : CommandBarControl_Type)
     return GNATCOM.Types.VARIANT;

   function Copy
     (This   : CommandBarControl_Type;
      Bar    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Before : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure Delete
     (This      : CommandBarControl_Type;
      Temporary : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free      : Boolean := True);

   function Get_DescriptionText
     (This : CommandBarControl_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DescriptionText
     (This : CommandBarControl_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Enabled
     (This : CommandBarControl_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Enabled
     (This : CommandBarControl_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure Execute
     (This : CommandBarControl_Type);

   function Get_Height
     (This : CommandBarControl_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Height
     (This : CommandBarControl_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_HelpContextId
     (This : CommandBarControl_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_HelpContextId
     (This : CommandBarControl_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_HelpFile
     (This : CommandBarControl_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_HelpFile
     (This : CommandBarControl_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Id
     (This : CommandBarControl_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Index
     (This : CommandBarControl_Type)
     return GNATCOM.Types.VARIANT;

   function Get_InstanceId
     (This : CommandBarControl_Type)
     return GNATCOM.Types.VARIANT;

   function Move
     (This   : CommandBarControl_Type;
      Bar    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Before : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Get_Left
     (This : CommandBarControl_Type)
     return GNATCOM.Types.VARIANT;

   function Get_OLEUsage
     (This : CommandBarControl_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_OLEUsage
     (This : CommandBarControl_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_OnAction
     (This : CommandBarControl_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_OnAction
     (This : CommandBarControl_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Parent
     (This : CommandBarControl_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parameter
     (This : CommandBarControl_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Parameter
     (This : CommandBarControl_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Priority
     (This : CommandBarControl_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Priority
     (This : CommandBarControl_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure Reset
     (This : CommandBarControl_Type);

   procedure SetFocus
     (This : CommandBarControl_Type);

   function Get_Tag
     (This : CommandBarControl_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Tag
     (This : CommandBarControl_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_TooltipText
     (This : CommandBarControl_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_TooltipText
     (This : CommandBarControl_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Top
     (This : CommandBarControl_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Type
     (This : CommandBarControl_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Visible
     (This : CommandBarControl_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Visible
     (This : CommandBarControl_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Width
     (This : CommandBarControl_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Width
     (This : CommandBarControl_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_IsPriorityDropped
     (This : CommandBarControl_Type)
     return GNATCOM.Types.VARIANT;

   procedure Reserved1
     (This : CommandBarControl_Type);

   procedure Reserved2
     (This : CommandBarControl_Type);

   procedure Reserved3
     (This : CommandBarControl_Type);

   procedure Reserved4
     (This : CommandBarControl_Type);

   procedure Reserved5
     (This : CommandBarControl_Type);

   procedure Reserved6
     (This : CommandBarControl_Type);

   procedure Reserved7
     (This : CommandBarControl_Type);

end winword.CommandBarControl_Object;

