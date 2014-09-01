with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.WebOptions_Interface is

   procedure Initialize (This : in out WebOptions_Type) is
   begin
      Set_IID (This, IID_WebOptions);
   end Initialize;

   function Pointer (This : WebOptions_Type)
     return Pointer_To_WebOptions
   is
   begin
      return To_Pointer_To_WebOptions (Address (This));
   end Pointer;

   procedure Attach (This    : in out WebOptions_Type;
                     Pointer : in     Pointer_To_WebOptions)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : WebOptions_Type)
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
     (This : WebOptions_Type)
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
     (This : WebOptions_Type)
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
     (This : WebOptions_Type)
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
     (This : WebOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_OptimizeForBrowser
         (Pointer (This),
          prop));

   end Put_OptimizeForBrowser;

   function Get_BrowserLevel
     (This : WebOptions_Type)
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
     (This : WebOptions_Type;
      prop : WdBrowserLevel)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_BrowserLevel
         (Pointer (This),
          prop));

   end Put_BrowserLevel;

   function Get_RelyOnCSS
     (This : WebOptions_Type)
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
     (This : WebOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_RelyOnCSS
         (Pointer (This),
          prop));

   end Put_RelyOnCSS;

   function Get_OrganizeInFolder
     (This : WebOptions_Type)
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
     (This : WebOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_OrganizeInFolder
         (Pointer (This),
          prop));

   end Put_OrganizeInFolder;

   function Get_UseLongFileNames
     (This : WebOptions_Type)
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
     (This : WebOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_UseLongFileNames
         (Pointer (This),
          prop));

   end Put_UseLongFileNames;

   function Get_RelyOnVML
     (This : WebOptions_Type)
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
     (This : WebOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_RelyOnVML
         (Pointer (This),
          prop));

   end Put_RelyOnVML;

   function Get_AllowPNG
     (This : WebOptions_Type)
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
     (This : WebOptions_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AllowPNG
         (Pointer (This),
          prop));

   end Put_AllowPNG;

   function Get_ScreenSize
     (This : WebOptions_Type)
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
     (This : WebOptions_Type;
      prop : MsoScreenSize)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ScreenSize
         (Pointer (This),
          prop));

   end Put_ScreenSize;

   function Get_PixelsPerInch
     (This : WebOptions_Type)
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
     (This : WebOptions_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_PixelsPerInch
         (Pointer (This),
          prop));

   end Put_PixelsPerInch;

   function Get_Encoding
     (This : WebOptions_Type)
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
     (This : WebOptions_Type;
      prop : MsoEncoding)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Encoding
         (Pointer (This),
          prop));

   end Put_Encoding;

   function Get_FolderSuffix
     (This : WebOptions_Type)
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

   procedure UseDefaultFolderSuffix
     (This : WebOptions_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.UseDefaultFolderSuffix
         (Pointer (This)));

   end UseDefaultFolderSuffix;

   function Get_TargetBrowser
     (This : WebOptions_Type)
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
     (This : WebOptions_Type;
      prop : MsoTargetBrowser)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_TargetBrowser
         (Pointer (This),
          prop));

   end Put_TargetBrowser;

end winword.WebOptions_Interface;

