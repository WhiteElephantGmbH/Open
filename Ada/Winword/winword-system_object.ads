with GNATCOM.Dispinterface;

package winword.System_Object is

   type System_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : System_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : System_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : System_Type)
     return GNATCOM.Types.VARIANT;

   function Get_OperatingSystem
     (This : System_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ProcessorType
     (This : System_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Version
     (This : System_Type)
     return GNATCOM.Types.VARIANT;

   function Get_FreeDiskSpace
     (This : System_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Country
     (This : System_Type)
     return GNATCOM.Types.VARIANT;

   function Get_LanguageDesignation
     (This : System_Type)
     return GNATCOM.Types.VARIANT;

   function Get_HorizontalResolution
     (This : System_Type)
     return GNATCOM.Types.VARIANT;

   function Get_VerticalResolution
     (This : System_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ProfileString
     (This    : System_Type;
      Section : GNATCOM.Types.VARIANT;
      Key     : GNATCOM.Types.VARIANT;
      Free    : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure Put_ProfileString
     (This    : System_Type;
      Section : GNATCOM.Types.VARIANT;
      Key     : GNATCOM.Types.VARIANT;
      P3      : GNATCOM.Types.VARIANT;
      Free    : Boolean := True);

   function Get_PrivateProfileString
     (This     : System_Type;
      FileName : GNATCOM.Types.VARIANT;
      Section  : GNATCOM.Types.VARIANT;
      Key      : GNATCOM.Types.VARIANT;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure Put_PrivateProfileString
     (This     : System_Type;
      FileName : GNATCOM.Types.VARIANT;
      Section  : GNATCOM.Types.VARIANT;
      Key      : GNATCOM.Types.VARIANT;
      P4       : GNATCOM.Types.VARIANT;
      Free     : Boolean := True);

   function Get_MathCoprocessorInstalled
     (This : System_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ComputerType
     (This : System_Type)
     return GNATCOM.Types.VARIANT;

   function Get_MacintoshName
     (This : System_Type)
     return GNATCOM.Types.VARIANT;

   function Get_QuickDrawInstalled
     (This : System_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Cursor
     (This : System_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Cursor
     (This : System_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure MSInfo
     (This : System_Type);

   procedure Connect
     (This     : System_Type;
      Path     : GNATCOM.Types.VARIANT;
      Drive    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Password : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True);

end winword.System_Object;

