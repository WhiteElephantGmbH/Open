with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.System_Interface is

   procedure Initialize (This : in out System_Type) is
   begin
      Set_IID (This, IID_System);
   end Initialize;

   function Pointer (This : System_Type)
     return Pointer_To_System
   is
   begin
      return To_Pointer_To_System (Address (This));
   end Pointer;

   procedure Attach (This    : in out System_Type;
                     Pointer : in     Pointer_To_System)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : System_Type)
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
     (This : System_Type)
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
     (This : System_Type)
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

   function Get_OperatingSystem
     (This : System_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_OperatingSystem
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_OperatingSystem;

   function Get_ProcessorType
     (This : System_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ProcessorType
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ProcessorType;

   function Get_Version
     (This : System_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Version
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Version;

   function Get_FreeDiskSpace
     (This : System_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_FreeDiskSpace
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_FreeDiskSpace;

   function Get_Country
     (This : System_Type)
     return WdCountry
   is
       RetVal : aliased WdCountry;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Country
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Country;

   function Get_LanguageDesignation
     (This : System_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_LanguageDesignation
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_LanguageDesignation;

   function Get_HorizontalResolution
     (This : System_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_HorizontalResolution
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_HorizontalResolution;

   function Get_VerticalResolution
     (This : System_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_VerticalResolution
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_VerticalResolution;

   function Get_ProfileString
     (This    : System_Type;
      Section : GNATCOM.Types.BSTR;
      Key     : GNATCOM.Types.BSTR;
      Free    : Boolean := True)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ProfileString
         (Pointer (This),
          Section,
          Key,
          RetVal'Unchecked_Access));

      if Free then
               GNATCOM.Interface.Free (Section);
               GNATCOM.Interface.Free (Key);
      
      end if;

      return RetVal;
   end Get_ProfileString;

   procedure Put_ProfileString
     (This    : System_Type;
      Section : GNATCOM.Types.BSTR;
      Key     : GNATCOM.Types.BSTR;
      prop    : GNATCOM.Types.BSTR;
      Free    : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ProfileString
         (Pointer (This),
          Section,
          Key,
          prop));

      if Free then
               GNATCOM.Interface.Free (Section);
               GNATCOM.Interface.Free (Key);
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_ProfileString;

   function Get_PrivateProfileString
     (This     : System_Type;
      FileName : GNATCOM.Types.BSTR;
      Section  : GNATCOM.Types.BSTR;
      Key      : GNATCOM.Types.BSTR;
      Free     : Boolean := True)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_PrivateProfileString
         (Pointer (This),
          FileName,
          Section,
          Key,
          RetVal'Unchecked_Access));

      if Free then
               GNATCOM.Interface.Free (FileName);
               GNATCOM.Interface.Free (Section);
               GNATCOM.Interface.Free (Key);
      
      end if;

      return RetVal;
   end Get_PrivateProfileString;

   procedure Put_PrivateProfileString
     (This     : System_Type;
      FileName : GNATCOM.Types.BSTR;
      Section  : GNATCOM.Types.BSTR;
      Key      : GNATCOM.Types.BSTR;
      prop     : GNATCOM.Types.BSTR;
      Free     : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_PrivateProfileString
         (Pointer (This),
          FileName,
          Section,
          Key,
          prop));

      if Free then
               GNATCOM.Interface.Free (FileName);
               GNATCOM.Interface.Free (Section);
               GNATCOM.Interface.Free (Key);
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_PrivateProfileString;

   function Get_MathCoprocessorInstalled
     (This : System_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_MathCoprocessorInstalled
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_MathCoprocessorInstalled;

   function Get_ComputerType
     (This : System_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ComputerType
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ComputerType;

   function Get_MacintoshName
     (This : System_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_MacintoshName
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_MacintoshName;

   function Get_QuickDrawInstalled
     (This : System_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_QuickDrawInstalled
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_QuickDrawInstalled;

   function Get_Cursor
     (This : System_Type)
     return WdCursorType
   is
       RetVal : aliased WdCursorType;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Cursor
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Cursor;

   procedure Put_Cursor
     (This : System_Type;
      prop : WdCursorType)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Cursor
         (Pointer (This),
          prop));

   end Put_Cursor;

   procedure MSInfo
     (This : System_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.MSInfo
         (Pointer (This)));

   end MSInfo;

   procedure Connect
     (This     : System_Type;
      Path     : GNATCOM.Types.BSTR;
      Drive    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Password : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Free     : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Connect
         (Pointer (This),
          Path,
          Drive,
          Password));

      if Free then
               GNATCOM.Interface.Free (Path);
      
      end if;

   end Connect;

end winword.System_Interface;

