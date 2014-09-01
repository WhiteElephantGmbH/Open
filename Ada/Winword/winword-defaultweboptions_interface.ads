with GNATCOM.Dispinterface;

package winword.DefaultWebOptions_Interface is

   type DefaultWebOptions_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out DefaultWebOptions_Type);

   function Pointer (This : DefaultWebOptions_Type)
     return Pointer_To_DefaultWebOptions;

   procedure Attach (This    : in out DefaultWebOptions_Type;
                     Pointer : in     Pointer_To_DefaultWebOptions);

   function Get_Application
     (This : DefaultWebOptions_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : DefaultWebOptions_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : DefaultWebOptions_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_OptimizeForBrowser
     (This : DefaultWebOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_OptimizeForBrowser
     (This : DefaultWebOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_BrowserLevel
     (This : DefaultWebOptions_Type)
     return WdBrowserLevel;

   procedure Put_BrowserLevel
     (This : DefaultWebOptions_Type;
      prop : WdBrowserLevel);

   function Get_RelyOnCSS
     (This : DefaultWebOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_RelyOnCSS
     (This : DefaultWebOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_OrganizeInFolder
     (This : DefaultWebOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_OrganizeInFolder
     (This : DefaultWebOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_UpdateLinksOnSave
     (This : DefaultWebOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_UpdateLinksOnSave
     (This : DefaultWebOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_UseLongFileNames
     (This : DefaultWebOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_UseLongFileNames
     (This : DefaultWebOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_CheckIfOfficeIsHTMLEditor
     (This : DefaultWebOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_CheckIfOfficeIsHTMLEditor
     (This : DefaultWebOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_CheckIfWordIsDefaultHTMLEditor
     (This : DefaultWebOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_CheckIfWordIsDefaultHTMLEditor
     (This : DefaultWebOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_RelyOnVML
     (This : DefaultWebOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_RelyOnVML
     (This : DefaultWebOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_AllowPNG
     (This : DefaultWebOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_AllowPNG
     (This : DefaultWebOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_ScreenSize
     (This : DefaultWebOptions_Type)
     return MsoScreenSize;

   procedure Put_ScreenSize
     (This : DefaultWebOptions_Type;
      prop : MsoScreenSize);

   function Get_PixelsPerInch
     (This : DefaultWebOptions_Type)
     return Interfaces.C.long;

   procedure Put_PixelsPerInch
     (This : DefaultWebOptions_Type;
      prop : Interfaces.C.long);

   function Get_Encoding
     (This : DefaultWebOptions_Type)
     return MsoEncoding;

   procedure Put_Encoding
     (This : DefaultWebOptions_Type;
      prop : MsoEncoding);

   function Get_AlwaysSaveInDefaultEncoding
     (This : DefaultWebOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_AlwaysSaveInDefaultEncoding
     (This : DefaultWebOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_Fonts
     (This : DefaultWebOptions_Type)
     return Pointer_To_WebPageFonts;

   function Get_FolderSuffix
     (This : DefaultWebOptions_Type)
     return GNATCOM.Types.BSTR;

   function Get_TargetBrowser
     (This : DefaultWebOptions_Type)
     return MsoTargetBrowser;

   procedure Put_TargetBrowser
     (This : DefaultWebOptions_Type;
      prop : MsoTargetBrowser);

   function Get_SaveNewWebPagesAsWebArchives
     (This : DefaultWebOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_SaveNewWebPagesAsWebArchives
     (This : DefaultWebOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

end winword.DefaultWebOptions_Interface;

