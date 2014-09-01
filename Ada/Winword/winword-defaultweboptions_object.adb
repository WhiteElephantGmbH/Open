package body winword.DefaultWebOptions_Object is

   function Get_Application
     (This : DefaultWebOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, DefaultWebOptions_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : DefaultWebOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, DefaultWebOptions_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : DefaultWebOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, DefaultWebOptions_Get_Parent);
   end Get_Parent;

   function Get_OptimizeForBrowser
     (This : DefaultWebOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, DefaultWebOptions_Get_OptimizeForBrowser);
   end Get_OptimizeForBrowser;

   procedure Put_OptimizeForBrowser
     (This : DefaultWebOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         DefaultWebOptions_Put_OptimizeForBrowser,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_OptimizeForBrowser;

   function Get_BrowserLevel
     (This : DefaultWebOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, DefaultWebOptions_Get_BrowserLevel);
   end Get_BrowserLevel;

   procedure Put_BrowserLevel
     (This : DefaultWebOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         DefaultWebOptions_Put_BrowserLevel,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_BrowserLevel;

   function Get_RelyOnCSS
     (This : DefaultWebOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, DefaultWebOptions_Get_RelyOnCSS);
   end Get_RelyOnCSS;

   procedure Put_RelyOnCSS
     (This : DefaultWebOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         DefaultWebOptions_Put_RelyOnCSS,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_RelyOnCSS;

   function Get_OrganizeInFolder
     (This : DefaultWebOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, DefaultWebOptions_Get_OrganizeInFolder);
   end Get_OrganizeInFolder;

   procedure Put_OrganizeInFolder
     (This : DefaultWebOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         DefaultWebOptions_Put_OrganizeInFolder,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_OrganizeInFolder;

   function Get_UpdateLinksOnSave
     (This : DefaultWebOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, DefaultWebOptions_Get_UpdateLinksOnSave);
   end Get_UpdateLinksOnSave;

   procedure Put_UpdateLinksOnSave
     (This : DefaultWebOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         DefaultWebOptions_Put_UpdateLinksOnSave,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_UpdateLinksOnSave;

   function Get_UseLongFileNames
     (This : DefaultWebOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, DefaultWebOptions_Get_UseLongFileNames);
   end Get_UseLongFileNames;

   procedure Put_UseLongFileNames
     (This : DefaultWebOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         DefaultWebOptions_Put_UseLongFileNames,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_UseLongFileNames;

   function Get_CheckIfOfficeIsHTMLEditor
     (This : DefaultWebOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, DefaultWebOptions_Get_CheckIfOfficeIsHTMLEditor);
   end Get_CheckIfOfficeIsHTMLEditor;

   procedure Put_CheckIfOfficeIsHTMLEditor
     (This : DefaultWebOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         DefaultWebOptions_Put_CheckIfOfficeIsHTMLEditor,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_CheckIfOfficeIsHTMLEditor;

   function Get_CheckIfWordIsDefaultHTMLEditor
     (This : DefaultWebOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, DefaultWebOptions_Get_CheckIfWordIsDefaultHTMLEditor);
   end Get_CheckIfWordIsDefaultHTMLEditor;

   procedure Put_CheckIfWordIsDefaultHTMLEditor
     (This : DefaultWebOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         DefaultWebOptions_Put_CheckIfWordIsDefaultHTMLEditor,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_CheckIfWordIsDefaultHTMLEditor;

   function Get_RelyOnVML
     (This : DefaultWebOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, DefaultWebOptions_Get_RelyOnVML);
   end Get_RelyOnVML;

   procedure Put_RelyOnVML
     (This : DefaultWebOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         DefaultWebOptions_Put_RelyOnVML,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_RelyOnVML;

   function Get_AllowPNG
     (This : DefaultWebOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, DefaultWebOptions_Get_AllowPNG);
   end Get_AllowPNG;

   procedure Put_AllowPNG
     (This : DefaultWebOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         DefaultWebOptions_Put_AllowPNG,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AllowPNG;

   function Get_ScreenSize
     (This : DefaultWebOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, DefaultWebOptions_Get_ScreenSize);
   end Get_ScreenSize;

   procedure Put_ScreenSize
     (This : DefaultWebOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         DefaultWebOptions_Put_ScreenSize,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ScreenSize;

   function Get_PixelsPerInch
     (This : DefaultWebOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, DefaultWebOptions_Get_PixelsPerInch);
   end Get_PixelsPerInch;

   procedure Put_PixelsPerInch
     (This : DefaultWebOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         DefaultWebOptions_Put_PixelsPerInch,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_PixelsPerInch;

   function Get_Encoding
     (This : DefaultWebOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, DefaultWebOptions_Get_Encoding);
   end Get_Encoding;

   procedure Put_Encoding
     (This : DefaultWebOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         DefaultWebOptions_Put_Encoding,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Encoding;

   function Get_AlwaysSaveInDefaultEncoding
     (This : DefaultWebOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, DefaultWebOptions_Get_AlwaysSaveInDefaultEncoding);
   end Get_AlwaysSaveInDefaultEncoding;

   procedure Put_AlwaysSaveInDefaultEncoding
     (This : DefaultWebOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         DefaultWebOptions_Put_AlwaysSaveInDefaultEncoding,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AlwaysSaveInDefaultEncoding;

   function Get_Fonts
     (This : DefaultWebOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, DefaultWebOptions_Get_Fonts);
   end Get_Fonts;

   function Get_FolderSuffix
     (This : DefaultWebOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, DefaultWebOptions_Get_FolderSuffix);
   end Get_FolderSuffix;

   function Get_TargetBrowser
     (This : DefaultWebOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, DefaultWebOptions_Get_TargetBrowser);
   end Get_TargetBrowser;

   procedure Put_TargetBrowser
     (This : DefaultWebOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         DefaultWebOptions_Put_TargetBrowser,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_TargetBrowser;

   function Get_SaveNewWebPagesAsWebArchives
     (This : DefaultWebOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, DefaultWebOptions_Get_SaveNewWebPagesAsWebArchives);
   end Get_SaveNewWebPagesAsWebArchives;

   procedure Put_SaveNewWebPagesAsWebArchives
     (This : DefaultWebOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         DefaultWebOptions_Put_SaveNewWebPagesAsWebArchives,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_SaveNewWebPagesAsWebArchives;

end winword.DefaultWebOptions_Object;

