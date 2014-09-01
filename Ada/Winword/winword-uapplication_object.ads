with GNATCOM.Dispinterface;

package winword.uApplication_Object is

   type uApplication_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Name
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Documents
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Windows
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ActiveDocument
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ActiveWindow
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Selection
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   function Get_WordBasic
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   function Get_RecentFiles
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   function Get_NormalTemplate
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   function Get_System
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   function Get_AutoCorrect
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   function Get_FontNames
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   function Get_LandscapeFontNames
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   function Get_PortraitFontNames
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Languages
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Assistant
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Browser
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   function Get_FileConverters
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   function Get_MailingLabel
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Dialogs
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   function Get_CaptionLabels
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   function Get_AutoCaptions
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   function Get_AddIns
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Visible
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Visible
     (This : uApplication_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Version
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ScreenUpdating
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ScreenUpdating
     (This : uApplication_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_PrintPreview
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_PrintPreview
     (This : uApplication_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Tasks
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   function Get_DisplayStatusBar
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DisplayStatusBar
     (This : uApplication_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_SpecialMode
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   function Get_UsableWidth
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   function Get_UsableHeight
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   function Get_MathCoprocessorAvailable
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   function Get_MouseAvailable
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   function Get_International
     (This  : uApplication_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Get_Build
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   function Get_CapsLock
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   function Get_NumLock
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   function Get_UserName
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_UserName
     (This : uApplication_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_UserInitials
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_UserInitials
     (This : uApplication_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_UserAddress
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_UserAddress
     (This : uApplication_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_MacroContainer
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   function Get_DisplayRecentFiles
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DisplayRecentFiles
     (This : uApplication_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_CommandBars
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   function Get_SynonymInfo
     (This       : uApplication_Type;
      Word       : GNATCOM.Types.VARIANT;
      LanguageID : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free       : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Get_VBE
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   function Get_DefaultSaveFormat
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DefaultSaveFormat
     (This : uApplication_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ListGalleries
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ActivePrinter
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ActivePrinter
     (This : uApplication_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Templates
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   function Get_CustomizationContext
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_CustomizationContext
     (This : uApplication_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_KeyBindings
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   function Get_KeysBoundTo
     (This             : uApplication_Type;
      KeyCategory      : GNATCOM.Types.VARIANT;
      Command          : GNATCOM.Types.VARIANT;
      CommandParameter : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free             : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Get_FindKey
     (This     : uApplication_Type;
      KeyCode  : GNATCOM.Types.VARIANT;
      KeyCode2 : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Get_Caption
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Caption
     (This : uApplication_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Path
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   function Get_DisplayScrollBars
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DisplayScrollBars
     (This : uApplication_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_StartupPath
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_StartupPath
     (This : uApplication_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_BackgroundSavingStatus
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   function Get_BackgroundPrintingStatus
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Left
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Left
     (This : uApplication_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Top
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Top
     (This : uApplication_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Width
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Width
     (This : uApplication_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Height
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Height
     (This : uApplication_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_WindowState
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_WindowState
     (This : uApplication_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_DisplayAutoCompleteTips
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DisplayAutoCompleteTips
     (This : uApplication_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Options
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   function Get_DisplayAlerts
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DisplayAlerts
     (This : uApplication_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_CustomDictionaries
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   function Get_PathSeparator
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_StatusBar
     (This : uApplication_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_MAPIAvailable
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   function Get_DisplayScreenTips
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DisplayScreenTips
     (This : uApplication_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_EnableCancelKey
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_EnableCancelKey
     (This : uApplication_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_UserControl
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   function Get_FileSearch
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   function Get_MailSystem
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   function Get_DefaultTableSeparator
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DefaultTableSeparator
     (This : uApplication_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ShowVisualBasicEditor
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ShowVisualBasicEditor
     (This : uApplication_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_BrowseExtraFileTypes
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_BrowseExtraFileTypes
     (This : uApplication_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_IsObjectValid
     (This   : uApplication_Type;
      Object : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Get_HangulHanjaDictionaries
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   function Get_MailMessage
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   function Get_FocusInMailHeader
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   procedure Quit
     (This           : uApplication_Type;
      SaveChanges    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      OriginalFormat : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      RouteDocument  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free           : Boolean := True);

   procedure ScreenRefresh
     (This : uApplication_Type);

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
      Free               : Boolean := True);

   procedure LookupNameProperties
     (This : uApplication_Type;
      Name : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure SubstituteFont
     (This            : uApplication_Type;
      UnavailableFont : GNATCOM.Types.VARIANT;
      SubstituteFont  : GNATCOM.Types.VARIANT;
      Free            : Boolean := True);

   function Repeat
     (This  : uApplication_Type;
      Times : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure DDEExecute
     (This    : uApplication_Type;
      Channel : GNATCOM.Types.VARIANT;
      Command : GNATCOM.Types.VARIANT;
      Free    : Boolean := True);

   function DDEInitiate
     (This  : uApplication_Type;
      App   : GNATCOM.Types.VARIANT;
      Topic : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure DDEPoke
     (This    : uApplication_Type;
      Channel : GNATCOM.Types.VARIANT;
      Item    : GNATCOM.Types.VARIANT;
      Data    : GNATCOM.Types.VARIANT;
      Free    : Boolean := True);

   function DDERequest
     (This    : uApplication_Type;
      Channel : GNATCOM.Types.VARIANT;
      Item    : GNATCOM.Types.VARIANT;
      Free    : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure DDETerminate
     (This    : uApplication_Type;
      Channel : GNATCOM.Types.VARIANT;
      Free    : Boolean := True);

   procedure DDETerminateAll
     (This : uApplication_Type);

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
     return GNATCOM.Types.VARIANT;

   function KeyString
     (This     : uApplication_Type;
      KeyCode  : GNATCOM.Types.VARIANT;
      KeyCode2 : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure OrganizerCopy
     (This        : uApplication_Type;
      Source      : GNATCOM.Types.VARIANT;
      Destination : GNATCOM.Types.VARIANT;
      Name        : GNATCOM.Types.VARIANT;
      Object      : GNATCOM.Types.VARIANT;
      Free        : Boolean := True);

   procedure OrganizerDelete
     (This   : uApplication_Type;
      Source : GNATCOM.Types.VARIANT;
      Name   : GNATCOM.Types.VARIANT;
      Object : GNATCOM.Types.VARIANT;
      Free   : Boolean := True);

   procedure OrganizerRename
     (This    : uApplication_Type;
      Source  : GNATCOM.Types.VARIANT;
      Name    : GNATCOM.Types.VARIANT;
      NewName : GNATCOM.Types.VARIANT;
      Object  : GNATCOM.Types.VARIANT;
      Free    : Boolean := True);

   procedure AddAddress
     (This  : uApplication_Type;
      TagID : GNATCOM.Types.VARIANT;
      Value : GNATCOM.Types.VARIANT;
      Free  : Boolean := True);

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
     return GNATCOM.Types.VARIANT;

   function CheckGrammar
     (This   : uApplication_Type;
      String : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT;

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
     return GNATCOM.Types.VARIANT;

   procedure ResetIgnoreAll
     (This : uApplication_Type);

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
     return GNATCOM.Types.VARIANT;

   procedure GoBack
     (This : uApplication_Type);

   procedure Help
     (This     : uApplication_Type;
      HelpType : GNATCOM.Types.VARIANT;
      Free     : Boolean := True);

   procedure AutomaticChange
     (This : uApplication_Type);

   procedure ShowMe
     (This : uApplication_Type);

   procedure HelpTool
     (This : uApplication_Type);

   function NewWindow
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   procedure ListCommands
     (This            : uApplication_Type;
      ListAllCommands : GNATCOM.Types.VARIANT;
      Free            : Boolean := True);

   procedure ShowClipboard
     (This : uApplication_Type);

   procedure OnTime
     (This      : uApplication_Type;
      uWhen     : GNATCOM.Types.VARIANT;
      Name      : GNATCOM.Types.VARIANT;
      Tolerance : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free      : Boolean := True);

   procedure NextLetter
     (This : uApplication_Type);

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
     return GNATCOM.Types.VARIANT;

   function CleanString
     (This   : uApplication_Type;
      String : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure SendFax
     (This : uApplication_Type);

   procedure ChangeFileOpenDirectory
     (This : uApplication_Type;
      Path : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure RunOld
     (This      : uApplication_Type;
      MacroName : GNATCOM.Types.VARIANT;
      Free      : Boolean := True);

   procedure GoForward
     (This : uApplication_Type);

   procedure Move
     (This : uApplication_Type;
      Left : GNATCOM.Types.VARIANT;
      Top  : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure Resize
     (This   : uApplication_Type;
      Width  : GNATCOM.Types.VARIANT;
      Height : GNATCOM.Types.VARIANT;
      Free   : Boolean := True);

   function InchesToPoints
     (This   : uApplication_Type;
      Inches : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function CentimetersToPoints
     (This        : uApplication_Type;
      Centimeters : GNATCOM.Types.VARIANT;
      Free        : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function MillimetersToPoints
     (This        : uApplication_Type;
      Millimeters : GNATCOM.Types.VARIANT;
      Free        : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function PicasToPoints
     (This  : uApplication_Type;
      Picas : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function LinesToPoints
     (This  : uApplication_Type;
      Lines : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function PointsToInches
     (This   : uApplication_Type;
      Points : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function PointsToCentimeters
     (This   : uApplication_Type;
      Points : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function PointsToMillimeters
     (This   : uApplication_Type;
      Points : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function PointsToPicas
     (This   : uApplication_Type;
      Points : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function PointsToLines
     (This   : uApplication_Type;
      Points : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure Activate
     (This : uApplication_Type);

   function PointsToPixels
     (This      : uApplication_Type;
      Points    : GNATCOM.Types.VARIANT;
      fVertical : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free      : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function PixelsToPoints
     (This      : uApplication_Type;
      Pixels    : GNATCOM.Types.VARIANT;
      fVertical : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free      : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure KeyboardLatin
     (This : uApplication_Type);

   procedure KeyboardBidi
     (This : uApplication_Type);

   procedure ToggleKeyboard
     (This : uApplication_Type);

   function Keyboard
     (This   : uApplication_Type;
      LangId : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function ProductCode
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   function DefaultWebOptions
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   procedure DiscussionSupport
     (This   : uApplication_Type;
      uRange : GNATCOM.Types.VARIANT;
      cid    : GNATCOM.Types.VARIANT;
      piCSE  : GNATCOM.Types.VARIANT;
      Free   : Boolean := True);

   procedure SetDefaultTheme
     (This         : uApplication_Type;
      Name         : GNATCOM.Types.VARIANT;
      DocumentType : GNATCOM.Types.VARIANT;
      Free         : Boolean := True);

   function GetDefaultTheme
     (This         : uApplication_Type;
      DocumentType : GNATCOM.Types.VARIANT;
      Free         : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Get_EmailOptions
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Language
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   function Get_COMAddIns
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   function Get_CheckLanguage
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_CheckLanguage
     (This : uApplication_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_LanguageSettings
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Dummy1
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   function Get_AnswerWizard
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   function Get_FeatureInstall
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_FeatureInstall
     (This : uApplication_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

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
      Free                 : Boolean := True);

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
     return GNATCOM.Types.VARIANT;

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
      Free                 : Boolean := True);

   function Get_AutomationSecurity
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AutomationSecurity
     (This : uApplication_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_FileDialog
     (This           : uApplication_Type;
      FileDialogType : GNATCOM.Types.VARIANT;
      Free           : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Get_EmailTemplate
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_EmailTemplate
     (This : uApplication_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ShowWindowsInTaskbar
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ShowWindowsInTaskbar
     (This : uApplication_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_NewDocument
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ShowStartupDialog
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ShowStartupDialog
     (This : uApplication_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AutoCorrectEmail
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   function Get_TaskPanes
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   function Get_DefaultLegalBlackline
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DefaultLegalBlackline
     (This : uApplication_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Dummy2
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT;

end winword.uApplication_Object;

