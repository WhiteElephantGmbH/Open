with GNATCOM.Dispinterface;

package winword.Hyperlink_Interface is

   type Hyperlink_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Hyperlink_Type);

   function Pointer (This : Hyperlink_Type)
     return Pointer_To_Hyperlink;

   procedure Attach (This    : in out Hyperlink_Type;
                     Pointer : in     Pointer_To_Hyperlink);

   function Get_Application
     (This : Hyperlink_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : Hyperlink_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : Hyperlink_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Name
     (This : Hyperlink_Type)
     return GNATCOM.Types.BSTR;

   function Get_AddressOld
     (This : Hyperlink_Type)
     return GNATCOM.Types.BSTR;

   function Get_Type
     (This : Hyperlink_Type)
     return MsoHyperlinkType;

   function Get_Range
     (This : Hyperlink_Type)
     return Pointer_To_uRange;

   function Get_Shape
     (This : Hyperlink_Type)
     return Pointer_To_Shape;

   function Get_SubAddressOld
     (This : Hyperlink_Type)
     return GNATCOM.Types.BSTR;

   function Get_ExtraInfoRequired
     (This : Hyperlink_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Delete
     (This : Hyperlink_Type);

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
        GNATCOM.Types.PVARIANT_MISSING);

   procedure AddToFavorites
     (This : Hyperlink_Type);

   procedure CreateNewDocument
     (This      : Hyperlink_Type;
      FileName  : GNATCOM.Types.BSTR;
      EditNow   : GNATCOM.Types.VARIANT_BOOL;
      Overwrite : GNATCOM.Types.VARIANT_BOOL;
      Free      : Boolean := True);

   function Get_Address
     (This : Hyperlink_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_Address
     (This : Hyperlink_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_SubAddress
     (This : Hyperlink_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_SubAddress
     (This : Hyperlink_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_EmailSubject
     (This : Hyperlink_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_EmailSubject
     (This : Hyperlink_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_ScreenTip
     (This : Hyperlink_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_ScreenTip
     (This : Hyperlink_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_TextToDisplay
     (This : Hyperlink_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_TextToDisplay
     (This : Hyperlink_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_Target
     (This : Hyperlink_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_Target
     (This : Hyperlink_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

end winword.Hyperlink_Interface;

