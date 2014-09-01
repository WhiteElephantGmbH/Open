package body winword.CommandBar_Object is

   function Get_accParent
     (This : CommandBar_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CommandBar_Get_accParent);
   end Get_accParent;

   function Get_accChildCount
     (This : CommandBar_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CommandBar_Get_accChildCount);
   end Get_accChildCount;

   function Get_accChild
     (This     : CommandBar_Type;
      varChild : GNATCOM.Types.VARIANT;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get
        (This,
         CommandBar_Get_accChild,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => varChild),
         Free);
   end Get_accChild;

   function Get_accName
     (This     : CommandBar_Type;
      varChild : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get
        (This,
         CommandBar_Get_accName,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => varChild),
         Free);
   end Get_accName;

   function Get_accValue
     (This     : CommandBar_Type;
      varChild : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get
        (This,
         CommandBar_Get_accValue,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => varChild),
         Free);
   end Get_accValue;

   function Get_accDescription
     (This     : CommandBar_Type;
      varChild : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get
        (This,
         CommandBar_Get_accDescription,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => varChild),
         Free);
   end Get_accDescription;

   function Get_accRole
     (This     : CommandBar_Type;
      varChild : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get
        (This,
         CommandBar_Get_accRole,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => varChild),
         Free);
   end Get_accRole;

   function Get_accState
     (This     : CommandBar_Type;
      varChild : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get
        (This,
         CommandBar_Get_accState,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => varChild),
         Free);
   end Get_accState;

   function Get_accHelp
     (This     : CommandBar_Type;
      varChild : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get
        (This,
         CommandBar_Get_accHelp,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => varChild),
         Free);
   end Get_accHelp;

   function Get_accHelpTopic
     (This        : CommandBar_Type;
      pszHelpFile : GNATCOM.Types.VARIANT;
      varChild    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free        : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get
        (This,
         CommandBar_Get_accHelpTopic,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => varChild,
          2 => pszHelpFile),
         Free);
   end Get_accHelpTopic;

   function Get_accKeyboardShortcut
     (This     : CommandBar_Type;
      varChild : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get
        (This,
         CommandBar_Get_accKeyboardShortcut,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => varChild),
         Free);
   end Get_accKeyboardShortcut;

   function Get_accFocus
     (This : CommandBar_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CommandBar_Get_accFocus);
   end Get_accFocus;

   function Get_accSelection
     (This : CommandBar_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CommandBar_Get_accSelection);
   end Get_accSelection;

   function Get_accDefaultAction
     (This     : CommandBar_Type;
      varChild : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get
        (This,
         CommandBar_Get_accDefaultAction,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => varChild),
         Free);
   end Get_accDefaultAction;

   procedure accSelect
     (This        : CommandBar_Type;
      flagsSelect : GNATCOM.Types.VARIANT;
      varChild    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free        : Boolean := True)
   is
   begin
      Invoke
        (This,
         CommandBar_accSelect,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => varChild,
          2 => flagsSelect),
         Free);
   end accSelect;

   procedure accLocation
     (This      : CommandBar_Type;
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
         CommandBar_accLocation,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => varChild,
          2 => pcyHeight,
          3 => pcxWidth,
          4 => pyTop,
          5 => pxLeft),
         Free);
   end accLocation;

   function accNavigate
     (This     : CommandBar_Type;
      navDir   : GNATCOM.Types.VARIANT;
      varStart : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         CommandBar_accNavigate,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => varStart,
          2 => navDir),
         Free);
   end accNavigate;

   function accHitTest
     (This  : CommandBar_Type;
      xLeft : GNATCOM.Types.VARIANT;
      yTop  : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         CommandBar_accHitTest,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => yTop,
          2 => xLeft),
         Free);
   end accHitTest;

   procedure accDoDefaultAction
     (This     : CommandBar_Type;
      varChild : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
   is
   begin
      Invoke
        (This,
         CommandBar_accDoDefaultAction,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => varChild),
         Free);
   end accDoDefaultAction;

   procedure Put_accName
     (This     : CommandBar_Type;
      varChild : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      P2       : GNATCOM.Types.VARIANT;
      Free     : Boolean := True)
   is
   begin
      Put
        (This,
         CommandBar_Put_accName,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P2,
          2 => varChild),
         Free);
   end Put_accName;

   procedure Put_accValue
     (This     : CommandBar_Type;
      varChild : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      P2       : GNATCOM.Types.VARIANT;
      Free     : Boolean := True)
   is
   begin
      Put
        (This,
         CommandBar_Put_accValue,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P2,
          2 => varChild),
         Free);
   end Put_accValue;

   function Get_Application
     (This : CommandBar_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CommandBar_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : CommandBar_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CommandBar_Get_Creator);
   end Get_Creator;

   function Get_BuiltIn
     (This : CommandBar_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CommandBar_Get_BuiltIn);
   end Get_BuiltIn;

   function Get_Context
     (This : CommandBar_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CommandBar_Get_Context);
   end Get_Context;

   procedure Put_Context
     (This : CommandBar_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         CommandBar_Put_Context,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Context;

   function Get_Controls
     (This : CommandBar_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CommandBar_Get_Controls);
   end Get_Controls;

   procedure Delete
     (This : CommandBar_Type)
   is
   begin
      Invoke (This, CommandBar_Delete);
   end Delete;

   function Get_Enabled
     (This : CommandBar_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CommandBar_Get_Enabled);
   end Get_Enabled;

   procedure Put_Enabled
     (This : CommandBar_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         CommandBar_Put_Enabled,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Enabled;

   function FindControl
     (This      : CommandBar_Type;
      uType     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Id        : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Tag       : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Visible   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Recursive : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free      : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         CommandBar_FindControl,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Recursive,
          2 => Visible,
          3 => Tag,
          4 => Id,
          5 => uType),
         Free);
   end FindControl;

   function Get_Height
     (This : CommandBar_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CommandBar_Get_Height);
   end Get_Height;

   procedure Put_Height
     (This : CommandBar_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         CommandBar_Put_Height,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Height;

   function Get_Index
     (This : CommandBar_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CommandBar_Get_Index);
   end Get_Index;

   function Get_InstanceId
     (This : CommandBar_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CommandBar_Get_InstanceId);
   end Get_InstanceId;

   function Get_Left
     (This : CommandBar_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CommandBar_Get_Left);
   end Get_Left;

   procedure Put_Left
     (This : CommandBar_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         CommandBar_Put_Left,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Left;

   function Get_Name
     (This : CommandBar_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CommandBar_Get_Name);
   end Get_Name;

   procedure Put_Name
     (This : CommandBar_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         CommandBar_Put_Name,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Name;

   function Get_NameLocal
     (This : CommandBar_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CommandBar_Get_NameLocal);
   end Get_NameLocal;

   procedure Put_NameLocal
     (This : CommandBar_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         CommandBar_Put_NameLocal,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_NameLocal;

   function Get_Parent
     (This : CommandBar_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CommandBar_Get_Parent);
   end Get_Parent;

   function Get_Position
     (This : CommandBar_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CommandBar_Get_Position);
   end Get_Position;

   procedure Put_Position
     (This : CommandBar_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         CommandBar_Put_Position,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Position;

   function Get_RowIndex
     (This : CommandBar_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CommandBar_Get_RowIndex);
   end Get_RowIndex;

   procedure Put_RowIndex
     (This : CommandBar_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         CommandBar_Put_RowIndex,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_RowIndex;

   function Get_Protection
     (This : CommandBar_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CommandBar_Get_Protection);
   end Get_Protection;

   procedure Put_Protection
     (This : CommandBar_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         CommandBar_Put_Protection,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Protection;

   procedure Reset
     (This : CommandBar_Type)
   is
   begin
      Invoke (This, CommandBar_Reset);
   end Reset;

   procedure ShowPopup
     (This : CommandBar_Type;
      x    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      y    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free : Boolean := True)
   is
   begin
      Invoke
        (This,
         CommandBar_ShowPopup,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => y,
          2 => x),
         Free);
   end ShowPopup;

   function Get_Top
     (This : CommandBar_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CommandBar_Get_Top);
   end Get_Top;

   procedure Put_Top
     (This : CommandBar_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         CommandBar_Put_Top,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Top;

   function Get_Type
     (This : CommandBar_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CommandBar_Get_Type);
   end Get_Type;

   function Get_Visible
     (This : CommandBar_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CommandBar_Get_Visible);
   end Get_Visible;

   procedure Put_Visible
     (This : CommandBar_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         CommandBar_Put_Visible,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Visible;

   function Get_Width
     (This : CommandBar_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CommandBar_Get_Width);
   end Get_Width;

   procedure Put_Width
     (This : CommandBar_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         CommandBar_Put_Width,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Width;

   function Get_AdaptiveMenu
     (This : CommandBar_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CommandBar_Get_AdaptiveMenu);
   end Get_AdaptiveMenu;

   procedure Put_AdaptiveMenu
     (This : CommandBar_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         CommandBar_Put_AdaptiveMenu,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AdaptiveMenu;

   function Get_Id
     (This : CommandBar_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CommandBar_Get_Id);
   end Get_Id;

end winword.CommandBar_Object;

