with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.CommandBarControl_Interface is

   procedure Initialize (This : in out CommandBarControl_Type) is
   begin
      Set_IID (This, IID_CommandBarControl);
   end Initialize;

   function Pointer (This : CommandBarControl_Type)
     return Pointer_To_CommandBarControl
   is
   begin
      return To_Pointer_To_CommandBarControl (Address (This));
   end Pointer;

   procedure Attach (This    : in out CommandBarControl_Type;
                     Pointer : in     Pointer_To_CommandBarControl)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_accParent
     (This         : CommandBarControl_Type)
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
     (This           : CommandBarControl_Type)
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
     (This        : CommandBarControl_Type;
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
     (This     : CommandBarControl_Type;
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
     (This     : CommandBarControl_Type;
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
     (This           : CommandBarControl_Type;
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
     (This     : CommandBarControl_Type;
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
     (This      : CommandBarControl_Type;
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
     (This     : CommandBarControl_Type;
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
     (This        : CommandBarControl_Type;
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
     (This                : CommandBarControl_Type;
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
     (This      : CommandBarControl_Type)
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
     (This         : CommandBarControl_Type)
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
     (This             : CommandBarControl_Type;
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
     (This        : CommandBarControl_Type;
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
     (This      : CommandBarControl_Type;
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
     (This        : CommandBarControl_Type;
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
     (This      : CommandBarControl_Type;
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
     (This     : CommandBarControl_Type;
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
     (This     : CommandBarControl_Type;
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
     (This     : CommandBarControl_Type;
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
     (This    : CommandBarControl_Type)
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
     (This      : CommandBarControl_Type)
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

   function Get_BeginGroup
     (This            : CommandBarControl_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_BeginGroup
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_BeginGroup;

   procedure Put_BeginGroup
     (This            : CommandBarControl_Type;
      pvarfBeginGroup : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_BeginGroup
         (Pointer (This),
          pvarfBeginGroup));

   end Put_BeginGroup;

   function Get_BuiltIn
     (This         : CommandBarControl_Type)
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

   function Get_Caption
     (This         : CommandBarControl_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Caption
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Caption;

   procedure Put_Caption
     (This         : CommandBarControl_Type;
      pbstrCaption : GNATCOM.Types.BSTR;
      Free         : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Caption
         (Pointer (This),
          pbstrCaption));

      if Free then
               GNATCOM.Interface.Free (pbstrCaption);
      
      end if;

   end Put_Caption;

   function Get_Control
     (This    : CommandBarControl_Type)
     return GNATCOM.Types.Pointer_To_IDispatch
   is
       RetVal : aliased GNATCOM.Types.Pointer_To_IDispatch;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Control
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Control;

   function Copy
     (This   : CommandBarControl_Type;
      Bar    : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Before : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Free   : Boolean := True)
     return Pointer_To_CommandBarControl
   is
       RetVal : aliased Pointer_To_CommandBarControl;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Copy
         (Pointer (This),
          Bar,
          Before,
          RetVal'Unchecked_Access));

      if Free then
               GNATCOM.Interface.Free (Bar);
               GNATCOM.Interface.Free (Before);
      
      end if;

      return RetVal;
   end Copy;

   procedure Delete
     (This      : CommandBarControl_Type;
      Temporary : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Free      : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Delete
         (Pointer (This),
          Temporary));

      if Free then
               GNATCOM.Interface.Free (Temporary);
      
      end if;

   end Delete;

   function Get_DescriptionText
     (This      : CommandBarControl_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DescriptionText
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DescriptionText;

   procedure Put_DescriptionText
     (This      : CommandBarControl_Type;
      pbstrText : GNATCOM.Types.BSTR;
      Free      : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DescriptionText
         (Pointer (This),
          pbstrText));

      if Free then
               GNATCOM.Interface.Free (pbstrText);
      
      end if;

   end Put_DescriptionText;

   function Get_Enabled
     (This         : CommandBarControl_Type)
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
     (This         : CommandBarControl_Type;
      pvarfEnabled : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Enabled
         (Pointer (This),
          pvarfEnabled));

   end Put_Enabled;

   procedure Execute
     (This : CommandBarControl_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Execute
         (Pointer (This)));

   end Execute;

   function Get_Height
     (This : CommandBarControl_Type)
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
     (This : CommandBarControl_Type;
      pdy  : Interfaces.C.int)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Height
         (Pointer (This),
          pdy));

   end Put_Height;

   function Get_HelpContextId
     (This : CommandBarControl_Type)
     return Interfaces.C.int
   is
       RetVal : aliased Interfaces.C.int;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_HelpContextId
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_HelpContextId;

   procedure Put_HelpContextId
     (This : CommandBarControl_Type;
      pid  : Interfaces.C.int)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_HelpContextId
         (Pointer (This),
          pid));

   end Put_HelpContextId;

   function Get_HelpFile
     (This          : CommandBarControl_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_HelpFile
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_HelpFile;

   procedure Put_HelpFile
     (This          : CommandBarControl_Type;
      pbstrFilename : GNATCOM.Types.BSTR;
      Free          : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_HelpFile
         (Pointer (This),
          pbstrFilename));

      if Free then
               GNATCOM.Interface.Free (pbstrFilename);
      
      end if;

   end Put_HelpFile;

   function Get_Id
     (This : CommandBarControl_Type)
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

   function Get_Index
     (This : CommandBarControl_Type)
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
     (This : CommandBarControl_Type)
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

   function Move
     (This   : CommandBarControl_Type;
      Bar    : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Before : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Free   : Boolean := True)
     return Pointer_To_CommandBarControl
   is
       RetVal : aliased Pointer_To_CommandBarControl;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Move
         (Pointer (This),
          Bar,
          Before,
          RetVal'Unchecked_Access));

      if Free then
               GNATCOM.Interface.Free (Bar);
               GNATCOM.Interface.Free (Before);
      
      end if;

      return RetVal;
   end Move;

   function Get_Left
     (This : CommandBarControl_Type)
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

   function Get_OLEUsage
     (This : CommandBarControl_Type)
     return MsoControlOLEUsage
   is
       RetVal : aliased MsoControlOLEUsage;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_OLEUsage
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_OLEUsage;

   procedure Put_OLEUsage
     (This : CommandBarControl_Type;
      pcou : MsoControlOLEUsage)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_OLEUsage
         (Pointer (This),
          pcou));

   end Put_OLEUsage;

   function Get_OnAction
     (This          : CommandBarControl_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_OnAction
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_OnAction;

   procedure Put_OnAction
     (This          : CommandBarControl_Type;
      pbstrOnAction : GNATCOM.Types.BSTR;
      Free          : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_OnAction
         (Pointer (This),
          pbstrOnAction));

      if Free then
               GNATCOM.Interface.Free (pbstrOnAction);
      
      end if;

   end Put_OnAction;

   function Get_Parent
     (This : CommandBarControl_Type)
     return Pointer_To_CommandBar
   is
       RetVal : aliased Pointer_To_CommandBar;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Parent
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Parent;

   function Get_Parameter
     (This       : CommandBarControl_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Parameter
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Parameter;

   procedure Put_Parameter
     (This       : CommandBarControl_Type;
      pbstrParam : GNATCOM.Types.BSTR;
      Free       : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Parameter
         (Pointer (This),
          pbstrParam));

      if Free then
               GNATCOM.Interface.Free (pbstrParam);
      
      end if;

   end Put_Parameter;

   function Get_Priority
     (This  : CommandBarControl_Type)
     return Interfaces.C.int
   is
       RetVal : aliased Interfaces.C.int;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Priority
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Priority;

   procedure Put_Priority
     (This  : CommandBarControl_Type;
      pnPri : Interfaces.C.int)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Priority
         (Pointer (This),
          pnPri));

   end Put_Priority;

   procedure Reset
     (This : CommandBarControl_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Reset
         (Pointer (This)));

   end Reset;

   procedure SetFocus
     (This : CommandBarControl_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.SetFocus
         (Pointer (This)));

   end SetFocus;

   function Get_Tag
     (This     : CommandBarControl_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Tag
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Tag;

   procedure Put_Tag
     (This     : CommandBarControl_Type;
      pbstrTag : GNATCOM.Types.BSTR;
      Free     : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Tag
         (Pointer (This),
          pbstrTag));

      if Free then
               GNATCOM.Interface.Free (pbstrTag);
      
      end if;

   end Put_Tag;

   function Get_TooltipText
     (This         : CommandBarControl_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_TooltipText
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_TooltipText;

   procedure Put_TooltipText
     (This         : CommandBarControl_Type;
      pbstrTooltip : GNATCOM.Types.BSTR;
      Free         : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_TooltipText
         (Pointer (This),
          pbstrTooltip));

      if Free then
               GNATCOM.Interface.Free (pbstrTooltip);
      
      end if;

   end Put_TooltipText;

   function Get_Top
     (This : CommandBarControl_Type)
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

   function Get_Type
     (This  : CommandBarControl_Type)
     return MsoControlType
   is
       RetVal : aliased MsoControlType;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Type
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Type;

   function Get_Visible
     (This         : CommandBarControl_Type)
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
     (This         : CommandBarControl_Type;
      pvarfVisible : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Visible
         (Pointer (This),
          pvarfVisible));

   end Put_Visible;

   function Get_Width
     (This : CommandBarControl_Type)
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
     (This : CommandBarControl_Type;
      pdx  : Interfaces.C.int)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Width
         (Pointer (This),
          pdx));

   end Put_Width;

   function Get_IsPriorityDropped
     (This         : CommandBarControl_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_IsPriorityDropped
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_IsPriorityDropped;

   procedure Reserved1
     (This : CommandBarControl_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Reserved1
         (Pointer (This)));

   end Reserved1;

   procedure Reserved2
     (This : CommandBarControl_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Reserved2
         (Pointer (This)));

   end Reserved2;

   procedure Reserved3
     (This : CommandBarControl_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Reserved3
         (Pointer (This)));

   end Reserved3;

   procedure Reserved4
     (This : CommandBarControl_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Reserved4
         (Pointer (This)));

   end Reserved4;

   procedure Reserved5
     (This : CommandBarControl_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Reserved5
         (Pointer (This)));

   end Reserved5;

   procedure Reserved6
     (This : CommandBarControl_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Reserved6
         (Pointer (This)));

   end Reserved6;

   procedure Reserved7
     (This : CommandBarControl_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Reserved7
         (Pointer (This)));

   end Reserved7;

end winword.CommandBarControl_Interface;

