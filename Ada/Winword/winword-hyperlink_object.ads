with GNATCOM.Dispinterface;

package winword.Hyperlink_Object is

   type Hyperlink_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : Hyperlink_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : Hyperlink_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : Hyperlink_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Name
     (This : Hyperlink_Type)
     return GNATCOM.Types.VARIANT;

   function Get_AddressOld
     (This : Hyperlink_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Type
     (This : Hyperlink_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Range
     (This : Hyperlink_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Shape
     (This : Hyperlink_Type)
     return GNATCOM.Types.VARIANT;

   function Get_SubAddressOld
     (This : Hyperlink_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ExtraInfoRequired
     (This : Hyperlink_Type)
     return GNATCOM.Types.VARIANT;

   procedure Delete
     (This : Hyperlink_Type);

   procedure Follow
     (This       : Hyperlink_Type;
      NewWindow  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      AddHistory : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ExtraInfo  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Method     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      HeaderInfo : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free       : Boolean := True);

   procedure AddToFavorites
     (This : Hyperlink_Type);

   procedure CreateNewDocument
     (This      : Hyperlink_Type;
      FileName  : GNATCOM.Types.VARIANT;
      EditNow   : GNATCOM.Types.VARIANT;
      Overwrite : GNATCOM.Types.VARIANT;
      Free      : Boolean := True);

   function Get_Address
     (This : Hyperlink_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Address
     (This : Hyperlink_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_SubAddress
     (This : Hyperlink_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_SubAddress
     (This : Hyperlink_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_EmailSubject
     (This : Hyperlink_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_EmailSubject
     (This : Hyperlink_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ScreenTip
     (This : Hyperlink_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ScreenTip
     (This : Hyperlink_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_TextToDisplay
     (This : Hyperlink_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_TextToDisplay
     (This : Hyperlink_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Target
     (This : Hyperlink_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Target
     (This : Hyperlink_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

end winword.Hyperlink_Object;

