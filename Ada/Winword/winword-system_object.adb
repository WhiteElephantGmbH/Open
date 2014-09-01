package body winword.System_Object is

   function Get_Application
     (This : System_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, System_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : System_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, System_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : System_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, System_Get_Parent);
   end Get_Parent;

   function Get_OperatingSystem
     (This : System_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, System_Get_OperatingSystem);
   end Get_OperatingSystem;

   function Get_ProcessorType
     (This : System_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, System_Get_ProcessorType);
   end Get_ProcessorType;

   function Get_Version
     (This : System_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, System_Get_Version);
   end Get_Version;

   function Get_FreeDiskSpace
     (This : System_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, System_Get_FreeDiskSpace);
   end Get_FreeDiskSpace;

   function Get_Country
     (This : System_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, System_Get_Country);
   end Get_Country;

   function Get_LanguageDesignation
     (This : System_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, System_Get_LanguageDesignation);
   end Get_LanguageDesignation;

   function Get_HorizontalResolution
     (This : System_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, System_Get_HorizontalResolution);
   end Get_HorizontalResolution;

   function Get_VerticalResolution
     (This : System_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, System_Get_VerticalResolution);
   end Get_VerticalResolution;

   function Get_ProfileString
     (This    : System_Type;
      Section : GNATCOM.Types.VARIANT;
      Key     : GNATCOM.Types.VARIANT;
      Free    : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get
        (This,
         System_Get_ProfileString,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Key,
          2 => Section),
         Free);
   end Get_ProfileString;

   procedure Put_ProfileString
     (This    : System_Type;
      Section : GNATCOM.Types.VARIANT;
      Key     : GNATCOM.Types.VARIANT;
      P3      : GNATCOM.Types.VARIANT;
      Free    : Boolean := True)
   is
   begin
      Put
        (This,
         System_Put_ProfileString,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P3,
          2 => Key,
          3 => Section),
         Free);
   end Put_ProfileString;

   function Get_PrivateProfileString
     (This     : System_Type;
      FileName : GNATCOM.Types.VARIANT;
      Section  : GNATCOM.Types.VARIANT;
      Key      : GNATCOM.Types.VARIANT;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get
        (This,
         System_Get_PrivateProfileString,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Key,
          2 => Section,
          3 => FileName),
         Free);
   end Get_PrivateProfileString;

   procedure Put_PrivateProfileString
     (This     : System_Type;
      FileName : GNATCOM.Types.VARIANT;
      Section  : GNATCOM.Types.VARIANT;
      Key      : GNATCOM.Types.VARIANT;
      P4       : GNATCOM.Types.VARIANT;
      Free     : Boolean := True)
   is
   begin
      Put
        (This,
         System_Put_PrivateProfileString,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P4,
          2 => Key,
          3 => Section,
          4 => FileName),
         Free);
   end Put_PrivateProfileString;

   function Get_MathCoprocessorInstalled
     (This : System_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, System_Get_MathCoprocessorInstalled);
   end Get_MathCoprocessorInstalled;

   function Get_ComputerType
     (This : System_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, System_Get_ComputerType);
   end Get_ComputerType;

   function Get_MacintoshName
     (This : System_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, System_Get_MacintoshName);
   end Get_MacintoshName;

   function Get_QuickDrawInstalled
     (This : System_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, System_Get_QuickDrawInstalled);
   end Get_QuickDrawInstalled;

   function Get_Cursor
     (This : System_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, System_Get_Cursor);
   end Get_Cursor;

   procedure Put_Cursor
     (This : System_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         System_Put_Cursor,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Cursor;

   procedure MSInfo
     (This : System_Type)
   is
   begin
      Invoke (This, System_MSInfo);
   end MSInfo;

   procedure Connect
     (This     : System_Type;
      Path     : GNATCOM.Types.VARIANT;
      Drive    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Password : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
   is
   begin
      Invoke
        (This,
         System_Connect,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Password,
          2 => Drive,
          3 => Path),
         Free);
   end Connect;

end winword.System_Object;

