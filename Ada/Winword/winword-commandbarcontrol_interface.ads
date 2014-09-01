with GNATCOM.Dispinterface;

package winword.CommandBarControl_Interface is

   type CommandBarControl_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out CommandBarControl_Type);

   function Pointer (This : CommandBarControl_Type)
     return Pointer_To_CommandBarControl;

   procedure Attach (This    : in out CommandBarControl_Type;
                     Pointer : in     Pointer_To_CommandBarControl);

   function Get_accParent
     (This         : CommandBarControl_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_accChildCount
     (This           : CommandBarControl_Type)
     return Interfaces.C.long;

   function Get_accChild
     (This        : CommandBarControl_Type;
      varChild    : GNATCOM.Types.VARIANT;
      Free        : Boolean := True)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_accName
     (This     : CommandBarControl_Type;
      varChild : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
     return GNATCOM.Types.BSTR;

   function Get_accValue
     (This     : CommandBarControl_Type;
      varChild : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
     return GNATCOM.Types.BSTR;

   function Get_accDescription
     (This           : CommandBarControl_Type;
      varChild       : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Free           : Boolean := True)
     return GNATCOM.Types.BSTR;

   function Get_accRole
     (This     : CommandBarControl_Type;
      varChild : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Get_accState
     (This      : CommandBarControl_Type;
      varChild  : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Free      : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Get_accHelp
     (This     : CommandBarControl_Type;
      varChild : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
     return GNATCOM.Types.BSTR;

   function Get_accHelpTopic
     (This        : CommandBarControl_Type;
      pszHelpFile : GNATCOM.Types.Pointer_To_BSTR;
      varChild    : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Free        : Boolean := True)
     return Interfaces.C.long;

   function Get_accKeyboardShortcut
     (This                : CommandBarControl_Type;
      varChild            : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Free                : Boolean := True)
     return GNATCOM.Types.BSTR;

   function Get_accFocus
     (This      : CommandBarControl_Type)
     return GNATCOM.Types.VARIANT;

   function Get_accSelection
     (This         : CommandBarControl_Type)
     return GNATCOM.Types.VARIANT;

   function Get_accDefaultAction
     (This             : CommandBarControl_Type;
      varChild         : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Free             : Boolean := True)
     return GNATCOM.Types.BSTR;

   procedure accSelect
     (This        : CommandBarControl_Type;
      flagsSelect : Interfaces.C.long;
      varChild    : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Free        : Boolean := True);

   procedure accLocation
     (This      : CommandBarControl_Type;
      pxLeft    : GNATCOM.Types.Pointer_To_long;
      pyTop     : GNATCOM.Types.Pointer_To_long;
      pcxWidth  : GNATCOM.Types.Pointer_To_long;
      pcyHeight : GNATCOM.Types.Pointer_To_long;
      varChild  : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Free      : Boolean := True);

   function accNavigate
     (This        : CommandBarControl_Type;
      navDir      : Interfaces.C.long;
      varStart    : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Free        : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function accHitTest
     (This      : CommandBarControl_Type;
      xLeft     : Interfaces.C.long;
      yTop      : Interfaces.C.long)
     return GNATCOM.Types.VARIANT;

   procedure accDoDefaultAction
     (This     : CommandBarControl_Type;
      varChild : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True);

   procedure Put_accName
     (This     : CommandBarControl_Type;
      varChild : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      pszName  : GNATCOM.Types.BSTR;
      Free     : Boolean := True);

   procedure Put_accValue
     (This     : CommandBarControl_Type;
      varChild : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      pszValue : GNATCOM.Types.BSTR;
      Free     : Boolean := True);

   function Get_Application
     (This    : CommandBarControl_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Creator
     (This      : CommandBarControl_Type)
     return Interfaces.C.long;

   function Get_BeginGroup
     (This            : CommandBarControl_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_BeginGroup
     (This            : CommandBarControl_Type;
      pvarfBeginGroup : GNATCOM.Types.VARIANT_BOOL);

   function Get_BuiltIn
     (This         : CommandBarControl_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   function Get_Caption
     (This         : CommandBarControl_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_Caption
     (This         : CommandBarControl_Type;
      pbstrCaption : GNATCOM.Types.BSTR;
      Free         : Boolean := True);

   function Get_Control
     (This    : CommandBarControl_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Copy
     (This   : CommandBarControl_Type;
      Bar    : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Before : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Free   : Boolean := True)
     return Pointer_To_CommandBarControl;

   procedure Delete
     (This      : CommandBarControl_Type;
      Temporary : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Free      : Boolean := True);

   function Get_DescriptionText
     (This      : CommandBarControl_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_DescriptionText
     (This      : CommandBarControl_Type;
      pbstrText : GNATCOM.Types.BSTR;
      Free      : Boolean := True);

   function Get_Enabled
     (This         : CommandBarControl_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_Enabled
     (This         : CommandBarControl_Type;
      pvarfEnabled : GNATCOM.Types.VARIANT_BOOL);

   procedure Execute
     (This : CommandBarControl_Type);

   function Get_Height
     (This : CommandBarControl_Type)
     return Interfaces.C.int;

   procedure Put_Height
     (This : CommandBarControl_Type;
      pdy  : Interfaces.C.int);

   function Get_HelpContextId
     (This : CommandBarControl_Type)
     return Interfaces.C.int;

   procedure Put_HelpContextId
     (This : CommandBarControl_Type;
      pid  : Interfaces.C.int);

   function Get_HelpFile
     (This          : CommandBarControl_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_HelpFile
     (This          : CommandBarControl_Type;
      pbstrFilename : GNATCOM.Types.BSTR;
      Free          : Boolean := True);

   function Get_Id
     (This : CommandBarControl_Type)
     return Interfaces.C.int;

   function Get_Index
     (This : CommandBarControl_Type)
     return Interfaces.C.int;

   function Get_InstanceId
     (This : CommandBarControl_Type)
     return Interfaces.C.long;

   function Move
     (This   : CommandBarControl_Type;
      Bar    : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Before : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Free   : Boolean := True)
     return Pointer_To_CommandBarControl;

   function Get_Left
     (This : CommandBarControl_Type)
     return Interfaces.C.int;

   function Get_OLEUsage
     (This : CommandBarControl_Type)
     return MsoControlOLEUsage;

   procedure Put_OLEUsage
     (This : CommandBarControl_Type;
      pcou : MsoControlOLEUsage);

   function Get_OnAction
     (This          : CommandBarControl_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_OnAction
     (This          : CommandBarControl_Type;
      pbstrOnAction : GNATCOM.Types.BSTR;
      Free          : Boolean := True);

   function Get_Parent
     (This : CommandBarControl_Type)
     return Pointer_To_CommandBar;

   function Get_Parameter
     (This       : CommandBarControl_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_Parameter
     (This       : CommandBarControl_Type;
      pbstrParam : GNATCOM.Types.BSTR;
      Free       : Boolean := True);

   function Get_Priority
     (This  : CommandBarControl_Type)
     return Interfaces.C.int;

   procedure Put_Priority
     (This  : CommandBarControl_Type;
      pnPri : Interfaces.C.int);

   procedure Reset
     (This : CommandBarControl_Type);

   procedure SetFocus
     (This : CommandBarControl_Type);

   function Get_Tag
     (This     : CommandBarControl_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_Tag
     (This     : CommandBarControl_Type;
      pbstrTag : GNATCOM.Types.BSTR;
      Free     : Boolean := True);

   function Get_TooltipText
     (This         : CommandBarControl_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_TooltipText
     (This         : CommandBarControl_Type;
      pbstrTooltip : GNATCOM.Types.BSTR;
      Free         : Boolean := True);

   function Get_Top
     (This : CommandBarControl_Type)
     return Interfaces.C.int;

   function Get_Type
     (This  : CommandBarControl_Type)
     return MsoControlType;

   function Get_Visible
     (This         : CommandBarControl_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_Visible
     (This         : CommandBarControl_Type;
      pvarfVisible : GNATCOM.Types.VARIANT_BOOL);

   function Get_Width
     (This : CommandBarControl_Type)
     return Interfaces.C.int;

   procedure Put_Width
     (This : CommandBarControl_Type;
      pdx  : Interfaces.C.int);

   function Get_IsPriorityDropped
     (This         : CommandBarControl_Type)
     return GNATCOM.Types.VARIANT_BOOL;

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

end winword.CommandBarControl_Interface;

