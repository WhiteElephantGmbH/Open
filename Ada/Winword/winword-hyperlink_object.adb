package body winword.Hyperlink_Object is

   function Get_Application
     (This : Hyperlink_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Hyperlink_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : Hyperlink_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Hyperlink_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : Hyperlink_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Hyperlink_Get_Parent);
   end Get_Parent;

   function Get_Name
     (This : Hyperlink_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Hyperlink_Get_Name);
   end Get_Name;

   function Get_AddressOld
     (This : Hyperlink_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Hyperlink_Get_AddressOld);
   end Get_AddressOld;

   function Get_Type
     (This : Hyperlink_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Hyperlink_Get_Type);
   end Get_Type;

   function Get_Range
     (This : Hyperlink_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Hyperlink_Get_Range);
   end Get_Range;

   function Get_Shape
     (This : Hyperlink_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Hyperlink_Get_Shape);
   end Get_Shape;

   function Get_SubAddressOld
     (This : Hyperlink_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Hyperlink_Get_SubAddressOld);
   end Get_SubAddressOld;

   function Get_ExtraInfoRequired
     (This : Hyperlink_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Hyperlink_Get_ExtraInfoRequired);
   end Get_ExtraInfoRequired;

   procedure Delete
     (This : Hyperlink_Type)
   is
   begin
      Invoke (This, Hyperlink_Delete);
   end Delete;

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
      Free       : Boolean := True)
   is
   begin
      Invoke
        (This,
         Hyperlink_Follow,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => HeaderInfo,
          2 => Method,
          3 => ExtraInfo,
          4 => AddHistory,
          5 => NewWindow),
         Free);
   end Follow;

   procedure AddToFavorites
     (This : Hyperlink_Type)
   is
   begin
      Invoke (This, Hyperlink_AddToFavorites);
   end AddToFavorites;

   procedure CreateNewDocument
     (This      : Hyperlink_Type;
      FileName  : GNATCOM.Types.VARIANT;
      EditNow   : GNATCOM.Types.VARIANT;
      Overwrite : GNATCOM.Types.VARIANT;
      Free      : Boolean := True)
   is
   begin
      Invoke
        (This,
         Hyperlink_CreateNewDocument,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Overwrite,
          2 => EditNow,
          3 => FileName),
         Free);
   end CreateNewDocument;

   function Get_Address
     (This : Hyperlink_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Hyperlink_Get_Address);
   end Get_Address;

   procedure Put_Address
     (This : Hyperlink_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Hyperlink_Put_Address,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Address;

   function Get_SubAddress
     (This : Hyperlink_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Hyperlink_Get_SubAddress);
   end Get_SubAddress;

   procedure Put_SubAddress
     (This : Hyperlink_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Hyperlink_Put_SubAddress,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_SubAddress;

   function Get_EmailSubject
     (This : Hyperlink_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Hyperlink_Get_EmailSubject);
   end Get_EmailSubject;

   procedure Put_EmailSubject
     (This : Hyperlink_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Hyperlink_Put_EmailSubject,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_EmailSubject;

   function Get_ScreenTip
     (This : Hyperlink_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Hyperlink_Get_ScreenTip);
   end Get_ScreenTip;

   procedure Put_ScreenTip
     (This : Hyperlink_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Hyperlink_Put_ScreenTip,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ScreenTip;

   function Get_TextToDisplay
     (This : Hyperlink_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Hyperlink_Get_TextToDisplay);
   end Get_TextToDisplay;

   procedure Put_TextToDisplay
     (This : Hyperlink_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Hyperlink_Put_TextToDisplay,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_TextToDisplay;

   function Get_Target
     (This : Hyperlink_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Hyperlink_Get_Target);
   end Get_Target;

   procedure Put_Target
     (This : Hyperlink_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Hyperlink_Put_Target,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Target;

end winword.Hyperlink_Object;

