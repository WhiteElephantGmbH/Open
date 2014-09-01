package body winword.uGlobal_Object is

   function Get_Application
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uGlobal_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uGlobal_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uGlobal_Get_Parent);
   end Get_Parent;

   function Get_Name
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uGlobal_Get_Name);
   end Get_Name;

   function Get_Documents
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uGlobal_Get_Documents);
   end Get_Documents;

   function Get_Windows
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uGlobal_Get_Windows);
   end Get_Windows;

   function Get_ActiveDocument
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uGlobal_Get_ActiveDocument);
   end Get_ActiveDocument;

   function Get_ActiveWindow
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uGlobal_Get_ActiveWindow);
   end Get_ActiveWindow;

   function Get_Selection
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uGlobal_Get_Selection);
   end Get_Selection;

   function Get_WordBasic
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uGlobal_Get_WordBasic);
   end Get_WordBasic;

   function Get_PrintPreview
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uGlobal_Get_PrintPreview);
   end Get_PrintPreview;

   procedure Put_PrintPreview
     (This : uGlobal_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uGlobal_Put_PrintPreview,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_PrintPreview;

   function Get_RecentFiles
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uGlobal_Get_RecentFiles);
   end Get_RecentFiles;

   function Get_NormalTemplate
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uGlobal_Get_NormalTemplate);
   end Get_NormalTemplate;

   function Get_System
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uGlobal_Get_System);
   end Get_System;

   function Get_AutoCorrect
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uGlobal_Get_AutoCorrect);
   end Get_AutoCorrect;

   function Get_FontNames
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uGlobal_Get_FontNames);
   end Get_FontNames;

   function Get_LandscapeFontNames
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uGlobal_Get_LandscapeFontNames);
   end Get_LandscapeFontNames;

   function Get_PortraitFontNames
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uGlobal_Get_PortraitFontNames);
   end Get_PortraitFontNames;

   function Get_Languages
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uGlobal_Get_Languages);
   end Get_Languages;

   function Get_Assistant
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uGlobal_Get_Assistant);
   end Get_Assistant;

   function Get_FileConverters
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uGlobal_Get_FileConverters);
   end Get_FileConverters;

   function Get_Dialogs
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uGlobal_Get_Dialogs);
   end Get_Dialogs;

   function Get_CaptionLabels
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uGlobal_Get_CaptionLabels);
   end Get_CaptionLabels;

   function Get_AutoCaptions
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uGlobal_Get_AutoCaptions);
   end Get_AutoCaptions;

   function Get_AddIns
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uGlobal_Get_AddIns);
   end Get_AddIns;

   function Get_Tasks
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uGlobal_Get_Tasks);
   end Get_Tasks;

   function Get_MacroContainer
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uGlobal_Get_MacroContainer);
   end Get_MacroContainer;

   function Get_CommandBars
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uGlobal_Get_CommandBars);
   end Get_CommandBars;

   function Get_SynonymInfo
     (This       : uGlobal_Type;
      Word       : GNATCOM.Types.VARIANT;
      LanguageID : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free       : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get
        (This,
         uGlobal_Get_SynonymInfo,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => LanguageID,
          2 => Word),
         Free);
   end Get_SynonymInfo;

   function Get_VBE
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uGlobal_Get_VBE);
   end Get_VBE;

   function Get_ListGalleries
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uGlobal_Get_ListGalleries);
   end Get_ListGalleries;

   function Get_ActivePrinter
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uGlobal_Get_ActivePrinter);
   end Get_ActivePrinter;

   procedure Put_ActivePrinter
     (This : uGlobal_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uGlobal_Put_ActivePrinter,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ActivePrinter;

   function Get_Templates
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uGlobal_Get_Templates);
   end Get_Templates;

   function Get_CustomizationContext
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uGlobal_Get_CustomizationContext);
   end Get_CustomizationContext;

   procedure Put_CustomizationContext
     (This : uGlobal_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uGlobal_Put_CustomizationContext,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_CustomizationContext;

   function Get_KeyBindings
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uGlobal_Get_KeyBindings);
   end Get_KeyBindings;

   function Get_KeysBoundTo
     (This             : uGlobal_Type;
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
         uGlobal_Get_KeysBoundTo,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => CommandParameter,
          2 => Command,
          3 => KeyCategory),
         Free);
   end Get_KeysBoundTo;

   function Get_FindKey
     (This     : uGlobal_Type;
      KeyCode  : GNATCOM.Types.VARIANT;
      KeyCode2 : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get
        (This,
         uGlobal_Get_FindKey,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => KeyCode2,
          2 => KeyCode),
         Free);
   end Get_FindKey;

   function Get_Options
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uGlobal_Get_Options);
   end Get_Options;

   function Get_CustomDictionaries
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uGlobal_Get_CustomDictionaries);
   end Get_CustomDictionaries;

   procedure Put_StatusBar
     (This : uGlobal_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uGlobal_Put_StatusBar,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_StatusBar;

   function Get_ShowVisualBasicEditor
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uGlobal_Get_ShowVisualBasicEditor);
   end Get_ShowVisualBasicEditor;

   procedure Put_ShowVisualBasicEditor
     (This : uGlobal_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uGlobal_Put_ShowVisualBasicEditor,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ShowVisualBasicEditor;

   function Get_IsObjectValid
     (This   : uGlobal_Type;
      Object : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get
        (This,
         uGlobal_Get_IsObjectValid,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Object),
         Free);
   end Get_IsObjectValid;

   function Get_HangulHanjaDictionaries
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uGlobal_Get_HangulHanjaDictionaries);
   end Get_HangulHanjaDictionaries;

   function Repeat
     (This  : uGlobal_Type;
      Times : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uGlobal_Repeat,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Times),
         Free);
   end Repeat;

   procedure DDEExecute
     (This    : uGlobal_Type;
      Channel : GNATCOM.Types.VARIANT;
      Command : GNATCOM.Types.VARIANT;
      Free    : Boolean := True)
   is
   begin
      Invoke
        (This,
         uGlobal_DDEExecute,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Command,
          2 => Channel),
         Free);
   end DDEExecute;

   function DDEInitiate
     (This  : uGlobal_Type;
      App   : GNATCOM.Types.VARIANT;
      Topic : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uGlobal_DDEInitiate,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Topic,
          2 => App),
         Free);
   end DDEInitiate;

   procedure DDEPoke
     (This    : uGlobal_Type;
      Channel : GNATCOM.Types.VARIANT;
      Item    : GNATCOM.Types.VARIANT;
      Data    : GNATCOM.Types.VARIANT;
      Free    : Boolean := True)
   is
   begin
      Invoke
        (This,
         uGlobal_DDEPoke,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Data,
          2 => Item,
          3 => Channel),
         Free);
   end DDEPoke;

   function DDERequest
     (This    : uGlobal_Type;
      Channel : GNATCOM.Types.VARIANT;
      Item    : GNATCOM.Types.VARIANT;
      Free    : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uGlobal_DDERequest,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Item,
          2 => Channel),
         Free);
   end DDERequest;

   procedure DDETerminate
     (This    : uGlobal_Type;
      Channel : GNATCOM.Types.VARIANT;
      Free    : Boolean := True)
   is
   begin
      Invoke
        (This,
         uGlobal_DDETerminate,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Channel),
         Free);
   end DDETerminate;

   procedure DDETerminateAll
     (This : uGlobal_Type)
   is
   begin
      Invoke (This, uGlobal_DDETerminateAll);
   end DDETerminateAll;

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
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uGlobal_BuildKeyCode,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Arg4,
          2 => Arg3,
          3 => Arg2,
          4 => Arg1),
         Free);
   end BuildKeyCode;

   function KeyString
     (This     : uGlobal_Type;
      KeyCode  : GNATCOM.Types.VARIANT;
      KeyCode2 : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uGlobal_KeyString,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => KeyCode2,
          2 => KeyCode),
         Free);
   end KeyString;

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
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uGlobal_CheckSpelling,
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
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uGlobal_GetSpellingSuggestions,
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

   procedure Help
     (This     : uGlobal_Type;
      HelpType : GNATCOM.Types.VARIANT;
      Free     : Boolean := True)
   is
   begin
      Invoke
        (This,
         uGlobal_Help,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => HelpType),
         Free);
   end Help;

   function NewWindow
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke (This, uGlobal_NewWindow);
   end NewWindow;

   function CleanString
     (This   : uGlobal_Type;
      String : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uGlobal_CleanString,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => String),
         Free);
   end CleanString;

   procedure ChangeFileOpenDirectory
     (This : uGlobal_Type;
      Path : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Invoke
        (This,
         uGlobal_ChangeFileOpenDirectory,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Path),
         Free);
   end ChangeFileOpenDirectory;

   function InchesToPoints
     (This   : uGlobal_Type;
      Inches : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uGlobal_InchesToPoints,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Inches),
         Free);
   end InchesToPoints;

   function CentimetersToPoints
     (This        : uGlobal_Type;
      Centimeters : GNATCOM.Types.VARIANT;
      Free        : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uGlobal_CentimetersToPoints,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Centimeters),
         Free);
   end CentimetersToPoints;

   function MillimetersToPoints
     (This        : uGlobal_Type;
      Millimeters : GNATCOM.Types.VARIANT;
      Free        : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uGlobal_MillimetersToPoints,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Millimeters),
         Free);
   end MillimetersToPoints;

   function PicasToPoints
     (This  : uGlobal_Type;
      Picas : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uGlobal_PicasToPoints,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Picas),
         Free);
   end PicasToPoints;

   function LinesToPoints
     (This  : uGlobal_Type;
      Lines : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uGlobal_LinesToPoints,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Lines),
         Free);
   end LinesToPoints;

   function PointsToInches
     (This   : uGlobal_Type;
      Points : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uGlobal_PointsToInches,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Points),
         Free);
   end PointsToInches;

   function PointsToCentimeters
     (This   : uGlobal_Type;
      Points : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uGlobal_PointsToCentimeters,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Points),
         Free);
   end PointsToCentimeters;

   function PointsToMillimeters
     (This   : uGlobal_Type;
      Points : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uGlobal_PointsToMillimeters,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Points),
         Free);
   end PointsToMillimeters;

   function PointsToPicas
     (This   : uGlobal_Type;
      Points : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uGlobal_PointsToPicas,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Points),
         Free);
   end PointsToPicas;

   function PointsToLines
     (This   : uGlobal_Type;
      Points : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uGlobal_PointsToLines,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Points),
         Free);
   end PointsToLines;

   function PointsToPixels
     (This      : uGlobal_Type;
      Points    : GNATCOM.Types.VARIANT;
      fVertical : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free      : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uGlobal_PointsToPixels,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => fVertical,
          2 => Points),
         Free);
   end PointsToPixels;

   function PixelsToPoints
     (This      : uGlobal_Type;
      Pixels    : GNATCOM.Types.VARIANT;
      fVertical : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free      : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uGlobal_PixelsToPoints,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => fVertical,
          2 => Pixels),
         Free);
   end PixelsToPoints;

   function Get_LanguageSettings
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uGlobal_Get_LanguageSettings);
   end Get_LanguageSettings;

   function Get_AnswerWizard
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uGlobal_Get_AnswerWizard);
   end Get_AnswerWizard;

   function Get_AutoCorrectEmail
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uGlobal_Get_AutoCorrectEmail);
   end Get_AutoCorrectEmail;

end winword.uGlobal_Object;

