with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.CommandBar_Interface is

   procedure Initialize (This : in out CommandBar_Type) is
   begin
      Set_IID (This, IID_CommandBar);
   end Initialize;

   function Pointer (This : CommandBar_Type)
     return Pointer_To_CommandBar
   is
   begin
      return To_Pointer_To_CommandBar (Address (This));
   end Pointer;

   procedure Attach (This    : in out CommandBar_Type;
                     Pointer : in     Pointer_To_CommandBar)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_accParent
     (This         : CommandBar_Type)
     return GNATCOM.Types.Pointer_To_IDispatch
   is
       RetVal : aliased GNATCOM.Types.Pointer_To_IDispatch;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_accParent
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_accParent;

   function Get_accChildCount
     (This           : CommandBar_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_accChildCount
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_accChildCount;

   function Get_accChild
     (This        : CommandBar_Type;
      varChild    : GNATCOM.Types.VARIANT;
      Free        : Boolean := True)
     return GNATCOM.Types.Pointer_To_IDispatch
   is
       RetVal : aliased GNATCOM.Types.Pointer_To_IDispatch;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_accChild
         (Pointer (This),
          varChild,
          RetVal'Unchecked_Access));

      if Free then
               GNATCOM.Interface.Free (varChild);
      
      end if;

      return RetVal;
   end Get_accChild;

   function Get_accName
     (This     : CommandBar_Type;
      varChild : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_accName
         (Pointer (This),
          varChild,
          RetVal'Unchecked_Access));

      if Free then
               GNATCOM.Interface.Free (varChild);
      
      end if;

      return RetVal;
   end Get_accName;

   function Get_accValue
     (This     : CommandBar_Type;
      varChild : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_accValue
         (Pointer (This),
          varChild,
          RetVal'Unchecked_Access));

      if Free then
               GNATCOM.Interface.Free (varChild);
      
      end if;

      return RetVal;
   end Get_accValue;

   function Get_accDescription
     (This           : CommandBar_Type;
      varChild       : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Free           : Boolean := True)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_accDescription
         (Pointer (This),
          varChild,
          RetVal'Unchecked_Access));

      if Free then
               GNATCOM.Interface.Free (varChild);
      
      end if;

      return RetVal;
   end Get_accDescription;

   function Get_accRole
     (This     : CommandBar_Type;
      varChild : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
       RetVal : aliased GNATCOM.Types.VARIANT;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_accRole
         (Pointer (This),
          varChild,
          RetVal'Unchecked_Access));

      if Free then
               GNATCOM.Interface.Free (varChild);
      
      end if;

      return RetVal;
   end Get_accRole;

   function Get_accState
     (This      : CommandBar_Type;
      varChild  : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Free      : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
       RetVal : aliased GNATCOM.Types.VARIANT;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_accState
         (Pointer (This),
          varChild,
          RetVal'Unchecked_Access));

      if Free then
               GNATCOM.Interface.Free (varChild);
      
      end if;

      return RetVal;
   end Get_accState;

   function Get_accHelp
     (This     : CommandBar_Type;
      varChild : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_accHelp
         (Pointer (This),
          varChild,
          RetVal'Unchecked_Access));

      if Free then
               GNATCOM.Interface.Free (varChild);
      
      end if;

      return RetVal;
   end Get_accHelp;

   function Get_accHelpTopic
     (This        : CommandBar_Type;
      pszHelpFile : GNATCOM.Types.Pointer_To_BSTR;
      varChild    : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Free        : Boolean := True)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_accHelpTopic
         (Pointer (This),
          pszHelpFile,
          varChild,
          RetVal'Unchecked_Access));

      if Free then
               GNATCOM.Interface.Free (varChild);
      
      end if;

      return RetVal;
   end Get_accHelpTopic;

   function Get_accKeyboardShortcut
     (This                : CommandBar_Type;
      varChild            : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Free                : Boolean := True)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_accKeyboardShortcut
         (Pointer (This),
          varChild,
          RetVal'Unchecked_Access));

      if Free then
               GNATCOM.Interface.Free (varChild);
      
      end if;

      return RetVal;
   end Get_accKeyboardShortcut;

   function Get_accFocus
     (This      : CommandBar_Type)
     return GNATCOM.Types.VARIANT
   is
       RetVal : aliased GNATCOM.Types.VARIANT;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_accFocus
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_accFocus;

   function Get_accSelection
     (This         : CommandBar_Type)
     return GNATCOM.Types.VARIANT
   is
       RetVal : aliased GNATCOM.Types.VARIANT;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_accSelection
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_accSelection;

   function Get_accDefaultAction
     (This             : CommandBar_Type;
      varChild         : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Free             : Boolean := True)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_accDefaultAction
         (Pointer (This),
          varChild,
          RetVal'Unchecked_Access));

      if Free then
               GNATCOM.Interface.Free (varChild);
      
      end if;

      return RetVal;
   end Get_accDefaultAction;

   procedure accSelect
     (This        : CommandBar_Type;
      flagsSelect : Interfaces.C.long;
      varChild    : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Free        : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.accSelect
         (Pointer (This),
          flagsSelect,
          varChild));

      if Free then
               GNATCOM.Interface.Free (varChild);
      
      end if;

   end accSelect;

   procedure accLocation
     (This      : CommandBar_Type;
      pxLeft    : GNATCOM.Types.Pointer_To_long;
      pyTop     : GNATCOM.Types.Pointer_To_long;
      pcxWidth  : GNATCOM.Types.Pointer_To_long;
      pcyHeight : GNATCOM.Types.Pointer_To_long;
      varChild  : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Free      : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.accLocation
         (Pointer (This),
          pxLeft,
          pyTop,
          pcxWidth,
          pcyHeight,
          varChild));

      if Free then
               GNATCOM.Interface.Free (varChild);
      
      end if;

   end accLocation;

   function accNavigate
     (This        : CommandBar_Type;
      navDir      : Interfaces.C.long;
      varStart    : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Free        : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
       RetVal : aliased GNATCOM.Types.VARIANT;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.accNavigate
         (Pointer (This),
          navDir,
          varStart,
          RetVal'Unchecked_Access));

      if Free then
               GNATCOM.Interface.Free (varStart);
      
      end if;

      return RetVal;
   end accNavigate;

   function accHitTest
     (This      : CommandBar_Type;
      xLeft     : Interfaces.C.long;
      yTop      : Interfaces.C.long)
     return GNATCOM.Types.VARIANT
   is
       RetVal : aliased GNATCOM.Types.VARIANT;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.accHitTest
         (Pointer (This),
          xLeft,
          yTop,
          RetVal'Unchecked_Access));

      return RetVal;
   end accHitTest;

   procedure accDoDefaultAction
     (This     : CommandBar_Type;
      varChild : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.accDoDefaultAction
         (Pointer (This),
          varChild));

      if Free then
               GNATCOM.Interface.Free (varChild);
      
      end if;

   end accDoDefaultAction;

   procedure Put_accName
     (This     : CommandBar_Type;
      varChild : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      pszName  : GNATCOM.Types.BSTR;
      Free     : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_accName
         (Pointer (This),
          varChild,
          pszName));

      if Free then
               GNATCOM.Interface.Free (varChild);
               GNATCOM.Interface.Free (pszName);
      
      end if;

   end Put_accName;

   procedure Put_accValue
     (This     : CommandBar_Type;
      varChild : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      pszValue : GNATCOM.Types.BSTR;
      Free     : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_accValue
         (Pointer (This),
          varChild,
          pszValue));

      if Free then
               GNATCOM.Interface.Free (varChild);
               GNATCOM.Interface.Free (pszValue);
      
      end if;

   end Put_accValue;

   function Get_Application
     (This    : CommandBar_Type)
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
     (This      : CommandBar_Type)
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

   function Get_BuiltIn
     (This         : CommandBar_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_BuiltIn
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_BuiltIn;

   function Get_Context
     (This         : CommandBar_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Context
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Context;

   procedure Put_Context
     (This         : CommandBar_Type;
      pbstrContext : GNATCOM.Types.BSTR;
      Free         : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Context
         (Pointer (This),
          pbstrContext));

      if Free then
               GNATCOM.Interface.Free (pbstrContext);
      
      end if;

   end Put_Context;

   function Get_Controls
     (This   : CommandBar_Type)
     return Pointer_To_CommandBarControls
   is
       RetVal : aliased Pointer_To_CommandBarControls;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Controls
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Controls;

   procedure Delete
     (This : CommandBar_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Delete
         (Pointer (This)));

   end Delete;

   function Get_Enabled
     (This         : CommandBar_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Enabled
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Enabled;

   procedure Put_Enabled
     (This         : CommandBar_Type;
      pvarfEnabled : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Enabled
         (Pointer (This),
          pvarfEnabled));

   end Put_Enabled;

   function FindControl
     (This      : CommandBar_Type;
      uType     : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Id        : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Tag       : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Visible   : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Recursive : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Free      : Boolean := True)
     return Pointer_To_CommandBarControl
   is
       RetVal : aliased Pointer_To_CommandBarControl;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.FindControl
         (Pointer (This),
          uType,
          Id,
          Tag,
          Visible,
          Recursive,
          RetVal'Unchecked_Access));

      if Free then
               GNATCOM.Interface.Free (uType);
               GNATCOM.Interface.Free (Id);
               GNATCOM.Interface.Free (Tag);
               GNATCOM.Interface.Free (Visible);
               GNATCOM.Interface.Free (Recursive);
      
      end if;

      return RetVal;
   end FindControl;

   function Get_Height
     (This : CommandBar_Type)
     return Interfaces.C.int
   is
       RetVal : aliased Interfaces.C.int;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Height
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Height;

   procedure Put_Height
     (This : CommandBar_Type;
      pdy  : Interfaces.C.int)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Height
         (Pointer (This),
          pdy));

   end Put_Height;

   function Get_Index
     (This : CommandBar_Type)
     return Interfaces.C.int
   is
       RetVal : aliased Interfaces.C.int;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Index
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Index;

   function Get_InstanceId
     (This : CommandBar_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_InstanceId
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_InstanceId;

   function Get_Left
     (This    : CommandBar_Type)
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

   procedure Put_Left
     (This    : CommandBar_Type;
      pxpLeft : Interfaces.C.int)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Left
         (Pointer (This),
          pxpLeft));

   end Put_Left;

   function Get_Name
     (This      : CommandBar_Type)
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

   procedure Put_Name
     (This      : CommandBar_Type;
      pbstrName : GNATCOM.Types.BSTR;
      Free      : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Name
         (Pointer (This),
          pbstrName));

      if Free then
               GNATCOM.Interface.Free (pbstrName);
      
      end if;

   end Put_Name;

   function Get_NameLocal
     (This           : CommandBar_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_NameLocal
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_NameLocal;

   procedure Put_NameLocal
     (This           : CommandBar_Type;
      pbstrNameLocal : GNATCOM.Types.BSTR;
      Free           : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_NameLocal
         (Pointer (This),
          pbstrNameLocal));

      if Free then
               GNATCOM.Interface.Free (pbstrNameLocal);
      
      end if;

   end Put_NameLocal;

   function Get_Parent
     (This    : CommandBar_Type)
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

   function Get_Position
     (This : CommandBar_Type)
     return MsoBarPosition
   is
       RetVal : aliased MsoBarPosition;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Position
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Position;

   procedure Put_Position
     (This : CommandBar_Type;
      ppos : MsoBarPosition)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Position
         (Pointer (This),
          ppos));

   end Put_Position;

   function Get_RowIndex
     (This  : CommandBar_Type)
     return Interfaces.C.int
   is
       RetVal : aliased Interfaces.C.int;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_RowIndex
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_RowIndex;

   procedure Put_RowIndex
     (This  : CommandBar_Type;
      piRow : Interfaces.C.int)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_RowIndex
         (Pointer (This),
          piRow));

   end Put_RowIndex;

   function Get_Protection
     (This  : CommandBar_Type)
     return MsoBarProtection
   is
       RetVal : aliased MsoBarProtection;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Protection
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Protection;

   procedure Put_Protection
     (This  : CommandBar_Type;
      pprot : MsoBarProtection)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Protection
         (Pointer (This),
          pprot));

   end Put_Protection;

   procedure Reset
     (This : CommandBar_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Reset
         (Pointer (This)));

   end Reset;

   procedure ShowPopup
     (This : CommandBar_Type;
      x    : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      y    : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ShowPopup
         (Pointer (This),
          x,
          y));

      if Free then
               GNATCOM.Interface.Free (x);
               GNATCOM.Interface.Free (y);
      
      end if;

   end ShowPopup;

   function Get_Top
     (This   : CommandBar_Type)
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

   procedure Put_Top
     (This   : CommandBar_Type;
      pypTop : Interfaces.C.int)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Top
         (Pointer (This),
          pypTop));

   end Put_Top;

   function Get_Type
     (This  : CommandBar_Type)
     return MsoBarType
   is
       RetVal : aliased MsoBarType;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Type
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Type;

   function Get_Visible
     (This         : CommandBar_Type)
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
     (This         : CommandBar_Type;
      pvarfVisible : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Visible
         (Pointer (This),
          pvarfVisible));

   end Put_Visible;

   function Get_Width
     (This : CommandBar_Type)
     return Interfaces.C.int
   is
       RetVal : aliased Interfaces.C.int;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Width
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Width;

   procedure Put_Width
     (This : CommandBar_Type;
      pdx  : Interfaces.C.int)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Width
         (Pointer (This),
          pdx));

   end Put_Width;

   function Get_AdaptiveMenu
     (This              : CommandBar_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AdaptiveMenu
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AdaptiveMenu;

   procedure Put_AdaptiveMenu
     (This              : CommandBar_Type;
      pvarfAdaptiveMenu : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AdaptiveMenu
         (Pointer (This),
          pvarfAdaptiveMenu));

   end Put_AdaptiveMenu;

   function Get_Id
     (This : CommandBar_Type)
     return Interfaces.C.int
   is
       RetVal : aliased Interfaces.C.int;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Id
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Id;

end winword.CommandBar_Interface;

