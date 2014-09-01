with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.Options_Interface is

   procedure Initialize (This : in out Options_Type) is
   begin
      Set_IID (This, IID_Options);
   end Initialize;

   function Pointer (This : Options_Type)
     return Pointer_To_Options
   is
   begin
      return To_Pointer_To_Options (Address (This));
   end Pointer;

   procedure Attach (This    : in out Options_Type;
                     Pointer : in     Pointer_To_Options)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : Options_Type)
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
     (This : Options_Type)
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
     (This : Options_Type)
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

   function Get_AllowAccentedUppercase
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AllowAccentedUppercase
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AllowAccentedUppercase;

   procedure Put_AllowAccentedUppercase
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AllowAccentedUppercase
         (Pointer (This),
          prop));

   end Put_AllowAccentedUppercase;

   function Get_WPHelp
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_WPHelp
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_WPHelp;

   procedure Put_WPHelp
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_WPHelp
         (Pointer (This),
          prop));

   end Put_WPHelp;

   function Get_WPDocNavKeys
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_WPDocNavKeys
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_WPDocNavKeys;

   procedure Put_WPDocNavKeys
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_WPDocNavKeys
         (Pointer (This),
          prop));

   end Put_WPDocNavKeys;

   function Get_Pagination
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Pagination
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Pagination;

   procedure Put_Pagination
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Pagination
         (Pointer (This),
          prop));

   end Put_Pagination;

   function Get_BlueScreen
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_BlueScreen
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_BlueScreen;

   procedure Put_BlueScreen
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_BlueScreen
         (Pointer (This),
          prop));

   end Put_BlueScreen;

   function Get_EnableSound
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_EnableSound
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_EnableSound;

   procedure Put_EnableSound
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_EnableSound
         (Pointer (This),
          prop));

   end Put_EnableSound;

   function Get_ConfirmConversions
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ConfirmConversions
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ConfirmConversions;

   procedure Put_ConfirmConversions
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ConfirmConversions
         (Pointer (This),
          prop));

   end Put_ConfirmConversions;

   function Get_UpdateLinksAtOpen
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_UpdateLinksAtOpen
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_UpdateLinksAtOpen;

   procedure Put_UpdateLinksAtOpen
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_UpdateLinksAtOpen
         (Pointer (This),
          prop));

   end Put_UpdateLinksAtOpen;

   function Get_SendMailAttach
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SendMailAttach
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_SendMailAttach;

   procedure Put_SendMailAttach
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_SendMailAttach
         (Pointer (This),
          prop));

   end Put_SendMailAttach;

   function Get_MeasurementUnit
     (This : Options_Type)
     return WdMeasurementUnits
   is
       RetVal : aliased WdMeasurementUnits;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_MeasurementUnit
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_MeasurementUnit;

   procedure Put_MeasurementUnit
     (This : Options_Type;
      prop : WdMeasurementUnits)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_MeasurementUnit
         (Pointer (This),
          prop));

   end Put_MeasurementUnit;

   function Get_ButtonFieldClicks
     (This : Options_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ButtonFieldClicks
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ButtonFieldClicks;

   procedure Put_ButtonFieldClicks
     (This : Options_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ButtonFieldClicks
         (Pointer (This),
          prop));

   end Put_ButtonFieldClicks;

   function Get_ShortMenuNames
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ShortMenuNames
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ShortMenuNames;

   procedure Put_ShortMenuNames
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ShortMenuNames
         (Pointer (This),
          prop));

   end Put_ShortMenuNames;

   function Get_RTFInClipboard
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_RTFInClipboard
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_RTFInClipboard;

   procedure Put_RTFInClipboard
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_RTFInClipboard
         (Pointer (This),
          prop));

   end Put_RTFInClipboard;

   function Get_UpdateFieldsAtPrint
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_UpdateFieldsAtPrint
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_UpdateFieldsAtPrint;

   procedure Put_UpdateFieldsAtPrint
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_UpdateFieldsAtPrint
         (Pointer (This),
          prop));

   end Put_UpdateFieldsAtPrint;

   function Get_PrintProperties
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_PrintProperties
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_PrintProperties;

   procedure Put_PrintProperties
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_PrintProperties
         (Pointer (This),
          prop));

   end Put_PrintProperties;

   function Get_PrintFieldCodes
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_PrintFieldCodes
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_PrintFieldCodes;

   procedure Put_PrintFieldCodes
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_PrintFieldCodes
         (Pointer (This),
          prop));

   end Put_PrintFieldCodes;

   function Get_PrintComments
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_PrintComments
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_PrintComments;

   procedure Put_PrintComments
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_PrintComments
         (Pointer (This),
          prop));

   end Put_PrintComments;

   function Get_PrintHiddenText
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_PrintHiddenText
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_PrintHiddenText;

   procedure Put_PrintHiddenText
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_PrintHiddenText
         (Pointer (This),
          prop));

   end Put_PrintHiddenText;

   function Get_EnvelopeFeederInstalled
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_EnvelopeFeederInstalled
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_EnvelopeFeederInstalled;

   function Get_UpdateLinksAtPrint
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_UpdateLinksAtPrint
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_UpdateLinksAtPrint;

   procedure Put_UpdateLinksAtPrint
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_UpdateLinksAtPrint
         (Pointer (This),
          prop));

   end Put_UpdateLinksAtPrint;

   function Get_PrintBackground
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_PrintBackground
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_PrintBackground;

   procedure Put_PrintBackground
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_PrintBackground
         (Pointer (This),
          prop));

   end Put_PrintBackground;

   function Get_PrintDrawingObjects
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_PrintDrawingObjects
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_PrintDrawingObjects;

   procedure Put_PrintDrawingObjects
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_PrintDrawingObjects
         (Pointer (This),
          prop));

   end Put_PrintDrawingObjects;

   function Get_DefaultTray
     (This : Options_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DefaultTray
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DefaultTray;

   procedure Put_DefaultTray
     (This : Options_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DefaultTray
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_DefaultTray;

   function Get_DefaultTrayID
     (This : Options_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DefaultTrayID
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DefaultTrayID;

   procedure Put_DefaultTrayID
     (This : Options_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DefaultTrayID
         (Pointer (This),
          prop));

   end Put_DefaultTrayID;

   function Get_CreateBackup
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_CreateBackup
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_CreateBackup;

   procedure Put_CreateBackup
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_CreateBackup
         (Pointer (This),
          prop));

   end Put_CreateBackup;

   function Get_AllowFastSave
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AllowFastSave
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AllowFastSave;

   procedure Put_AllowFastSave
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AllowFastSave
         (Pointer (This),
          prop));

   end Put_AllowFastSave;

   function Get_SavePropertiesPrompt
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SavePropertiesPrompt
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_SavePropertiesPrompt;

   procedure Put_SavePropertiesPrompt
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_SavePropertiesPrompt
         (Pointer (This),
          prop));

   end Put_SavePropertiesPrompt;

   function Get_SaveNormalPrompt
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SaveNormalPrompt
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_SaveNormalPrompt;

   procedure Put_SaveNormalPrompt
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_SaveNormalPrompt
         (Pointer (This),
          prop));

   end Put_SaveNormalPrompt;

   function Get_SaveInterval
     (This : Options_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SaveInterval
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_SaveInterval;

   procedure Put_SaveInterval
     (This : Options_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_SaveInterval
         (Pointer (This),
          prop));

   end Put_SaveInterval;

   function Get_BackgroundSave
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_BackgroundSave
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_BackgroundSave;

   procedure Put_BackgroundSave
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_BackgroundSave
         (Pointer (This),
          prop));

   end Put_BackgroundSave;

   function Get_InsertedTextMark
     (This : Options_Type)
     return WdInsertedTextMark
   is
       RetVal : aliased WdInsertedTextMark;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_InsertedTextMark
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_InsertedTextMark;

   procedure Put_InsertedTextMark
     (This : Options_Type;
      prop : WdInsertedTextMark)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_InsertedTextMark
         (Pointer (This),
          prop));

   end Put_InsertedTextMark;

   function Get_DeletedTextMark
     (This : Options_Type)
     return WdDeletedTextMark
   is
       RetVal : aliased WdDeletedTextMark;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DeletedTextMark
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DeletedTextMark;

   procedure Put_DeletedTextMark
     (This : Options_Type;
      prop : WdDeletedTextMark)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DeletedTextMark
         (Pointer (This),
          prop));

   end Put_DeletedTextMark;

   function Get_RevisedLinesMark
     (This : Options_Type)
     return WdRevisedLinesMark
   is
       RetVal : aliased WdRevisedLinesMark;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_RevisedLinesMark
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_RevisedLinesMark;

   procedure Put_RevisedLinesMark
     (This : Options_Type;
      prop : WdRevisedLinesMark)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_RevisedLinesMark
         (Pointer (This),
          prop));

   end Put_RevisedLinesMark;

   function Get_InsertedTextColor
     (This : Options_Type)
     return WdColorIndex
   is
       RetVal : aliased WdColorIndex;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_InsertedTextColor
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_InsertedTextColor;

   procedure Put_InsertedTextColor
     (This : Options_Type;
      prop : WdColorIndex)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_InsertedTextColor
         (Pointer (This),
          prop));

   end Put_InsertedTextColor;

   function Get_DeletedTextColor
     (This : Options_Type)
     return WdColorIndex
   is
       RetVal : aliased WdColorIndex;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DeletedTextColor
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DeletedTextColor;

   procedure Put_DeletedTextColor
     (This : Options_Type;
      prop : WdColorIndex)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DeletedTextColor
         (Pointer (This),
          prop));

   end Put_DeletedTextColor;

   function Get_RevisedLinesColor
     (This : Options_Type)
     return WdColorIndex
   is
       RetVal : aliased WdColorIndex;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_RevisedLinesColor
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_RevisedLinesColor;

   procedure Put_RevisedLinesColor
     (This : Options_Type;
      prop : WdColorIndex)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_RevisedLinesColor
         (Pointer (This),
          prop));

   end Put_RevisedLinesColor;

   function Get_DefaultFilePath
     (This : Options_Type;
      Path : WdDefaultFilePath)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DefaultFilePath
         (Pointer (This),
          Path,
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DefaultFilePath;

   procedure Put_DefaultFilePath
     (This : Options_Type;
      Path : WdDefaultFilePath;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DefaultFilePath
         (Pointer (This),
          Path,
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_DefaultFilePath;

   function Get_Overtype
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Overtype
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Overtype;

   procedure Put_Overtype
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Overtype
         (Pointer (This),
          prop));

   end Put_Overtype;

   function Get_ReplaceSelection
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ReplaceSelection
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ReplaceSelection;

   procedure Put_ReplaceSelection
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ReplaceSelection
         (Pointer (This),
          prop));

   end Put_ReplaceSelection;

   function Get_AllowDragAndDrop
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AllowDragAndDrop
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AllowDragAndDrop;

   procedure Put_AllowDragAndDrop
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AllowDragAndDrop
         (Pointer (This),
          prop));

   end Put_AllowDragAndDrop;

   function Get_AutoWordSelection
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoWordSelection
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AutoWordSelection;

   procedure Put_AutoWordSelection
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AutoWordSelection
         (Pointer (This),
          prop));

   end Put_AutoWordSelection;

   function Get_INSKeyForPaste
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_INSKeyForPaste
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_INSKeyForPaste;

   procedure Put_INSKeyForPaste
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_INSKeyForPaste
         (Pointer (This),
          prop));

   end Put_INSKeyForPaste;

   function Get_SmartCutPaste
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SmartCutPaste
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_SmartCutPaste;

   procedure Put_SmartCutPaste
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_SmartCutPaste
         (Pointer (This),
          prop));

   end Put_SmartCutPaste;

   function Get_TabIndentKey
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_TabIndentKey
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_TabIndentKey;

   procedure Put_TabIndentKey
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_TabIndentKey
         (Pointer (This),
          prop));

   end Put_TabIndentKey;

   function Get_PictureEditor
     (This : Options_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_PictureEditor
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_PictureEditor;

   procedure Put_PictureEditor
     (This : Options_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_PictureEditor
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_PictureEditor;

   function Get_AnimateScreenMovements
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AnimateScreenMovements
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AnimateScreenMovements;

   procedure Put_AnimateScreenMovements
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AnimateScreenMovements
         (Pointer (This),
          prop));

   end Put_AnimateScreenMovements;

   function Get_VirusProtection
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_VirusProtection
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_VirusProtection;

   procedure Put_VirusProtection
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_VirusProtection
         (Pointer (This),
          prop));

   end Put_VirusProtection;

   function Get_RevisedPropertiesMark
     (This : Options_Type)
     return WdRevisedPropertiesMark
   is
       RetVal : aliased WdRevisedPropertiesMark;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_RevisedPropertiesMark
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_RevisedPropertiesMark;

   procedure Put_RevisedPropertiesMark
     (This : Options_Type;
      prop : WdRevisedPropertiesMark)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_RevisedPropertiesMark
         (Pointer (This),
          prop));

   end Put_RevisedPropertiesMark;

   function Get_RevisedPropertiesColor
     (This : Options_Type)
     return WdColorIndex
   is
       RetVal : aliased WdColorIndex;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_RevisedPropertiesColor
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_RevisedPropertiesColor;

   procedure Put_RevisedPropertiesColor
     (This : Options_Type;
      prop : WdColorIndex)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_RevisedPropertiesColor
         (Pointer (This),
          prop));

   end Put_RevisedPropertiesColor;

   function Get_SnapToGrid
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SnapToGrid
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_SnapToGrid;

   procedure Put_SnapToGrid
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_SnapToGrid
         (Pointer (This),
          prop));

   end Put_SnapToGrid;

   function Get_SnapToShapes
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SnapToShapes
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_SnapToShapes;

   procedure Put_SnapToShapes
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_SnapToShapes
         (Pointer (This),
          prop));

   end Put_SnapToShapes;

   function Get_GridDistanceHorizontal
     (This : Options_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_GridDistanceHorizontal
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_GridDistanceHorizontal;

   procedure Put_GridDistanceHorizontal
     (This : Options_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_GridDistanceHorizontal
         (Pointer (This),
          prop));

   end Put_GridDistanceHorizontal;

   function Get_GridDistanceVertical
     (This : Options_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_GridDistanceVertical
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_GridDistanceVertical;

   procedure Put_GridDistanceVertical
     (This : Options_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_GridDistanceVertical
         (Pointer (This),
          prop));

   end Put_GridDistanceVertical;

   function Get_GridOriginHorizontal
     (This : Options_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_GridOriginHorizontal
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_GridOriginHorizontal;

   procedure Put_GridOriginHorizontal
     (This : Options_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_GridOriginHorizontal
         (Pointer (This),
          prop));

   end Put_GridOriginHorizontal;

   function Get_GridOriginVertical
     (This : Options_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_GridOriginVertical
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_GridOriginVertical;

   procedure Put_GridOriginVertical
     (This : Options_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_GridOriginVertical
         (Pointer (This),
          prop));

   end Put_GridOriginVertical;

   function Get_InlineConversion
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_InlineConversion
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_InlineConversion;

   procedure Put_InlineConversion
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_InlineConversion
         (Pointer (This),
          prop));

   end Put_InlineConversion;

   function Get_IMEAutomaticControl
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_IMEAutomaticControl
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_IMEAutomaticControl;

   procedure Put_IMEAutomaticControl
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_IMEAutomaticControl
         (Pointer (This),
          prop));

   end Put_IMEAutomaticControl;

   function Get_AutoFormatApplyHeadings
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoFormatApplyHeadings
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AutoFormatApplyHeadings;

   procedure Put_AutoFormatApplyHeadings
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AutoFormatApplyHeadings
         (Pointer (This),
          prop));

   end Put_AutoFormatApplyHeadings;

   function Get_AutoFormatApplyLists
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoFormatApplyLists
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AutoFormatApplyLists;

   procedure Put_AutoFormatApplyLists
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AutoFormatApplyLists
         (Pointer (This),
          prop));

   end Put_AutoFormatApplyLists;

   function Get_AutoFormatApplyBulletedLists
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoFormatApplyBulletedLists
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AutoFormatApplyBulletedLists;

   procedure Put_AutoFormatApplyBulletedLists
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AutoFormatApplyBulletedLists
         (Pointer (This),
          prop));

   end Put_AutoFormatApplyBulletedLists;

   function Get_AutoFormatApplyOtherParas
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoFormatApplyOtherParas
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AutoFormatApplyOtherParas;

   procedure Put_AutoFormatApplyOtherParas
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AutoFormatApplyOtherParas
         (Pointer (This),
          prop));

   end Put_AutoFormatApplyOtherParas;

   function Get_AutoFormatReplaceQuotes
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoFormatReplaceQuotes
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AutoFormatReplaceQuotes;

   procedure Put_AutoFormatReplaceQuotes
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AutoFormatReplaceQuotes
         (Pointer (This),
          prop));

   end Put_AutoFormatReplaceQuotes;

   function Get_AutoFormatReplaceSymbols
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoFormatReplaceSymbols
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AutoFormatReplaceSymbols;

   procedure Put_AutoFormatReplaceSymbols
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AutoFormatReplaceSymbols
         (Pointer (This),
          prop));

   end Put_AutoFormatReplaceSymbols;

   function Get_AutoFormatReplaceOrdinals
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoFormatReplaceOrdinals
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AutoFormatReplaceOrdinals;

   procedure Put_AutoFormatReplaceOrdinals
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AutoFormatReplaceOrdinals
         (Pointer (This),
          prop));

   end Put_AutoFormatReplaceOrdinals;

   function Get_AutoFormatReplaceFractions
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoFormatReplaceFractions
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AutoFormatReplaceFractions;

   procedure Put_AutoFormatReplaceFractions
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AutoFormatReplaceFractions
         (Pointer (This),
          prop));

   end Put_AutoFormatReplaceFractions;

   function Get_AutoFormatReplacePlainTextEmphasis
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoFormatReplacePlainTextEmphasis
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AutoFormatReplacePlainTextEmphasis;

   procedure Put_AutoFormatReplacePlainTextEmphasis
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AutoFormatReplacePlainTextEmphasis
         (Pointer (This),
          prop));

   end Put_AutoFormatReplacePlainTextEmphasis;

   function Get_AutoFormatPreserveStyles
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoFormatPreserveStyles
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AutoFormatPreserveStyles;

   procedure Put_AutoFormatPreserveStyles
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AutoFormatPreserveStyles
         (Pointer (This),
          prop));

   end Put_AutoFormatPreserveStyles;

   function Get_AutoFormatAsYouTypeApplyHeadings
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoFormatAsYouTypeApplyHeadings
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AutoFormatAsYouTypeApplyHeadings;

   procedure Put_AutoFormatAsYouTypeApplyHeadings
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AutoFormatAsYouTypeApplyHeadings
         (Pointer (This),
          prop));

   end Put_AutoFormatAsYouTypeApplyHeadings;

   function Get_AutoFormatAsYouTypeApplyBorders
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoFormatAsYouTypeApplyBorders
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AutoFormatAsYouTypeApplyBorders;

   procedure Put_AutoFormatAsYouTypeApplyBorders
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AutoFormatAsYouTypeApplyBorders
         (Pointer (This),
          prop));

   end Put_AutoFormatAsYouTypeApplyBorders;

   function Get_AutoFormatAsYouTypeApplyBulletedLists
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoFormatAsYouTypeApplyBulletedLists
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AutoFormatAsYouTypeApplyBulletedLists;

   procedure Put_AutoFormatAsYouTypeApplyBulletedLists
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AutoFormatAsYouTypeApplyBulletedLists
         (Pointer (This),
          prop));

   end Put_AutoFormatAsYouTypeApplyBulletedLists;

   function Get_AutoFormatAsYouTypeApplyNumberedLists
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoFormatAsYouTypeApplyNumberedLists
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AutoFormatAsYouTypeApplyNumberedLists;

   procedure Put_AutoFormatAsYouTypeApplyNumberedLists
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AutoFormatAsYouTypeApplyNumberedLists
         (Pointer (This),
          prop));

   end Put_AutoFormatAsYouTypeApplyNumberedLists;

   function Get_AutoFormatAsYouTypeReplaceQuotes
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoFormatAsYouTypeReplaceQuotes
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AutoFormatAsYouTypeReplaceQuotes;

   procedure Put_AutoFormatAsYouTypeReplaceQuotes
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AutoFormatAsYouTypeReplaceQuotes
         (Pointer (This),
          prop));

   end Put_AutoFormatAsYouTypeReplaceQuotes;

   function Get_AutoFormatAsYouTypeReplaceSymbols
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoFormatAsYouTypeReplaceSymbols
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AutoFormatAsYouTypeReplaceSymbols;

   procedure Put_AutoFormatAsYouTypeReplaceSymbols
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AutoFormatAsYouTypeReplaceSymbols
         (Pointer (This),
          prop));

   end Put_AutoFormatAsYouTypeReplaceSymbols;

   function Get_AutoFormatAsYouTypeReplaceOrdinals
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoFormatAsYouTypeReplaceOrdinals
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AutoFormatAsYouTypeReplaceOrdinals;

   procedure Put_AutoFormatAsYouTypeReplaceOrdinals
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AutoFormatAsYouTypeReplaceOrdinals
         (Pointer (This),
          prop));

   end Put_AutoFormatAsYouTypeReplaceOrdinals;

   function Get_AutoFormatAsYouTypeReplaceFractions
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoFormatAsYouTypeReplaceFractions
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AutoFormatAsYouTypeReplaceFractions;

   procedure Put_AutoFormatAsYouTypeReplaceFractions
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AutoFormatAsYouTypeReplaceFractions
         (Pointer (This),
          prop));

   end Put_AutoFormatAsYouTypeReplaceFractions;

   function Get_AutoFormatAsYouTypeReplacePlainTextEmphasis
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoFormatAsYouTypeReplacePlainTextEmphasis
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AutoFormatAsYouTypeReplacePlainTextEmphasis;

   procedure Put_AutoFormatAsYouTypeReplacePlainTextEmphasis
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AutoFormatAsYouTypeReplacePlainTextEmphasis
         (Pointer (This),
          prop));

   end Put_AutoFormatAsYouTypeReplacePlainTextEmphasis;

   function Get_AutoFormatAsYouTypeFormatListItemBeginning
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoFormatAsYouTypeFormatListItemBeginning
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AutoFormatAsYouTypeFormatListItemBeginning;

   procedure Put_AutoFormatAsYouTypeFormatListItemBeginning
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AutoFormatAsYouTypeFormatListItemBeginning
         (Pointer (This),
          prop));

   end Put_AutoFormatAsYouTypeFormatListItemBeginning;

   function Get_AutoFormatAsYouTypeDefineStyles
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoFormatAsYouTypeDefineStyles
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AutoFormatAsYouTypeDefineStyles;

   procedure Put_AutoFormatAsYouTypeDefineStyles
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AutoFormatAsYouTypeDefineStyles
         (Pointer (This),
          prop));

   end Put_AutoFormatAsYouTypeDefineStyles;

   function Get_AutoFormatPlainTextWordMail
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoFormatPlainTextWordMail
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AutoFormatPlainTextWordMail;

   procedure Put_AutoFormatPlainTextWordMail
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AutoFormatPlainTextWordMail
         (Pointer (This),
          prop));

   end Put_AutoFormatPlainTextWordMail;

   function Get_AutoFormatAsYouTypeReplaceHyperlinks
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoFormatAsYouTypeReplaceHyperlinks
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AutoFormatAsYouTypeReplaceHyperlinks;

   procedure Put_AutoFormatAsYouTypeReplaceHyperlinks
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AutoFormatAsYouTypeReplaceHyperlinks
         (Pointer (This),
          prop));

   end Put_AutoFormatAsYouTypeReplaceHyperlinks;

   function Get_AutoFormatReplaceHyperlinks
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoFormatReplaceHyperlinks
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AutoFormatReplaceHyperlinks;

   procedure Put_AutoFormatReplaceHyperlinks
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AutoFormatReplaceHyperlinks
         (Pointer (This),
          prop));

   end Put_AutoFormatReplaceHyperlinks;

   function Get_DefaultHighlightColorIndex
     (This : Options_Type)
     return WdColorIndex
   is
       RetVal : aliased WdColorIndex;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DefaultHighlightColorIndex
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DefaultHighlightColorIndex;

   procedure Put_DefaultHighlightColorIndex
     (This : Options_Type;
      prop : WdColorIndex)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DefaultHighlightColorIndex
         (Pointer (This),
          prop));

   end Put_DefaultHighlightColorIndex;

   function Get_DefaultBorderLineStyle
     (This : Options_Type)
     return WdLineStyle
   is
       RetVal : aliased WdLineStyle;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DefaultBorderLineStyle
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DefaultBorderLineStyle;

   procedure Put_DefaultBorderLineStyle
     (This : Options_Type;
      prop : WdLineStyle)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DefaultBorderLineStyle
         (Pointer (This),
          prop));

   end Put_DefaultBorderLineStyle;

   function Get_CheckSpellingAsYouType
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_CheckSpellingAsYouType
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_CheckSpellingAsYouType;

   procedure Put_CheckSpellingAsYouType
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_CheckSpellingAsYouType
         (Pointer (This),
          prop));

   end Put_CheckSpellingAsYouType;

   function Get_CheckGrammarAsYouType
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_CheckGrammarAsYouType
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_CheckGrammarAsYouType;

   procedure Put_CheckGrammarAsYouType
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_CheckGrammarAsYouType
         (Pointer (This),
          prop));

   end Put_CheckGrammarAsYouType;

   function Get_IgnoreInternetAndFileAddresses
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_IgnoreInternetAndFileAddresses
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_IgnoreInternetAndFileAddresses;

   procedure Put_IgnoreInternetAndFileAddresses
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_IgnoreInternetAndFileAddresses
         (Pointer (This),
          prop));

   end Put_IgnoreInternetAndFileAddresses;

   function Get_ShowReadabilityStatistics
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ShowReadabilityStatistics
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ShowReadabilityStatistics;

   procedure Put_ShowReadabilityStatistics
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ShowReadabilityStatistics
         (Pointer (This),
          prop));

   end Put_ShowReadabilityStatistics;

   function Get_IgnoreUppercase
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_IgnoreUppercase
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_IgnoreUppercase;

   procedure Put_IgnoreUppercase
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_IgnoreUppercase
         (Pointer (This),
          prop));

   end Put_IgnoreUppercase;

   function Get_IgnoreMixedDigits
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_IgnoreMixedDigits
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_IgnoreMixedDigits;

   procedure Put_IgnoreMixedDigits
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_IgnoreMixedDigits
         (Pointer (This),
          prop));

   end Put_IgnoreMixedDigits;

   function Get_SuggestFromMainDictionaryOnly
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SuggestFromMainDictionaryOnly
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_SuggestFromMainDictionaryOnly;

   procedure Put_SuggestFromMainDictionaryOnly
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_SuggestFromMainDictionaryOnly
         (Pointer (This),
          prop));

   end Put_SuggestFromMainDictionaryOnly;

   function Get_SuggestSpellingCorrections
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SuggestSpellingCorrections
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_SuggestSpellingCorrections;

   procedure Put_SuggestSpellingCorrections
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_SuggestSpellingCorrections
         (Pointer (This),
          prop));

   end Put_SuggestSpellingCorrections;

   function Get_DefaultBorderLineWidth
     (This : Options_Type)
     return WdLineWidth
   is
       RetVal : aliased WdLineWidth;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DefaultBorderLineWidth
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DefaultBorderLineWidth;

   procedure Put_DefaultBorderLineWidth
     (This : Options_Type;
      prop : WdLineWidth)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DefaultBorderLineWidth
         (Pointer (This),
          prop));

   end Put_DefaultBorderLineWidth;

   function Get_CheckGrammarWithSpelling
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_CheckGrammarWithSpelling
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_CheckGrammarWithSpelling;

   procedure Put_CheckGrammarWithSpelling
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_CheckGrammarWithSpelling
         (Pointer (This),
          prop));

   end Put_CheckGrammarWithSpelling;

   function Get_DefaultOpenFormat
     (This : Options_Type)
     return WdOpenFormat
   is
       RetVal : aliased WdOpenFormat;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DefaultOpenFormat
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DefaultOpenFormat;

   procedure Put_DefaultOpenFormat
     (This : Options_Type;
      prop : WdOpenFormat)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DefaultOpenFormat
         (Pointer (This),
          prop));

   end Put_DefaultOpenFormat;

   function Get_PrintDraft
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_PrintDraft
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_PrintDraft;

   procedure Put_PrintDraft
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_PrintDraft
         (Pointer (This),
          prop));

   end Put_PrintDraft;

   function Get_PrintReverse
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_PrintReverse
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_PrintReverse;

   procedure Put_PrintReverse
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_PrintReverse
         (Pointer (This),
          prop));

   end Put_PrintReverse;

   function Get_MapPaperSize
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_MapPaperSize
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_MapPaperSize;

   procedure Put_MapPaperSize
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_MapPaperSize
         (Pointer (This),
          prop));

   end Put_MapPaperSize;

   function Get_AutoFormatAsYouTypeApplyTables
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoFormatAsYouTypeApplyTables
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AutoFormatAsYouTypeApplyTables;

   procedure Put_AutoFormatAsYouTypeApplyTables
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AutoFormatAsYouTypeApplyTables
         (Pointer (This),
          prop));

   end Put_AutoFormatAsYouTypeApplyTables;

   function Get_AutoFormatApplyFirstIndents
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoFormatApplyFirstIndents
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AutoFormatApplyFirstIndents;

   procedure Put_AutoFormatApplyFirstIndents
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AutoFormatApplyFirstIndents
         (Pointer (This),
          prop));

   end Put_AutoFormatApplyFirstIndents;

   function Get_AutoFormatMatchParentheses
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoFormatMatchParentheses
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AutoFormatMatchParentheses;

   procedure Put_AutoFormatMatchParentheses
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AutoFormatMatchParentheses
         (Pointer (This),
          prop));

   end Put_AutoFormatMatchParentheses;

   function Get_AutoFormatReplaceFarEastDashes
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoFormatReplaceFarEastDashes
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AutoFormatReplaceFarEastDashes;

   procedure Put_AutoFormatReplaceFarEastDashes
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AutoFormatReplaceFarEastDashes
         (Pointer (This),
          prop));

   end Put_AutoFormatReplaceFarEastDashes;

   function Get_AutoFormatDeleteAutoSpaces
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoFormatDeleteAutoSpaces
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AutoFormatDeleteAutoSpaces;

   procedure Put_AutoFormatDeleteAutoSpaces
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AutoFormatDeleteAutoSpaces
         (Pointer (This),
          prop));

   end Put_AutoFormatDeleteAutoSpaces;

   function Get_AutoFormatAsYouTypeApplyFirstIndents
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoFormatAsYouTypeApplyFirstIndents
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AutoFormatAsYouTypeApplyFirstIndents;

   procedure Put_AutoFormatAsYouTypeApplyFirstIndents
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AutoFormatAsYouTypeApplyFirstIndents
         (Pointer (This),
          prop));

   end Put_AutoFormatAsYouTypeApplyFirstIndents;

   function Get_AutoFormatAsYouTypeApplyDates
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoFormatAsYouTypeApplyDates
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AutoFormatAsYouTypeApplyDates;

   procedure Put_AutoFormatAsYouTypeApplyDates
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AutoFormatAsYouTypeApplyDates
         (Pointer (This),
          prop));

   end Put_AutoFormatAsYouTypeApplyDates;

   function Get_AutoFormatAsYouTypeApplyClosings
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoFormatAsYouTypeApplyClosings
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AutoFormatAsYouTypeApplyClosings;

   procedure Put_AutoFormatAsYouTypeApplyClosings
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AutoFormatAsYouTypeApplyClosings
         (Pointer (This),
          prop));

   end Put_AutoFormatAsYouTypeApplyClosings;

   function Get_AutoFormatAsYouTypeMatchParentheses
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoFormatAsYouTypeMatchParentheses
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AutoFormatAsYouTypeMatchParentheses;

   procedure Put_AutoFormatAsYouTypeMatchParentheses
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AutoFormatAsYouTypeMatchParentheses
         (Pointer (This),
          prop));

   end Put_AutoFormatAsYouTypeMatchParentheses;

   function Get_AutoFormatAsYouTypeReplaceFarEastDashes
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoFormatAsYouTypeReplaceFarEastDashes
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AutoFormatAsYouTypeReplaceFarEastDashes;

   procedure Put_AutoFormatAsYouTypeReplaceFarEastDashes
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AutoFormatAsYouTypeReplaceFarEastDashes
         (Pointer (This),
          prop));

   end Put_AutoFormatAsYouTypeReplaceFarEastDashes;

   function Get_AutoFormatAsYouTypeDeleteAutoSpaces
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoFormatAsYouTypeDeleteAutoSpaces
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AutoFormatAsYouTypeDeleteAutoSpaces;

   procedure Put_AutoFormatAsYouTypeDeleteAutoSpaces
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AutoFormatAsYouTypeDeleteAutoSpaces
         (Pointer (This),
          prop));

   end Put_AutoFormatAsYouTypeDeleteAutoSpaces;

   function Get_AutoFormatAsYouTypeInsertClosings
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoFormatAsYouTypeInsertClosings
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AutoFormatAsYouTypeInsertClosings;

   procedure Put_AutoFormatAsYouTypeInsertClosings
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AutoFormatAsYouTypeInsertClosings
         (Pointer (This),
          prop));

   end Put_AutoFormatAsYouTypeInsertClosings;

   function Get_AutoFormatAsYouTypeAutoLetterWizard
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoFormatAsYouTypeAutoLetterWizard
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AutoFormatAsYouTypeAutoLetterWizard;

   procedure Put_AutoFormatAsYouTypeAutoLetterWizard
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AutoFormatAsYouTypeAutoLetterWizard
         (Pointer (This),
          prop));

   end Put_AutoFormatAsYouTypeAutoLetterWizard;

   function Get_AutoFormatAsYouTypeInsertOvers
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoFormatAsYouTypeInsertOvers
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AutoFormatAsYouTypeInsertOvers;

   procedure Put_AutoFormatAsYouTypeInsertOvers
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AutoFormatAsYouTypeInsertOvers
         (Pointer (This),
          prop));

   end Put_AutoFormatAsYouTypeInsertOvers;

   function Get_DisplayGridLines
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DisplayGridLines
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DisplayGridLines;

   procedure Put_DisplayGridLines
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DisplayGridLines
         (Pointer (This),
          prop));

   end Put_DisplayGridLines;

   function Get_MatchFuzzyCase
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_MatchFuzzyCase
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_MatchFuzzyCase;

   procedure Put_MatchFuzzyCase
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_MatchFuzzyCase
         (Pointer (This),
          prop));

   end Put_MatchFuzzyCase;

   function Get_MatchFuzzyByte
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_MatchFuzzyByte
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_MatchFuzzyByte;

   procedure Put_MatchFuzzyByte
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_MatchFuzzyByte
         (Pointer (This),
          prop));

   end Put_MatchFuzzyByte;

   function Get_MatchFuzzyHiragana
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_MatchFuzzyHiragana
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_MatchFuzzyHiragana;

   procedure Put_MatchFuzzyHiragana
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_MatchFuzzyHiragana
         (Pointer (This),
          prop));

   end Put_MatchFuzzyHiragana;

   function Get_MatchFuzzySmallKana
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_MatchFuzzySmallKana
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_MatchFuzzySmallKana;

   procedure Put_MatchFuzzySmallKana
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_MatchFuzzySmallKana
         (Pointer (This),
          prop));

   end Put_MatchFuzzySmallKana;

   function Get_MatchFuzzyDash
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_MatchFuzzyDash
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_MatchFuzzyDash;

   procedure Put_MatchFuzzyDash
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_MatchFuzzyDash
         (Pointer (This),
          prop));

   end Put_MatchFuzzyDash;

   function Get_MatchFuzzyIterationMark
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_MatchFuzzyIterationMark
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_MatchFuzzyIterationMark;

   procedure Put_MatchFuzzyIterationMark
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_MatchFuzzyIterationMark
         (Pointer (This),
          prop));

   end Put_MatchFuzzyIterationMark;

   function Get_MatchFuzzyKanji
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_MatchFuzzyKanji
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_MatchFuzzyKanji;

   procedure Put_MatchFuzzyKanji
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_MatchFuzzyKanji
         (Pointer (This),
          prop));

   end Put_MatchFuzzyKanji;

   function Get_MatchFuzzyOldKana
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_MatchFuzzyOldKana
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_MatchFuzzyOldKana;

   procedure Put_MatchFuzzyOldKana
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_MatchFuzzyOldKana
         (Pointer (This),
          prop));

   end Put_MatchFuzzyOldKana;

   function Get_MatchFuzzyProlongedSoundMark
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_MatchFuzzyProlongedSoundMark
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_MatchFuzzyProlongedSoundMark;

   procedure Put_MatchFuzzyProlongedSoundMark
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_MatchFuzzyProlongedSoundMark
         (Pointer (This),
          prop));

   end Put_MatchFuzzyProlongedSoundMark;

   function Get_MatchFuzzyDZ
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_MatchFuzzyDZ
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_MatchFuzzyDZ;

   procedure Put_MatchFuzzyDZ
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_MatchFuzzyDZ
         (Pointer (This),
          prop));

   end Put_MatchFuzzyDZ;

   function Get_MatchFuzzyBV
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_MatchFuzzyBV
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_MatchFuzzyBV;

   procedure Put_MatchFuzzyBV
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_MatchFuzzyBV
         (Pointer (This),
          prop));

   end Put_MatchFuzzyBV;

   function Get_MatchFuzzyTC
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_MatchFuzzyTC
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_MatchFuzzyTC;

   procedure Put_MatchFuzzyTC
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_MatchFuzzyTC
         (Pointer (This),
          prop));

   end Put_MatchFuzzyTC;

   function Get_MatchFuzzyHF
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_MatchFuzzyHF
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_MatchFuzzyHF;

   procedure Put_MatchFuzzyHF
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_MatchFuzzyHF
         (Pointer (This),
          prop));

   end Put_MatchFuzzyHF;

   function Get_MatchFuzzyZJ
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_MatchFuzzyZJ
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_MatchFuzzyZJ;

   procedure Put_MatchFuzzyZJ
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_MatchFuzzyZJ
         (Pointer (This),
          prop));

   end Put_MatchFuzzyZJ;

   function Get_MatchFuzzyAY
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_MatchFuzzyAY
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_MatchFuzzyAY;

   procedure Put_MatchFuzzyAY
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_MatchFuzzyAY
         (Pointer (This),
          prop));

   end Put_MatchFuzzyAY;

   function Get_MatchFuzzyKiKu
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_MatchFuzzyKiKu
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_MatchFuzzyKiKu;

   procedure Put_MatchFuzzyKiKu
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_MatchFuzzyKiKu
         (Pointer (This),
          prop));

   end Put_MatchFuzzyKiKu;

   function Get_MatchFuzzyPunctuation
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_MatchFuzzyPunctuation
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_MatchFuzzyPunctuation;

   procedure Put_MatchFuzzyPunctuation
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_MatchFuzzyPunctuation
         (Pointer (This),
          prop));

   end Put_MatchFuzzyPunctuation;

   function Get_MatchFuzzySpace
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_MatchFuzzySpace
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_MatchFuzzySpace;

   procedure Put_MatchFuzzySpace
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_MatchFuzzySpace
         (Pointer (This),
          prop));

   end Put_MatchFuzzySpace;

   function Get_ApplyFarEastFontsToAscii
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ApplyFarEastFontsToAscii
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ApplyFarEastFontsToAscii;

   procedure Put_ApplyFarEastFontsToAscii
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ApplyFarEastFontsToAscii
         (Pointer (This),
          prop));

   end Put_ApplyFarEastFontsToAscii;

   function Get_ConvertHighAnsiToFarEast
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ConvertHighAnsiToFarEast
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ConvertHighAnsiToFarEast;

   procedure Put_ConvertHighAnsiToFarEast
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ConvertHighAnsiToFarEast
         (Pointer (This),
          prop));

   end Put_ConvertHighAnsiToFarEast;

   function Get_PrintOddPagesInAscendingOrder
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_PrintOddPagesInAscendingOrder
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_PrintOddPagesInAscendingOrder;

   procedure Put_PrintOddPagesInAscendingOrder
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_PrintOddPagesInAscendingOrder
         (Pointer (This),
          prop));

   end Put_PrintOddPagesInAscendingOrder;

   function Get_PrintEvenPagesInAscendingOrder
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_PrintEvenPagesInAscendingOrder
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_PrintEvenPagesInAscendingOrder;

   procedure Put_PrintEvenPagesInAscendingOrder
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_PrintEvenPagesInAscendingOrder
         (Pointer (This),
          prop));

   end Put_PrintEvenPagesInAscendingOrder;

   function Get_DefaultBorderColorIndex
     (This : Options_Type)
     return WdColorIndex
   is
       RetVal : aliased WdColorIndex;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DefaultBorderColorIndex
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DefaultBorderColorIndex;

   procedure Put_DefaultBorderColorIndex
     (This : Options_Type;
      prop : WdColorIndex)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DefaultBorderColorIndex
         (Pointer (This),
          prop));

   end Put_DefaultBorderColorIndex;

   function Get_EnableMisusedWordsDictionary
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_EnableMisusedWordsDictionary
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_EnableMisusedWordsDictionary;

   procedure Put_EnableMisusedWordsDictionary
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_EnableMisusedWordsDictionary
         (Pointer (This),
          prop));

   end Put_EnableMisusedWordsDictionary;

   function Get_AllowCombinedAuxiliaryForms
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AllowCombinedAuxiliaryForms
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AllowCombinedAuxiliaryForms;

   procedure Put_AllowCombinedAuxiliaryForms
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AllowCombinedAuxiliaryForms
         (Pointer (This),
          prop));

   end Put_AllowCombinedAuxiliaryForms;

   function Get_HangulHanjaFastConversion
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_HangulHanjaFastConversion
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_HangulHanjaFastConversion;

   procedure Put_HangulHanjaFastConversion
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_HangulHanjaFastConversion
         (Pointer (This),
          prop));

   end Put_HangulHanjaFastConversion;

   function Get_CheckHangulEndings
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_CheckHangulEndings
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_CheckHangulEndings;

   procedure Put_CheckHangulEndings
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_CheckHangulEndings
         (Pointer (This),
          prop));

   end Put_CheckHangulEndings;

   function Get_EnableHangulHanjaRecentOrdering
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_EnableHangulHanjaRecentOrdering
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_EnableHangulHanjaRecentOrdering;

   procedure Put_EnableHangulHanjaRecentOrdering
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_EnableHangulHanjaRecentOrdering
         (Pointer (This),
          prop));

   end Put_EnableHangulHanjaRecentOrdering;

   function Get_MultipleWordConversionsMode
     (This : Options_Type)
     return WdMultipleWordConversionsMode
   is
       RetVal : aliased WdMultipleWordConversionsMode;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_MultipleWordConversionsMode
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_MultipleWordConversionsMode;

   procedure Put_MultipleWordConversionsMode
     (This : Options_Type;
      prop : WdMultipleWordConversionsMode)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_MultipleWordConversionsMode
         (Pointer (This),
          prop));

   end Put_MultipleWordConversionsMode;

   procedure SetWPHelpOptions
     (This              : Options_Type;
      CommandKeyHelp    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      DocNavigationKeys : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      MouseSimulation   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      DemoGuidance      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      DemoSpeed         : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      HelpType          : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.SetWPHelpOptions
         (Pointer (This),
          CommandKeyHelp,
          DocNavigationKeys,
          MouseSimulation,
          DemoGuidance,
          DemoSpeed,
          HelpType));

   end SetWPHelpOptions;

   function Get_DefaultBorderColor
     (This : Options_Type)
     return WdColor
   is
       RetVal : aliased WdColor;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DefaultBorderColor
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DefaultBorderColor;

   procedure Put_DefaultBorderColor
     (This : Options_Type;
      prop : WdColor)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DefaultBorderColor
         (Pointer (This),
          prop));

   end Put_DefaultBorderColor;

   function Get_AllowPixelUnits
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AllowPixelUnits
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AllowPixelUnits;

   procedure Put_AllowPixelUnits
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AllowPixelUnits
         (Pointer (This),
          prop));

   end Put_AllowPixelUnits;

   function Get_UseCharacterUnit
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_UseCharacterUnit
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_UseCharacterUnit;

   procedure Put_UseCharacterUnit
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_UseCharacterUnit
         (Pointer (This),
          prop));

   end Put_UseCharacterUnit;

   function Get_AllowCompoundNounProcessing
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AllowCompoundNounProcessing
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AllowCompoundNounProcessing;

   procedure Put_AllowCompoundNounProcessing
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AllowCompoundNounProcessing
         (Pointer (This),
          prop));

   end Put_AllowCompoundNounProcessing;

   function Get_AutoKeyboardSwitching
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoKeyboardSwitching
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AutoKeyboardSwitching;

   procedure Put_AutoKeyboardSwitching
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AutoKeyboardSwitching
         (Pointer (This),
          prop));

   end Put_AutoKeyboardSwitching;

   function Get_DocumentViewDirection
     (This : Options_Type)
     return WdDocumentViewDirection
   is
       RetVal : aliased WdDocumentViewDirection;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DocumentViewDirection
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DocumentViewDirection;

   procedure Put_DocumentViewDirection
     (This : Options_Type;
      prop : WdDocumentViewDirection)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DocumentViewDirection
         (Pointer (This),
          prop));

   end Put_DocumentViewDirection;

   function Get_ArabicNumeral
     (This : Options_Type)
     return WdArabicNumeral
   is
       RetVal : aliased WdArabicNumeral;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ArabicNumeral
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ArabicNumeral;

   procedure Put_ArabicNumeral
     (This : Options_Type;
      prop : WdArabicNumeral)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ArabicNumeral
         (Pointer (This),
          prop));

   end Put_ArabicNumeral;

   function Get_MonthNames
     (This : Options_Type)
     return WdMonthNames
   is
       RetVal : aliased WdMonthNames;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_MonthNames
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_MonthNames;

   procedure Put_MonthNames
     (This : Options_Type;
      prop : WdMonthNames)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_MonthNames
         (Pointer (This),
          prop));

   end Put_MonthNames;

   function Get_CursorMovement
     (This : Options_Type)
     return WdCursorMovement
   is
       RetVal : aliased WdCursorMovement;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_CursorMovement
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_CursorMovement;

   procedure Put_CursorMovement
     (This : Options_Type;
      prop : WdCursorMovement)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_CursorMovement
         (Pointer (This),
          prop));

   end Put_CursorMovement;

   function Get_VisualSelection
     (This : Options_Type)
     return WdVisualSelection
   is
       RetVal : aliased WdVisualSelection;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_VisualSelection
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_VisualSelection;

   procedure Put_VisualSelection
     (This : Options_Type;
      prop : WdVisualSelection)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_VisualSelection
         (Pointer (This),
          prop));

   end Put_VisualSelection;

   function Get_ShowDiacritics
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ShowDiacritics
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ShowDiacritics;

   procedure Put_ShowDiacritics
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ShowDiacritics
         (Pointer (This),
          prop));

   end Put_ShowDiacritics;

   function Get_ShowControlCharacters
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ShowControlCharacters
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ShowControlCharacters;

   procedure Put_ShowControlCharacters
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ShowControlCharacters
         (Pointer (This),
          prop));

   end Put_ShowControlCharacters;

   function Get_AddControlCharacters
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AddControlCharacters
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AddControlCharacters;

   procedure Put_AddControlCharacters
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AddControlCharacters
         (Pointer (This),
          prop));

   end Put_AddControlCharacters;

   function Get_AddBiDirectionalMarksWhenSavingTextFile
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AddBiDirectionalMarksWhenSavingTextFile
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AddBiDirectionalMarksWhenSavingTextFile;

   procedure Put_AddBiDirectionalMarksWhenSavingTextFile
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AddBiDirectionalMarksWhenSavingTextFile
         (Pointer (This),
          prop));

   end Put_AddBiDirectionalMarksWhenSavingTextFile;

   function Get_StrictInitialAlefHamza
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_StrictInitialAlefHamza
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_StrictInitialAlefHamza;

   procedure Put_StrictInitialAlefHamza
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_StrictInitialAlefHamza
         (Pointer (This),
          prop));

   end Put_StrictInitialAlefHamza;

   function Get_StrictFinalYaa
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_StrictFinalYaa
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_StrictFinalYaa;

   procedure Put_StrictFinalYaa
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_StrictFinalYaa
         (Pointer (This),
          prop));

   end Put_StrictFinalYaa;

   function Get_HebrewMode
     (This : Options_Type)
     return WdHebSpellStart
   is
       RetVal : aliased WdHebSpellStart;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_HebrewMode
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_HebrewMode;

   procedure Put_HebrewMode
     (This : Options_Type;
      prop : WdHebSpellStart)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_HebrewMode
         (Pointer (This),
          prop));

   end Put_HebrewMode;

   function Get_ArabicMode
     (This : Options_Type)
     return WdAraSpeller
   is
       RetVal : aliased WdAraSpeller;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ArabicMode
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ArabicMode;

   procedure Put_ArabicMode
     (This : Options_Type;
      prop : WdAraSpeller)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ArabicMode
         (Pointer (This),
          prop));

   end Put_ArabicMode;

   function Get_AllowClickAndTypeMouse
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AllowClickAndTypeMouse
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AllowClickAndTypeMouse;

   procedure Put_AllowClickAndTypeMouse
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AllowClickAndTypeMouse
         (Pointer (This),
          prop));

   end Put_AllowClickAndTypeMouse;

   function Get_UseGermanSpellingReform
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_UseGermanSpellingReform
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_UseGermanSpellingReform;

   procedure Put_UseGermanSpellingReform
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_UseGermanSpellingReform
         (Pointer (This),
          prop));

   end Put_UseGermanSpellingReform;

   function Get_InterpretHighAnsi
     (This : Options_Type)
     return WdHighAnsiText
   is
       RetVal : aliased WdHighAnsiText;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_InterpretHighAnsi
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_InterpretHighAnsi;

   procedure Put_InterpretHighAnsi
     (This : Options_Type;
      prop : WdHighAnsiText)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_InterpretHighAnsi
         (Pointer (This),
          prop));

   end Put_InterpretHighAnsi;

   function Get_AddHebDoubleQuote
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AddHebDoubleQuote
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AddHebDoubleQuote;

   procedure Put_AddHebDoubleQuote
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AddHebDoubleQuote
         (Pointer (This),
          prop));

   end Put_AddHebDoubleQuote;

   function Get_UseDiffDiacColor
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_UseDiffDiacColor
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_UseDiffDiacColor;

   procedure Put_UseDiffDiacColor
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_UseDiffDiacColor
         (Pointer (This),
          prop));

   end Put_UseDiffDiacColor;

   function Get_DiacriticColorVal
     (This : Options_Type)
     return WdColor
   is
       RetVal : aliased WdColor;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DiacriticColorVal
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DiacriticColorVal;

   procedure Put_DiacriticColorVal
     (This : Options_Type;
      prop : WdColor)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DiacriticColorVal
         (Pointer (This),
          prop));

   end Put_DiacriticColorVal;

   function Get_OptimizeForWord97byDefault
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_OptimizeForWord97byDefault
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_OptimizeForWord97byDefault;

   procedure Put_OptimizeForWord97byDefault
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_OptimizeForWord97byDefault
         (Pointer (This),
          prop));

   end Put_OptimizeForWord97byDefault;

   function Get_LocalNetworkFile
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_LocalNetworkFile
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_LocalNetworkFile;

   procedure Put_LocalNetworkFile
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_LocalNetworkFile
         (Pointer (This),
          prop));

   end Put_LocalNetworkFile;

   function Get_TypeNReplace
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_TypeNReplace
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_TypeNReplace;

   procedure Put_TypeNReplace
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_TypeNReplace
         (Pointer (This),
          prop));

   end Put_TypeNReplace;

   function Get_SequenceCheck
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SequenceCheck
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_SequenceCheck;

   procedure Put_SequenceCheck
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_SequenceCheck
         (Pointer (This),
          prop));

   end Put_SequenceCheck;

   function Get_BackgroundOpen
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_BackgroundOpen
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_BackgroundOpen;

   procedure Put_BackgroundOpen
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_BackgroundOpen
         (Pointer (This),
          prop));

   end Put_BackgroundOpen;

   function Get_DisableFeaturesbyDefault
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DisableFeaturesbyDefault
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DisableFeaturesbyDefault;

   procedure Put_DisableFeaturesbyDefault
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DisableFeaturesbyDefault
         (Pointer (This),
          prop));

   end Put_DisableFeaturesbyDefault;

   function Get_PasteAdjustWordSpacing
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_PasteAdjustWordSpacing
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_PasteAdjustWordSpacing;

   procedure Put_PasteAdjustWordSpacing
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_PasteAdjustWordSpacing
         (Pointer (This),
          prop));

   end Put_PasteAdjustWordSpacing;

   function Get_PasteAdjustParagraphSpacing
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_PasteAdjustParagraphSpacing
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_PasteAdjustParagraphSpacing;

   procedure Put_PasteAdjustParagraphSpacing
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_PasteAdjustParagraphSpacing
         (Pointer (This),
          prop));

   end Put_PasteAdjustParagraphSpacing;

   function Get_PasteAdjustTableFormatting
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_PasteAdjustTableFormatting
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_PasteAdjustTableFormatting;

   procedure Put_PasteAdjustTableFormatting
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_PasteAdjustTableFormatting
         (Pointer (This),
          prop));

   end Put_PasteAdjustTableFormatting;

   function Get_PasteSmartStyleBehavior
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_PasteSmartStyleBehavior
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_PasteSmartStyleBehavior;

   procedure Put_PasteSmartStyleBehavior
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_PasteSmartStyleBehavior
         (Pointer (This),
          prop));

   end Put_PasteSmartStyleBehavior;

   function Get_PasteMergeFromPPT
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_PasteMergeFromPPT
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_PasteMergeFromPPT;

   procedure Put_PasteMergeFromPPT
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_PasteMergeFromPPT
         (Pointer (This),
          prop));

   end Put_PasteMergeFromPPT;

   function Get_PasteMergeFromXL
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_PasteMergeFromXL
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_PasteMergeFromXL;

   procedure Put_PasteMergeFromXL
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_PasteMergeFromXL
         (Pointer (This),
          prop));

   end Put_PasteMergeFromXL;

   function Get_CtrlClickHyperlinkToOpen
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_CtrlClickHyperlinkToOpen
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_CtrlClickHyperlinkToOpen;

   procedure Put_CtrlClickHyperlinkToOpen
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_CtrlClickHyperlinkToOpen
         (Pointer (This),
          prop));

   end Put_CtrlClickHyperlinkToOpen;

   function Get_PictureWrapType
     (This : Options_Type)
     return WdWrapTypeMerged
   is
       RetVal : aliased WdWrapTypeMerged;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_PictureWrapType
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_PictureWrapType;

   procedure Put_PictureWrapType
     (This : Options_Type;
      prop : WdWrapTypeMerged)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_PictureWrapType
         (Pointer (This),
          prop));

   end Put_PictureWrapType;

   function Get_DisableFeaturesIntroducedAfterbyDefault
     (This : Options_Type)
     return WdDisableFeaturesIntroducedAfter
   is
       RetVal : aliased WdDisableFeaturesIntroducedAfter;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DisableFeaturesIntroducedAfterbyDefault
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DisableFeaturesIntroducedAfterbyDefault;

   procedure Put_DisableFeaturesIntroducedAfterbyDefault
     (This : Options_Type;
      prop : WdDisableFeaturesIntroducedAfter)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DisableFeaturesIntroducedAfterbyDefault
         (Pointer (This),
          prop));

   end Put_DisableFeaturesIntroducedAfterbyDefault;

   function Get_PasteSmartCutPaste
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_PasteSmartCutPaste
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_PasteSmartCutPaste;

   procedure Put_PasteSmartCutPaste
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_PasteSmartCutPaste
         (Pointer (This),
          prop));

   end Put_PasteSmartCutPaste;

   function Get_DisplayPasteOptions
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DisplayPasteOptions
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DisplayPasteOptions;

   procedure Put_DisplayPasteOptions
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DisplayPasteOptions
         (Pointer (This),
          prop));

   end Put_DisplayPasteOptions;

   function Get_PromptUpdateStyle
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_PromptUpdateStyle
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_PromptUpdateStyle;

   procedure Put_PromptUpdateStyle
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_PromptUpdateStyle
         (Pointer (This),
          prop));

   end Put_PromptUpdateStyle;

   function Get_DefaultEPostageApp
     (This : Options_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DefaultEPostageApp
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DefaultEPostageApp;

   procedure Put_DefaultEPostageApp
     (This : Options_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DefaultEPostageApp
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_DefaultEPostageApp;

   function Get_DefaultTextEncoding
     (This : Options_Type)
     return MsoEncoding
   is
       RetVal : aliased MsoEncoding;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DefaultTextEncoding
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DefaultTextEncoding;

   procedure Put_DefaultTextEncoding
     (This : Options_Type;
      prop : MsoEncoding)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DefaultTextEncoding
         (Pointer (This),
          prop));

   end Put_DefaultTextEncoding;

   function Get_LabelSmartTags
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_LabelSmartTags
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_LabelSmartTags;

   procedure Put_LabelSmartTags
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_LabelSmartTags
         (Pointer (This),
          prop));

   end Put_LabelSmartTags;

   function Get_DisplaySmartTagButtons
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DisplaySmartTagButtons
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DisplaySmartTagButtons;

   procedure Put_DisplaySmartTagButtons
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DisplaySmartTagButtons
         (Pointer (This),
          prop));

   end Put_DisplaySmartTagButtons;

   function Get_WarnBeforeSavingPrintingSendingMarkup
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_WarnBeforeSavingPrintingSendingMarkup
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_WarnBeforeSavingPrintingSendingMarkup;

   procedure Put_WarnBeforeSavingPrintingSendingMarkup
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_WarnBeforeSavingPrintingSendingMarkup
         (Pointer (This),
          prop));

   end Put_WarnBeforeSavingPrintingSendingMarkup;

   function Get_StoreRSIDOnSave
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_StoreRSIDOnSave
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_StoreRSIDOnSave;

   procedure Put_StoreRSIDOnSave
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_StoreRSIDOnSave
         (Pointer (This),
          prop));

   end Put_StoreRSIDOnSave;

   function Get_ShowFormatError
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ShowFormatError
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ShowFormatError;

   procedure Put_ShowFormatError
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ShowFormatError
         (Pointer (This),
          prop));

   end Put_ShowFormatError;

   function Get_FormatScanning
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_FormatScanning
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_FormatScanning;

   procedure Put_FormatScanning
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_FormatScanning
         (Pointer (This),
          prop));

   end Put_FormatScanning;

   function Get_PasteMergeLists
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_PasteMergeLists
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_PasteMergeLists;

   procedure Put_PasteMergeLists
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_PasteMergeLists
         (Pointer (This),
          prop));

   end Put_PasteMergeLists;

   function Get_AutoCreateNewDrawings
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoCreateNewDrawings
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AutoCreateNewDrawings;

   procedure Put_AutoCreateNewDrawings
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AutoCreateNewDrawings
         (Pointer (This),
          prop));

   end Put_AutoCreateNewDrawings;

   function Get_SmartParaSelection
     (This : Options_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SmartParaSelection
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_SmartParaSelection;

   procedure Put_SmartParaSelection
     (This : Options_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_SmartParaSelection
         (Pointer (This),
          prop));

   end Put_SmartParaSelection;

   function Get_RevisionsBalloonPrintOrientation
     (This : Options_Type)
     return WdRevisionsBalloonPrintOrientation
   is
       RetVal : aliased WdRevisionsBalloonPrintOrientation;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_RevisionsBalloonPrintOrientation
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_RevisionsBalloonPrintOrientation;

   procedure Put_RevisionsBalloonPrintOrientation
     (This : Options_Type;
      prop : WdRevisionsBalloonPrintOrientation)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_RevisionsBalloonPrintOrientation
         (Pointer (This),
          prop));

   end Put_RevisionsBalloonPrintOrientation;

   function Get_CommentsColor
     (This : Options_Type)
     return WdColorIndex
   is
       RetVal : aliased WdColorIndex;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_CommentsColor
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_CommentsColor;

   procedure Put_CommentsColor
     (This : Options_Type;
      prop : WdColorIndex)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_CommentsColor
         (Pointer (This),
          prop));

   end Put_CommentsColor;

end winword.Options_Interface;

