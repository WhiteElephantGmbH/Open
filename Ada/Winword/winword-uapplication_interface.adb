with GNATCOM.IInterface;

with GNATCOM.Errors;

package body winword.uApplication_Interface is

   procedure Initialize (This : in out uApplication_Type) is
   begin
      Set_IID (This, IID_uApplication);
   end Initialize;

   function Pointer (This : uApplication_Type)
     return Pointer_To_uApplication
   is
   begin
      return To_Pointer_To_uApplication (Address (This));
   end Pointer;

   procedure Attach (This    : in out uApplication_Type;
                     Pointer : in     Pointer_To_uApplication)
   is
   begin
      Attach (This, GNATCOM.IInterface.To_Pointer_To_IUnknown
              (Pointer.all'address));
   end Attach;

   function Get_Application
     (This : uApplication_Type)
     return Pointer_To_uApplication
   is
       RetVal : aliased Pointer_To_uApplication;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Application
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_Application;

   function Get_Creator
     (This : uApplication_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Creator
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_Creator;

   function Get_Parent
     (This : uApplication_Type)
     return GNATCOM.Types.Pointer_To_IDispatch
   is
       RetVal : aliased GNATCOM.Types.Pointer_To_IDispatch;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Parent
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_Parent;

   function Get_Name
     (This : uApplication_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Name
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_Name;

   function Get_Documents
     (This : uApplication_Type)
     return Pointer_To_Documents
   is
       RetVal : aliased Pointer_To_Documents;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Documents
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_Documents;

   function Get_Windows
     (This : uApplication_Type)
     return Pointer_To_Windows
   is
       RetVal : aliased Pointer_To_Windows;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Windows
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_Windows;

   function Get_ActiveDocument
     (This : uApplication_Type)
     return Pointer_To_uDocument
   is
       RetVal : aliased Pointer_To_uDocument;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ActiveDocument
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_ActiveDocument;

   function Get_ActiveWindow
     (This : uApplication_Type)
     return Pointer_To_Window
   is
       RetVal : aliased Pointer_To_Window;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ActiveWindow
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_ActiveWindow;

   function Get_Selection
     (This : uApplication_Type)
     return Pointer_To_Selection
   is
       RetVal : aliased Pointer_To_Selection;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Selection
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_Selection;

   function Get_WordBasic
     (This : uApplication_Type)
     return GNATCOM.Types.Pointer_To_IDispatch
   is
       RetVal : aliased GNATCOM.Types.Pointer_To_IDispatch;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_WordBasic
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_WordBasic;

   function Get_RecentFiles
     (This : uApplication_Type)
     return Pointer_To_RecentFiles
   is
       RetVal : aliased Pointer_To_RecentFiles;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_RecentFiles
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_RecentFiles;

   function Get_NormalTemplate
     (This : uApplication_Type)
     return Pointer_To_Template
   is
       RetVal : aliased Pointer_To_Template;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_NormalTemplate
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_NormalTemplate;

   function Get_System
     (This : uApplication_Type)
     return Pointer_To_System
   is
       RetVal : aliased Pointer_To_System;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_System
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_System;

   function Get_AutoCorrect
     (This : uApplication_Type)
     return Pointer_To_AutoCorrect
   is
       RetVal : aliased Pointer_To_AutoCorrect;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoCorrect
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_AutoCorrect;

   function Get_FontNames
     (This : uApplication_Type)
     return Pointer_To_FontNames
   is
       RetVal : aliased Pointer_To_FontNames;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_FontNames
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_FontNames;

   function Get_LandscapeFontNames
     (This : uApplication_Type)
     return Pointer_To_FontNames
   is
       RetVal : aliased Pointer_To_FontNames;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_LandscapeFontNames
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_LandscapeFontNames;

   function Get_PortraitFontNames
     (This : uApplication_Type)
     return Pointer_To_FontNames
   is
       RetVal : aliased Pointer_To_FontNames;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_PortraitFontNames
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_PortraitFontNames;

   function Get_Languages
     (This : uApplication_Type)
     return Pointer_To_Languages
   is
       RetVal : aliased Pointer_To_Languages;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Languages
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_Languages;

   function Get_Assistant
     (This : uApplication_Type)
     return Pointer_To_Assistant
   is
       RetVal : aliased Pointer_To_Assistant;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Assistant
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_Assistant;

   function Get_Browser
     (This : uApplication_Type)
     return Pointer_To_Browser
   is
       RetVal : aliased Pointer_To_Browser;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Browser
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_Browser;

   function Get_FileConverters
     (This : uApplication_Type)
     return Pointer_To_FileConverters
   is
       RetVal : aliased Pointer_To_FileConverters;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_FileConverters
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_FileConverters;

   function Get_MailingLabel
     (This : uApplication_Type)
     return Pointer_To_MailingLabel
   is
       RetVal : aliased Pointer_To_MailingLabel;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_MailingLabel
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_MailingLabel;

   function Get_Dialogs
     (This : uApplication_Type)
     return Pointer_To_Dialogs
   is
       RetVal : aliased Pointer_To_Dialogs;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Dialogs
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_Dialogs;

   function Get_CaptionLabels
     (This : uApplication_Type)
     return Pointer_To_CaptionLabels
   is
       RetVal : aliased Pointer_To_CaptionLabels;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_CaptionLabels
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_CaptionLabels;

   function Get_AutoCaptions
     (This : uApplication_Type)
     return Pointer_To_AutoCaptions
   is
       RetVal : aliased Pointer_To_AutoCaptions;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoCaptions
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_AutoCaptions;

   function Get_AddIns
     (This : uApplication_Type)
     return Pointer_To_AddIns
   is
       RetVal : aliased Pointer_To_AddIns;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AddIns
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_AddIns;

   function Get_Visible
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Visible
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_Visible;

   procedure Put_Visible
     (This : uApplication_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Visible
         (Pointer (This),
          prop));

   end Put_Visible;

   function Get_Version
     (This : uApplication_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Version
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_Version;

   function Get_ScreenUpdating
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ScreenUpdating
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_ScreenUpdating;

   procedure Put_ScreenUpdating
     (This : uApplication_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ScreenUpdating
         (Pointer (This),
          prop));

   end Put_ScreenUpdating;

   function Get_PrintPreview
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_PrintPreview
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_PrintPreview;

   procedure Put_PrintPreview
     (This : uApplication_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_PrintPreview
         (Pointer (This),
          prop));

   end Put_PrintPreview;

   function Get_Tasks
     (This : uApplication_Type)
     return Pointer_To_Tasks
   is
       RetVal : aliased Pointer_To_Tasks;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Tasks
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_Tasks;

   function Get_DisplayStatusBar
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DisplayStatusBar
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_DisplayStatusBar;

   procedure Put_DisplayStatusBar
     (This : uApplication_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DisplayStatusBar
         (Pointer (This),
          prop));

   end Put_DisplayStatusBar;

   function Get_SpecialMode
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SpecialMode
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_SpecialMode;

   function Get_UsableWidth
     (This : uApplication_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_UsableWidth
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_UsableWidth;

   function Get_UsableHeight
     (This : uApplication_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_UsableHeight
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_UsableHeight;

   function Get_MathCoprocessorAvailable
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_MathCoprocessorAvailable
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_MathCoprocessorAvailable;

   function Get_MouseAvailable
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_MouseAvailable
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_MouseAvailable;

   function Get_International
     (This  : uApplication_Type;
      Index : WdInternationalIndex)
     return GNATCOM.Types.VARIANT
   is
       RetVal : aliased GNATCOM.Types.VARIANT;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_International
         (Pointer (This),
          Index,
          RetVal'unchecked_access));

      return RetVal;
   end Get_International;

   function Get_Build
     (This : uApplication_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Build
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_Build;

   function Get_CapsLock
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_CapsLock
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_CapsLock;

   function Get_NumLock
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_NumLock
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_NumLock;

   function Get_UserName
     (This : uApplication_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_UserName
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_UserName;

   procedure Put_UserName
     (This : uApplication_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_UserName
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.IInterface.Free (prop);

      end if;

   end Put_UserName;

   function Get_UserInitials
     (This : uApplication_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_UserInitials
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_UserInitials;

   procedure Put_UserInitials
     (This : uApplication_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_UserInitials
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.IInterface.Free (prop);

      end if;

   end Put_UserInitials;

   function Get_UserAddress
     (This : uApplication_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_UserAddress
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_UserAddress;

   procedure Put_UserAddress
     (This : uApplication_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_UserAddress
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.IInterface.Free (prop);

      end if;

   end Put_UserAddress;

   function Get_MacroContainer
     (This : uApplication_Type)
     return GNATCOM.Types.Pointer_To_IDispatch
   is
       RetVal : aliased GNATCOM.Types.Pointer_To_IDispatch;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_MacroContainer
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_MacroContainer;

   function Get_DisplayRecentFiles
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DisplayRecentFiles
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_DisplayRecentFiles;

   procedure Put_DisplayRecentFiles
     (This : uApplication_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DisplayRecentFiles
         (Pointer (This),
          prop));

   end Put_DisplayRecentFiles;

   function Get_CommandBars
     (This : uApplication_Type)
     return Pointer_To_uCommandBars
   is
       RetVal : aliased Pointer_To_uCommandBars;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_CommandBars
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_CommandBars;

   function Get_SynonymInfo
     (This       : uApplication_Type;
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
          RetVal'unchecked_access));

      if Free then
               GNATCOM.IInterface.Free (Word);

      end if;

      return RetVal;
   end Get_SynonymInfo;

   function Get_VBE
     (This : uApplication_Type)
     return Pointer_To_VBE
   is
       RetVal : aliased Pointer_To_VBE;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_VBE
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_VBE;

   function Get_DefaultSaveFormat
     (This : uApplication_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DefaultSaveFormat
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_DefaultSaveFormat;

   procedure Put_DefaultSaveFormat
     (This : uApplication_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DefaultSaveFormat
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.IInterface.Free (prop);

      end if;

   end Put_DefaultSaveFormat;

   function Get_ListGalleries
     (This : uApplication_Type)
     return Pointer_To_ListGalleries
   is
       RetVal : aliased Pointer_To_ListGalleries;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ListGalleries
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_ListGalleries;

   function Get_ActivePrinter
     (This : uApplication_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ActivePrinter
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_ActivePrinter;

   procedure Put_ActivePrinter
     (This : uApplication_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ActivePrinter
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.IInterface.Free (prop);

      end if;

   end Put_ActivePrinter;

   function Get_Templates
     (This : uApplication_Type)
     return Pointer_To_Templates
   is
       RetVal : aliased Pointer_To_Templates;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Templates
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_Templates;

   function Get_CustomizationContext
     (This : uApplication_Type)
     return GNATCOM.Types.Pointer_To_IDispatch
   is
       RetVal : aliased GNATCOM.Types.Pointer_To_IDispatch;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_CustomizationContext
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_CustomizationContext;

   procedure Put_CustomizationContext
     (This : uApplication_Type;
      prop : GNATCOM.Types.Pointer_To_IDispatch)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_CustomizationContext
         (Pointer (This),
          prop));

   end Put_CustomizationContext;

   function Get_KeyBindings
     (This : uApplication_Type)
     return Pointer_To_KeyBindings
   is
       RetVal : aliased Pointer_To_KeyBindings;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_KeyBindings
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_KeyBindings;

   function Get_KeysBoundTo
     (This             : uApplication_Type;
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
          RetVal'unchecked_access));

      if Free then
               GNATCOM.IInterface.Free (Command);

      end if;

      return RetVal;
   end Get_KeysBoundTo;

   function Get_FindKey
     (This     : uApplication_Type;
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
          RetVal'unchecked_access));

      return RetVal;
   end Get_FindKey;

   function Get_Caption
     (This : uApplication_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Caption
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_Caption;

   procedure Put_Caption
     (This : uApplication_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Caption
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.IInterface.Free (prop);

      end if;

   end Put_Caption;

   function Get_Path
     (This : uApplication_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Path
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_Path;

   function Get_DisplayScrollBars
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DisplayScrollBars
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_DisplayScrollBars;

   procedure Put_DisplayScrollBars
     (This : uApplication_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DisplayScrollBars
         (Pointer (This),
          prop));

   end Put_DisplayScrollBars;

   function Get_StartupPath
     (This : uApplication_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_StartupPath
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_StartupPath;

   procedure Put_StartupPath
     (This : uApplication_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_StartupPath
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.IInterface.Free (prop);

      end if;

   end Put_StartupPath;

   function Get_BackgroundSavingStatus
     (This : uApplication_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_BackgroundSavingStatus
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_BackgroundSavingStatus;

   function Get_BackgroundPrintingStatus
     (This : uApplication_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_BackgroundPrintingStatus
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_BackgroundPrintingStatus;

   function Get_Left
     (This : uApplication_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Left
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_Left;

   procedure Put_Left
     (This : uApplication_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Left
         (Pointer (This),
          prop));

   end Put_Left;

   function Get_Top
     (This : uApplication_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Top
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_Top;

   procedure Put_Top
     (This : uApplication_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Top
         (Pointer (This),
          prop));

   end Put_Top;

   function Get_Width
     (This : uApplication_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Width
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_Width;

   procedure Put_Width
     (This : uApplication_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Width
         (Pointer (This),
          prop));

   end Put_Width;

   function Get_Height
     (This : uApplication_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Height
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_Height;

   procedure Put_Height
     (This : uApplication_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Height
         (Pointer (This),
          prop));

   end Put_Height;

   function Get_WindowState
     (This : uApplication_Type)
     return WdWindowState
   is
       RetVal : aliased WdWindowState;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_WindowState
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_WindowState;

   procedure Put_WindowState
     (This : uApplication_Type;
      prop : WdWindowState)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_WindowState
         (Pointer (This),
          prop));

   end Put_WindowState;

   function Get_DisplayAutoCompleteTips
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DisplayAutoCompleteTips
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_DisplayAutoCompleteTips;

   procedure Put_DisplayAutoCompleteTips
     (This : uApplication_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DisplayAutoCompleteTips
         (Pointer (This),
          prop));

   end Put_DisplayAutoCompleteTips;

   function Get_Options
     (This : uApplication_Type)
     return Pointer_To_Options
   is
       RetVal : aliased Pointer_To_Options;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Options
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_Options;

   function Get_DisplayAlerts
     (This : uApplication_Type)
     return WdAlertLevel
   is
       RetVal : aliased WdAlertLevel;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DisplayAlerts
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_DisplayAlerts;

   procedure Put_DisplayAlerts
     (This : uApplication_Type;
      prop : WdAlertLevel)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DisplayAlerts
         (Pointer (This),
          prop));

   end Put_DisplayAlerts;

   function Get_CustomDictionaries
     (This : uApplication_Type)
     return Pointer_To_Dictionaries
   is
       RetVal : aliased Pointer_To_Dictionaries;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_CustomDictionaries
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_CustomDictionaries;

   function Get_PathSeparator
     (This : uApplication_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_PathSeparator
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_PathSeparator;

   procedure Put_StatusBar
     (This : uApplication_Type;
      P1   : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_StatusBar
         (Pointer (This),
          P1));

      if Free then
               GNATCOM.IInterface.Free (P1);

      end if;

   end Put_StatusBar;

   function Get_MAPIAvailable
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_MAPIAvailable
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_MAPIAvailable;

   function Get_DisplayScreenTips
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DisplayScreenTips
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_DisplayScreenTips;

   procedure Put_DisplayScreenTips
     (This : uApplication_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DisplayScreenTips
         (Pointer (This),
          prop));

   end Put_DisplayScreenTips;

   function Get_EnableCancelKey
     (This : uApplication_Type)
     return WdEnableCancelKey
   is
       RetVal : aliased WdEnableCancelKey;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_EnableCancelKey
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_EnableCancelKey;

   procedure Put_EnableCancelKey
     (This : uApplication_Type;
      prop : WdEnableCancelKey)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_EnableCancelKey
         (Pointer (This),
          prop));

   end Put_EnableCancelKey;

   function Get_UserControl
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_UserControl
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_UserControl;

   function Get_FileSearch
     (This : uApplication_Type)
     return Pointer_To_FileSearch
   is
       RetVal : aliased Pointer_To_FileSearch;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_FileSearch
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_FileSearch;

   function Get_MailSystem
     (This : uApplication_Type)
     return WdMailSystem
   is
       RetVal : aliased WdMailSystem;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_MailSystem
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_MailSystem;

   function Get_DefaultTableSeparator
     (This : uApplication_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DefaultTableSeparator
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_DefaultTableSeparator;

   procedure Put_DefaultTableSeparator
     (This : uApplication_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DefaultTableSeparator
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.IInterface.Free (prop);

      end if;

   end Put_DefaultTableSeparator;

   function Get_ShowVisualBasicEditor
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ShowVisualBasicEditor
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_ShowVisualBasicEditor;

   procedure Put_ShowVisualBasicEditor
     (This : uApplication_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ShowVisualBasicEditor
         (Pointer (This),
          prop));

   end Put_ShowVisualBasicEditor;

   function Get_BrowseExtraFileTypes
     (This : uApplication_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_BrowseExtraFileTypes
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_BrowseExtraFileTypes;

   procedure Put_BrowseExtraFileTypes
     (This : uApplication_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_BrowseExtraFileTypes
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.IInterface.Free (prop);

      end if;

   end Put_BrowseExtraFileTypes;

   function Get_IsObjectValid
     (This   : uApplication_Type;
      Object : GNATCOM.Types.Pointer_To_IDispatch)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_IsObjectValid
         (Pointer (This),
          Object,
          RetVal'unchecked_access));

      return RetVal;
   end Get_IsObjectValid;

   function Get_HangulHanjaDictionaries
     (This : uApplication_Type)
     return Pointer_To_HangulHanjaConversionDictionaries
   is
       RetVal : aliased Pointer_To_HangulHanjaConversionDictionaries;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_HangulHanjaDictionaries
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_HangulHanjaDictionaries;

   function Get_MailMessage
     (This : uApplication_Type)
     return Pointer_To_MailMessage
   is
       RetVal : aliased Pointer_To_MailMessage;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_MailMessage
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_MailMessage;

   function Get_FocusInMailHeader
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_FocusInMailHeader
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_FocusInMailHeader;

   procedure Quit
     (This           : uApplication_Type;
      SaveChanges    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      OriginalFormat : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      RouteDocument  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Quit
         (Pointer (This),
          SaveChanges,
          OriginalFormat,
          RouteDocument));

   end Quit;

   procedure ScreenRefresh
     (This : uApplication_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ScreenRefresh
         (Pointer (This)));

   end ScreenRefresh;

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
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.PrintOutOld
         (Pointer (This),
          Background,
          Append,
          uRange,
          OutputFileName,
          From,
          To,
          Item,
          Copies,
          Pages,
          PageType,
          PrintToFile,
          Collate,
          FileName,
          ActivePrinterMacGX,
          ManualDuplexPrint));

   end PrintOutOld;

   procedure LookupNameProperties
     (This : uApplication_Type;
      Name : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.LookupNameProperties
         (Pointer (This),
          Name));

      if Free then
               GNATCOM.IInterface.Free (Name);

      end if;

   end LookupNameProperties;

   procedure SubstituteFont
     (This            : uApplication_Type;
      UnavailableFont : GNATCOM.Types.BSTR;
      SubstituteFont  : GNATCOM.Types.BSTR;
      Free            : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.SubstituteFont
         (Pointer (This),
          UnavailableFont,
          SubstituteFont));

      if Free then
               GNATCOM.IInterface.Free (UnavailableFont);
               GNATCOM.IInterface.Free (SubstituteFont);

      end if;

   end SubstituteFont;

   function Repeat
     (This  : uApplication_Type;
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
          RetVal'unchecked_access));

      return RetVal;
   end Repeat;

   procedure DDEExecute
     (This    : uApplication_Type;
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
               GNATCOM.IInterface.Free (Command);

      end if;

   end DDEExecute;

   function DDEInitiate
     (This  : uApplication_Type;
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
          RetVal'unchecked_access));

      if Free then
               GNATCOM.IInterface.Free (App);
               GNATCOM.IInterface.Free (Topic);

      end if;

      return RetVal;
   end DDEInitiate;

   procedure DDEPoke
     (This    : uApplication_Type;
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
               GNATCOM.IInterface.Free (Item);
               GNATCOM.IInterface.Free (Data);

      end if;

   end DDEPoke;

   function DDERequest
     (This    : uApplication_Type;
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
          RetVal'unchecked_access));

      if Free then
               GNATCOM.IInterface.Free (Item);

      end if;

      return RetVal;
   end DDERequest;

   procedure DDETerminate
     (This    : uApplication_Type;
      Channel : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.DDETerminate
         (Pointer (This),
          Channel));

   end DDETerminate;

   procedure DDETerminateAll
     (This : uApplication_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.DDETerminateAll
         (Pointer (This)));

   end DDETerminateAll;

   function BuildKeyCode
     (This : uApplication_Type;
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
          RetVal'unchecked_access));

      return RetVal;
   end BuildKeyCode;

   function KeyString
     (This     : uApplication_Type;
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
          RetVal'unchecked_access));

      return RetVal;
   end KeyString;

   procedure OrganizerCopy
     (This        : uApplication_Type;
      Source      : GNATCOM.Types.BSTR;
      Destination : GNATCOM.Types.BSTR;
      Name        : GNATCOM.Types.BSTR;
      Object      : WdOrganizerObject;
      Free        : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.OrganizerCopy
         (Pointer (This),
          Source,
          Destination,
          Name,
          Object));

      if Free then
               GNATCOM.IInterface.Free (Source);
               GNATCOM.IInterface.Free (Destination);
               GNATCOM.IInterface.Free (Name);

      end if;

   end OrganizerCopy;

   procedure OrganizerDelete
     (This   : uApplication_Type;
      Source : GNATCOM.Types.BSTR;
      Name   : GNATCOM.Types.BSTR;
      Object : WdOrganizerObject;
      Free   : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.OrganizerDelete
         (Pointer (This),
          Source,
          Name,
          Object));

      if Free then
               GNATCOM.IInterface.Free (Source);
               GNATCOM.IInterface.Free (Name);

      end if;

   end OrganizerDelete;

   procedure OrganizerRename
     (This    : uApplication_Type;
      Source  : GNATCOM.Types.BSTR;
      Name    : GNATCOM.Types.BSTR;
      NewName : GNATCOM.Types.BSTR;
      Object  : WdOrganizerObject;
      Free    : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.OrganizerRename
         (Pointer (This),
          Source,
          Name,
          NewName,
          Object));

      if Free then
               GNATCOM.IInterface.Free (Source);
               GNATCOM.IInterface.Free (Name);
               GNATCOM.IInterface.Free (NewName);

      end if;

   end OrganizerRename;

   procedure AddAddress
     (This  : uApplication_Type;
      TagID : GNATCOM.Types.Pointer_To_Pointer_To_SAFEARRAY;
      Value : GNATCOM.Types.Pointer_To_Pointer_To_SAFEARRAY)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.AddAddress
         (Pointer (This),
          TagID,
          Value));

   end AddAddress;

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
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.GetAddress
         (Pointer (This),
          Name,
          AddressProperties,
          UseAutoText,
          DisplaySelectDialog,
          SelectDialog,
          CheckNamesDialog,
          RecentAddressesChoice,
          UpdateRecentAddresses,
          RetVal'unchecked_access));

      return RetVal;
   end GetAddress;

   function CheckGrammar
     (This   : uApplication_Type;
      String : GNATCOM.Types.BSTR;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.CheckGrammar
         (Pointer (This),
          String,
          RetVal'unchecked_access));

      if Free then
               GNATCOM.IInterface.Free (String);

      end if;

      return RetVal;
   end CheckGrammar;

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
          RetVal'unchecked_access));

      if Free then
               GNATCOM.IInterface.Free (Word);

      end if;

      return RetVal;
   end CheckSpelling;

   procedure ResetIgnoreAll
     (This : uApplication_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ResetIgnoreAll
         (Pointer (This)));

   end ResetIgnoreAll;

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
          RetVal'unchecked_access));

      if Free then
               GNATCOM.IInterface.Free (Word);

      end if;

      return RetVal;
   end GetSpellingSuggestions;

   procedure GoBack
     (This : uApplication_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.GoBack
         (Pointer (This)));

   end GoBack;

   procedure Help
     (This     : uApplication_Type;
      HelpType : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Help
         (Pointer (This),
          HelpType));

   end Help;

   procedure AutomaticChange
     (This : uApplication_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.AutomaticChange
         (Pointer (This)));

   end AutomaticChange;

   procedure ShowMe
     (This : uApplication_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ShowMe
         (Pointer (This)));

   end ShowMe;

   procedure HelpTool
     (This : uApplication_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.HelpTool
         (Pointer (This)));

   end HelpTool;

   function NewWindow
     (This : uApplication_Type)
     return Pointer_To_Window
   is
       RetVal : aliased Pointer_To_Window;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.NewWindow
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end NewWindow;

   procedure ListCommands
     (This            : uApplication_Type;
      ListAllCommands : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ListCommands
         (Pointer (This),
          ListAllCommands));

   end ListCommands;

   procedure ShowClipboard
     (This : uApplication_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ShowClipboard
         (Pointer (This)));

   end ShowClipboard;

   procedure OnTime
     (This      : uApplication_Type;
      uWhen     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Name      : GNATCOM.Types.BSTR;
      Tolerance : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Free      : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.OnTime
         (Pointer (This),
          uWhen,
          Name,
          Tolerance));

      if Free then
               GNATCOM.IInterface.Free (Name);

      end if;

   end OnTime;

   procedure NextLetter
     (This : uApplication_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.NextLetter
         (Pointer (This)));

   end NextLetter;

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
     return Interfaces.C.short
   is
       RetVal : aliased Interfaces.C.short;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.MountVolume
         (Pointer (This),
          Zone,
          Server,
          Volume,
          User,
          UserPassword,
          VolumePassword,
          RetVal'unchecked_access));

      if Free then
               GNATCOM.IInterface.Free (Zone);
               GNATCOM.IInterface.Free (Server);
               GNATCOM.IInterface.Free (Volume);

      end if;

      return RetVal;
   end MountVolume;

   function CleanString
     (This   : uApplication_Type;
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
          RetVal'unchecked_access));

      if Free then
               GNATCOM.IInterface.Free (String);

      end if;

      return RetVal;
   end CleanString;

   procedure SendFax
     (This : uApplication_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.SendFax
         (Pointer (This)));

   end SendFax;

   procedure ChangeFileOpenDirectory
     (This : uApplication_Type;
      Path : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ChangeFileOpenDirectory
         (Pointer (This),
          Path));

      if Free then
               GNATCOM.IInterface.Free (Path);

      end if;

   end ChangeFileOpenDirectory;

   procedure RunOld
     (This      : uApplication_Type;
      MacroName : GNATCOM.Types.BSTR;
      Free      : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.RunOld
         (Pointer (This),
          MacroName));

      if Free then
               GNATCOM.IInterface.Free (MacroName);

      end if;

   end RunOld;

   procedure GoForward
     (This : uApplication_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.GoForward
         (Pointer (This)));

   end GoForward;

   procedure Move
     (This : uApplication_Type;
      Left : Interfaces.C.long;
      Top  : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Move
         (Pointer (This),
          Left,
          Top));

   end Move;

   procedure Resize
     (This   : uApplication_Type;
      Width  : Interfaces.C.long;
      Height : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Resize
         (Pointer (This),
          Width,
          Height));

   end Resize;

   function InchesToPoints
     (This   : uApplication_Type;
      Inches : Interfaces.C.C_float)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.InchesToPoints
         (Pointer (This),
          Inches,
          RetVal'unchecked_access));

      return RetVal;
   end InchesToPoints;

   function CentimetersToPoints
     (This        : uApplication_Type;
      Centimeters : Interfaces.C.C_float)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.CentimetersToPoints
         (Pointer (This),
          Centimeters,
          RetVal'unchecked_access));

      return RetVal;
   end CentimetersToPoints;

   function MillimetersToPoints
     (This        : uApplication_Type;
      Millimeters : Interfaces.C.C_float)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.MillimetersToPoints
         (Pointer (This),
          Millimeters,
          RetVal'unchecked_access));

      return RetVal;
   end MillimetersToPoints;

   function PicasToPoints
     (This  : uApplication_Type;
      Picas : Interfaces.C.C_float)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.PicasToPoints
         (Pointer (This),
          Picas,
          RetVal'unchecked_access));

      return RetVal;
   end PicasToPoints;

   function LinesToPoints
     (This  : uApplication_Type;
      Lines : Interfaces.C.C_float)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.LinesToPoints
         (Pointer (This),
          Lines,
          RetVal'unchecked_access));

      return RetVal;
   end LinesToPoints;

   function PointsToInches
     (This   : uApplication_Type;
      Points : Interfaces.C.C_float)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.PointsToInches
         (Pointer (This),
          Points,
          RetVal'unchecked_access));

      return RetVal;
   end PointsToInches;

   function PointsToCentimeters
     (This   : uApplication_Type;
      Points : Interfaces.C.C_float)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.PointsToCentimeters
         (Pointer (This),
          Points,
          RetVal'unchecked_access));

      return RetVal;
   end PointsToCentimeters;

   function PointsToMillimeters
     (This   : uApplication_Type;
      Points : Interfaces.C.C_float)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.PointsToMillimeters
         (Pointer (This),
          Points,
          RetVal'unchecked_access));

      return RetVal;
   end PointsToMillimeters;

   function PointsToPicas
     (This   : uApplication_Type;
      Points : Interfaces.C.C_float)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.PointsToPicas
         (Pointer (This),
          Points,
          RetVal'unchecked_access));

      return RetVal;
   end PointsToPicas;

   function PointsToLines
     (This   : uApplication_Type;
      Points : Interfaces.C.C_float)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.PointsToLines
         (Pointer (This),
          Points,
          RetVal'unchecked_access));

      return RetVal;
   end PointsToLines;

   procedure Activate
     (This : uApplication_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Activate
         (Pointer (This)));

   end Activate;

   function PointsToPixels
     (This      : uApplication_Type;
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
          RetVal'unchecked_access));

      return RetVal;
   end PointsToPixels;

   function PixelsToPoints
     (This      : uApplication_Type;
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
          RetVal'unchecked_access));

      return RetVal;
   end PixelsToPoints;

   procedure KeyboardLatin
     (This : uApplication_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.KeyboardLatin
         (Pointer (This)));

   end KeyboardLatin;

   procedure KeyboardBidi
     (This : uApplication_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.KeyboardBidi
         (Pointer (This)));

   end KeyboardBidi;

   procedure ToggleKeyboard
     (This : uApplication_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ToggleKeyboard
         (Pointer (This)));

   end ToggleKeyboard;

   function Keyboard
     (This   : uApplication_Type;
      LangId : Interfaces.C.long)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Keyboard
         (Pointer (This),
          LangId,
          RetVal'unchecked_access));

      return RetVal;
   end Keyboard;

   function ProductCode
     (This : uApplication_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ProductCode
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end ProductCode;

   function DefaultWebOptions
     (This : uApplication_Type)
     return Pointer_To_DefaultWebOptions
   is
       RetVal : aliased Pointer_To_DefaultWebOptions;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.DefaultWebOptions
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end DefaultWebOptions;

   procedure DiscussionSupport
     (This   : uApplication_Type;
      uRange : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      cid    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      piCSE  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.DiscussionSupport
         (Pointer (This),
          uRange,
          cid,
          piCSE));

   end DiscussionSupport;

   procedure SetDefaultTheme
     (This         : uApplication_Type;
      Name         : GNATCOM.Types.BSTR;
      DocumentType : WdDocumentMedium;
      Free         : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.SetDefaultTheme
         (Pointer (This),
          Name,
          DocumentType));

      if Free then
               GNATCOM.IInterface.Free (Name);

      end if;

   end SetDefaultTheme;

   function GetDefaultTheme
     (This         : uApplication_Type;
      DocumentType : WdDocumentMedium)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.GetDefaultTheme
         (Pointer (This),
          DocumentType,
          RetVal'unchecked_access));

      return RetVal;
   end GetDefaultTheme;

   function Get_EmailOptions
     (This : uApplication_Type)
     return Pointer_To_EmailOptions
   is
       RetVal : aliased Pointer_To_EmailOptions;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_EmailOptions
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_EmailOptions;

   function Get_Language
     (This : uApplication_Type)
     return MsoLanguageID
   is
       RetVal : aliased MsoLanguageID;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Language
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_Language;

   function Get_COMAddIns
     (This : uApplication_Type)
     return Pointer_To_COMAddIns
   is
       RetVal : aliased Pointer_To_COMAddIns;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_COMAddIns
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_COMAddIns;

   function Get_CheckLanguage
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_CheckLanguage
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_CheckLanguage;

   procedure Put_CheckLanguage
     (This : uApplication_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_CheckLanguage
         (Pointer (This),
          prop));

   end Put_CheckLanguage;

   function Get_LanguageSettings
     (This : uApplication_Type)
     return Pointer_To_LanguageSettings
   is
       RetVal : aliased Pointer_To_LanguageSettings;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_LanguageSettings
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_LanguageSettings;

   function Get_Dummy1
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Dummy1
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_Dummy1;

   function Get_AnswerWizard
     (This : uApplication_Type)
     return Pointer_To_AnswerWizard
   is
       RetVal : aliased Pointer_To_AnswerWizard;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AnswerWizard
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_AnswerWizard;

   function Get_FeatureInstall
     (This : uApplication_Type)
     return MsoFeatureInstall
   is
       RetVal : aliased MsoFeatureInstall;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_FeatureInstall
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_FeatureInstall;

   procedure Put_FeatureInstall
     (This : uApplication_Type;
      prop : MsoFeatureInstall)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_FeatureInstall
         (Pointer (This),
          prop));

   end Put_FeatureInstall;

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
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.PrintOut2000
         (Pointer (This),
          Background,
          Append,
          uRange,
          OutputFileName,
          From,
          To,
          Item,
          Copies,
          Pages,
          PageType,
          PrintToFile,
          Collate,
          FileName,
          ActivePrinterMacGX,
          ManualDuplexPrint,
          PrintZoomColumn,
          PrintZoomRow,
          PrintZoomPaperWidth,
          PrintZoomPaperHeight));

   end PrintOut2000;

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
     return GNATCOM.Types.VARIANT
   is
       RetVal : aliased GNATCOM.Types.VARIANT;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Run
         (Pointer (This),
          MacroName,
          varg1,
          varg2,
          varg3,
          varg4,
          varg5,
          varg6,
          varg7,
          varg8,
          varg9,
          varg10,
          varg11,
          varg12,
          varg13,
          varg14,
          varg15,
          varg16,
          varg17,
          varg18,
          varg19,
          varg20,
          varg21,
          varg22,
          varg23,
          varg24,
          varg25,
          varg26,
          varg27,
          varg28,
          varg29,
          varg30,
          RetVal'unchecked_access));

      if Free then
               GNATCOM.IInterface.Free (MacroName);

      end if;

      return RetVal;
   end Run;

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
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.PrintOut
         (Pointer (This),
          Background,
          Append,
          uRange,
          OutputFileName,
          From,
          To,
          Item,
          Copies,
          Pages,
          PageType,
          PrintToFile,
          Collate,
          FileName,
          ActivePrinterMacGX,
          ManualDuplexPrint,
          PrintZoomColumn,
          PrintZoomRow,
          PrintZoomPaperWidth,
          PrintZoomPaperHeight));

   end PrintOut;

   function Get_AutomationSecurity
     (This : uApplication_Type)
     return MsoAutomationSecurity
   is
       RetVal : aliased MsoAutomationSecurity;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutomationSecurity
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_AutomationSecurity;

   procedure Put_AutomationSecurity
     (This : uApplication_Type;
      prop : MsoAutomationSecurity)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AutomationSecurity
         (Pointer (This),
          prop));

   end Put_AutomationSecurity;

   function Get_FileDialog
     (This           : uApplication_Type;
      FileDialogType : MsoFileDialogType)
     return Pointer_To_FileDialog
   is
       RetVal : aliased Pointer_To_FileDialog;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_FileDialog
         (Pointer (This),
          FileDialogType,
          RetVal'unchecked_access));

      return RetVal;
   end Get_FileDialog;

   function Get_EmailTemplate
     (This : uApplication_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_EmailTemplate
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_EmailTemplate;

   procedure Put_EmailTemplate
     (This : uApplication_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_EmailTemplate
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.IInterface.Free (prop);

      end if;

   end Put_EmailTemplate;

   function Get_ShowWindowsInTaskbar
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ShowWindowsInTaskbar
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_ShowWindowsInTaskbar;

   procedure Put_ShowWindowsInTaskbar
     (This : uApplication_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ShowWindowsInTaskbar
         (Pointer (This),
          prop));

   end Put_ShowWindowsInTaskbar;

   function Get_NewDocument
     (This : uApplication_Type)
     return Pointer_To_NewFile
   is
       RetVal : aliased Pointer_To_NewFile;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_NewDocument
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_NewDocument;

   function Get_ShowStartupDialog
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ShowStartupDialog
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_ShowStartupDialog;

   procedure Put_ShowStartupDialog
     (This : uApplication_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ShowStartupDialog
         (Pointer (This),
          prop));

   end Put_ShowStartupDialog;

   function Get_AutoCorrectEmail
     (This : uApplication_Type)
     return Pointer_To_AutoCorrect
   is
       RetVal : aliased Pointer_To_AutoCorrect;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoCorrectEmail
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_AutoCorrectEmail;

   function Get_TaskPanes
     (This : uApplication_Type)
     return Pointer_To_TaskPanes
   is
       RetVal : aliased Pointer_To_TaskPanes;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_TaskPanes
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_TaskPanes;

   function Get_DefaultLegalBlackline
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DefaultLegalBlackline
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Get_DefaultLegalBlackline;

   procedure Put_DefaultLegalBlackline
     (This : uApplication_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DefaultLegalBlackline
         (Pointer (This),
          prop));

   end Put_DefaultLegalBlackline;

   function Dummy2
     (This : uApplication_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Dummy2
         (Pointer (This),
          RetVal'unchecked_access));

      return RetVal;
   end Dummy2;

end winword.uApplication_Interface;

