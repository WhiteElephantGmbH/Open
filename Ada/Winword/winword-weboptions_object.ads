with GNATCOM.Dispinterface;

package winword.WebOptions_Object is

   type WebOptions_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : WebOptions_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : WebOptions_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : WebOptions_Type)
     return GNATCOM.Types.VARIANT;

   function Get_OptimizeForBrowser
     (This : WebOptions_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_OptimizeForBrowser
     (This : WebOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_BrowserLevel
     (This : WebOptions_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_BrowserLevel
     (This : WebOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_RelyOnCSS
     (This : WebOptions_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_RelyOnCSS
     (This : WebOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_OrganizeInFolder
     (This : WebOptions_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_OrganizeInFolder
     (This : WebOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_UseLongFileNames
     (This : WebOptions_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_UseLongFileNames
     (This : WebOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_RelyOnVML
     (This : WebOptions_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_RelyOnVML
     (This : WebOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AllowPNG
     (This : WebOptions_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AllowPNG
     (This : WebOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ScreenSize
     (This : WebOptions_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ScreenSize
     (This : WebOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_PixelsPerInch
     (This : WebOptions_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_PixelsPerInch
     (This : WebOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Encoding
     (This : WebOptions_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Encoding
     (This : WebOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_FolderSuffix
     (This : WebOptions_Type)
     return GNATCOM.Types.VARIANT;

   procedure UseDefaultFolderSuffix
     (This : WebOptions_Type);

   function Get_TargetBrowser
     (This : WebOptions_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_TargetBrowser
     (This : WebOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

end winword.WebOptions_Object;

