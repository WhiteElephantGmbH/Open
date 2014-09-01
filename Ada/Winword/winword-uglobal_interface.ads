with GNATCOM.Dispinterface;

package winword.uGlobal_Interface is

   type uGlobal_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out uGlobal_Type);

   function Pointer (This : uGlobal_Type)
     return Pointer_To_uGlobal;

   procedure Attach (This    : in out uGlobal_Type;
                     Pointer : in     Pointer_To_uGlobal);

   function Get_Application
     (This : uGlobal_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : uGlobal_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : uGlobal_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Name
     (This : uGlobal_Type)
     return GNATCOM.Types.BSTR;

   function Get_Documents
     (This : uGlobal_Type)
     return Pointer_To_Documents;

   function Get_Windows
     (This : uGlobal_Type)
     return Pointer_To_Windows;

   function Get_ActiveDocument
     (This : uGlobal_Type)
     return Pointer_To_uDocument;

   function Get_ActiveWindow
     (This : uGlobal_Type)
     return Pointer_To_Window;

   function Get_Selection
     (This : uGlobal_Type)
     return Pointer_To_Selection;

   function Get_WordBasic
     (This : uGlobal_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_PrintPreview
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_PrintPreview
     (This : uGlobal_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_RecentFiles
     (This : uGlobal_Type)
     return Pointer_To_RecentFiles;

   function Get_NormalTemplate
     (This : uGlobal_Type)
     return Pointer_To_Template;

   function Get_System
     (This : uGlobal_Type)
     return Pointer_To_System;

   function Get_AutoCorrect
     (This : uGlobal_Type)
     return Pointer_To_AutoCorrect;

   function Get_FontNames
     (This : uGlobal_Type)
     return Pointer_To_FontNames;

   function Get_LandscapeFontNames
     (This : uGlobal_Type)
     return Pointer_To_FontNames;

   function Get_PortraitFontNames
     (This : uGlobal_Type)
     return Pointer_To_FontNames;

   function Get_Languages
     (This : uGlobal_Type)
     return Pointer_To_Languages;

   function Get_Assistant
     (This : uGlobal_Type)
     return Pointer_To_Assistant;

   function Get_FileConverters
     (This : uGlobal_Type)
     return Pointer_To_FileConverters;

   function Get_Dialogs
     (This : uGlobal_Type)
     return Pointer_To_Dialogs;

   function Get_CaptionLabels
     (This : uGlobal_Type)
     return Pointer_To_CaptionLabels;

   function Get_AutoCaptions
     (This : uGlobal_Type)
     return Pointer_To_AutoCaptions;

   function Get_AddIns
     (This : uGlobal_Type)
     return Pointer_To_AddIns;

   function Get_Tasks
     (This : uGlobal_Type)
     return Pointer_To_Tasks;

   function Get_MacroContainer
     (This : uGlobal_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_CommandBars
     (This : uGlobal_Type)
     return Pointer_To_uCommandBars;

   function Get_SynonymInfo
     (This       : uGlobal_Type;
      Word       : GNATCOM.Types.BSTR;
      LanguageID : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Free       : Boolean := True)
     return Pointer_To_SynonymInfo;

   function Get_VBE
     (This : uGlobal_Type)
     return Pointer_To_VBE;

   function Get_ListGalleries
     (This : uGlobal_Type)
     return Pointer_To_ListGalleries;

   function Get_ActivePrinter
     (This : uGlobal_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_ActivePrinter
     (This : uGlobal_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_Templates
     (This : uGlobal_Type)
     return Pointer_To_Templates;

   function Get_CustomizationContext
     (This : uGlobal_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   procedure Put_CustomizationContext
     (This : uGlobal_Type;
      prop : GNATCOM.Types.Pointer_To_IDispatch);

   function Get_KeyBindings
     (This : uGlobal_Type)
     return Pointer_To_KeyBindings;

   function Get_KeysBoundTo
     (This             : uGlobal_Type;
      KeyCategory      : WdKeyCategory;
      Command          : GNATCOM.Types.BSTR;
      CommandParameter : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Free             : Boolean := True)
     return Pointer_To_KeysBoundTo;

   function Get_FindKey
     (This     : uGlobal_Type;
      KeyCode  : Interfaces.C.long;
      KeyCode2 : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_KeyBinding;

   function Get_Options
     (This : uGlobal_Type)
     return Pointer_To_Options;

   function Get_CustomDictionaries
     (This : uGlobal_Type)
     return Pointer_To_Dictionaries;

   procedure Put_StatusBar
     (This : uGlobal_Type;
      P1   : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_ShowVisualBasicEditor
     (This : uGlobal_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_ShowVisualBasicEditor
     (This : uGlobal_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_IsObjectValid
     (This   : uGlobal_Type;
      Object : GNATCOM.Types.Pointer_To_IDispatch)
     return GNATCOM.Types.VARIANT_BOOL;

   function Get_HangulHanjaDictionaries
     (This : uGlobal_Type)
     return Pointer_To_HangulHanjaConversionDictionaries;

   function Repeat
     (This  : uGlobal_Type;
      Times : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure DDEExecute
     (This    : uGlobal_Type;
      Channel : Interfaces.C.long;
      Command : GNATCOM.Types.BSTR;
      Free    : Boolean := True);

   function DDEInitiate
     (This  : uGlobal_Type;
      App   : GNATCOM.Types.BSTR;
      Topic : GNATCOM.Types.BSTR;
      Free  : Boolean := True)
     return Interfaces.C.long;

   procedure DDEPoke
     (This    : uGlobal_Type;
      Channel : Interfaces.C.long;
      Item    : GNATCOM.Types.BSTR;
      Data    : GNATCOM.Types.BSTR;
      Free    : Boolean := True);

   function DDERequest
     (This    : uGlobal_Type;
      Channel : Interfaces.C.long;
      Item    : GNATCOM.Types.BSTR;
      Free    : Boolean := True)
     return GNATCOM.Types.BSTR;

   procedure DDETerminate
     (This    : uGlobal_Type;
      Channel : Interfaces.C.long);

   procedure DDETerminateAll
     (This : uGlobal_Type);

   function BuildKeyCode
     (This : uGlobal_Type;
      Arg1 : WdKey;
      Arg2 : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Arg3 : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Arg4 : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Interfaces.C.long;

   function KeyString
     (This     : uGlobal_Type;
      KeyCode  : Interfaces.C.long;
      KeyCode2 : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return GNATCOM.Types.BSTR;

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
     return GNATCOM.Types.VARIANT_BOOL;

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
     return Pointer_To_SpellingSuggestions;

   procedure Help
     (This     : uGlobal_Type;
      HelpType : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   function NewWindow
     (This : uGlobal_Type)
     return Pointer_To_Window;

   function CleanString
     (This   : uGlobal_Type;
      String : GNATCOM.Types.BSTR;
      Free   : Boolean := True)
     return GNATCOM.Types.BSTR;

   procedure ChangeFileOpenDirectory
     (This : uGlobal_Type;
      Path : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function InchesToPoints
     (This   : uGlobal_Type;
      Inches : Interfaces.C.C_float)
     return Interfaces.C.C_float;

   function CentimetersToPoints
     (This        : uGlobal_Type;
      Centimeters : Interfaces.C.C_float)
     return Interfaces.C.C_float;

   function MillimetersToPoints
     (This        : uGlobal_Type;
      Millimeters : Interfaces.C.C_float)
     return Interfaces.C.C_float;

   function PicasToPoints
     (This  : uGlobal_Type;
      Picas : Interfaces.C.C_float)
     return Interfaces.C.C_float;

   function LinesToPoints
     (This  : uGlobal_Type;
      Lines : Interfaces.C.C_float)
     return Interfaces.C.C_float;

   function PointsToInches
     (This   : uGlobal_Type;
      Points : Interfaces.C.C_float)
     return Interfaces.C.C_float;

   function PointsToCentimeters
     (This   : uGlobal_Type;
      Points : Interfaces.C.C_float)
     return Interfaces.C.C_float;

   function PointsToMillimeters
     (This   : uGlobal_Type;
      Points : Interfaces.C.C_float)
     return Interfaces.C.C_float;

   function PointsToPicas
     (This   : uGlobal_Type;
      Points : Interfaces.C.C_float)
     return Interfaces.C.C_float;

   function PointsToLines
     (This   : uGlobal_Type;
      Points : Interfaces.C.C_float)
     return Interfaces.C.C_float;

   function PointsToPixels
     (This      : uGlobal_Type;
      Points    : Interfaces.C.C_float;
      fVertical : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Interfaces.C.C_float;

   function PixelsToPoints
     (This      : uGlobal_Type;
      Pixels    : Interfaces.C.C_float;
      fVertical : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Interfaces.C.C_float;

   function Get_LanguageSettings
     (This : uGlobal_Type)
     return Pointer_To_LanguageSettings;

   function Get_AnswerWizard
     (This : uGlobal_Type)
     return Pointer_To_AnswerWizard;

   function Get_AutoCorrectEmail
     (This : uGlobal_Type)
     return Pointer_To_AutoCorrect;

end winword.uGlobal_Interface;

