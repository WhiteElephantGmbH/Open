with GNATCOM.Dispinterface;

package winword.uGlobal_Object is

   type uGlobal_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Name
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Documents
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Windows
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ActiveDocument
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ActiveWindow
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Selection
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT;

   function Get_WordBasic
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT;

   function Get_PrintPreview
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_PrintPreview
     (This : uGlobal_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_RecentFiles
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT;

   function Get_NormalTemplate
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT;

   function Get_System
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT;

   function Get_AutoCorrect
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT;

   function Get_FontNames
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT;

   function Get_LandscapeFontNames
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT;

   function Get_PortraitFontNames
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Languages
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Assistant
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT;

   function Get_FileConverters
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Dialogs
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT;

   function Get_CaptionLabels
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT;

   function Get_AutoCaptions
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT;

   function Get_AddIns
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Tasks
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT;

   function Get_MacroContainer
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT;

   function Get_CommandBars
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT;

   function Get_SynonymInfo
     (This       : uGlobal_Type;
      Word       : GNATCOM.Types.VARIANT;
      LanguageID : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free       : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Get_VBE
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ListGalleries
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ActivePrinter
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ActivePrinter
     (This : uGlobal_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Templates
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT;

   function Get_CustomizationContext
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_CustomizationContext
     (This : uGlobal_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_KeyBindings
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT;

   function Get_KeysBoundTo
     (This             : uGlobal_Type;
      KeyCategory      : GNATCOM.Types.VARIANT;
      Command          : GNATCOM.Types.VARIANT;
      CommandParameter : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free             : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Get_FindKey
     (This     : uGlobal_Type;
      KeyCode  : GNATCOM.Types.VARIANT;
      KeyCode2 : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Get_Options
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT;

   function Get_CustomDictionaries
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_StatusBar
     (This : uGlobal_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ShowVisualBasicEditor
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ShowVisualBasicEditor
     (This : uGlobal_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_IsObjectValid
     (This   : uGlobal_Type;
      Object : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Get_HangulHanjaDictionaries
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT;

   function Repeat
     (This  : uGlobal_Type;
      Times : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure DDEExecute
     (This    : uGlobal_Type;
      Channel : GNATCOM.Types.VARIANT;
      Command : GNATCOM.Types.VARIANT;
      Free    : Boolean := True);

   function DDEInitiate
     (This  : uGlobal_Type;
      App   : GNATCOM.Types.VARIANT;
      Topic : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure DDEPoke
     (This    : uGlobal_Type;
      Channel : GNATCOM.Types.VARIANT;
      Item    : GNATCOM.Types.VARIANT;
      Data    : GNATCOM.Types.VARIANT;
      Free    : Boolean := True);

   function DDERequest
     (This    : uGlobal_Type;
      Channel : GNATCOM.Types.VARIANT;
      Item    : GNATCOM.Types.VARIANT;
      Free    : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure DDETerminate
     (This    : uGlobal_Type;
      Channel : GNATCOM.Types.VARIANT;
      Free    : Boolean := True);

   procedure DDETerminateAll
     (This : uGlobal_Type);

   function BuildKeyCode
     (This : uGlobal_Type;
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
     (This     : uGlobal_Type;
      KeyCode  : GNATCOM.Types.VARIANT;
      KeyCode2 : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function CheckSpelling
     (This               : uGlobal_Type;
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

   function GetSpellingSuggestions
     (This               : uGlobal_Type;
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

   procedure Help
     (This     : uGlobal_Type;
      HelpType : GNATCOM.Types.VARIANT;
      Free     : Boolean := True);

   function NewWindow
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT;

   function CleanString
     (This   : uGlobal_Type;
      String : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure ChangeFileOpenDirectory
     (This : uGlobal_Type;
      Path : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function InchesToPoints
     (This   : uGlobal_Type;
      Inches : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function CentimetersToPoints
     (This        : uGlobal_Type;
      Centimeters : GNATCOM.Types.VARIANT;
      Free        : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function MillimetersToPoints
     (This        : uGlobal_Type;
      Millimeters : GNATCOM.Types.VARIANT;
      Free        : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function PicasToPoints
     (This  : uGlobal_Type;
      Picas : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function LinesToPoints
     (This  : uGlobal_Type;
      Lines : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function PointsToInches
     (This   : uGlobal_Type;
      Points : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function PointsToCentimeters
     (This   : uGlobal_Type;
      Points : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function PointsToMillimeters
     (This   : uGlobal_Type;
      Points : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function PointsToPicas
     (This   : uGlobal_Type;
      Points : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function PointsToLines
     (This   : uGlobal_Type;
      Points : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function PointsToPixels
     (This      : uGlobal_Type;
      Points    : GNATCOM.Types.VARIANT;
      fVertical : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free      : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function PixelsToPoints
     (This      : uGlobal_Type;
      Pixels    : GNATCOM.Types.VARIANT;
      fVertical : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free      : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Get_LanguageSettings
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT;

   function Get_AnswerWizard
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT;

   function Get_AutoCorrectEmail
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT;

end winword.uGlobal_Object;

