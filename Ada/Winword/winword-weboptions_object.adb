package body winword.WebOptions_Object is

   function Get_Application
     (This : WebOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, WebOptions_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : WebOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, WebOptions_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : WebOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, WebOptions_Get_Parent);
   end Get_Parent;

   function Get_OptimizeForBrowser
     (This : WebOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, WebOptions_Get_OptimizeForBrowser);
   end Get_OptimizeForBrowser;

   procedure Put_OptimizeForBrowser
     (This : WebOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         WebOptions_Put_OptimizeForBrowser,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_OptimizeForBrowser;

   function Get_BrowserLevel
     (This : WebOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, WebOptions_Get_BrowserLevel);
   end Get_BrowserLevel;

   procedure Put_BrowserLevel
     (This : WebOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         WebOptions_Put_BrowserLevel,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_BrowserLevel;

   function Get_RelyOnCSS
     (This : WebOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, WebOptions_Get_RelyOnCSS);
   end Get_RelyOnCSS;

   procedure Put_RelyOnCSS
     (This : WebOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         WebOptions_Put_RelyOnCSS,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_RelyOnCSS;

   function Get_OrganizeInFolder
     (This : WebOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, WebOptions_Get_OrganizeInFolder);
   end Get_OrganizeInFolder;

   procedure Put_OrganizeInFolder
     (This : WebOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         WebOptions_Put_OrganizeInFolder,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_OrganizeInFolder;

   function Get_UseLongFileNames
     (This : WebOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, WebOptions_Get_UseLongFileNames);
   end Get_UseLongFileNames;

   procedure Put_UseLongFileNames
     (This : WebOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         WebOptions_Put_UseLongFileNames,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_UseLongFileNames;

   function Get_RelyOnVML
     (This : WebOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, WebOptions_Get_RelyOnVML);
   end Get_RelyOnVML;

   procedure Put_RelyOnVML
     (This : WebOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         WebOptions_Put_RelyOnVML,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_RelyOnVML;

   function Get_AllowPNG
     (This : WebOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, WebOptions_Get_AllowPNG);
   end Get_AllowPNG;

   procedure Put_AllowPNG
     (This : WebOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         WebOptions_Put_AllowPNG,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AllowPNG;

   function Get_ScreenSize
     (This : WebOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, WebOptions_Get_ScreenSize);
   end Get_ScreenSize;

   procedure Put_ScreenSize
     (This : WebOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         WebOptions_Put_ScreenSize,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ScreenSize;

   function Get_PixelsPerInch
     (This : WebOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, WebOptions_Get_PixelsPerInch);
   end Get_PixelsPerInch;

   procedure Put_PixelsPerInch
     (This : WebOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         WebOptions_Put_PixelsPerInch,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_PixelsPerInch;

   function Get_Encoding
     (This : WebOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, WebOptions_Get_Encoding);
   end Get_Encoding;

   procedure Put_Encoding
     (This : WebOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         WebOptions_Put_Encoding,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Encoding;

   function Get_FolderSuffix
     (This : WebOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, WebOptions_Get_FolderSuffix);
   end Get_FolderSuffix;

   procedure UseDefaultFolderSuffix
     (This : WebOptions_Type)
   is
   begin
      Invoke (This, WebOptions_UseDefaultFolderSuffix);
   end UseDefaultFolderSuffix;

   function Get_TargetBrowser
     (This : WebOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, WebOptions_Get_TargetBrowser);
   end Get_TargetBrowser;

   procedure Put_TargetBrowser
     (This : WebOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         WebOptions_Put_TargetBrowser,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_TargetBrowser;

end winword.WebOptions_Object;

