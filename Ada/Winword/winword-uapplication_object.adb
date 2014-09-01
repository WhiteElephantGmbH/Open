package body winword.uApplication_Object is

   function Get_Application
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_Parent);
   end Get_Parent;

   function Get_Name
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_Name);
   end Get_Name;

   function Get_Documents
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_Documents);
   end Get_Documents;

   function Get_Windows
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_Windows);
   end Get_Windows;

   function Get_ActiveDocument
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_ActiveDocument);
   end Get_ActiveDocument;

   function Get_ActiveWindow
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_ActiveWindow);
   end Get_ActiveWindow;

   function Get_Selection
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_Selection);
   end Get_Selection;

   function Get_WordBasic
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_WordBasic);
   end Get_WordBasic;

   function Get_RecentFiles
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_RecentFiles);
   end Get_RecentFiles;

   function Get_NormalTemplate
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_NormalTemplate);
   end Get_NormalTemplate;

   function Get_System
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_System);
   end Get_System;

   function Get_AutoCorrect
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_AutoCorrect);
   end Get_AutoCorrect;

   function Get_FontNames
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_FontNames);
   end Get_FontNames;

   function Get_LandscapeFontNames
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_LandscapeFontNames);
   end Get_LandscapeFontNames;

   function Get_PortraitFontNames
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_PortraitFontNames);
   end Get_PortraitFontNames;

   function Get_Languages
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_Languages);
   end Get_Languages;

   function Get_Assistant
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_Assistant);
   end Get_Assistant;

   function Get_Browser
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_Browser);
   end Get_Browser;

   function Get_FileConverters
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_FileConverters);
   end Get_FileConverters;

   function Get_MailingLabel
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_MailingLabel);
   end Get_MailingLabel;

   function Get_Dialogs
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_Dialogs);
   end Get_Dialogs;

   function Get_CaptionLabels
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_CaptionLabels);
   end Get_CaptionLabels;

   function Get_AutoCaptions
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_AutoCaptions);
   end Get_AutoCaptions;

   function Get_AddIns
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_AddIns);
   end Get_AddIns;

   function Get_Visible
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_Visible);
   end Get_Visible;

   procedure Put_Visible
     (This : uApplication_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uApplication_Put_Visible,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Visible;

   function Get_Version
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_Version);
   end Get_Version;

   function Get_ScreenUpdating
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_ScreenUpdating);
   end Get_ScreenUpdating;

   procedure Put_ScreenUpdating
     (This : uApplication_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uApplication_Put_ScreenUpdating,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ScreenUpdating;

   function Get_PrintPreview
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_PrintPreview);
   end Get_PrintPreview;

   procedure Put_PrintPreview
     (This : uApplication_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uApplication_Put_PrintPreview,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_PrintPreview;

   function Get_Tasks
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_Tasks);
   end Get_Tasks;

   function Get_DisplayStatusBar
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_DisplayStatusBar);
   end Get_DisplayStatusBar;

   procedure Put_DisplayStatusBar
     (This : uApplication_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uApplication_Put_DisplayStatusBar,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DisplayStatusBar;

   function Get_SpecialMode
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_SpecialMode);
   end Get_SpecialMode;

   function Get_UsableWidth
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_UsableWidth);
   end Get_UsableWidth;

   function Get_UsableHeight
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_UsableHeight);
   end Get_UsableHeight;

   function Get_MathCoprocessorAvailable
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_MathCoprocessorAvailable);
   end Get_MathCoprocessorAvailable;

   function Get_MouseAvailable
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_MouseAvailable);
   end Get_MouseAvailable;

   function Get_International
     (This  : uApplication_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get
        (This,
         uApplication_Get_International,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Get_International;

   function Get_Build
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_Build);
   end Get_Build;

   function Get_CapsLock
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_CapsLock);
   end Get_CapsLock;

   function Get_NumLock
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_NumLock);
   end Get_NumLock;

   function Get_UserName
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_UserName);
   end Get_UserName;

   procedure Put_UserName
     (This : uApplication_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uApplication_Put_UserName,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_UserName;

   function Get_UserInitials
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_UserInitials);
   end Get_UserInitials;

   procedure Put_UserInitials
     (This : uApplication_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uApplication_Put_UserInitials,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_UserInitials;

   function Get_UserAddress
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_UserAddress);
   end Get_UserAddress;

   procedure Put_UserAddress
     (This : uApplication_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uApplication_Put_UserAddress,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_UserAddress;

   function Get_MacroContainer
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_MacroContainer);
   end Get_MacroContainer;

   function Get_DisplayRecentFiles
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_DisplayRecentFiles);
   end Get_DisplayRecentFiles;

   procedure Put_DisplayRecentFiles
     (This : uApplication_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uApplication_Put_DisplayRecentFiles,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DisplayRecentFiles;

   function Get_CommandBars
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_CommandBars);
   end Get_CommandBars;

   function Get_SynonymInfo
     (This       : uApplication_Type;
      Word       : GNATCOM.Types.VARIANT;
      LanguageID : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free       : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get
        (This,
         uApplication_Get_SynonymInfo,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => LanguageID,
          2 => Word),
         Free);
   end Get_SynonymInfo;

   function Get_VBE
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_VBE);
   end Get_VBE;

   function Get_DefaultSaveFormat
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_DefaultSaveFormat);
   end Get_DefaultSaveFormat;

   procedure Put_DefaultSaveFormat
     (This : uApplication_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uApplication_Put_DefaultSaveFormat,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DefaultSaveFormat;

   function Get_ListGalleries
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_ListGalleries);
   end Get_ListGalleries;

   function Get_ActivePrinter
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_ActivePrinter);
   end Get_ActivePrinter;

   procedure Put_ActivePrinter
     (This : uApplication_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uApplication_Put_ActivePrinter,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ActivePrinter;

   function Get_Templates
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_Templates);
   end Get_Templates;

   function Get_CustomizationContext
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_CustomizationContext);
   end Get_CustomizationContext;

   procedure Put_CustomizationContext
     (This : uApplication_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uApplication_Put_CustomizationContext,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_CustomizationContext;

   function Get_KeyBindings
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_KeyBindings);
   end Get_KeyBindings;

   function Get_KeysBoundTo
     (This             : uApplication_Type;
      KeyCategory      : GNATCOM.Types.VARIANT;
      Command          : GNATCOM.Types.VARIANT;
      CommandParameter : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free             : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get
        (This,
         uApplication_Get_KeysBoundTo,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => CommandParameter,
          2 => Command,
          3 => KeyCategory),
         Free);
   end Get_KeysBoundTo;

   function Get_FindKey
     (This     : uApplication_Type;
      KeyCode  : GNATCOM.Types.VARIANT;
      KeyCode2 : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get
        (This,
         uApplication_Get_FindKey,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => KeyCode2,
          2 => KeyCode),
         Free);
   end Get_FindKey;

   function Get_Caption
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_Caption);
   end Get_Caption;

   procedure Put_Caption
     (This : uApplication_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uApplication_Put_Caption,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Caption;

   function Get_Path
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_Path);
   end Get_Path;

   function Get_DisplayScrollBars
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_DisplayScrollBars);
   end Get_DisplayScrollBars;

   procedure Put_DisplayScrollBars
     (This : uApplication_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uApplication_Put_DisplayScrollBars,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DisplayScrollBars;

   function Get_StartupPath
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_StartupPath);
   end Get_StartupPath;

   procedure Put_StartupPath
     (This : uApplication_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uApplication_Put_StartupPath,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_StartupPath;

   function Get_BackgroundSavingStatus
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_BackgroundSavingStatus);
   end Get_BackgroundSavingStatus;

   function Get_BackgroundPrintingStatus
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_BackgroundPrintingStatus);
   end Get_BackgroundPrintingStatus;

   function Get_Left
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_Left);
   end Get_Left;

   procedure Put_Left
     (This : uApplication_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uApplication_Put_Left,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Left;

   function Get_Top
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_Top);
   end Get_Top;

   procedure Put_Top
     (This : uApplication_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uApplication_Put_Top,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Top;

   function Get_Width
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_Width);
   end Get_Width;

   procedure Put_Width
     (This : uApplication_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uApplication_Put_Width,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Width;

   function Get_Height
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_Height);
   end Get_Height;

   procedure Put_Height
     (This : uApplication_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uApplication_Put_Height,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Height;

   function Get_WindowState
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_WindowState);
   end Get_WindowState;

   procedure Put_WindowState
     (This : uApplication_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uApplication_Put_WindowState,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_WindowState;

   function Get_DisplayAutoCompleteTips
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_DisplayAutoCompleteTips);
   end Get_DisplayAutoCompleteTips;

   procedure Put_DisplayAutoCompleteTips
     (This : uApplication_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uApplication_Put_DisplayAutoCompleteTips,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DisplayAutoCompleteTips;

   function Get_Options
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_Options);
   end Get_Options;

   function Get_DisplayAlerts
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_DisplayAlerts);
   end Get_DisplayAlerts;

   procedure Put_DisplayAlerts
     (This : uApplication_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uApplication_Put_DisplayAlerts,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DisplayAlerts;

   function Get_CustomDictionaries
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_CustomDictionaries);
   end Get_CustomDictionaries;

   function Get_PathSeparator
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_PathSeparator);
   end Get_PathSeparator;

   procedure Put_StatusBar
     (This : uApplication_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uApplication_Put_StatusBar,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_StatusBar;

   function Get_MAPIAvailable
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_MAPIAvailable);
   end Get_MAPIAvailable;

   function Get_DisplayScreenTips
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_DisplayScreenTips);
   end Get_DisplayScreenTips;

   procedure Put_DisplayScreenTips
     (This : uApplication_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uApplication_Put_DisplayScreenTips,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DisplayScreenTips;

   function Get_EnableCancelKey
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_EnableCancelKey);
   end Get_EnableCancelKey;

   procedure Put_EnableCancelKey
     (This : uApplication_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uApplication_Put_EnableCancelKey,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_EnableCancelKey;

   function Get_UserControl
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_UserControl);
   end Get_UserControl;

   function Get_FileSearch
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_FileSearch);
   end Get_FileSearch;

   function Get_MailSystem
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_MailSystem);
   end Get_MailSystem;

   function Get_DefaultTableSeparator
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_DefaultTableSeparator);
   end Get_DefaultTableSeparator;

   procedure Put_DefaultTableSeparator
     (This : uApplication_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uApplication_Put_DefaultTableSeparator,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DefaultTableSeparator;

   function Get_ShowVisualBasicEditor
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_ShowVisualBasicEditor);
   end Get_ShowVisualBasicEditor;

   procedure Put_ShowVisualBasicEditor
     (This : uApplication_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uApplication_Put_ShowVisualBasicEditor,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ShowVisualBasicEditor;

   function Get_BrowseExtraFileTypes
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_BrowseExtraFileTypes);
   end Get_BrowseExtraFileTypes;

   procedure Put_BrowseExtraFileTypes
     (This : uApplication_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uApplication_Put_BrowseExtraFileTypes,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_BrowseExtraFileTypes;

   function Get_IsObjectValid
     (This   : uApplication_Type;
      Object : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get
        (This,
         uApplication_Get_IsObjectValid,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Object),
         Free);
   end Get_IsObjectValid;

   function Get_HangulHanjaDictionaries
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_HangulHanjaDictionaries);
   end Get_HangulHanjaDictionaries;

   function Get_MailMessage
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_MailMessage);
   end Get_MailMessage;

   function Get_FocusInMailHeader
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_FocusInMailHeader);
   end Get_FocusInMailHeader;

   procedure Quit
     (This           : uApplication_Type;
      SaveChanges    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      OriginalFormat : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      RouteDocument  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free           : Boolean := True)
   is
   begin
      Invoke
        (This,
         uApplication_Quit,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => RouteDocument,
          2 => OriginalFormat,
          3 => SaveChanges),
         Free);
   end Quit;

   procedure ScreenRefresh
     (This : uApplication_Type)
   is
   begin
      Invoke (This, uApplication_ScreenRefresh);
   end ScreenRefresh;

   procedure PrintOutOld
     (This               : uApplication_Type;
      Background         : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Append             : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      uRange             : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      OutputFileName     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      From               : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      To                 : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Item               : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Copies             : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Pages              : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      PageType           : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      PrintToFile        : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Collate            : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      FileName           : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ActivePrinterMacGX : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ManualDuplexPrint  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free               : Boolean := True)
   is
   begin
      Invoke
        (This,
         uApplication_PrintOutOld,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => ManualDuplexPrint,
          2 => ActivePrinterMacGX,
          3 => FileName,
          4 => Collate,
          5 => PrintToFile,
          6 => PageType,
          7 => Pages,
          8 => Copies,
          9 => Item,
          10 => To,
          11 => From,
          12 => OutputFileName,
          13 => uRange,
          14 => Append,
          15 => Background),
         Free);
   end PrintOutOld;

   procedure LookupNameProperties
     (This : uApplication_Type;
      Name : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Invoke
        (This,
         uApplication_LookupNameProperties,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Name),
         Free);
   end LookupNameProperties;

   procedure SubstituteFont
     (This            : uApplication_Type;
      UnavailableFont : GNATCOM.Types.VARIANT;
      SubstituteFont  : GNATCOM.Types.VARIANT;
      Free            : Boolean := True)
   is
   begin
      Invoke
        (This,
         uApplication_SubstituteFont,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => SubstituteFont,
          2 => UnavailableFont),
         Free);
   end SubstituteFont;

   function Repeat
     (This  : uApplication_Type;
      Times : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uApplication_Repeat,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Times),
         Free);
   end Repeat;

   procedure DDEExecute
     (This    : uApplication_Type;
      Channel : GNATCOM.Types.VARIANT;
      Command : GNATCOM.Types.VARIANT;
      Free    : Boolean := True)
   is
   begin
      Invoke
        (This,
         uApplication_DDEExecute,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Command,
          2 => Channel),
         Free);
   end DDEExecute;

   function DDEInitiate
     (This  : uApplication_Type;
      App   : GNATCOM.Types.VARIANT;
      Topic : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uApplication_DDEInitiate,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Topic,
          2 => App),
         Free);
   end DDEInitiate;

   procedure DDEPoke
     (This    : uApplication_Type;
      Channel : GNATCOM.Types.VARIANT;
      Item    : GNATCOM.Types.VARIANT;
      Data    : GNATCOM.Types.VARIANT;
      Free    : Boolean := True)
   is
   begin
      Invoke
        (This,
         uApplication_DDEPoke,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Data,
          2 => Item,
          3 => Channel),
         Free);
   end DDEPoke;

   function DDERequest
     (This    : uApplication_Type;
      Channel : GNATCOM.Types.VARIANT;
      Item    : GNATCOM.Types.VARIANT;
      Free    : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uApplication_DDERequest,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Item,
          2 => Channel),
         Free);
   end DDERequest;

   procedure DDETerminate
     (This    : uApplication_Type;
      Channel : GNATCOM.Types.VARIANT;
      Free    : Boolean := True)
   is
   begin
      Invoke
        (This,
         uApplication_DDETerminate,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Channel),
         Free);
   end DDETerminate;

   procedure DDETerminateAll
     (This : uApplication_Type)
   is
   begin
      Invoke (This, uApplication_DDETerminateAll);
   end DDETerminateAll;

   function BuildKeyCode
     (This : uApplication_Type;
      Arg1 : GNATCOM.Types.VARIANT;
      Arg2 : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Arg3 : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Arg4 : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uApplication_BuildKeyCode,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Arg4,
          2 => Arg3,
          3 => Arg2,
          4 => Arg1),
         Free);
   end BuildKeyCode;

   function KeyString
     (This     : uApplication_Type;
      KeyCode  : GNATCOM.Types.VARIANT;
      KeyCode2 : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uApplication_KeyString,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => KeyCode2,
          2 => KeyCode),
         Free);
   end KeyString;

   procedure OrganizerCopy
     (This        : uApplication_Type;
      Source      : GNATCOM.Types.VARIANT;
      Destination : GNATCOM.Types.VARIANT;
      Name        : GNATCOM.Types.VARIANT;
      Object      : GNATCOM.Types.VARIANT;
      Free        : Boolean := True)
   is
   begin
      Invoke
        (This,
         uApplication_OrganizerCopy,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Object,
          2 => Name,
          3 => Destination,
          4 => Source),
         Free);
   end OrganizerCopy;

   procedure OrganizerDelete
     (This   : uApplication_Type;
      Source : GNATCOM.Types.VARIANT;
      Name   : GNATCOM.Types.VARIANT;
      Object : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
   is
   begin
      Invoke
        (This,
         uApplication_OrganizerDelete,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Object,
          2 => Name,
          3 => Source),
         Free);
   end OrganizerDelete;

   procedure OrganizerRename
     (This    : uApplication_Type;
      Source  : GNATCOM.Types.VARIANT;
      Name    : GNATCOM.Types.VARIANT;
      NewName : GNATCOM.Types.VARIANT;
      Object  : GNATCOM.Types.VARIANT;
      Free    : Boolean := True)
   is
   begin
      Invoke
        (This,
         uApplication_OrganizerRename,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Object,
          2 => NewName,
          3 => Name,
          4 => Source),
         Free);
   end OrganizerRename;

   procedure AddAddress
     (This  : uApplication_Type;
      TagID : GNATCOM.Types.VARIANT;
      Value : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
   is
   begin
      Invoke
        (This,
         uApplication_AddAddress,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Value,
          2 => TagID),
         Free);
   end AddAddress;

   function GetAddress
     (This                  : uApplication_Type;
      Name                  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      AddressProperties     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      UseAutoText           : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      DisplaySelectDialog   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      SelectDialog          : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      CheckNamesDialog      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      RecentAddressesChoice : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      UpdateRecentAddresses : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free                  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uApplication_GetAddress,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => UpdateRecentAddresses,
          2 => RecentAddressesChoice,
          3 => CheckNamesDialog,
          4 => SelectDialog,
          5 => DisplaySelectDialog,
          6 => UseAutoText,
          7 => AddressProperties,
          8 => Name),
         Free);
   end GetAddress;

   function CheckGrammar
     (This   : uApplication_Type;
      String : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uApplication_CheckGrammar,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => String),
         Free);
   end CheckGrammar;

   function CheckSpelling
     (This               : uApplication_Type;
      Word               : GNATCOM.Types.VARIANT;
      CustomDictionary   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      IgnoreUppercase    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      MainDictionary     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      CustomDictionary2  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      CustomDictionary3  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      CustomDictionary4  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      CustomDictionary5  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      CustomDictionary6  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      CustomDictionary7  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      CustomDictionary8  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      CustomDictionary9  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      CustomDictionary10 : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free               : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uApplication_CheckSpelling,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => CustomDictionary10,
          2 => CustomDictionary9,
          3 => CustomDictionary8,
          4 => CustomDictionary7,
          5 => CustomDictionary6,
          6 => CustomDictionary5,
          7 => CustomDictionary4,
          8 => CustomDictionary3,
          9 => CustomDictionary2,
          10 => MainDictionary,
          11 => IgnoreUppercase,
          12 => CustomDictionary,
          13 => Word),
         Free);
   end CheckSpelling;

   procedure ResetIgnoreAll
     (This : uApplication_Type)
   is
   begin
      Invoke (This, uApplication_ResetIgnoreAll);
   end ResetIgnoreAll;

   function GetSpellingSuggestions
     (This               : uApplication_Type;
      Word               : GNATCOM.Types.VARIANT;
      CustomDictionary   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      IgnoreUppercase    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      MainDictionary     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      SuggestionMode     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      CustomDictionary2  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      CustomDictionary3  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      CustomDictionary4  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      CustomDictionary5  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      CustomDictionary6  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      CustomDictionary7  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      CustomDictionary8  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      CustomDictionary9  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      CustomDictionary10 : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free               : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uApplication_GetSpellingSuggestions,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => CustomDictionary10,
          2 => CustomDictionary9,
          3 => CustomDictionary8,
          4 => CustomDictionary7,
          5 => CustomDictionary6,
          6 => CustomDictionary5,
          7 => CustomDictionary4,
          8 => CustomDictionary3,
          9 => CustomDictionary2,
          10 => SuggestionMode,
          11 => MainDictionary,
          12 => IgnoreUppercase,
          13 => CustomDictionary,
          14 => Word),
         Free);
   end GetSpellingSuggestions;

   procedure GoBack
     (This : uApplication_Type)
   is
   begin
      Invoke (This, uApplication_GoBack);
   end GoBack;

   procedure Help
     (This     : uApplication_Type;
      HelpType : GNATCOM.Types.VARIANT;
      Free     : Boolean := True)
   is
   begin
      Invoke
        (This,
         uApplication_Help,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => HelpType),
         Free);
   end Help;

   procedure AutomaticChange
     (This : uApplication_Type)
   is
   begin
      Invoke (This, uApplication_AutomaticChange);
   end AutomaticChange;

   procedure ShowMe
     (This : uApplication_Type)
   is
   begin
      Invoke (This, uApplication_ShowMe);
   end ShowMe;

   procedure HelpTool
     (This : uApplication_Type)
   is
   begin
      Invoke (This, uApplication_HelpTool);
   end HelpTool;

   function NewWindow
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke (This, uApplication_NewWindow);
   end NewWindow;

   procedure ListCommands
     (This            : uApplication_Type;
      ListAllCommands : GNATCOM.Types.VARIANT;
      Free            : Boolean := True)
   is
   begin
      Invoke
        (This,
         uApplication_ListCommands,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => ListAllCommands),
         Free);
   end ListCommands;

   procedure ShowClipboard
     (This : uApplication_Type)
   is
   begin
      Invoke (This, uApplication_ShowClipboard);
   end ShowClipboard;

   procedure OnTime
     (This      : uApplication_Type;
      uWhen     : GNATCOM.Types.VARIANT;
      Name      : GNATCOM.Types.VARIANT;
      Tolerance : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free      : Boolean := True)
   is
   begin
      Invoke
        (This,
         uApplication_OnTime,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Tolerance,
          2 => Name,
          3 => uWhen),
         Free);
   end OnTime;

   procedure NextLetter
     (This : uApplication_Type)
   is
   begin
      Invoke (This, uApplication_NextLetter);
   end NextLetter;

   function MountVolume
     (This           : uApplication_Type;
      Zone           : GNATCOM.Types.VARIANT;
      Server         : GNATCOM.Types.VARIANT;
      Volume         : GNATCOM.Types.VARIANT;
      User           : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      UserPassword   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      VolumePassword : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free           : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uApplication_MountVolume,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => VolumePassword,
          2 => UserPassword,
          3 => User,
          4 => Volume,
          5 => Server,
          6 => Zone),
         Free);
   end MountVolume;

   function CleanString
     (This   : uApplication_Type;
      String : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uApplication_CleanString,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => String),
         Free);
   end CleanString;

   procedure SendFax
     (This : uApplication_Type)
   is
   begin
      Invoke (This, uApplication_SendFax);
   end SendFax;

   procedure ChangeFileOpenDirectory
     (This : uApplication_Type;
      Path : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Invoke
        (This,
         uApplication_ChangeFileOpenDirectory,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Path),
         Free);
   end ChangeFileOpenDirectory;

   procedure RunOld
     (This      : uApplication_Type;
      MacroName : GNATCOM.Types.VARIANT;
      Free      : Boolean := True)
   is
   begin
      Invoke
        (This,
         uApplication_RunOld,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => MacroName),
         Free);
   end RunOld;

   procedure GoForward
     (This : uApplication_Type)
   is
   begin
      Invoke (This, uApplication_GoForward);
   end GoForward;

   procedure Move
     (This : uApplication_Type;
      Left : GNATCOM.Types.VARIANT;
      Top  : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Invoke
        (This,
         uApplication_Move,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Top,
          2 => Left),
         Free);
   end Move;

   procedure Resize
     (This   : uApplication_Type;
      Width  : GNATCOM.Types.VARIANT;
      Height : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
   is
   begin
      Invoke
        (This,
         uApplication_Resize,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Height,
          2 => Width),
         Free);
   end Resize;

   function InchesToPoints
     (This   : uApplication_Type;
      Inches : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uApplication_InchesToPoints,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Inches),
         Free);
   end InchesToPoints;

   function CentimetersToPoints
     (This        : uApplication_Type;
      Centimeters : GNATCOM.Types.VARIANT;
      Free        : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uApplication_CentimetersToPoints,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Centimeters),
         Free);
   end CentimetersToPoints;

   function MillimetersToPoints
     (This        : uApplication_Type;
      Millimeters : GNATCOM.Types.VARIANT;
      Free        : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uApplication_MillimetersToPoints,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Millimeters),
         Free);
   end MillimetersToPoints;

   function PicasToPoints
     (This  : uApplication_Type;
      Picas : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uApplication_PicasToPoints,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Picas),
         Free);
   end PicasToPoints;

   function LinesToPoints
     (This  : uApplication_Type;
      Lines : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uApplication_LinesToPoints,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Lines),
         Free);
   end LinesToPoints;

   function PointsToInches
     (This   : uApplication_Type;
      Points : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uApplication_PointsToInches,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Points),
         Free);
   end PointsToInches;

   function PointsToCentimeters
     (This   : uApplication_Type;
      Points : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uApplication_PointsToCentimeters,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Points),
         Free);
   end PointsToCentimeters;

   function PointsToMillimeters
     (This   : uApplication_Type;
      Points : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uApplication_PointsToMillimeters,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Points),
         Free);
   end PointsToMillimeters;

   function PointsToPicas
     (This   : uApplication_Type;
      Points : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uApplication_PointsToPicas,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Points),
         Free);
   end PointsToPicas;

   function PointsToLines
     (This   : uApplication_Type;
      Points : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uApplication_PointsToLines,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Points),
         Free);
   end PointsToLines;

   procedure Activate
     (This : uApplication_Type)
   is
   begin
      Invoke (This, uApplication_Activate);
   end Activate;

   function PointsToPixels
     (This      : uApplication_Type;
      Points    : GNATCOM.Types.VARIANT;
      fVertical : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free      : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uApplication_PointsToPixels,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => fVertical,
          2 => Points),
         Free);
   end PointsToPixels;

   function PixelsToPoints
     (This      : uApplication_Type;
      Pixels    : GNATCOM.Types.VARIANT;
      fVertical : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free      : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uApplication_PixelsToPoints,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => fVertical,
          2 => Pixels),
         Free);
   end PixelsToPoints;

   procedure KeyboardLatin
     (This : uApplication_Type)
   is
   begin
      Invoke (This, uApplication_KeyboardLatin);
   end KeyboardLatin;

   procedure KeyboardBidi
     (This : uApplication_Type)
   is
   begin
      Invoke (This, uApplication_KeyboardBidi);
   end KeyboardBidi;

   procedure ToggleKeyboard
     (This : uApplication_Type)
   is
   begin
      Invoke (This, uApplication_ToggleKeyboard);
   end ToggleKeyboard;

   function Keyboard
     (This   : uApplication_Type;
      LangId : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uApplication_Keyboard,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => LangId),
         Free);
   end Keyboard;

   function ProductCode
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke (This, uApplication_ProductCode);
   end ProductCode;

   function DefaultWebOptions
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke (This, uApplication_DefaultWebOptions);
   end DefaultWebOptions;

   procedure DiscussionSupport
     (This   : uApplication_Type;
      uRange : GNATCOM.Types.VARIANT;
      cid    : GNATCOM.Types.VARIANT;
      piCSE  : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
   is
   begin
      Invoke
        (This,
         uApplication_DiscussionSupport,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => piCSE,
          2 => cid,
          3 => uRange),
         Free);
   end DiscussionSupport;

   procedure SetDefaultTheme
     (This         : uApplication_Type;
      Name         : GNATCOM.Types.VARIANT;
      DocumentType : GNATCOM.Types.VARIANT;
      Free         : Boolean := True)
   is
   begin
      Invoke
        (This,
         uApplication_SetDefaultTheme,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => DocumentType,
          2 => Name),
         Free);
   end SetDefaultTheme;

   function GetDefaultTheme
     (This         : uApplication_Type;
      DocumentType : GNATCOM.Types.VARIANT;
      Free         : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uApplication_GetDefaultTheme,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => DocumentType),
         Free);
   end GetDefaultTheme;

   function Get_EmailOptions
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_EmailOptions);
   end Get_EmailOptions;

   function Get_Language
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_Language);
   end Get_Language;

   function Get_COMAddIns
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_COMAddIns);
   end Get_COMAddIns;

   function Get_CheckLanguage
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_CheckLanguage);
   end Get_CheckLanguage;

   procedure Put_CheckLanguage
     (This : uApplication_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uApplication_Put_CheckLanguage,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_CheckLanguage;

   function Get_LanguageSettings
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_LanguageSettings);
   end Get_LanguageSettings;

   function Get_Dummy1
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_Dummy1);
   end Get_Dummy1;

   function Get_AnswerWizard
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_AnswerWizard);
   end Get_AnswerWizard;

   function Get_FeatureInstall
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_FeatureInstall);
   end Get_FeatureInstall;

   procedure Put_FeatureInstall
     (This : uApplication_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uApplication_Put_FeatureInstall,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_FeatureInstall;

   procedure PrintOut2000
     (This                 : uApplication_Type;
      Background           : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Append               : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      uRange               : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      OutputFileName       : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      From                 : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      To                   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Item                 : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Copies               : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Pages                : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      PageType             : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      PrintToFile          : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Collate              : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      FileName             : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ActivePrinterMacGX   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ManualDuplexPrint    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      PrintZoomColumn      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      PrintZoomRow         : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      PrintZoomPaperWidth  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      PrintZoomPaperHeight : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free                 : Boolean := True)
   is
   begin
      Invoke
        (This,
         uApplication_PrintOut2000,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => PrintZoomPaperHeight,
          2 => PrintZoomPaperWidth,
          3 => PrintZoomRow,
          4 => PrintZoomColumn,
          5 => ManualDuplexPrint,
          6 => ActivePrinterMacGX,
          7 => FileName,
          8 => Collate,
          9 => PrintToFile,
          10 => PageType,
          11 => Pages,
          12 => Copies,
          13 => Item,
          14 => To,
          15 => From,
          16 => OutputFileName,
          17 => uRange,
          18 => Append,
          19 => Background),
         Free);
   end PrintOut2000;

   function Run
     (This      : uApplication_Type;
      MacroName : GNATCOM.Types.VARIANT;
      varg1     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      varg2     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      varg3     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      varg4     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      varg5     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      varg6     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      varg7     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      varg8     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      varg9     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      varg10    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      varg11    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      varg12    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      varg13    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      varg14    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      varg15    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      varg16    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      varg17    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      varg18    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      varg19    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      varg20    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      varg21    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      varg22    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      varg23    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      varg24    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      varg25    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      varg26    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      varg27    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      varg28    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      varg29    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      varg30    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free      : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uApplication_Run,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => varg30,
          2 => varg29,
          3 => varg28,
          4 => varg27,
          5 => varg26,
          6 => varg25,
          7 => varg24,
          8 => varg23,
          9 => varg22,
          10 => varg21,
          11 => varg20,
          12 => varg19,
          13 => varg18,
          14 => varg17,
          15 => varg16,
          16 => varg15,
          17 => varg14,
          18 => varg13,
          19 => varg12,
          20 => varg11,
          21 => varg10,
          22 => varg9,
          23 => varg8,
          24 => varg7,
          25 => varg6,
          26 => varg5,
          27 => varg4,
          28 => varg3,
          29 => varg2,
          30 => varg1,
          31 => MacroName),
         Free);
   end Run;

   procedure PrintOut
     (This                 : uApplication_Type;
      Background           : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Append               : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      uRange               : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      OutputFileName       : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      From                 : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      To                   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Item                 : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Copies               : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Pages                : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      PageType             : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      PrintToFile          : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Collate              : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      FileName             : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ActivePrinterMacGX   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ManualDuplexPrint    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      PrintZoomColumn      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      PrintZoomRow         : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      PrintZoomPaperWidth  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      PrintZoomPaperHeight : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free                 : Boolean := True)
   is
   begin
      Invoke
        (This,
         uApplication_PrintOut,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => PrintZoomPaperHeight,
          2 => PrintZoomPaperWidth,
          3 => PrintZoomRow,
          4 => PrintZoomColumn,
          5 => ManualDuplexPrint,
          6 => ActivePrinterMacGX,
          7 => FileName,
          8 => Collate,
          9 => PrintToFile,
          10 => PageType,
          11 => Pages,
          12 => Copies,
          13 => Item,
          14 => To,
          15 => From,
          16 => OutputFileName,
          17 => uRange,
          18 => Append,
          19 => Background),
         Free);
   end PrintOut;

   function Get_AutomationSecurity
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_AutomationSecurity);
   end Get_AutomationSecurity;

   procedure Put_AutomationSecurity
     (This : uApplication_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uApplication_Put_AutomationSecurity,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AutomationSecurity;

   function Get_FileDialog
     (This           : uApplication_Type;
      FileDialogType : GNATCOM.Types.VARIANT;
      Free           : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get
        (This,
         uApplication_Get_FileDialog,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => FileDialogType),
         Free);
   end Get_FileDialog;

   function Get_EmailTemplate
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_EmailTemplate);
   end Get_EmailTemplate;

   procedure Put_EmailTemplate
     (This : uApplication_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uApplication_Put_EmailTemplate,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_EmailTemplate;

   function Get_ShowWindowsInTaskbar
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_ShowWindowsInTaskbar);
   end Get_ShowWindowsInTaskbar;

   procedure Put_ShowWindowsInTaskbar
     (This : uApplication_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uApplication_Put_ShowWindowsInTaskbar,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ShowWindowsInTaskbar;

   function Get_NewDocument
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_NewDocument);
   end Get_NewDocument;

   function Get_ShowStartupDialog
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_ShowStartupDialog);
   end Get_ShowStartupDialog;

   procedure Put_ShowStartupDialog
     (This : uApplication_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uApplication_Put_ShowStartupDialog,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ShowStartupDialog;

   function Get_AutoCorrectEmail
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_AutoCorrectEmail);
   end Get_AutoCorrectEmail;

   function Get_TaskPanes
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_TaskPanes);
   end Get_TaskPanes;

   function Get_DefaultLegalBlackline
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uApplication_Get_DefaultLegalBlackline);
   end Get_DefaultLegalBlackline;

   procedure Put_DefaultLegalBlackline
     (This : uApplication_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uApplication_Put_DefaultLegalBlackline,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DefaultLegalBlackline;

   function Dummy2
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke (This, uApplication_Dummy2);
   end Dummy2;

end winword.uApplication_Object;

