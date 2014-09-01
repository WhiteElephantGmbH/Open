with GNATCOM.Dispinterface;

package winword.System_Interface is

   type System_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out System_Type);

   function Pointer (This : System_Type)
     return Pointer_To_System;

   procedure Attach (This    : in out System_Type;
                     Pointer : in     Pointer_To_System);

   function Get_Application
     (This : System_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : System_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : System_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_OperatingSystem
     (This : System_Type)
     return GNATCOM.Types.BSTR;

   function Get_ProcessorType
     (This : System_Type)
     return GNATCOM.Types.BSTR;

   function Get_Version
     (This : System_Type)
     return GNATCOM.Types.BSTR;

   function Get_FreeDiskSpace
     (This : System_Type)
     return Interfaces.C.long;

   function Get_Country
     (This : System_Type)
     return WdCountry;

   function Get_LanguageDesignation
     (This : System_Type)
     return GNATCOM.Types.BSTR;

   function Get_HorizontalResolution
     (This : System_Type)
     return Interfaces.C.long;

   function Get_VerticalResolution
     (This : System_Type)
     return Interfaces.C.long;

   function Get_ProfileString
     (This    : System_Type;
      Section : GNATCOM.Types.BSTR;
      Key     : GNATCOM.Types.BSTR;
      Free    : Boolean := True)
     return GNATCOM.Types.BSTR;

   procedure Put_ProfileString
     (This    : System_Type;
      Section : GNATCOM.Types.BSTR;
      Key     : GNATCOM.Types.BSTR;
      prop    : GNATCOM.Types.BSTR;
      Free    : Boolean := True);

   function Get_PrivateProfileString
     (This     : System_Type;
      FileName : GNATCOM.Types.BSTR;
      Section  : GNATCOM.Types.BSTR;
      Key      : GNATCOM.Types.BSTR;
      Free     : Boolean := True)
     return GNATCOM.Types.BSTR;

   procedure Put_PrivateProfileString
     (This     : System_Type;
      FileName : GNATCOM.Types.BSTR;
      Section  : GNATCOM.Types.BSTR;
      Key      : GNATCOM.Types.BSTR;
      prop     : GNATCOM.Types.BSTR;
      Free     : Boolean := True);

   function Get_MathCoprocessorInstalled
     (This : System_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   function Get_ComputerType
     (This : System_Type)
     return GNATCOM.Types.BSTR;

   function Get_MacintoshName
     (This : System_Type)
     return GNATCOM.Types.BSTR;

   function Get_QuickDrawInstalled
     (This : System_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   function Get_Cursor
     (This : System_Type)
     return WdCursorType;

   procedure Put_Cursor
     (This : System_Type;
      prop : WdCursorType);

   procedure MSInfo
     (This : System_Type);

   procedure Connect
     (This     : System_Type;
      Path     : GNATCOM.Types.BSTR;
      Drive    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Password : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Free     : Boolean := True);

end winword.System_Interface;

