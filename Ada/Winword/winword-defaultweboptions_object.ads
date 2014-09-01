with GNATCOM.Dispinterface;

package winword.DefaultWebOptions_Object is

   type DefaultWebOptions_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : DefaultWebOptions_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : DefaultWebOptions_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : DefaultWebOptions_Type)
     return GNATCOM.Types.VARIANT;

   function Get_OptimizeForBrowser
     (This : DefaultWebOptions_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_OptimizeForBrowser
     (This : DefaultWebOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_BrowserLevel
     (This : DefaultWebOptions_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_BrowserLevel
     (This : DefaultWebOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_RelyOnCSS
     (This : DefaultWebOptions_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_RelyOnCSS
     (This : DefaultWebOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_OrganizeInFolder
     (This : DefaultWebOptions_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_OrganizeInFolder
     (This : DefaultWebOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_UpdateLinksOnSave
     (This : DefaultWebOptions_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_UpdateLinksOnSave
     (This : DefaultWebOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_UseLongFileNames
     (This : DefaultWebOptions_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_UseLongFileNames
     (This : DefaultWebOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_CheckIfOfficeIsHTMLEditor
     (This : DefaultWebOptions_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_CheckIfOfficeIsHTMLEditor
     (This : DefaultWebOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_CheckIfWordIsDefaultHTMLEditor
     (This : DefaultWebOptions_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_CheckIfWordIsDefaultHTMLEditor
     (This : DefaultWebOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_RelyOnVML
     (This : DefaultWebOptions_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_RelyOnVML
     (This : DefaultWebOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AllowPNG
     (This : DefaultWebOptions_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AllowPNG
     (This : DefaultWebOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ScreenSize
     (This : DefaultWebOptions_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ScreenSize
     (This : DefaultWebOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_PixelsPerInch
     (This : DefaultWebOptions_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_PixelsPerInch
     (This : DefaultWebOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Encoding
     (This : DefaultWebOptions_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Encoding
     (This : DefaultWebOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AlwaysSaveInDefaultEncoding
     (This : DefaultWebOptions_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AlwaysSaveInDefaultEncoding
     (This : DefaultWebOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Fonts
     (This : DefaultWebOptions_Type)
     return GNATCOM.Types.VARIANT;

   function Get_FolderSuffix
     (This : DefaultWebOptions_Type)
     return GNATCOM.Types.VARIANT;

   function Get_TargetBrowser
     (This : DefaultWebOptions_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_TargetBrowser
     (This : DefaultWebOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_SaveNewWebPagesAsWebArchives
     (This : DefaultWebOptions_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_SaveNewWebPagesAsWebArchives
     (This : DefaultWebOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

end winword.DefaultWebOptions_Object;

