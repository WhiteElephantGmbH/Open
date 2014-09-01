with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.Hyperlink_Interface is

   procedure Initialize (This : in out Hyperlink_Type) is
   begin
      Set_IID (This, IID_Hyperlink);
   end Initialize;

   function Pointer (This : Hyperlink_Type)
     return Pointer_To_Hyperlink
   is
   begin
      return To_Pointer_To_Hyperlink (Address (This));
   end Pointer;

   procedure Attach (This    : in out Hyperlink_Type;
                     Pointer : in     Pointer_To_Hyperlink)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : Hyperlink_Type)
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
     (This : Hyperlink_Type)
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
     (This : Hyperlink_Type)
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

   function Get_Name
     (This : Hyperlink_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Name
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Name;

   function Get_AddressOld
     (This : Hyperlink_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AddressOld
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AddressOld;

   function Get_Type
     (This : Hyperlink_Type)
     return MsoHyperlinkType
   is
       RetVal : aliased MsoHyperlinkType;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Type
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Type;

   function Get_Range
     (This : Hyperlink_Type)
     return Pointer_To_uRange
   is
       RetVal : aliased Pointer_To_uRange;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Range
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Range;

   function Get_Shape
     (This : Hyperlink_Type)
     return Pointer_To_Shape
   is
       RetVal : aliased Pointer_To_Shape;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Shape
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Shape;

   function Get_SubAddressOld
     (This : Hyperlink_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SubAddressOld
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_SubAddressOld;

   function Get_ExtraInfoRequired
     (This : Hyperlink_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ExtraInfoRequired
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ExtraInfoRequired;

   procedure Delete
     (This : Hyperlink_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Delete
         (Pointer (This)));

   end Delete;

   procedure Follow
     (This       : Hyperlink_Type;
      NewWindow  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      AddHistory : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ExtraInfo  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Method     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      HeaderInfo : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Follow
         (Pointer (This),
          NewWindow,
          AddHistory,
          ExtraInfo,
          Method,
          HeaderInfo));

   end Follow;

   procedure AddToFavorites
     (This : Hyperlink_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.AddToFavorites
         (Pointer (This)));

   end AddToFavorites;

   procedure CreateNewDocument
     (This      : Hyperlink_Type;
      FileName  : GNATCOM.Types.BSTR;
      EditNow   : GNATCOM.Types.VARIANT_BOOL;
      Overwrite : GNATCOM.Types.VARIANT_BOOL;
      Free      : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.CreateNewDocument
         (Pointer (This),
          FileName,
          EditNow,
          Overwrite));

      if Free then
               GNATCOM.Interface.Free (FileName);
      
      end if;

   end CreateNewDocument;

   function Get_Address
     (This : Hyperlink_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Address
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Address;

   procedure Put_Address
     (This : Hyperlink_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Address
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_Address;

   function Get_SubAddress
     (This : Hyperlink_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SubAddress
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_SubAddress;

   procedure Put_SubAddress
     (This : Hyperlink_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_SubAddress
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_SubAddress;

   function Get_EmailSubject
     (This : Hyperlink_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_EmailSubject
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_EmailSubject;

   procedure Put_EmailSubject
     (This : Hyperlink_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_EmailSubject
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_EmailSubject;

   function Get_ScreenTip
     (This : Hyperlink_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ScreenTip
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ScreenTip;

   procedure Put_ScreenTip
     (This : Hyperlink_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ScreenTip
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_ScreenTip;

   function Get_TextToDisplay
     (This : Hyperlink_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_TextToDisplay
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_TextToDisplay;

   procedure Put_TextToDisplay
     (This : Hyperlink_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_TextToDisplay
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_TextToDisplay;

   function Get_Target
     (This : Hyperlink_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Target
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Target;

   procedure Put_Target
     (This : Hyperlink_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Target
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_Target;

end winword.Hyperlink_Interface;

