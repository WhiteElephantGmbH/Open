with GNATCOM.Dispinterface;

package winword.CommandBar_Interface is

   type CommandBar_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out CommandBar_Type);

   function Pointer (This : CommandBar_Type)
     return Pointer_To_CommandBar;

   procedure Attach (This    : in out CommandBar_Type;
                     Pointer : in     Pointer_To_CommandBar);

   function Get_accParent
     (This         : CommandBar_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_accChildCount
     (This           : CommandBar_Type)
     return Interfaces.C.long;

   function Get_accChild
     (This        : CommandBar_Type;
      varChild    : GNATCOM.Types.VARIANT;
      Free        : Boolean := True)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_accName
     (This     : CommandBar_Type;
      varChild : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
     return GNATCOM.Types.BSTR;

   function Get_accValue
     (This     : CommandBar_Type;
      varChild : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
     return GNATCOM.Types.BSTR;

   function Get_accDescription
     (This           : CommandBar_Type;
      varChild       : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Free           : Boolean := True)
     return GNATCOM.Types.BSTR;

   function Get_accRole
     (This     : CommandBar_Type;
      varChild : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Get_accState
     (This      : CommandBar_Type;
      varChild  : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Free      : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Get_accHelp
     (This     : CommandBar_Type;
      varChild : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
     return GNATCOM.Types.BSTR;

   function Get_accHelpTopic
     (This        : CommandBar_Type;
      pszHelpFile : GNATCOM.Types.Pointer_To_BSTR;
      varChild    : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Free        : Boolean := True)
     return Interfaces.C.long;

   function Get_accKeyboardShortcut
     (This                : CommandBar_Type;
      varChild            : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Free                : Boolean := True)
     return GNATCOM.Types.BSTR;

   function Get_accFocus
     (This      : CommandBar_Type)
     return GNATCOM.Types.VARIANT;

   function Get_accSelection
     (This         : CommandBar_Type)
     return GNATCOM.Types.VARIANT;

   function Get_accDefaultAction
     (This             : CommandBar_Type;
      varChild         : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Free             : Boolean := True)
     return GNATCOM.Types.BSTR;

   procedure accSelect
     (This        : CommandBar_Type;
      flagsSelect : Interfaces.C.long;
      varChild    : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Free        : Boolean := True);

   procedure accLocation
     (This      : CommandBar_Type;
      pxLeft    : GNATCOM.Types.Pointer_To_long;
      pyTop     : GNATCOM.Types.Pointer_To_long;
      pcxWidth  : GNATCOM.Types.Pointer_To_long;
      pcyHeight : GNATCOM.Types.Pointer_To_long;
      varChild  : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Free      : Boolean := True);

   function accNavigate
     (This        : CommandBar_Type;
      navDir      : Interfaces.C.long;
      varStart    : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Free        : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function accHitTest
     (This      : CommandBar_Type;
      xLeft     : Interfaces.C.long;
      yTop      : Interfaces.C.long)
     return GNATCOM.Types.VARIANT;

   procedure accDoDefaultAction
     (This     : CommandBar_Type;
      varChild : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True);

   procedure Put_accName
     (This     : CommandBar_Type;
      varChild : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      pszName  : GNATCOM.Types.BSTR;
      Free     : Boolean := True);

   procedure Put_accValue
     (This     : CommandBar_Type;
      varChild : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      pszValue : GNATCOM.Types.BSTR;
      Free     : Boolean := True);

   function Get_Application
     (This    : CommandBar_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Creator
     (This      : CommandBar_Type)
     return Interfaces.C.long;

   function Get_BuiltIn
     (This         : CommandBar_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   function Get_Context
     (This         : CommandBar_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_Context
     (This         : CommandBar_Type;
      pbstrContext : GNATCOM.Types.BSTR;
      Free         : Boolean := True);

   function Get_Controls
     (This   : CommandBar_Type)
     return Pointer_To_CommandBarControls;

   procedure Delete
     (This : CommandBar_Type);

   function Get_Enabled
     (This         : CommandBar_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_Enabled
     (This         : CommandBar_Type;
      pvarfEnabled : GNATCOM.Types.VARIANT_BOOL);

   function FindControl
     (This      : CommandBar_Type;
      uType     : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Id        : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Tag       : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Visible   : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Recursive : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Free      : Boolean := True)
     return Pointer_To_CommandBarControl;

   function Get_Height
     (This : CommandBar_Type)
     return Interfaces.C.int;

   procedure Put_Height
     (This : CommandBar_Type;
      pdy  : Interfaces.C.int);

   function Get_Index
     (This : CommandBar_Type)
     return Interfaces.C.int;

   function Get_InstanceId
     (This : CommandBar_Type)
     return Interfaces.C.long;

   function Get_Left
     (This    : CommandBar_Type)
     return Interfaces.C.int;

   procedure Put_Left
     (This    : CommandBar_Type;
      pxpLeft : Interfaces.C.int);

   function Get_Name
     (This      : CommandBar_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_Name
     (This      : CommandBar_Type;
      pbstrName : GNATCOM.Types.BSTR;
      Free      : Boolean := True);

   function Get_NameLocal
     (This           : CommandBar_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_NameLocal
     (This           : CommandBar_Type;
      pbstrNameLocal : GNATCOM.Types.BSTR;
      Free           : Boolean := True);

   function Get_Parent
     (This    : CommandBar_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Position
     (This : CommandBar_Type)
     return MsoBarPosition;

   procedure Put_Position
     (This : CommandBar_Type;
      ppos : MsoBarPosition);

   function Get_RowIndex
     (This  : CommandBar_Type)
     return Interfaces.C.int;

   procedure Put_RowIndex
     (This  : CommandBar_Type;
      piRow : Interfaces.C.int);

   function Get_Protection
     (This  : CommandBar_Type)
     return MsoBarProtection;

   procedure Put_Protection
     (This  : CommandBar_Type;
      pprot : MsoBarProtection);

   procedure Reset
     (This : CommandBar_Type);

   procedure ShowPopup
     (This : CommandBar_Type;
      x    : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      y    : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Free : Boolean := True);

   function Get_Top
     (This   : CommandBar_Type)
     return Interfaces.C.int;

   procedure Put_Top
     (This   : CommandBar_Type;
      pypTop : Interfaces.C.int);

   function Get_Type
     (This  : CommandBar_Type)
     return MsoBarType;

   function Get_Visible
     (This         : CommandBar_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_Visible
     (This         : CommandBar_Type;
      pvarfVisible : GNATCOM.Types.VARIANT_BOOL);

   function Get_Width
     (This : CommandBar_Type)
     return Interfaces.C.int;

   procedure Put_Width
     (This : CommandBar_Type;
      pdx  : Interfaces.C.int);

   function Get_AdaptiveMenu
     (This              : CommandBar_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_AdaptiveMenu
     (This              : CommandBar_Type;
      pvarfAdaptiveMenu : GNATCOM.Types.VARIANT_BOOL);

   function Get_Id
     (This : CommandBar_Type)
     return Interfaces.C.int;

end winword.CommandBar_Interface;

