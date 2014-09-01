with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.DefaultWebOptions_Interface is

   procedure Initialize (This : in out DefaultWebOptions_Type) is
   begin
      Set_IID (This, IID_DefaultWebOptions);
   end Initialize;

   function Pointer (This : DefaultWebOptions_Type)
     return Pointer_To_DefaultWebOptions
   is
   begin
      return To_Pointer_To_DefaultWebOptions (Address (This));
   end Pointer;

   procedure Attach (This    : in out DefaultWebOptions_Type;
                     Pointer : in     Pointer_To_DefaultWebOptions)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : DefaultWebOptions_Type)
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
     (This : DefaultWebOptions_Type)
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
     (This : DefaultWebOptions_Type)
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

   function Get_OptimizeForBrowser
     (This : DefaultWebOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_OptimizeForBrowser
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_OptimizeForBrowser;

   procedure Put_OptimizeForBrowser
     (This : DefaultWebOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_OptimizeForBrowser
         (Pointer (This),
          prop));

   end Put_OptimizeForBrowser;

   function Get_BrowserLevel
     (This : DefaultWebOptions_Type)
     return WdBrowserLevel
   is
       RetVal : aliased WdBrowserLevel;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_BrowserLevel
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_BrowserLevel;

   procedure Put_BrowserLevel
     (This : DefaultWebOptions_Type;
      prop : WdBrowserLevel)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_BrowserLevel
         (Pointer (This),
          prop));

   end Put_BrowserLevel;

   function Get_RelyOnCSS
     (This : DefaultWebOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_RelyOnCSS
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_RelyOnCSS;

   procedure Put_RelyOnCSS
     (This : DefaultWebOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_RelyOnCSS
         (Pointer (This),
          prop));

   end Put_RelyOnCSS;

   function Get_OrganizeInFolder
     (This : DefaultWebOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_OrganizeInFolder
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_OrganizeInFolder;

   procedure Put_OrganizeInFolder
     (This : DefaultWebOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_OrganizeInFolder
         (Pointer (This),
          prop));

   end Put_OrganizeInFolder;

   function Get_UpdateLinksOnSave
     (This : DefaultWebOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_UpdateLinksOnSave
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_UpdateLinksOnSave;

   procedure Put_UpdateLinksOnSave
     (This : DefaultWebOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_UpdateLinksOnSave
         (Pointer (This),
          prop));

   end Put_UpdateLinksOnSave;

   function Get_UseLongFileNames
     (This : DefaultWebOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_UseLongFileNames
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_UseLongFileNames;

   procedure Put_UseLongFileNames
     (This : DefaultWebOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_UseLongFileNames
         (Pointer (This),
          prop));

   end Put_UseLongFileNames;

   function Get_CheckIfOfficeIsHTMLEditor
     (This : DefaultWebOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_CheckIfOfficeIsHTMLEditor
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_CheckIfOfficeIsHTMLEditor;

   procedure Put_CheckIfOfficeIsHTMLEditor
     (This : DefaultWebOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_CheckIfOfficeIsHTMLEditor
         (Pointer (This),
          prop));

   end Put_CheckIfOfficeIsHTMLEditor;

   function Get_CheckIfWordIsDefaultHTMLEditor
     (This : DefaultWebOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_CheckIfWordIsDefaultHTMLEditor
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_CheckIfWordIsDefaultHTMLEditor;

   procedure Put_CheckIfWordIsDefaultHTMLEditor
     (This : DefaultWebOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_CheckIfWordIsDefaultHTMLEditor
         (Pointer (This),
          prop));

   end Put_CheckIfWordIsDefaultHTMLEditor;

   function Get_RelyOnVML
     (This : DefaultWebOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_RelyOnVML
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_RelyOnVML;

   procedure Put_RelyOnVML
     (This : DefaultWebOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_RelyOnVML
         (Pointer (This),
          prop));

   end Put_RelyOnVML;

   function Get_AllowPNG
     (This : DefaultWebOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AllowPNG
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AllowPNG;

   procedure Put_AllowPNG
     (This : DefaultWebOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AllowPNG
         (Pointer (This),
          prop));

   end Put_AllowPNG;

   function Get_ScreenSize
     (This : DefaultWebOptions_Type)
     return MsoScreenSize
   is
       RetVal : aliased MsoScreenSize;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ScreenSize
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ScreenSize;

   procedure Put_ScreenSize
     (This : DefaultWebOptions_Type;
      prop : MsoScreenSize)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ScreenSize
         (Pointer (This),
          prop));

   end Put_ScreenSize;

   function Get_PixelsPerInch
     (This : DefaultWebOptions_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_PixelsPerInch
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_PixelsPerInch;

   procedure Put_PixelsPerInch
     (This : DefaultWebOptions_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_PixelsPerInch
         (Pointer (This),
          prop));

   end Put_PixelsPerInch;

   function Get_Encoding
     (This : DefaultWebOptions_Type)
     return MsoEncoding
   is
       RetVal : aliased MsoEncoding;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Encoding
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Encoding;

   procedure Put_Encoding
     (This : DefaultWebOptions_Type;
      prop : MsoEncoding)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Encoding
         (Pointer (This),
          prop));

   end Put_Encoding;

   function Get_AlwaysSaveInDefaultEncoding
     (This : DefaultWebOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AlwaysSaveInDefaultEncoding
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AlwaysSaveInDefaultEncoding;

   procedure Put_AlwaysSaveInDefaultEncoding
     (This : DefaultWebOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AlwaysSaveInDefaultEncoding
         (Pointer (This),
          prop));

   end Put_AlwaysSaveInDefaultEncoding;

   function Get_Fonts
     (This : DefaultWebOptions_Type)
     return Pointer_To_WebPageFonts
   is
       RetVal : aliased Pointer_To_WebPageFonts;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Fonts
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Fonts;

   function Get_FolderSuffix
     (This : DefaultWebOptions_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_FolderSuffix
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_FolderSuffix;

   function Get_TargetBrowser
     (This : DefaultWebOptions_Type)
     return MsoTargetBrowser
   is
       RetVal : aliased MsoTargetBrowser;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_TargetBrowser
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_TargetBrowser;

   procedure Put_TargetBrowser
     (This : DefaultWebOptions_Type;
      prop : MsoTargetBrowser)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_TargetBrowser
         (Pointer (This),
          prop));

   end Put_TargetBrowser;

   function Get_SaveNewWebPagesAsWebArchives
     (This : DefaultWebOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SaveNewWebPagesAsWebArchives
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_SaveNewWebPagesAsWebArchives;

   procedure Put_SaveNewWebPagesAsWebArchives
     (This : DefaultWebOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_SaveNewWebPagesAsWebArchives
         (Pointer (This),
          prop));

   end Put_SaveNewWebPagesAsWebArchives;

end winword.DefaultWebOptions_Interface;

