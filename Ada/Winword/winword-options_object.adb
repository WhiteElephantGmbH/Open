package body winword.Options_Object is

   function Get_Application
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_Parent);
   end Get_Parent;

   function Get_AllowAccentedUppercase
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_AllowAccentedUppercase);
   end Get_AllowAccentedUppercase;

   procedure Put_AllowAccentedUppercase
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_AllowAccentedUppercase,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AllowAccentedUppercase;

   function Get_WPHelp
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_WPHelp);
   end Get_WPHelp;

   procedure Put_WPHelp
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_WPHelp,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_WPHelp;

   function Get_WPDocNavKeys
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_WPDocNavKeys);
   end Get_WPDocNavKeys;

   procedure Put_WPDocNavKeys
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_WPDocNavKeys,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_WPDocNavKeys;

   function Get_Pagination
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_Pagination);
   end Get_Pagination;

   procedure Put_Pagination
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_Pagination,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Pagination;

   function Get_BlueScreen
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_BlueScreen);
   end Get_BlueScreen;

   procedure Put_BlueScreen
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_BlueScreen,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_BlueScreen;

   function Get_EnableSound
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_EnableSound);
   end Get_EnableSound;

   procedure Put_EnableSound
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_EnableSound,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_EnableSound;

   function Get_ConfirmConversions
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_ConfirmConversions);
   end Get_ConfirmConversions;

   procedure Put_ConfirmConversions
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_ConfirmConversions,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ConfirmConversions;

   function Get_UpdateLinksAtOpen
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_UpdateLinksAtOpen);
   end Get_UpdateLinksAtOpen;

   procedure Put_UpdateLinksAtOpen
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_UpdateLinksAtOpen,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_UpdateLinksAtOpen;

   function Get_SendMailAttach
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_SendMailAttach);
   end Get_SendMailAttach;

   procedure Put_SendMailAttach
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_SendMailAttach,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_SendMailAttach;

   function Get_MeasurementUnit
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_MeasurementUnit);
   end Get_MeasurementUnit;

   procedure Put_MeasurementUnit
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_MeasurementUnit,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_MeasurementUnit;

   function Get_ButtonFieldClicks
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_ButtonFieldClicks);
   end Get_ButtonFieldClicks;

   procedure Put_ButtonFieldClicks
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_ButtonFieldClicks,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ButtonFieldClicks;

   function Get_ShortMenuNames
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_ShortMenuNames);
   end Get_ShortMenuNames;

   procedure Put_ShortMenuNames
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_ShortMenuNames,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ShortMenuNames;

   function Get_RTFInClipboard
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_RTFInClipboard);
   end Get_RTFInClipboard;

   procedure Put_RTFInClipboard
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_RTFInClipboard,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_RTFInClipboard;

   function Get_UpdateFieldsAtPrint
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_UpdateFieldsAtPrint);
   end Get_UpdateFieldsAtPrint;

   procedure Put_UpdateFieldsAtPrint
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_UpdateFieldsAtPrint,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_UpdateFieldsAtPrint;

   function Get_PrintProperties
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_PrintProperties);
   end Get_PrintProperties;

   procedure Put_PrintProperties
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_PrintProperties,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_PrintProperties;

   function Get_PrintFieldCodes
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_PrintFieldCodes);
   end Get_PrintFieldCodes;

   procedure Put_PrintFieldCodes
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_PrintFieldCodes,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_PrintFieldCodes;

   function Get_PrintComments
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_PrintComments);
   end Get_PrintComments;

   procedure Put_PrintComments
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_PrintComments,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_PrintComments;

   function Get_PrintHiddenText
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_PrintHiddenText);
   end Get_PrintHiddenText;

   procedure Put_PrintHiddenText
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_PrintHiddenText,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_PrintHiddenText;

   function Get_EnvelopeFeederInstalled
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_EnvelopeFeederInstalled);
   end Get_EnvelopeFeederInstalled;

   function Get_UpdateLinksAtPrint
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_UpdateLinksAtPrint);
   end Get_UpdateLinksAtPrint;

   procedure Put_UpdateLinksAtPrint
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_UpdateLinksAtPrint,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_UpdateLinksAtPrint;

   function Get_PrintBackground
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_PrintBackground);
   end Get_PrintBackground;

   procedure Put_PrintBackground
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_PrintBackground,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_PrintBackground;

   function Get_PrintDrawingObjects
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_PrintDrawingObjects);
   end Get_PrintDrawingObjects;

   procedure Put_PrintDrawingObjects
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_PrintDrawingObjects,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_PrintDrawingObjects;

   function Get_DefaultTray
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_DefaultTray);
   end Get_DefaultTray;

   procedure Put_DefaultTray
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_DefaultTray,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DefaultTray;

   function Get_DefaultTrayID
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_DefaultTrayID);
   end Get_DefaultTrayID;

   procedure Put_DefaultTrayID
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_DefaultTrayID,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DefaultTrayID;

   function Get_CreateBackup
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_CreateBackup);
   end Get_CreateBackup;

   procedure Put_CreateBackup
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_CreateBackup,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_CreateBackup;

   function Get_AllowFastSave
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_AllowFastSave);
   end Get_AllowFastSave;

   procedure Put_AllowFastSave
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_AllowFastSave,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AllowFastSave;

   function Get_SavePropertiesPrompt
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_SavePropertiesPrompt);
   end Get_SavePropertiesPrompt;

   procedure Put_SavePropertiesPrompt
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_SavePropertiesPrompt,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_SavePropertiesPrompt;

   function Get_SaveNormalPrompt
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_SaveNormalPrompt);
   end Get_SaveNormalPrompt;

   procedure Put_SaveNormalPrompt
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_SaveNormalPrompt,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_SaveNormalPrompt;

   function Get_SaveInterval
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_SaveInterval);
   end Get_SaveInterval;

   procedure Put_SaveInterval
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_SaveInterval,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_SaveInterval;

   function Get_BackgroundSave
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_BackgroundSave);
   end Get_BackgroundSave;

   procedure Put_BackgroundSave
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_BackgroundSave,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_BackgroundSave;

   function Get_InsertedTextMark
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_InsertedTextMark);
   end Get_InsertedTextMark;

   procedure Put_InsertedTextMark
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_InsertedTextMark,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_InsertedTextMark;

   function Get_DeletedTextMark
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_DeletedTextMark);
   end Get_DeletedTextMark;

   procedure Put_DeletedTextMark
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_DeletedTextMark,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DeletedTextMark;

   function Get_RevisedLinesMark
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_RevisedLinesMark);
   end Get_RevisedLinesMark;

   procedure Put_RevisedLinesMark
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_RevisedLinesMark,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_RevisedLinesMark;

   function Get_InsertedTextColor
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_InsertedTextColor);
   end Get_InsertedTextColor;

   procedure Put_InsertedTextColor
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_InsertedTextColor,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_InsertedTextColor;

   function Get_DeletedTextColor
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_DeletedTextColor);
   end Get_DeletedTextColor;

   procedure Put_DeletedTextColor
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_DeletedTextColor,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DeletedTextColor;

   function Get_RevisedLinesColor
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_RevisedLinesColor);
   end Get_RevisedLinesColor;

   procedure Put_RevisedLinesColor
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_RevisedLinesColor,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_RevisedLinesColor;

   function Get_DefaultFilePath
     (This : Options_Type;
      Path : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get
        (This,
         Options_Get_DefaultFilePath,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Path),
         Free);
   end Get_DefaultFilePath;

   procedure Put_DefaultFilePath
     (This : Options_Type;
      Path : GNATCOM.Types.VARIANT;
      P2   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_DefaultFilePath,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P2,
          2 => Path),
         Free);
   end Put_DefaultFilePath;

   function Get_Overtype
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_Overtype);
   end Get_Overtype;

   procedure Put_Overtype
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_Overtype,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Overtype;

   function Get_ReplaceSelection
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_ReplaceSelection);
   end Get_ReplaceSelection;

   procedure Put_ReplaceSelection
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_ReplaceSelection,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ReplaceSelection;

   function Get_AllowDragAndDrop
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_AllowDragAndDrop);
   end Get_AllowDragAndDrop;

   procedure Put_AllowDragAndDrop
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_AllowDragAndDrop,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AllowDragAndDrop;

   function Get_AutoWordSelection
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_AutoWordSelection);
   end Get_AutoWordSelection;

   procedure Put_AutoWordSelection
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_AutoWordSelection,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AutoWordSelection;

   function Get_INSKeyForPaste
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_INSKeyForPaste);
   end Get_INSKeyForPaste;

   procedure Put_INSKeyForPaste
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_INSKeyForPaste,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_INSKeyForPaste;

   function Get_SmartCutPaste
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_SmartCutPaste);
   end Get_SmartCutPaste;

   procedure Put_SmartCutPaste
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_SmartCutPaste,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_SmartCutPaste;

   function Get_TabIndentKey
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_TabIndentKey);
   end Get_TabIndentKey;

   procedure Put_TabIndentKey
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_TabIndentKey,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_TabIndentKey;

   function Get_PictureEditor
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_PictureEditor);
   end Get_PictureEditor;

   procedure Put_PictureEditor
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_PictureEditor,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_PictureEditor;

   function Get_AnimateScreenMovements
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_AnimateScreenMovements);
   end Get_AnimateScreenMovements;

   procedure Put_AnimateScreenMovements
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_AnimateScreenMovements,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AnimateScreenMovements;

   function Get_VirusProtection
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_VirusProtection);
   end Get_VirusProtection;

   procedure Put_VirusProtection
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_VirusProtection,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_VirusProtection;

   function Get_RevisedPropertiesMark
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_RevisedPropertiesMark);
   end Get_RevisedPropertiesMark;

   procedure Put_RevisedPropertiesMark
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_RevisedPropertiesMark,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_RevisedPropertiesMark;

   function Get_RevisedPropertiesColor
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_RevisedPropertiesColor);
   end Get_RevisedPropertiesColor;

   procedure Put_RevisedPropertiesColor
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_RevisedPropertiesColor,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_RevisedPropertiesColor;

   function Get_SnapToGrid
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_SnapToGrid);
   end Get_SnapToGrid;

   procedure Put_SnapToGrid
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_SnapToGrid,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_SnapToGrid;

   function Get_SnapToShapes
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_SnapToShapes);
   end Get_SnapToShapes;

   procedure Put_SnapToShapes
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_SnapToShapes,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_SnapToShapes;

   function Get_GridDistanceHorizontal
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_GridDistanceHorizontal);
   end Get_GridDistanceHorizontal;

   procedure Put_GridDistanceHorizontal
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_GridDistanceHorizontal,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_GridDistanceHorizontal;

   function Get_GridDistanceVertical
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_GridDistanceVertical);
   end Get_GridDistanceVertical;

   procedure Put_GridDistanceVertical
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_GridDistanceVertical,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_GridDistanceVertical;

   function Get_GridOriginHorizontal
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_GridOriginHorizontal);
   end Get_GridOriginHorizontal;

   procedure Put_GridOriginHorizontal
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_GridOriginHorizontal,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_GridOriginHorizontal;

   function Get_GridOriginVertical
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_GridOriginVertical);
   end Get_GridOriginVertical;

   procedure Put_GridOriginVertical
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_GridOriginVertical,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_GridOriginVertical;

   function Get_InlineConversion
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_InlineConversion);
   end Get_InlineConversion;

   procedure Put_InlineConversion
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_InlineConversion,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_InlineConversion;

   function Get_IMEAutomaticControl
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_IMEAutomaticControl);
   end Get_IMEAutomaticControl;

   procedure Put_IMEAutomaticControl
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_IMEAutomaticControl,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_IMEAutomaticControl;

   function Get_AutoFormatApplyHeadings
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_AutoFormatApplyHeadings);
   end Get_AutoFormatApplyHeadings;

   procedure Put_AutoFormatApplyHeadings
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_AutoFormatApplyHeadings,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AutoFormatApplyHeadings;

   function Get_AutoFormatApplyLists
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_AutoFormatApplyLists);
   end Get_AutoFormatApplyLists;

   procedure Put_AutoFormatApplyLists
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_AutoFormatApplyLists,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AutoFormatApplyLists;

   function Get_AutoFormatApplyBulletedLists
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_AutoFormatApplyBulletedLists);
   end Get_AutoFormatApplyBulletedLists;

   procedure Put_AutoFormatApplyBulletedLists
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_AutoFormatApplyBulletedLists,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AutoFormatApplyBulletedLists;

   function Get_AutoFormatApplyOtherParas
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_AutoFormatApplyOtherParas);
   end Get_AutoFormatApplyOtherParas;

   procedure Put_AutoFormatApplyOtherParas
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_AutoFormatApplyOtherParas,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AutoFormatApplyOtherParas;

   function Get_AutoFormatReplaceQuotes
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_AutoFormatReplaceQuotes);
   end Get_AutoFormatReplaceQuotes;

   procedure Put_AutoFormatReplaceQuotes
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_AutoFormatReplaceQuotes,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AutoFormatReplaceQuotes;

   function Get_AutoFormatReplaceSymbols
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_AutoFormatReplaceSymbols);
   end Get_AutoFormatReplaceSymbols;

   procedure Put_AutoFormatReplaceSymbols
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_AutoFormatReplaceSymbols,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AutoFormatReplaceSymbols;

   function Get_AutoFormatReplaceOrdinals
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_AutoFormatReplaceOrdinals);
   end Get_AutoFormatReplaceOrdinals;

   procedure Put_AutoFormatReplaceOrdinals
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_AutoFormatReplaceOrdinals,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AutoFormatReplaceOrdinals;

   function Get_AutoFormatReplaceFractions
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_AutoFormatReplaceFractions);
   end Get_AutoFormatReplaceFractions;

   procedure Put_AutoFormatReplaceFractions
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_AutoFormatReplaceFractions,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AutoFormatReplaceFractions;

   function Get_AutoFormatReplacePlainTextEmphasis
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_AutoFormatReplacePlainTextEmphasis);
   end Get_AutoFormatReplacePlainTextEmphasis;

   procedure Put_AutoFormatReplacePlainTextEmphasis
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_AutoFormatReplacePlainTextEmphasis,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AutoFormatReplacePlainTextEmphasis;

   function Get_AutoFormatPreserveStyles
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_AutoFormatPreserveStyles);
   end Get_AutoFormatPreserveStyles;

   procedure Put_AutoFormatPreserveStyles
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_AutoFormatPreserveStyles,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AutoFormatPreserveStyles;

   function Get_AutoFormatAsYouTypeApplyHeadings
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_AutoFormatAsYouTypeApplyHeadings);
   end Get_AutoFormatAsYouTypeApplyHeadings;

   procedure Put_AutoFormatAsYouTypeApplyHeadings
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_AutoFormatAsYouTypeApplyHeadings,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AutoFormatAsYouTypeApplyHeadings;

   function Get_AutoFormatAsYouTypeApplyBorders
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_AutoFormatAsYouTypeApplyBorders);
   end Get_AutoFormatAsYouTypeApplyBorders;

   procedure Put_AutoFormatAsYouTypeApplyBorders
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_AutoFormatAsYouTypeApplyBorders,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AutoFormatAsYouTypeApplyBorders;

   function Get_AutoFormatAsYouTypeApplyBulletedLists
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_AutoFormatAsYouTypeApplyBulletedLists);
   end Get_AutoFormatAsYouTypeApplyBulletedLists;

   procedure Put_AutoFormatAsYouTypeApplyBulletedLists
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_AutoFormatAsYouTypeApplyBulletedLists,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AutoFormatAsYouTypeApplyBulletedLists;

   function Get_AutoFormatAsYouTypeApplyNumberedLists
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_AutoFormatAsYouTypeApplyNumberedLists);
   end Get_AutoFormatAsYouTypeApplyNumberedLists;

   procedure Put_AutoFormatAsYouTypeApplyNumberedLists
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_AutoFormatAsYouTypeApplyNumberedLists,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AutoFormatAsYouTypeApplyNumberedLists;

   function Get_AutoFormatAsYouTypeReplaceQuotes
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_AutoFormatAsYouTypeReplaceQuotes);
   end Get_AutoFormatAsYouTypeReplaceQuotes;

   procedure Put_AutoFormatAsYouTypeReplaceQuotes
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_AutoFormatAsYouTypeReplaceQuotes,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AutoFormatAsYouTypeReplaceQuotes;

   function Get_AutoFormatAsYouTypeReplaceSymbols
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_AutoFormatAsYouTypeReplaceSymbols);
   end Get_AutoFormatAsYouTypeReplaceSymbols;

   procedure Put_AutoFormatAsYouTypeReplaceSymbols
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_AutoFormatAsYouTypeReplaceSymbols,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AutoFormatAsYouTypeReplaceSymbols;

   function Get_AutoFormatAsYouTypeReplaceOrdinals
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_AutoFormatAsYouTypeReplaceOrdinals);
   end Get_AutoFormatAsYouTypeReplaceOrdinals;

   procedure Put_AutoFormatAsYouTypeReplaceOrdinals
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_AutoFormatAsYouTypeReplaceOrdinals,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AutoFormatAsYouTypeReplaceOrdinals;

   function Get_AutoFormatAsYouTypeReplaceFractions
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_AutoFormatAsYouTypeReplaceFractions);
   end Get_AutoFormatAsYouTypeReplaceFractions;

   procedure Put_AutoFormatAsYouTypeReplaceFractions
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_AutoFormatAsYouTypeReplaceFractions,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AutoFormatAsYouTypeReplaceFractions;

   function Get_AutoFormatAsYouTypeReplacePlainTextEmphasis
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_AutoFormatAsYouTypeReplacePlainTextEmphasis);
   end Get_AutoFormatAsYouTypeReplacePlainTextEmphasis;

   procedure Put_AutoFormatAsYouTypeReplacePlainTextEmphasis
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_AutoFormatAsYouTypeReplacePlainTextEmphasis,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AutoFormatAsYouTypeReplacePlainTextEmphasis;

   function Get_AutoFormatAsYouTypeFormatListItemBeginning
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_AutoFormatAsYouTypeFormatListItemBeginning);
   end Get_AutoFormatAsYouTypeFormatListItemBeginning;

   procedure Put_AutoFormatAsYouTypeFormatListItemBeginning
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_AutoFormatAsYouTypeFormatListItemBeginning,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AutoFormatAsYouTypeFormatListItemBeginning;

   function Get_AutoFormatAsYouTypeDefineStyles
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_AutoFormatAsYouTypeDefineStyles);
   end Get_AutoFormatAsYouTypeDefineStyles;

   procedure Put_AutoFormatAsYouTypeDefineStyles
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_AutoFormatAsYouTypeDefineStyles,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AutoFormatAsYouTypeDefineStyles;

   function Get_AutoFormatPlainTextWordMail
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_AutoFormatPlainTextWordMail);
   end Get_AutoFormatPlainTextWordMail;

   procedure Put_AutoFormatPlainTextWordMail
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_AutoFormatPlainTextWordMail,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AutoFormatPlainTextWordMail;

   function Get_AutoFormatAsYouTypeReplaceHyperlinks
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_AutoFormatAsYouTypeReplaceHyperlinks);
   end Get_AutoFormatAsYouTypeReplaceHyperlinks;

   procedure Put_AutoFormatAsYouTypeReplaceHyperlinks
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_AutoFormatAsYouTypeReplaceHyperlinks,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AutoFormatAsYouTypeReplaceHyperlinks;

   function Get_AutoFormatReplaceHyperlinks
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_AutoFormatReplaceHyperlinks);
   end Get_AutoFormatReplaceHyperlinks;

   procedure Put_AutoFormatReplaceHyperlinks
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_AutoFormatReplaceHyperlinks,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AutoFormatReplaceHyperlinks;

   function Get_DefaultHighlightColorIndex
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_DefaultHighlightColorIndex);
   end Get_DefaultHighlightColorIndex;

   procedure Put_DefaultHighlightColorIndex
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_DefaultHighlightColorIndex,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DefaultHighlightColorIndex;

   function Get_DefaultBorderLineStyle
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_DefaultBorderLineStyle);
   end Get_DefaultBorderLineStyle;

   procedure Put_DefaultBorderLineStyle
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_DefaultBorderLineStyle,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DefaultBorderLineStyle;

   function Get_CheckSpellingAsYouType
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_CheckSpellingAsYouType);
   end Get_CheckSpellingAsYouType;

   procedure Put_CheckSpellingAsYouType
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_CheckSpellingAsYouType,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_CheckSpellingAsYouType;

   function Get_CheckGrammarAsYouType
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_CheckGrammarAsYouType);
   end Get_CheckGrammarAsYouType;

   procedure Put_CheckGrammarAsYouType
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_CheckGrammarAsYouType,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_CheckGrammarAsYouType;

   function Get_IgnoreInternetAndFileAddresses
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_IgnoreInternetAndFileAddresses);
   end Get_IgnoreInternetAndFileAddresses;

   procedure Put_IgnoreInternetAndFileAddresses
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_IgnoreInternetAndFileAddresses,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_IgnoreInternetAndFileAddresses;

   function Get_ShowReadabilityStatistics
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_ShowReadabilityStatistics);
   end Get_ShowReadabilityStatistics;

   procedure Put_ShowReadabilityStatistics
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_ShowReadabilityStatistics,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ShowReadabilityStatistics;

   function Get_IgnoreUppercase
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_IgnoreUppercase);
   end Get_IgnoreUppercase;

   procedure Put_IgnoreUppercase
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_IgnoreUppercase,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_IgnoreUppercase;

   function Get_IgnoreMixedDigits
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_IgnoreMixedDigits);
   end Get_IgnoreMixedDigits;

   procedure Put_IgnoreMixedDigits
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_IgnoreMixedDigits,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_IgnoreMixedDigits;

   function Get_SuggestFromMainDictionaryOnly
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_SuggestFromMainDictionaryOnly);
   end Get_SuggestFromMainDictionaryOnly;

   procedure Put_SuggestFromMainDictionaryOnly
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_SuggestFromMainDictionaryOnly,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_SuggestFromMainDictionaryOnly;

   function Get_SuggestSpellingCorrections
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_SuggestSpellingCorrections);
   end Get_SuggestSpellingCorrections;

   procedure Put_SuggestSpellingCorrections
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_SuggestSpellingCorrections,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_SuggestSpellingCorrections;

   function Get_DefaultBorderLineWidth
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_DefaultBorderLineWidth);
   end Get_DefaultBorderLineWidth;

   procedure Put_DefaultBorderLineWidth
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_DefaultBorderLineWidth,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DefaultBorderLineWidth;

   function Get_CheckGrammarWithSpelling
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_CheckGrammarWithSpelling);
   end Get_CheckGrammarWithSpelling;

   procedure Put_CheckGrammarWithSpelling
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_CheckGrammarWithSpelling,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_CheckGrammarWithSpelling;

   function Get_DefaultOpenFormat
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_DefaultOpenFormat);
   end Get_DefaultOpenFormat;

   procedure Put_DefaultOpenFormat
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_DefaultOpenFormat,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DefaultOpenFormat;

   function Get_PrintDraft
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_PrintDraft);
   end Get_PrintDraft;

   procedure Put_PrintDraft
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_PrintDraft,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_PrintDraft;

   function Get_PrintReverse
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_PrintReverse);
   end Get_PrintReverse;

   procedure Put_PrintReverse
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_PrintReverse,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_PrintReverse;

   function Get_MapPaperSize
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_MapPaperSize);
   end Get_MapPaperSize;

   procedure Put_MapPaperSize
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_MapPaperSize,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_MapPaperSize;

   function Get_AutoFormatAsYouTypeApplyTables
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_AutoFormatAsYouTypeApplyTables);
   end Get_AutoFormatAsYouTypeApplyTables;

   procedure Put_AutoFormatAsYouTypeApplyTables
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_AutoFormatAsYouTypeApplyTables,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AutoFormatAsYouTypeApplyTables;

   function Get_AutoFormatApplyFirstIndents
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_AutoFormatApplyFirstIndents);
   end Get_AutoFormatApplyFirstIndents;

   procedure Put_AutoFormatApplyFirstIndents
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_AutoFormatApplyFirstIndents,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AutoFormatApplyFirstIndents;

   function Get_AutoFormatMatchParentheses
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_AutoFormatMatchParentheses);
   end Get_AutoFormatMatchParentheses;

   procedure Put_AutoFormatMatchParentheses
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_AutoFormatMatchParentheses,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AutoFormatMatchParentheses;

   function Get_AutoFormatReplaceFarEastDashes
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_AutoFormatReplaceFarEastDashes);
   end Get_AutoFormatReplaceFarEastDashes;

   procedure Put_AutoFormatReplaceFarEastDashes
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_AutoFormatReplaceFarEastDashes,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AutoFormatReplaceFarEastDashes;

   function Get_AutoFormatDeleteAutoSpaces
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_AutoFormatDeleteAutoSpaces);
   end Get_AutoFormatDeleteAutoSpaces;

   procedure Put_AutoFormatDeleteAutoSpaces
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_AutoFormatDeleteAutoSpaces,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AutoFormatDeleteAutoSpaces;

   function Get_AutoFormatAsYouTypeApplyFirstIndents
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_AutoFormatAsYouTypeApplyFirstIndents);
   end Get_AutoFormatAsYouTypeApplyFirstIndents;

   procedure Put_AutoFormatAsYouTypeApplyFirstIndents
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_AutoFormatAsYouTypeApplyFirstIndents,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AutoFormatAsYouTypeApplyFirstIndents;

   function Get_AutoFormatAsYouTypeApplyDates
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_AutoFormatAsYouTypeApplyDates);
   end Get_AutoFormatAsYouTypeApplyDates;

   procedure Put_AutoFormatAsYouTypeApplyDates
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_AutoFormatAsYouTypeApplyDates,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AutoFormatAsYouTypeApplyDates;

   function Get_AutoFormatAsYouTypeApplyClosings
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_AutoFormatAsYouTypeApplyClosings);
   end Get_AutoFormatAsYouTypeApplyClosings;

   procedure Put_AutoFormatAsYouTypeApplyClosings
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_AutoFormatAsYouTypeApplyClosings,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AutoFormatAsYouTypeApplyClosings;

   function Get_AutoFormatAsYouTypeMatchParentheses
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_AutoFormatAsYouTypeMatchParentheses);
   end Get_AutoFormatAsYouTypeMatchParentheses;

   procedure Put_AutoFormatAsYouTypeMatchParentheses
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_AutoFormatAsYouTypeMatchParentheses,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AutoFormatAsYouTypeMatchParentheses;

   function Get_AutoFormatAsYouTypeReplaceFarEastDashes
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_AutoFormatAsYouTypeReplaceFarEastDashes);
   end Get_AutoFormatAsYouTypeReplaceFarEastDashes;

   procedure Put_AutoFormatAsYouTypeReplaceFarEastDashes
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_AutoFormatAsYouTypeReplaceFarEastDashes,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AutoFormatAsYouTypeReplaceFarEastDashes;

   function Get_AutoFormatAsYouTypeDeleteAutoSpaces
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_AutoFormatAsYouTypeDeleteAutoSpaces);
   end Get_AutoFormatAsYouTypeDeleteAutoSpaces;

   procedure Put_AutoFormatAsYouTypeDeleteAutoSpaces
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_AutoFormatAsYouTypeDeleteAutoSpaces,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AutoFormatAsYouTypeDeleteAutoSpaces;

   function Get_AutoFormatAsYouTypeInsertClosings
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_AutoFormatAsYouTypeInsertClosings);
   end Get_AutoFormatAsYouTypeInsertClosings;

   procedure Put_AutoFormatAsYouTypeInsertClosings
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_AutoFormatAsYouTypeInsertClosings,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AutoFormatAsYouTypeInsertClosings;

   function Get_AutoFormatAsYouTypeAutoLetterWizard
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_AutoFormatAsYouTypeAutoLetterWizard);
   end Get_AutoFormatAsYouTypeAutoLetterWizard;

   procedure Put_AutoFormatAsYouTypeAutoLetterWizard
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_AutoFormatAsYouTypeAutoLetterWizard,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AutoFormatAsYouTypeAutoLetterWizard;

   function Get_AutoFormatAsYouTypeInsertOvers
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_AutoFormatAsYouTypeInsertOvers);
   end Get_AutoFormatAsYouTypeInsertOvers;

   procedure Put_AutoFormatAsYouTypeInsertOvers
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_AutoFormatAsYouTypeInsertOvers,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AutoFormatAsYouTypeInsertOvers;

   function Get_DisplayGridLines
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_DisplayGridLines);
   end Get_DisplayGridLines;

   procedure Put_DisplayGridLines
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_DisplayGridLines,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DisplayGridLines;

   function Get_MatchFuzzyCase
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_MatchFuzzyCase);
   end Get_MatchFuzzyCase;

   procedure Put_MatchFuzzyCase
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_MatchFuzzyCase,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_MatchFuzzyCase;

   function Get_MatchFuzzyByte
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_MatchFuzzyByte);
   end Get_MatchFuzzyByte;

   procedure Put_MatchFuzzyByte
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_MatchFuzzyByte,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_MatchFuzzyByte;

   function Get_MatchFuzzyHiragana
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_MatchFuzzyHiragana);
   end Get_MatchFuzzyHiragana;

   procedure Put_MatchFuzzyHiragana
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_MatchFuzzyHiragana,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_MatchFuzzyHiragana;

   function Get_MatchFuzzySmallKana
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_MatchFuzzySmallKana);
   end Get_MatchFuzzySmallKana;

   procedure Put_MatchFuzzySmallKana
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_MatchFuzzySmallKana,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_MatchFuzzySmallKana;

   function Get_MatchFuzzyDash
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_MatchFuzzyDash);
   end Get_MatchFuzzyDash;

   procedure Put_MatchFuzzyDash
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_MatchFuzzyDash,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_MatchFuzzyDash;

   function Get_MatchFuzzyIterationMark
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_MatchFuzzyIterationMark);
   end Get_MatchFuzzyIterationMark;

   procedure Put_MatchFuzzyIterationMark
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_MatchFuzzyIterationMark,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_MatchFuzzyIterationMark;

   function Get_MatchFuzzyKanji
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_MatchFuzzyKanji);
   end Get_MatchFuzzyKanji;

   procedure Put_MatchFuzzyKanji
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_MatchFuzzyKanji,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_MatchFuzzyKanji;

   function Get_MatchFuzzyOldKana
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_MatchFuzzyOldKana);
   end Get_MatchFuzzyOldKana;

   procedure Put_MatchFuzzyOldKana
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_MatchFuzzyOldKana,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_MatchFuzzyOldKana;

   function Get_MatchFuzzyProlongedSoundMark
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_MatchFuzzyProlongedSoundMark);
   end Get_MatchFuzzyProlongedSoundMark;

   procedure Put_MatchFuzzyProlongedSoundMark
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_MatchFuzzyProlongedSoundMark,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_MatchFuzzyProlongedSoundMark;

   function Get_MatchFuzzyDZ
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_MatchFuzzyDZ);
   end Get_MatchFuzzyDZ;

   procedure Put_MatchFuzzyDZ
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_MatchFuzzyDZ,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_MatchFuzzyDZ;

   function Get_MatchFuzzyBV
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_MatchFuzzyBV);
   end Get_MatchFuzzyBV;

   procedure Put_MatchFuzzyBV
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_MatchFuzzyBV,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_MatchFuzzyBV;

   function Get_MatchFuzzyTC
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_MatchFuzzyTC);
   end Get_MatchFuzzyTC;

   procedure Put_MatchFuzzyTC
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_MatchFuzzyTC,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_MatchFuzzyTC;

   function Get_MatchFuzzyHF
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_MatchFuzzyHF);
   end Get_MatchFuzzyHF;

   procedure Put_MatchFuzzyHF
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_MatchFuzzyHF,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_MatchFuzzyHF;

   function Get_MatchFuzzyZJ
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_MatchFuzzyZJ);
   end Get_MatchFuzzyZJ;

   procedure Put_MatchFuzzyZJ
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_MatchFuzzyZJ,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_MatchFuzzyZJ;

   function Get_MatchFuzzyAY
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_MatchFuzzyAY);
   end Get_MatchFuzzyAY;

   procedure Put_MatchFuzzyAY
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_MatchFuzzyAY,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_MatchFuzzyAY;

   function Get_MatchFuzzyKiKu
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_MatchFuzzyKiKu);
   end Get_MatchFuzzyKiKu;

   procedure Put_MatchFuzzyKiKu
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_MatchFuzzyKiKu,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_MatchFuzzyKiKu;

   function Get_MatchFuzzyPunctuation
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_MatchFuzzyPunctuation);
   end Get_MatchFuzzyPunctuation;

   procedure Put_MatchFuzzyPunctuation
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_MatchFuzzyPunctuation,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_MatchFuzzyPunctuation;

   function Get_MatchFuzzySpace
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_MatchFuzzySpace);
   end Get_MatchFuzzySpace;

   procedure Put_MatchFuzzySpace
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_MatchFuzzySpace,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_MatchFuzzySpace;

   function Get_ApplyFarEastFontsToAscii
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_ApplyFarEastFontsToAscii);
   end Get_ApplyFarEastFontsToAscii;

   procedure Put_ApplyFarEastFontsToAscii
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_ApplyFarEastFontsToAscii,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ApplyFarEastFontsToAscii;

   function Get_ConvertHighAnsiToFarEast
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_ConvertHighAnsiToFarEast);
   end Get_ConvertHighAnsiToFarEast;

   procedure Put_ConvertHighAnsiToFarEast
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_ConvertHighAnsiToFarEast,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ConvertHighAnsiToFarEast;

   function Get_PrintOddPagesInAscendingOrder
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_PrintOddPagesInAscendingOrder);
   end Get_PrintOddPagesInAscendingOrder;

   procedure Put_PrintOddPagesInAscendingOrder
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_PrintOddPagesInAscendingOrder,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_PrintOddPagesInAscendingOrder;

   function Get_PrintEvenPagesInAscendingOrder
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_PrintEvenPagesInAscendingOrder);
   end Get_PrintEvenPagesInAscendingOrder;

   procedure Put_PrintEvenPagesInAscendingOrder
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_PrintEvenPagesInAscendingOrder,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_PrintEvenPagesInAscendingOrder;

   function Get_DefaultBorderColorIndex
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_DefaultBorderColorIndex);
   end Get_DefaultBorderColorIndex;

   procedure Put_DefaultBorderColorIndex
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_DefaultBorderColorIndex,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DefaultBorderColorIndex;

   function Get_EnableMisusedWordsDictionary
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_EnableMisusedWordsDictionary);
   end Get_EnableMisusedWordsDictionary;

   procedure Put_EnableMisusedWordsDictionary
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_EnableMisusedWordsDictionary,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_EnableMisusedWordsDictionary;

   function Get_AllowCombinedAuxiliaryForms
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_AllowCombinedAuxiliaryForms);
   end Get_AllowCombinedAuxiliaryForms;

   procedure Put_AllowCombinedAuxiliaryForms
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_AllowCombinedAuxiliaryForms,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AllowCombinedAuxiliaryForms;

   function Get_HangulHanjaFastConversion
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_HangulHanjaFastConversion);
   end Get_HangulHanjaFastConversion;

   procedure Put_HangulHanjaFastConversion
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_HangulHanjaFastConversion,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_HangulHanjaFastConversion;

   function Get_CheckHangulEndings
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_CheckHangulEndings);
   end Get_CheckHangulEndings;

   procedure Put_CheckHangulEndings
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_CheckHangulEndings,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_CheckHangulEndings;

   function Get_EnableHangulHanjaRecentOrdering
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_EnableHangulHanjaRecentOrdering);
   end Get_EnableHangulHanjaRecentOrdering;

   procedure Put_EnableHangulHanjaRecentOrdering
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_EnableHangulHanjaRecentOrdering,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_EnableHangulHanjaRecentOrdering;

   function Get_MultipleWordConversionsMode
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_MultipleWordConversionsMode);
   end Get_MultipleWordConversionsMode;

   procedure Put_MultipleWordConversionsMode
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_MultipleWordConversionsMode,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_MultipleWordConversionsMode;

   procedure SetWPHelpOptions
     (This              : Options_Type;
      CommandKeyHelp    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      DocNavigationKeys : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      MouseSimulation   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      DemoGuidance      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      DemoSpeed         : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      HelpType          : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free              : Boolean := True)
   is
   begin
      Invoke
        (This,
         Options_SetWPHelpOptions,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => HelpType,
          2 => DemoSpeed,
          3 => DemoGuidance,
          4 => MouseSimulation,
          5 => DocNavigationKeys,
          6 => CommandKeyHelp),
         Free);
   end SetWPHelpOptions;

   function Get_DefaultBorderColor
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_DefaultBorderColor);
   end Get_DefaultBorderColor;

   procedure Put_DefaultBorderColor
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_DefaultBorderColor,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DefaultBorderColor;

   function Get_AllowPixelUnits
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_AllowPixelUnits);
   end Get_AllowPixelUnits;

   procedure Put_AllowPixelUnits
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_AllowPixelUnits,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AllowPixelUnits;

   function Get_UseCharacterUnit
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_UseCharacterUnit);
   end Get_UseCharacterUnit;

   procedure Put_UseCharacterUnit
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_UseCharacterUnit,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_UseCharacterUnit;

   function Get_AllowCompoundNounProcessing
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_AllowCompoundNounProcessing);
   end Get_AllowCompoundNounProcessing;

   procedure Put_AllowCompoundNounProcessing
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_AllowCompoundNounProcessing,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AllowCompoundNounProcessing;

   function Get_AutoKeyboardSwitching
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_AutoKeyboardSwitching);
   end Get_AutoKeyboardSwitching;

   procedure Put_AutoKeyboardSwitching
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_AutoKeyboardSwitching,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AutoKeyboardSwitching;

   function Get_DocumentViewDirection
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_DocumentViewDirection);
   end Get_DocumentViewDirection;

   procedure Put_DocumentViewDirection
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_DocumentViewDirection,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DocumentViewDirection;

   function Get_ArabicNumeral
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_ArabicNumeral);
   end Get_ArabicNumeral;

   procedure Put_ArabicNumeral
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_ArabicNumeral,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ArabicNumeral;

   function Get_MonthNames
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_MonthNames);
   end Get_MonthNames;

   procedure Put_MonthNames
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_MonthNames,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_MonthNames;

   function Get_CursorMovement
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_CursorMovement);
   end Get_CursorMovement;

   procedure Put_CursorMovement
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_CursorMovement,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_CursorMovement;

   function Get_VisualSelection
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_VisualSelection);
   end Get_VisualSelection;

   procedure Put_VisualSelection
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_VisualSelection,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_VisualSelection;

   function Get_ShowDiacritics
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_ShowDiacritics);
   end Get_ShowDiacritics;

   procedure Put_ShowDiacritics
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_ShowDiacritics,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ShowDiacritics;

   function Get_ShowControlCharacters
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_ShowControlCharacters);
   end Get_ShowControlCharacters;

   procedure Put_ShowControlCharacters
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_ShowControlCharacters,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ShowControlCharacters;

   function Get_AddControlCharacters
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_AddControlCharacters);
   end Get_AddControlCharacters;

   procedure Put_AddControlCharacters
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_AddControlCharacters,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AddControlCharacters;

   function Get_AddBiDirectionalMarksWhenSavingTextFile
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_AddBiDirectionalMarksWhenSavingTextFile);
   end Get_AddBiDirectionalMarksWhenSavingTextFile;

   procedure Put_AddBiDirectionalMarksWhenSavingTextFile
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_AddBiDirectionalMarksWhenSavingTextFile,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AddBiDirectionalMarksWhenSavingTextFile;

   function Get_StrictInitialAlefHamza
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_StrictInitialAlefHamza);
   end Get_StrictInitialAlefHamza;

   procedure Put_StrictInitialAlefHamza
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_StrictInitialAlefHamza,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_StrictInitialAlefHamza;

   function Get_StrictFinalYaa
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_StrictFinalYaa);
   end Get_StrictFinalYaa;

   procedure Put_StrictFinalYaa
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_StrictFinalYaa,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_StrictFinalYaa;

   function Get_HebrewMode
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_HebrewMode);
   end Get_HebrewMode;

   procedure Put_HebrewMode
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_HebrewMode,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_HebrewMode;

   function Get_ArabicMode
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_ArabicMode);
   end Get_ArabicMode;

   procedure Put_ArabicMode
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_ArabicMode,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ArabicMode;

   function Get_AllowClickAndTypeMouse
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_AllowClickAndTypeMouse);
   end Get_AllowClickAndTypeMouse;

   procedure Put_AllowClickAndTypeMouse
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_AllowClickAndTypeMouse,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AllowClickAndTypeMouse;

   function Get_UseGermanSpellingReform
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_UseGermanSpellingReform);
   end Get_UseGermanSpellingReform;

   procedure Put_UseGermanSpellingReform
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_UseGermanSpellingReform,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_UseGermanSpellingReform;

   function Get_InterpretHighAnsi
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_InterpretHighAnsi);
   end Get_InterpretHighAnsi;

   procedure Put_InterpretHighAnsi
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_InterpretHighAnsi,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_InterpretHighAnsi;

   function Get_AddHebDoubleQuote
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_AddHebDoubleQuote);
   end Get_AddHebDoubleQuote;

   procedure Put_AddHebDoubleQuote
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_AddHebDoubleQuote,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AddHebDoubleQuote;

   function Get_UseDiffDiacColor
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_UseDiffDiacColor);
   end Get_UseDiffDiacColor;

   procedure Put_UseDiffDiacColor
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_UseDiffDiacColor,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_UseDiffDiacColor;

   function Get_DiacriticColorVal
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_DiacriticColorVal);
   end Get_DiacriticColorVal;

   procedure Put_DiacriticColorVal
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_DiacriticColorVal,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DiacriticColorVal;

   function Get_OptimizeForWord97byDefault
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_OptimizeForWord97byDefault);
   end Get_OptimizeForWord97byDefault;

   procedure Put_OptimizeForWord97byDefault
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_OptimizeForWord97byDefault,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_OptimizeForWord97byDefault;

   function Get_LocalNetworkFile
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_LocalNetworkFile);
   end Get_LocalNetworkFile;

   procedure Put_LocalNetworkFile
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_LocalNetworkFile,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_LocalNetworkFile;

   function Get_TypeNReplace
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_TypeNReplace);
   end Get_TypeNReplace;

   procedure Put_TypeNReplace
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_TypeNReplace,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_TypeNReplace;

   function Get_SequenceCheck
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_SequenceCheck);
   end Get_SequenceCheck;

   procedure Put_SequenceCheck
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_SequenceCheck,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_SequenceCheck;

   function Get_BackgroundOpen
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_BackgroundOpen);
   end Get_BackgroundOpen;

   procedure Put_BackgroundOpen
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_BackgroundOpen,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_BackgroundOpen;

   function Get_DisableFeaturesbyDefault
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_DisableFeaturesbyDefault);
   end Get_DisableFeaturesbyDefault;

   procedure Put_DisableFeaturesbyDefault
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_DisableFeaturesbyDefault,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DisableFeaturesbyDefault;

   function Get_PasteAdjustWordSpacing
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_PasteAdjustWordSpacing);
   end Get_PasteAdjustWordSpacing;

   procedure Put_PasteAdjustWordSpacing
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_PasteAdjustWordSpacing,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_PasteAdjustWordSpacing;

   function Get_PasteAdjustParagraphSpacing
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_PasteAdjustParagraphSpacing);
   end Get_PasteAdjustParagraphSpacing;

   procedure Put_PasteAdjustParagraphSpacing
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_PasteAdjustParagraphSpacing,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_PasteAdjustParagraphSpacing;

   function Get_PasteAdjustTableFormatting
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_PasteAdjustTableFormatting);
   end Get_PasteAdjustTableFormatting;

   procedure Put_PasteAdjustTableFormatting
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_PasteAdjustTableFormatting,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_PasteAdjustTableFormatting;

   function Get_PasteSmartStyleBehavior
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_PasteSmartStyleBehavior);
   end Get_PasteSmartStyleBehavior;

   procedure Put_PasteSmartStyleBehavior
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_PasteSmartStyleBehavior,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_PasteSmartStyleBehavior;

   function Get_PasteMergeFromPPT
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_PasteMergeFromPPT);
   end Get_PasteMergeFromPPT;

   procedure Put_PasteMergeFromPPT
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_PasteMergeFromPPT,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_PasteMergeFromPPT;

   function Get_PasteMergeFromXL
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_PasteMergeFromXL);
   end Get_PasteMergeFromXL;

   procedure Put_PasteMergeFromXL
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_PasteMergeFromXL,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_PasteMergeFromXL;

   function Get_CtrlClickHyperlinkToOpen
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_CtrlClickHyperlinkToOpen);
   end Get_CtrlClickHyperlinkToOpen;

   procedure Put_CtrlClickHyperlinkToOpen
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_CtrlClickHyperlinkToOpen,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_CtrlClickHyperlinkToOpen;

   function Get_PictureWrapType
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_PictureWrapType);
   end Get_PictureWrapType;

   procedure Put_PictureWrapType
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_PictureWrapType,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_PictureWrapType;

   function Get_DisableFeaturesIntroducedAfterbyDefault
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_DisableFeaturesIntroducedAfterbyDefault);
   end Get_DisableFeaturesIntroducedAfterbyDefault;

   procedure Put_DisableFeaturesIntroducedAfterbyDefault
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_DisableFeaturesIntroducedAfterbyDefault,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DisableFeaturesIntroducedAfterbyDefault;

   function Get_PasteSmartCutPaste
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_PasteSmartCutPaste);
   end Get_PasteSmartCutPaste;

   procedure Put_PasteSmartCutPaste
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_PasteSmartCutPaste,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_PasteSmartCutPaste;

   function Get_DisplayPasteOptions
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_DisplayPasteOptions);
   end Get_DisplayPasteOptions;

   procedure Put_DisplayPasteOptions
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_DisplayPasteOptions,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DisplayPasteOptions;

   function Get_PromptUpdateStyle
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_PromptUpdateStyle);
   end Get_PromptUpdateStyle;

   procedure Put_PromptUpdateStyle
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_PromptUpdateStyle,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_PromptUpdateStyle;

   function Get_DefaultEPostageApp
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_DefaultEPostageApp);
   end Get_DefaultEPostageApp;

   procedure Put_DefaultEPostageApp
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_DefaultEPostageApp,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DefaultEPostageApp;

   function Get_DefaultTextEncoding
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_DefaultTextEncoding);
   end Get_DefaultTextEncoding;

   procedure Put_DefaultTextEncoding
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_DefaultTextEncoding,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DefaultTextEncoding;

   function Get_LabelSmartTags
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_LabelSmartTags);
   end Get_LabelSmartTags;

   procedure Put_LabelSmartTags
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_LabelSmartTags,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_LabelSmartTags;

   function Get_DisplaySmartTagButtons
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_DisplaySmartTagButtons);
   end Get_DisplaySmartTagButtons;

   procedure Put_DisplaySmartTagButtons
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_DisplaySmartTagButtons,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DisplaySmartTagButtons;

   function Get_WarnBeforeSavingPrintingSendingMarkup
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_WarnBeforeSavingPrintingSendingMarkup);
   end Get_WarnBeforeSavingPrintingSendingMarkup;

   procedure Put_WarnBeforeSavingPrintingSendingMarkup
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_WarnBeforeSavingPrintingSendingMarkup,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_WarnBeforeSavingPrintingSendingMarkup;

   function Get_StoreRSIDOnSave
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_StoreRSIDOnSave);
   end Get_StoreRSIDOnSave;

   procedure Put_StoreRSIDOnSave
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_StoreRSIDOnSave,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_StoreRSIDOnSave;

   function Get_ShowFormatError
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_ShowFormatError);
   end Get_ShowFormatError;

   procedure Put_ShowFormatError
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_ShowFormatError,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ShowFormatError;

   function Get_FormatScanning
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_FormatScanning);
   end Get_FormatScanning;

   procedure Put_FormatScanning
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_FormatScanning,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_FormatScanning;

   function Get_PasteMergeLists
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_PasteMergeLists);
   end Get_PasteMergeLists;

   procedure Put_PasteMergeLists
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_PasteMergeLists,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_PasteMergeLists;

   function Get_AutoCreateNewDrawings
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_AutoCreateNewDrawings);
   end Get_AutoCreateNewDrawings;

   procedure Put_AutoCreateNewDrawings
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_AutoCreateNewDrawings,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AutoCreateNewDrawings;

   function Get_SmartParaSelection
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_SmartParaSelection);
   end Get_SmartParaSelection;

   procedure Put_SmartParaSelection
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_SmartParaSelection,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_SmartParaSelection;

   function Get_RevisionsBalloonPrintOrientation
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_RevisionsBalloonPrintOrientation);
   end Get_RevisionsBalloonPrintOrientation;

   procedure Put_RevisionsBalloonPrintOrientation
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_RevisionsBalloonPrintOrientation,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_RevisionsBalloonPrintOrientation;

   function Get_CommentsColor
     (This : Options_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Options_Get_CommentsColor);
   end Get_CommentsColor;

   procedure Put_CommentsColor
     (This : Options_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Options_Put_CommentsColor,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_CommentsColor;

end winword.Options_Object;

