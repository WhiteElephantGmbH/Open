with GNATCOM.Dispinterface;

package winword.CommandBar_Object is

   type CommandBar_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_accParent
     (This : CommandBar_Type)
     return GNATCOM.Types.VARIANT;

   function Get_accChildCount
     (This : CommandBar_Type)
     return GNATCOM.Types.VARIANT;

   function Get_accChild
     (This     : CommandBar_Type;
      varChild : GNATCOM.Types.VARIANT;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Get_accName
     (This     : CommandBar_Type;
      varChild : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Get_accValue
     (This     : CommandBar_Type;
      varChild : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Get_accDescription
     (This     : CommandBar_Type;
      varChild : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Get_accRole
     (This     : CommandBar_Type;
      varChild : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Get_accState
     (This     : CommandBar_Type;
      varChild : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Get_accHelp
     (This     : CommandBar_Type;
      varChild : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Get_accHelpTopic
     (This        : CommandBar_Type;
      pszHelpFile : GNATCOM.Types.VARIANT;
      varChild    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free        : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Get_accKeyboardShortcut
     (This     : CommandBar_Type;
      varChild : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Get_accFocus
     (This : CommandBar_Type)
     return GNATCOM.Types.VARIANT;

   function Get_accSelection
     (This : CommandBar_Type)
     return GNATCOM.Types.VARIANT;

   function Get_accDefaultAction
     (This     : CommandBar_Type;
      varChild : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure accSelect
     (This        : CommandBar_Type;
      flagsSelect : GNATCOM.Types.VARIANT;
      varChild    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free        : Boolean := True);

   procedure accLocation
     (This      : CommandBar_Type;
      pxLeft    : GNATCOM.Types.VARIANT;
      pyTop     : GNATCOM.Types.VARIANT;
      pcxWidth  : GNATCOM.Types.VARIANT;
      pcyHeight : GNATCOM.Types.VARIANT;
      varChild  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free      : Boolean := True);

   function accNavigate
     (This     : CommandBar_Type;
      navDir   : GNATCOM.Types.VARIANT;
      varStart : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function accHitTest
     (This  : CommandBar_Type;
      xLeft : GNATCOM.Types.VARIANT;
      yTop  : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure accDoDefaultAction
     (This     : CommandBar_Type;
      varChild : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True);

   procedure Put_accName
     (This     : CommandBar_Type;
      varChild : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      P2       : GNATCOM.Types.VARIANT;
      Free     : Boolean := True);

   procedure Put_accValue
     (This     : CommandBar_Type;
      varChild : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      P2       : GNATCOM.Types.VARIANT;
      Free     : Boolean := True);

   function Get_Application
     (This : CommandBar_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : CommandBar_Type)
     return GNATCOM.Types.VARIANT;

   function Get_BuiltIn
     (This : CommandBar_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Context
     (This : CommandBar_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Context
     (This : CommandBar_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Controls
     (This : CommandBar_Type)
     return GNATCOM.Types.VARIANT;

   procedure Delete
     (This : CommandBar_Type);

   function Get_Enabled
     (This : CommandBar_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Enabled
     (This : CommandBar_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

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
     return GNATCOM.Types.VARIANT;

   function Get_Height
     (This : CommandBar_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Height
     (This : CommandBar_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Index
     (This : CommandBar_Type)
     return GNATCOM.Types.VARIANT;

   function Get_InstanceId
     (This : CommandBar_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Left
     (This : CommandBar_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Left
     (This : CommandBar_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Name
     (This : CommandBar_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Name
     (This : CommandBar_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_NameLocal
     (This : CommandBar_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_NameLocal
     (This : CommandBar_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Parent
     (This : CommandBar_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Position
     (This : CommandBar_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Position
     (This : CommandBar_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_RowIndex
     (This : CommandBar_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_RowIndex
     (This : CommandBar_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Protection
     (This : CommandBar_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Protection
     (This : CommandBar_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure Reset
     (This : CommandBar_Type);

   procedure ShowPopup
     (This : CommandBar_Type;
      x    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      y    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free : Boolean := True);

   function Get_Top
     (This : CommandBar_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Top
     (This : CommandBar_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Type
     (This : CommandBar_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Visible
     (This : CommandBar_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Visible
     (This : CommandBar_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Width
     (This : CommandBar_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Width
     (This : CommandBar_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AdaptiveMenu
     (This : CommandBar_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AdaptiveMenu
     (This : CommandBar_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Id
     (This : CommandBar_Type)
     return GNATCOM.Types.VARIANT;

end winword.CommandBar_Object;

