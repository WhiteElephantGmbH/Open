with GNATCOM.Dispinterface;

package winword.uApplication_Interface is

   type uApplication_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out uApplication_Type);

   function Pointer (This : uApplication_Type)
     return Pointer_To_uApplication;

   procedure Attach (This    : in out uApplication_Type;
                     Pointer : in     Pointer_To_uApplication);

   function Get_Application
     (This : uApplication_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : uApplication_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : uApplication_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Name
     (This : uApplication_Type)
     return GNATCOM.Types.BSTR;

   function Get_Documents
     (This : uApplication_Type)
     return Pointer_To_Documents;

   function Get_Windows
     (This : uApplication_Type)
     return Pointer_To_Windows;

   function Get_ActiveDocument
     (This : uApplication_Type)
     return Pointer_To_uDocument;

   function Get_ActiveWindow
     (This : uApplication_Type)
     return Pointer_To_Window;

   function Get_Selection
     (This : uApplication_Type)
     return Pointer_To_Selection;

   function Get_WordBasic
     (This : uApplication_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_RecentFiles
     (This : uApplication_Type)
     return Pointer_To_RecentFiles;

   function Get_NormalTemplate
     (This : uApplication_Type)
     return Pointer_To_Template;

   function Get_System
     (This : uApplication_Type)
     return Pointer_To_System;

   function Get_AutoCorrect
     (This : uApplication_Type)
     return Pointer_To_AutoCorrect;

   function Get_FontNames
     (This : uApplication_Type)
     return Pointer_To_FontNames;

   function Get_LandscapeFontNames
     (This : uApplication_Type)
     return Pointer_To_FontNames;

   function Get_PortraitFontNames
     (This : uApplication_Type)
     return Pointer_To_FontNames;

   function Get_Languages
     (This : uApplication_Type)
     return Pointer_To_Languages;

   function Get_Assistant
     (This : uApplication_Type)
     return Pointer_To_Assistant;

   function Get_Browser
     (This : uApplication_Type)
     return Pointer_To_Browser;

   function Get_FileConverters
     (This : uApplication_Type)
     return Pointer_To_FileConverters;

   function Get_MailingLabel
     (This : uApplication_Type)
     return Pointer_To_MailingLabel;

   function Get_Dialogs
     (This : uApplication_Type)
     return Pointer_To_Dialogs;

   function Get_CaptionLabels
     (This : uApplication_Type)
     return Pointer_To_CaptionLabels;

   function Get_AutoCaptions
     (This : uApplication_Type)
     return Pointer_To_AutoCaptions;

   function Get_AddIns
     (This : uApplication_Type)
     return Pointer_To_AddIns;

   function Get_Visible
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_Visible
     (This : uApplication_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_Version
     (This : uApplication_Type)
     return GNATCOM.Types.BSTR;

   function Get_ScreenUpdating
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_ScreenUpdating
     (This : uApplication_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_PrintPreview
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_PrintPreview
     (This : uApplication_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_Tasks
     (This : uApplication_Type)
     return Pointer_To_Tasks;

   function Get_DisplayStatusBar
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_DisplayStatusBar
     (This : uApplication_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_SpecialMode
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   function Get_UsableWidth
     (This : uApplication_Type)
     return Interfaces.C.long;

   function Get_UsableHeight
     (This : uApplication_Type)
     return Interfaces.C.long;

   function Get_MathCoprocessorAvailable
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   function Get_MouseAvailable
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   function Get_International
     (This  : uApplication_Type;
      Index : WdInternationalIndex)
     return GNATCOM.Types.VARIANT;

   function Get_Build
     (This : uApplication_Type)
     return GNATCOM.Types.BSTR;

   function Get_CapsLock
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   function Get_NumLock
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   function Get_UserName
     (This : uApplication_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_UserName
     (This : uApplication_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_UserInitials
     (This : uApplication_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_UserInitials
     (This : uApplication_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_UserAddress
     (This : uApplication_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_UserAddress
     (This : uApplication_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_MacroContainer
     (This : uApplication_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_DisplayRecentFiles
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_DisplayRecentFiles
     (This : uApplication_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_CommandBars
     (This : uApplication_Type)
     return Pointer_To_uCommandBars;

   function Get_SynonymInfo
     (This       : uApplication_Type;
      Word       : GNATCOM.Types.BSTR;
      LanguageID : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Free       : Boolean := True)
     return Pointer_To_SynonymInfo;

   function Get_VBE
     (This : uApplication_Type)
     return Pointer_To_VBE;

   function Get_DefaultSaveFormat
     (This : uApplication_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_DefaultSaveFormat
     (This : uApplication_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_ListGalleries
     (This : uApplication_Type)
     return Pointer_To_ListGalleries;

   function Get_ActivePrinter
     (This : uApplication_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_ActivePrinter
     (This : uApplication_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_Templates
     (This : uApplication_Type)
     return Pointer_To_Templates;

   function Get_CustomizationContext
     (This : uApplication_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   procedure Put_CustomizationContext
     (This : uApplication_Type;
      prop : GNATCOM.Types.Pointer_To_IDispatch);

   function Get_KeyBindings
     (This : uApplication_Type)
     return Pointer_To_KeyBindings;

   function Get_KeysBoundTo
     (This             : uApplication_Type;
      KeyCategory      : WdKeyCategory;
      Command          : GNATCOM.Types.BSTR;
      CommandParameter : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Free             : Boolean := True)
     return Pointer_To_KeysBoundTo;

   function Get_FindKey
     (This     : uApplication_Type;
      KeyCode  : Interfaces.C.long;
      KeyCode2 : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_KeyBinding;

   function Get_Caption
     (This : uApplication_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_Caption
     (This : uApplication_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_Path
     (This : uApplication_Type)
     return GNATCOM.Types.BSTR;

   function Get_DisplayScrollBars
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_DisplayScrollBars
     (This : uApplication_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_StartupPath
     (This : uApplication_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_StartupPath
     (This : uApplication_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_BackgroundSavingStatus
     (This : uApplication_Type)
     return Interfaces.C.long;

   function Get_BackgroundPrintingStatus
     (This : uApplication_Type)
     return Interfaces.C.long;

   function Get_Left
     (This : uApplication_Type)
     return Interfaces.C.long;

   procedure Put_Left
     (This : uApplication_Type;
      prop : Interfaces.C.long);

   function Get_Top
     (This : uApplication_Type)
     return Interfaces.C.long;

   procedure Put_Top
     (This : uApplication_Type;
      prop : Interfaces.C.long);

   function Get_Width
     (This : uApplication_Type)
     return Interfaces.C.long;

   procedure Put_Width
     (This : uApplication_Type;
      prop : Interfaces.C.long);

   function Get_Height
     (This : uApplication_Type)
     return Interfaces.C.long;

   procedure Put_Height
     (This : uApplication_Type;
      prop : Interfaces.C.long);

   function Get_WindowState
     (This : uApplication_Type)
     return WdWindowState;

   procedure Put_WindowState
     (This : uApplication_Type;
      prop : WdWindowState);

   function Get_DisplayAutoCompleteTips
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_DisplayAutoCompleteTips
     (This : uApplication_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_Options
     (This : uApplication_Type)
     return Pointer_To_Options;

   function Get_DisplayAlerts
     (This : uApplication_Type)
     return WdAlertLevel;

   procedure Put_DisplayAlerts
     (This : uApplication_Type;
      prop : WdAlertLevel);

   function Get_CustomDictionaries
     (This : uApplication_Type)
     return Pointer_To_Dictionaries;

   function Get_PathSeparator
     (This : uApplication_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_StatusBar
     (This : uApplication_Type;
      P1   : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_MAPIAvailable
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   function Get_DisplayScreenTips
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_DisplayScreenTips
     (This : uApplication_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_EnableCancelKey
     (This : uApplication_Type)
     return WdEnableCancelKey;

   procedure Put_EnableCancelKey
     (This : uApplication_Type;
      prop : WdEnableCancelKey);

   function Get_UserControl
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   function Get_FileSearch
     (This : uApplication_Type)
     return Pointer_To_FileSearch;

   function Get_MailSystem
     (This : uApplication_Type)
     return WdMailSystem;

   function Get_DefaultTableSeparator
     (This : uApplication_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_DefaultTableSeparator
     (This : uApplication_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_ShowVisualBasicEditor
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_ShowVisualBasicEditor
     (This : uApplication_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_BrowseExtraFileTypes
     (This : uApplication_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_BrowseExtraFileTypes
     (This : uApplication_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_IsObjectValid
     (This   : uApplication_Type;
      Object : GNATCOM.Types.Pointer_To_IDispatch)
     return GNATCOM.Types.VARIANT_BOOL;

   function Get_HangulHanjaDictionaries
     (This : uApplication_Type)
     return Pointer_To_HangulHanjaConversionDictionaries;

   function Get_MailMessage
     (This : uApplication_Type)
     return Pointer_To_MailMessage;

   function Get_FocusInMailHeader
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Quit
     (This           : uApplication_Type;
      SaveChanges    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      OriginalFormat : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      RouteDocument  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   procedure ScreenRefresh
     (This : uApplication_Type);

   procedure PrintOutOld
     (This               : uApplication_Type;
      Background         : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Append             : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      uRange             : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      OutputFileName     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      From               : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      To                 : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Item               : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Copies             : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Pages              : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PageType           : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PrintToFile        : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Collate            : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      FileName           : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ActivePrinterMacGX : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ManualDuplexPrint  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   procedure LookupNameProperties
     (This : uApplication_Type;
      Name : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   procedure SubstituteFont
     (This            : uApplication_Type;
      UnavailableFont : GNATCOM.Types.BSTR;
      SubstituteFont  : GNATCOM.Types.BSTR;
      Free            : Boolean := True);

   function Repeat
     (This  : uApplication_Type;
      Times : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure DDEExecute
     (This    : uApplication_Type;
      Channel : Interfaces.C.long;
      Command : GNATCOM.Types.BSTR;
      Free    : Boolean := True);

   function DDEInitiate
     (This  : uApplication_Type;
      App   : GNATCOM.Types.BSTR;
      Topic : GNATCOM.Types.BSTR;
      Free  : Boolean := True)
     return Interfaces.C.long;

   procedure DDEPoke
     (This    : uApplication_Type;
      Channel : Interfaces.C.long;
      Item    : GNATCOM.Types.BSTR;
      Data    : GNATCOM.Types.BSTR;
      Free    : Boolean := True);

   function DDERequest
     (This    : uApplication_Type;
      Channel : Interfaces.C.long;
      Item    : GNATCOM.Types.BSTR;
      Free    : Boolean := True)
     return GNATCOM.Types.BSTR;

   procedure DDETerminate
     (This    : uApplication_Type;
      Channel : Interfaces.C.long);

   procedure DDETerminateAll
     (This : uApplication_Type);

   function BuildKeyCode
     (This : uApplication_Type;
      Arg1 : WdKey;
      Arg2 : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Arg3 : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Arg4 : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Interfaces.C.long;

   function KeyString
     (This     : uApplication_Type;
      KeyCode  : Interfaces.C.long;
      KeyCode2 : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return GNATCOM.Types.BSTR;

   procedure OrganizerCopy
     (This        : uApplication_Type;
      Source      : GNATCOM.Types.BSTR;
      Destination : GNATCOM.Types.BSTR;
      Name        : GNATCOM.Types.BSTR;
      Object      : WdOrganizerObject;
      Free        : Boolean := True);

   procedure OrganizerDelete
     (This   : uApplication_Type;
      Source : GNATCOM.Types.BSTR;
      Name   : GNATCOM.Types.BSTR;
      Object : WdOrganizerObject;
      Free   : Boolean := True);

   procedure OrganizerRename
     (This    : uApplication_Type;
      Source  : GNATCOM.Types.BSTR;
      Name    : GNATCOM.Types.BSTR;
      NewName : GNATCOM.Types.BSTR;
      Object  : WdOrganizerObject;
      Free    : Boolean := True);

   procedure AddAddress
     (This  : uApplication_Type;
      TagID : GNATCOM.Types.Pointer_To_Pointer_To_SAFEARRAY;
      Value : GNATCOM.Types.Pointer_To_Pointer_To_SAFEARRAY);

   function GetAddress
     (This                  : uApplication_Type;
      Name                  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      AddressProperties     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      UseAutoText           : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      DisplaySelectDialog   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SelectDialog          : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      CheckNamesDialog      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      RecentAddressesChoice : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      UpdateRecentAddresses : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return GNATCOM.Types.BSTR;

   function CheckGrammar
     (This   : uApplication_Type;
      String : GNATCOM.Types.BSTR;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT_BOOL;

   function CheckSpelling
     (This               : uApplication_Type;
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
     return GNATCOM.Types.VARIANT_BOOL;

   procedure ResetIgnoreAll
     (This : uApplication_Type);

   function GetSpellingSuggestions
     (This               : uApplication_Type;
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
     return Pointer_To_SpellingSuggestions;

   procedure GoBack
     (This : uApplication_Type);

   procedure Help
     (This     : uApplication_Type;
      HelpType : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   procedure AutomaticChange
     (This : uApplication_Type);

   procedure ShowMe
     (This : uApplication_Type);

   procedure HelpTool
     (This : uApplication_Type);

   function NewWindow
     (This : uApplication_Type)
     return Pointer_To_Window;

   procedure ListCommands
     (This            : uApplication_Type;
      ListAllCommands : GNATCOM.Types.VARIANT_BOOL);

   procedure ShowClipboard
     (This : uApplication_Type);

   procedure OnTime
     (This      : uApplication_Type;
      uWhen     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Name      : GNATCOM.Types.BSTR;
      Tolerance : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Free      : Boolean := True);

   procedure NextLetter
     (This : uApplication_Type);

   function MountVolume
     (This           : uApplication_Type;
      Zone           : GNATCOM.Types.BSTR;
      Server         : GNATCOM.Types.BSTR;
      Volume         : GNATCOM.Types.BSTR;
      User           : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      UserPassword   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      VolumePassword : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Free           : Boolean := True)
     return Interfaces.C.short;

   function CleanString
     (This   : uApplication_Type;
      String : GNATCOM.Types.BSTR;
      Free   : Boolean := True)
     return GNATCOM.Types.BSTR;

   procedure SendFax
     (This : uApplication_Type);

   procedure ChangeFileOpenDirectory
     (This : uApplication_Type;
      Path : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   procedure RunOld
     (This      : uApplication_Type;
      MacroName : GNATCOM.Types.BSTR;
      Free      : Boolean := True);

   procedure GoForward
     (This : uApplication_Type);

   procedure Move
     (This : uApplication_Type;
      Left : Interfaces.C.long;
      Top  : Interfaces.C.long);

   procedure Resize
     (This   : uApplication_Type;
      Width  : Interfaces.C.long;
      Height : Interfaces.C.long);

   function InchesToPoints
     (This   : uApplication_Type;
      Inches : Interfaces.C.C_float)
     return Interfaces.C.C_float;

   function CentimetersToPoints
     (This        : uApplication_Type;
      Centimeters : Interfaces.C.C_float)
     return Interfaces.C.C_float;

   function MillimetersToPoints
     (This        : uApplication_Type;
      Millimeters : Interfaces.C.C_float)
     return Interfaces.C.C_float;

   function PicasToPoints
     (This  : uApplication_Type;
      Picas : Interfaces.C.C_float)
     return Interfaces.C.C_float;

   function LinesToPoints
     (This  : uApplication_Type;
      Lines : Interfaces.C.C_float)
     return Interfaces.C.C_float;

   function PointsToInches
     (This   : uApplication_Type;
      Points : Interfaces.C.C_float)
     return Interfaces.C.C_float;

   function PointsToCentimeters
     (This   : uApplication_Type;
      Points : Interfaces.C.C_float)
     return Interfaces.C.C_float;

   function PointsToMillimeters
     (This   : uApplication_Type;
      Points : Interfaces.C.C_float)
     return Interfaces.C.C_float;

   function PointsToPicas
     (This   : uApplication_Type;
      Points : Interfaces.C.C_float)
     return Interfaces.C.C_float;

   function PointsToLines
     (This   : uApplication_Type;
      Points : Interfaces.C.C_float)
     return Interfaces.C.C_float;

   procedure Activate
     (This : uApplication_Type);

   function PointsToPixels
     (This      : uApplication_Type;
      Points    : Interfaces.C.C_float;
      fVertical : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Interfaces.C.C_float;

   function PixelsToPoints
     (This      : uApplication_Type;
      Pixels    : Interfaces.C.C_float;
      fVertical : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Interfaces.C.C_float;

   procedure KeyboardLatin
     (This : uApplication_Type);

   procedure KeyboardBidi
     (This : uApplication_Type);

   procedure ToggleKeyboard
     (This : uApplication_Type);

   function Keyboard
     (This   : uApplication_Type;
      LangId : Interfaces.C.long)
     return Interfaces.C.long;

   function ProductCode
     (This : uApplication_Type)
     return GNATCOM.Types.BSTR;

   function DefaultWebOptions
     (This : uApplication_Type)
     return Pointer_To_DefaultWebOptions;

   procedure DiscussionSupport
     (This   : uApplication_Type;
      uRange : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      cid    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      piCSE  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   procedure SetDefaultTheme
     (This         : uApplication_Type;
      Name         : GNATCOM.Types.BSTR;
      DocumentType : WdDocumentMedium;
      Free         : Boolean := True);

   function GetDefaultTheme
     (This         : uApplication_Type;
      DocumentType : WdDocumentMedium)
     return GNATCOM.Types.BSTR;

   function Get_EmailOptions
     (This : uApplication_Type)
     return Pointer_To_EmailOptions;

   function Get_Language
     (This : uApplication_Type)
     return MsoLanguageID;

   function Get_COMAddIns
     (This : uApplication_Type)
     return Pointer_To_COMAddIns;

   function Get_CheckLanguage
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_CheckLanguage
     (This : uApplication_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_LanguageSettings
     (This : uApplication_Type)
     return Pointer_To_LanguageSettings;

   function Get_Dummy1
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   function Get_AnswerWizard
     (This : uApplication_Type)
     return Pointer_To_AnswerWizard;

   function Get_FeatureInstall
     (This : uApplication_Type)
     return MsoFeatureInstall;

   procedure Put_FeatureInstall
     (This : uApplication_Type;
      prop : MsoFeatureInstall);

   procedure PrintOut2000
     (This                 : uApplication_Type;
      Background           : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Append               : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      uRange               : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      OutputFileName       : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      From                 : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      To                   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Item                 : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Copies               : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Pages                : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PageType             : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PrintToFile          : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Collate              : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      FileName             : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ActivePrinterMacGX   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ManualDuplexPrint    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PrintZoomColumn      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PrintZoomRow         : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PrintZoomPaperWidth  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PrintZoomPaperHeight : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   function Run
     (This      : uApplication_Type;
      MacroName : GNATCOM.Types.BSTR;
      varg1     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      varg2     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      varg3     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      varg4     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      varg5     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      varg6     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      varg7     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      varg8     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      varg9     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      varg10    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      varg11    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      varg12    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      varg13    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      varg14    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      varg15    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      varg16    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      varg17    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      varg18    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      varg19    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      varg20    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      varg21    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      varg22    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      varg23    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      varg24    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      varg25    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      varg26    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      varg27    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      varg28    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      varg29    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      varg30    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Free      : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure PrintOut
     (This                 : uApplication_Type;
      Background           : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Append               : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      uRange               : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      OutputFileName       : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      From                 : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      To                   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Item                 : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Copies               : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Pages                : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PageType             : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PrintToFile          : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Collate              : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      FileName             : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ActivePrinterMacGX   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ManualDuplexPrint    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PrintZoomColumn      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PrintZoomRow         : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PrintZoomPaperWidth  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PrintZoomPaperHeight : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   function Get_AutomationSecurity
     (This : uApplication_Type)
     return MsoAutomationSecurity;

   procedure Put_AutomationSecurity
     (This : uApplication_Type;
      prop : MsoAutomationSecurity);

   function Get_FileDialog
     (This           : uApplication_Type;
      FileDialogType : MsoFileDialogType)
     return Pointer_To_FileDialog;

   function Get_EmailTemplate
     (This : uApplication_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_EmailTemplate
     (This : uApplication_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_ShowWindowsInTaskbar
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_ShowWindowsInTaskbar
     (This : uApplication_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_NewDocument
     (This : uApplication_Type)
     return Pointer_To_NewFile;

   function Get_ShowStartupDialog
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_ShowStartupDialog
     (This : uApplication_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_AutoCorrectEmail
     (This : uApplication_Type)
     return Pointer_To_AutoCorrect;

   function Get_TaskPanes
     (This : uApplication_Type)
     return Pointer_To_TaskPanes;

   function Get_DefaultLegalBlackline
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_DefaultLegalBlackline
     (This : uApplication_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Dummy2
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT_BOOL;

end winword.uApplication_Interface;

