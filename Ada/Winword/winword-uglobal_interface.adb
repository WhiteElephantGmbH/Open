with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.uGlobal_Interface is

   procedure Initialize (This : in out uGlobal_Type) is
   begin
      Set_IID (This, IID_uGlobal);
   end Initialize;

   function Pointer (This : uGlobal_Type)
     return Pointer_To_uGlobal
   is
   begin
      return To_Pointer_To_uGlobal (Address (This));
   end Pointer;

   procedure Attach (This    : in out uGlobal_Type;
                     Pointer : in     Pointer_To_uGlobal)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : uGlobal_Type)
     return Pointer_To_uApplication
   is
       RetVal : aliased Pointer_To_uApplication;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Application
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Application;

   function Get_Creator
     (This : uGlobal_Type)
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

   function Get_Parent
     (This : uGlobal_Type)
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

   function Get_Name
     (This : uGlobal_Type)
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

   function Get_Documents
     (This : uGlobal_Type)
     return Pointer_To_Documents
   is
       RetVal : aliased Pointer_To_Documents;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Documents
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Documents;

   function Get_Windows
     (This : uGlobal_Type)
     return Pointer_To_Windows
   is
       RetVal : aliased Pointer_To_Windows;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Windows
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Windows;

   function Get_ActiveDocument
     (This : uGlobal_Type)
     return Pointer_To_uDocument
   is
       RetVal : aliased Pointer_To_uDocument;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ActiveDocument
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ActiveDocument;

   function Get_ActiveWindow
     (This : uGlobal_Type)
     return Pointer_To_Window
   is
       RetVal : aliased Pointer_To_Window;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ActiveWindow
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ActiveWindow;

   function Get_Selection
     (This : uGlobal_Type)
     return Pointer_To_Selection
   is
       RetVal : aliased Pointer_To_Selection;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Selection
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Selection;

   function Get_WordBasic
     (This : uGlobal_Type)
     return GNATCOM.Types.Pointer_To_IDispatch
   is
       RetVal : aliased GNATCOM.Types.Pointer_To_IDispatch;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_WordBasic
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_WordBasic;

   function Get_PrintPreview
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_PrintPreview
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_PrintPreview;

   procedure Put_PrintPreview
     (This : uGlobal_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_PrintPreview
         (Pointer (This),
          prop));

   end Put_PrintPreview;

   function Get_RecentFiles
     (This : uGlobal_Type)
     return Pointer_To_RecentFiles
   is
       RetVal : aliased Pointer_To_RecentFiles;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_RecentFiles
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_RecentFiles;

   function Get_NormalTemplate
     (This : uGlobal_Type)
     return Pointer_To_Template
   is
       RetVal : aliased Pointer_To_Template;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_NormalTemplate
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_NormalTemplate;

   function Get_System
     (This : uGlobal_Type)
     return Pointer_To_System
   is
       RetVal : aliased Pointer_To_System;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_System
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_System;

   function Get_AutoCorrect
     (This : uGlobal_Type)
     return Pointer_To_AutoCorrect
   is
       RetVal : aliased Pointer_To_AutoCorrect;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoCorrect
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AutoCorrect;

   function Get_FontNames
     (This : uGlobal_Type)
     return Pointer_To_FontNames
   is
       RetVal : aliased Pointer_To_FontNames;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_FontNames
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_FontNames;

   function Get_LandscapeFontNames
     (This : uGlobal_Type)
     return Pointer_To_FontNames
   is
       RetVal : aliased Pointer_To_FontNames;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_LandscapeFontNames
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_LandscapeFontNames;

   function Get_PortraitFontNames
     (This : uGlobal_Type)
     return Pointer_To_FontNames
   is
       RetVal : aliased Pointer_To_FontNames;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_PortraitFontNames
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_PortraitFontNames;

   function Get_Languages
     (This : uGlobal_Type)
     return Pointer_To_Languages
   is
       RetVal : aliased Pointer_To_Languages;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Languages
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Languages;

   function Get_Assistant
     (This : uGlobal_Type)
     return Pointer_To_Assistant
   is
       RetVal : aliased Pointer_To_Assistant;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Assistant
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Assistant;

   function Get_FileConverters
     (This : uGlobal_Type)
     return Pointer_To_FileConverters
   is
       RetVal : aliased Pointer_To_FileConverters;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_FileConverters
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_FileConverters;

   function Get_Dialogs
     (This : uGlobal_Type)
     return Pointer_To_Dialogs
   is
       RetVal : aliased Pointer_To_Dialogs;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Dialogs
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Dialogs;

   function Get_CaptionLabels
     (This : uGlobal_Type)
     return Pointer_To_CaptionLabels
   is
       RetVal : aliased Pointer_To_CaptionLabels;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_CaptionLabels
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_CaptionLabels;

   function Get_AutoCaptions
     (This : uGlobal_Type)
     return Pointer_To_AutoCaptions
   is
       RetVal : aliased Pointer_To_AutoCaptions;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoCaptions
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AutoCaptions;

   function Get_AddIns
     (This : uGlobal_Type)
     return Pointer_To_AddIns
   is
       RetVal : aliased Pointer_To_AddIns;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AddIns
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AddIns;

   function Get_Tasks
     (This : uGlobal_Type)
     return Pointer_To_Tasks
   is
       RetVal : aliased Pointer_To_Tasks;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Tasks
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Tasks;

   function Get_MacroContainer
     (This : uGlobal_Type)
     return GNATCOM.Types.Pointer_To_IDispatch
   is
       RetVal : aliased GNATCOM.Types.Pointer_To_IDispatch;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_MacroContainer
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_MacroContainer;

   function Get_CommandBars
     (This : uGlobal_Type)
     return Pointer_To_uCommandBars
   is
       RetVal : aliased Pointer_To_uCommandBars;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_CommandBars
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_CommandBars;

   function Get_SynonymInfo
     (This       : uGlobal_Type;
      Word       : GNATCOM.Types.BSTR;
      LanguageID : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Free       : Boolean := True)
     return Pointer_To_SynonymInfo
   is
       RetVal : aliased Pointer_To_SynonymInfo;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SynonymInfo
         (Pointer (This),
          Word,
          LanguageID,
          RetVal'Unchecked_Access));

      if Free then
               GNATCOM.Interface.Free (Word);
      
      end if;

      return RetVal;
   end Get_SynonymInfo;

   function Get_VBE
     (This : uGlobal_Type)
     return Pointer_To_VBE
   is
       RetVal : aliased Pointer_To_VBE;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_VBE
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_VBE;

   function Get_ListGalleries
     (This : uGlobal_Type)
     return Pointer_To_ListGalleries
   is
       RetVal : aliased Pointer_To_ListGalleries;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ListGalleries
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ListGalleries;

   function Get_ActivePrinter
     (This : uGlobal_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ActivePrinter
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ActivePrinter;

   procedure Put_ActivePrinter
     (This : uGlobal_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ActivePrinter
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_ActivePrinter;

   function Get_Templates
     (This : uGlobal_Type)
     return Pointer_To_Templates
   is
       RetVal : aliased Pointer_To_Templates;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Templates
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Templates;

   function Get_CustomizationContext
     (This : uGlobal_Type)
     return GNATCOM.Types.Pointer_To_IDispatch
   is
       RetVal : aliased GNATCOM.Types.Pointer_To_IDispatch;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_CustomizationContext
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_CustomizationContext;

   procedure Put_CustomizationContext
     (This : uGlobal_Type;
      prop : GNATCOM.Types.Pointer_To_IDispatch)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_CustomizationContext
         (Pointer (This),
          prop));

   end Put_CustomizationContext;

   function Get_KeyBindings
     (This : uGlobal_Type)
     return Pointer_To_KeyBindings
   is
       RetVal : aliased Pointer_To_KeyBindings;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_KeyBindings
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_KeyBindings;

   function Get_KeysBoundTo
     (This             : uGlobal_Type;
      KeyCategory      : WdKeyCategory;
      Command          : GNATCOM.Types.BSTR;
      CommandParameter : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Free             : Boolean := True)
     return Pointer_To_KeysBoundTo
   is
       RetVal : aliased Pointer_To_KeysBoundTo;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_KeysBoundTo
         (Pointer (This),
          KeyCategory,
          Command,
          CommandParameter,
          RetVal'Unchecked_Access));

      if Free then
               GNATCOM.Interface.Free (Command);
      
      end if;

      return RetVal;
   end Get_KeysBoundTo;

   function Get_FindKey
     (This     : uGlobal_Type;
      KeyCode  : Interfaces.C.long;
      KeyCode2 : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_KeyBinding
   is
       RetVal : aliased Pointer_To_KeyBinding;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_FindKey
         (Pointer (This),
          KeyCode,
          KeyCode2,
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_FindKey;

   function Get_Options
     (This : uGlobal_Type)
     return Pointer_To_Options
   is
       RetVal : aliased Pointer_To_Options;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Options
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Options;

   function Get_CustomDictionaries
     (This : uGlobal_Type)
     return Pointer_To_Dictionaries
   is
       RetVal : aliased Pointer_To_Dictionaries;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_CustomDictionaries
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_CustomDictionaries;

   procedure Put_StatusBar
     (This : uGlobal_Type;
      P1   : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_StatusBar
         (Pointer (This),
          P1));

      if Free then
               GNATCOM.Interface.Free (P1);
      
      end if;

   end Put_StatusBar;

   function Get_ShowVisualBasicEditor
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ShowVisualBasicEditor
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ShowVisualBasicEditor;

   procedure Put_ShowVisualBasicEditor
     (This : uGlobal_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ShowVisualBasicEditor
         (Pointer (This),
          prop));

   end Put_ShowVisualBasicEditor;

   function Get_IsObjectValid
     (This   : uGlobal_Type;
      Object : GNATCOM.Types.Pointer_To_IDispatch)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_IsObjectValid
         (Pointer (This),
          Object,
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_IsObjectValid;

   function Get_HangulHanjaDictionaries
     (This : uGlobal_Type)
     return Pointer_To_HangulHanjaConversionDictionaries
   is
       RetVal : aliased Pointer_To_HangulHanjaConversionDictionaries;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_HangulHanjaDictionaries
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_HangulHanjaDictionaries;

   function Repeat
     (This  : uGlobal_Type;
      Times : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Repeat
         (Pointer (This),
          Times,
          RetVal'Unchecked_Access));

      return RetVal;
   end Repeat;

   procedure DDEExecute
     (This    : uGlobal_Type;
      Channel : Interfaces.C.long;
      Command : GNATCOM.Types.BSTR;
      Free    : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.DDEExecute
         (Pointer (This),
          Channel,
          Command));

      if Free then
               GNATCOM.Interface.Free (Command);
      
      end if;

   end DDEExecute;

   function DDEInitiate
     (This  : uGlobal_Type;
      App   : GNATCOM.Types.BSTR;
      Topic : GNATCOM.Types.BSTR;
      Free  : Boolean := True)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.DDEInitiate
         (Pointer (This),
          App,
          Topic,
          RetVal'Unchecked_Access));

      if Free then
               GNATCOM.Interface.Free (App);
               GNATCOM.Interface.Free (Topic);
      
      end if;

      return RetVal;
   end DDEInitiate;

   procedure DDEPoke
     (This    : uGlobal_Type;
      Channel : Interfaces.C.long;
      Item    : GNATCOM.Types.BSTR;
      Data    : GNATCOM.Types.BSTR;
      Free    : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.DDEPoke
         (Pointer (This),
          Channel,
          Item,
          Data));

      if Free then
               GNATCOM.Interface.Free (Item);
               GNATCOM.Interface.Free (Data);
      
      end if;

   end DDEPoke;

   function DDERequest
     (This    : uGlobal_Type;
      Channel : Interfaces.C.long;
      Item    : GNATCOM.Types.BSTR;
      Free    : Boolean := True)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.DDERequest
         (Pointer (This),
          Channel,
          Item,
          RetVal'Unchecked_Access));

      if Free then
               GNATCOM.Interface.Free (Item);
      
      end if;

      return RetVal;
   end DDERequest;

   procedure DDETerminate
     (This    : uGlobal_Type;
      Channel : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.DDETerminate
         (Pointer (This),
          Channel));

   end DDETerminate;

   procedure DDETerminateAll
     (This : uGlobal_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.DDETerminateAll
         (Pointer (This)));

   end DDETerminateAll;

   function BuildKeyCode
     (This : uGlobal_Type;
      Arg1 : WdKey;
      Arg2 : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Arg3 : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Arg4 : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.BuildKeyCode
         (Pointer (This),
          Arg1,
          Arg2,
          Arg3,
          Arg4,
          RetVal'Unchecked_Access));

      return RetVal;
   end BuildKeyCode;

   function KeyString
     (This     : uGlobal_Type;
      KeyCode  : Interfaces.C.long;
      KeyCode2 : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.KeyString
         (Pointer (This),
          KeyCode,
          KeyCode2,
          RetVal'Unchecked_Access));

      return RetVal;
   end KeyString;

   function CheckSpelling
     (This               : uGlobal_Type;
      Word               : GNATCOM.Types.BSTR;
      CustomDictionary   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      IgnoreUppercase    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      MainDictionary     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      CustomDictionary2  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      CustomDictionary3  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      CustomDictionary4  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      CustomDictionary5  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      CustomDictionary6  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      CustomDictionary7  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      CustomDictionary8  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      CustomDictionary9  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      CustomDictionary10 : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Free               : Boolean := True)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.CheckSpelling
         (Pointer (This),
          Word,
          CustomDictionary,
          IgnoreUppercase,
          MainDictionary,
          CustomDictionary2,
          CustomDictionary3,
          CustomDictionary4,
          CustomDictionary5,
          CustomDictionary6,
          CustomDictionary7,
          CustomDictionary8,
          CustomDictionary9,
          CustomDictionary10,
          RetVal'Unchecked_Access));

      if Free then
               GNATCOM.Interface.Free (Word);
      
      end if;

      return RetVal;
   end CheckSpelling;

   function GetSpellingSuggestions
     (This               : uGlobal_Type;
      Word               : GNATCOM.Types.BSTR;
      CustomDictionary   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      IgnoreUppercase    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      MainDictionary     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SuggestionMode     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      CustomDictionary2  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      CustomDictionary3  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      CustomDictionary4  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      CustomDictionary5  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      CustomDictionary6  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      CustomDictionary7  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      CustomDictionary8  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      CustomDictionary9  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      CustomDictionary10 : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Free               : Boolean := True)
     return Pointer_To_SpellingSuggestions
   is
       RetVal : aliased Pointer_To_SpellingSuggestions;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.GetSpellingSuggestions
         (Pointer (This),
          Word,
          CustomDictionary,
          IgnoreUppercase,
          MainDictionary,
          SuggestionMode,
          CustomDictionary2,
          CustomDictionary3,
          CustomDictionary4,
          CustomDictionary5,
          CustomDictionary6,
          CustomDictionary7,
          CustomDictionary8,
          CustomDictionary9,
          CustomDictionary10,
          RetVal'Unchecked_Access));

      if Free then
               GNATCOM.Interface.Free (Word);
      
      end if;

      return RetVal;
   end GetSpellingSuggestions;

   procedure Help
     (This     : uGlobal_Type;
      HelpType : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Help
         (Pointer (This),
          HelpType));

   end Help;

   function NewWindow
     (This : uGlobal_Type)
     return Pointer_To_Window
   is
       RetVal : aliased Pointer_To_Window;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.NewWindow
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end NewWindow;

   function CleanString
     (This   : uGlobal_Type;
      String : GNATCOM.Types.BSTR;
      Free   : Boolean := True)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.CleanString
         (Pointer (This),
          String,
          RetVal'Unchecked_Access));

      if Free then
               GNATCOM.Interface.Free (String);
      
      end if;

      return RetVal;
   end CleanString;

   procedure ChangeFileOpenDirectory
     (This : uGlobal_Type;
      Path : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ChangeFileOpenDirectory
         (Pointer (This),
          Path));

      if Free then
               GNATCOM.Interface.Free (Path);
      
      end if;

   end ChangeFileOpenDirectory;

   function InchesToPoints
     (This   : uGlobal_Type;
      Inches : Interfaces.C.C_float)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.InchesToPoints
         (Pointer (This),
          Inches,
          RetVal'Unchecked_Access));

      return RetVal;
   end InchesToPoints;

   function CentimetersToPoints
     (This        : uGlobal_Type;
      Centimeters : Interfaces.C.C_float)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.CentimetersToPoints
         (Pointer (This),
          Centimeters,
          RetVal'Unchecked_Access));

      return RetVal;
   end CentimetersToPoints;

   function MillimetersToPoints
     (This        : uGlobal_Type;
      Millimeters : Interfaces.C.C_float)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.MillimetersToPoints
         (Pointer (This),
          Millimeters,
          RetVal'Unchecked_Access));

      return RetVal;
   end MillimetersToPoints;

   function PicasToPoints
     (This  : uGlobal_Type;
      Picas : Interfaces.C.C_float)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.PicasToPoints
         (Pointer (This),
          Picas,
          RetVal'Unchecked_Access));

      return RetVal;
   end PicasToPoints;

   function LinesToPoints
     (This  : uGlobal_Type;
      Lines : Interfaces.C.C_float)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.LinesToPoints
         (Pointer (This),
          Lines,
          RetVal'Unchecked_Access));

      return RetVal;
   end LinesToPoints;

   function PointsToInches
     (This   : uGlobal_Type;
      Points : Interfaces.C.C_float)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.PointsToInches
         (Pointer (This),
          Points,
          RetVal'Unchecked_Access));

      return RetVal;
   end PointsToInches;

   function PointsToCentimeters
     (This   : uGlobal_Type;
      Points : Interfaces.C.C_float)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.PointsToCentimeters
         (Pointer (This),
          Points,
          RetVal'Unchecked_Access));

      return RetVal;
   end PointsToCentimeters;

   function PointsToMillimeters
     (This   : uGlobal_Type;
      Points : Interfaces.C.C_float)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.PointsToMillimeters
         (Pointer (This),
          Points,
          RetVal'Unchecked_Access));

      return RetVal;
   end PointsToMillimeters;

   function PointsToPicas
     (This   : uGlobal_Type;
      Points : Interfaces.C.C_float)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.PointsToPicas
         (Pointer (This),
          Points,
          RetVal'Unchecked_Access));

      return RetVal;
   end PointsToPicas;

   function PointsToLines
     (This   : uGlobal_Type;
      Points : Interfaces.C.C_float)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.PointsToLines
         (Pointer (This),
          Points,
          RetVal'Unchecked_Access));

      return RetVal;
   end PointsToLines;

   function PointsToPixels
     (This      : uGlobal_Type;
      Points    : Interfaces.C.C_float;
      fVertical : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.PointsToPixels
         (Pointer (This),
          Points,
          fVertical,
          RetVal'Unchecked_Access));

      return RetVal;
   end PointsToPixels;

   function PixelsToPoints
     (This      : uGlobal_Type;
      Pixels    : Interfaces.C.C_float;
      fVertical : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.PixelsToPoints
         (Pointer (This),
          Pixels,
          fVertical,
          RetVal'Unchecked_Access));

      return RetVal;
   end PixelsToPoints;

   function Get_LanguageSettings
     (This : uGlobal_Type)
     return Pointer_To_LanguageSettings
   is
       RetVal : aliased Pointer_To_LanguageSettings;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_LanguageSettings
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_LanguageSettings;

   function Get_AnswerWizard
     (This : uGlobal_Type)
     return Pointer_To_AnswerWizard
   is
       RetVal : aliased Pointer_To_AnswerWizard;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AnswerWizard
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AnswerWizard;

   function Get_AutoCorrectEmail
     (This : uGlobal_Type)
     return Pointer_To_AutoCorrect
   is
       RetVal : aliased Pointer_To_AutoCorrect;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoCorrectEmail
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AutoCorrectEmail;

end winword.uGlobal_Interface;

