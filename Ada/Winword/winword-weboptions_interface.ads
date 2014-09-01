with GNATCOM.Dispinterface;

package winword.WebOptions_Interface is

   type WebOptions_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out WebOptions_Type);

   function Pointer (This : WebOptions_Type)
     return Pointer_To_WebOptions;

   procedure Attach (This    : in out WebOptions_Type;
                     Pointer : in     Pointer_To_WebOptions);

   function Get_Application
     (This : WebOptions_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : WebOptions_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : WebOptions_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_OptimizeForBrowser
     (This : WebOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_OptimizeForBrowser
     (This : WebOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_BrowserLevel
     (This : WebOptions_Type)
     return WdBrowserLevel;

   procedure Put_BrowserLevel
     (This : WebOptions_Type;
      prop : WdBrowserLevel);

   function Get_RelyOnCSS
     (This : WebOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_RelyOnCSS
     (This : WebOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_OrganizeInFolder
     (This : WebOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_OrganizeInFolder
     (This : WebOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_UseLongFileNames
     (This : WebOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_UseLongFileNames
     (This : WebOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_RelyOnVML
     (This : WebOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_RelyOnVML
     (This : WebOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_AllowPNG
     (This : WebOptions_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_AllowPNG
     (This : WebOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_ScreenSize
     (This : WebOptions_Type)
     return MsoScreenSize;

   procedure Put_ScreenSize
     (This : WebOptions_Type;
      prop : MsoScreenSize);

   function Get_PixelsPerInch
     (This : WebOptions_Type)
     return Interfaces.C.long;

   procedure Put_PixelsPerInch
     (This : WebOptions_Type;
      prop : Interfaces.C.long);

   function Get_Encoding
     (This : WebOptions_Type)
     return MsoEncoding;

   procedure Put_Encoding
     (This : WebOptions_Type;
      prop : MsoEncoding);

   function Get_FolderSuffix
     (This : WebOptions_Type)
     return GNATCOM.Types.BSTR;

   procedure UseDefaultFolderSuffix
     (This : WebOptions_Type);

   function Get_TargetBrowser
     (This : WebOptions_Type)
     return MsoTargetBrowser;

   procedure Put_TargetBrowser
     (This : WebOptions_Type;
      prop : MsoTargetBrowser);

end winword.WebOptions_Interface;

