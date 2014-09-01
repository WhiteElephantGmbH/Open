package body winword.OLEFormat_Object is

   function Get_Application
     (This : OLEFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, OLEFormat_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : OLEFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, OLEFormat_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : OLEFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, OLEFormat_Get_Parent);
   end Get_Parent;

   function Get_ClassType
     (This : OLEFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, OLEFormat_Get_ClassType);
   end Get_ClassType;

   procedure Put_ClassType
     (This : OLEFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         OLEFormat_Put_ClassType,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ClassType;

   function Get_DisplayAsIcon
     (This : OLEFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, OLEFormat_Get_DisplayAsIcon);
   end Get_DisplayAsIcon;

   procedure Put_DisplayAsIcon
     (This : OLEFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         OLEFormat_Put_DisplayAsIcon,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DisplayAsIcon;

   function Get_IconName
     (This : OLEFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, OLEFormat_Get_IconName);
   end Get_IconName;

   procedure Put_IconName
     (This : OLEFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         OLEFormat_Put_IconName,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_IconName;

   function Get_IconPath
     (This : OLEFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, OLEFormat_Get_IconPath);
   end Get_IconPath;

   function Get_IconIndex
     (This : OLEFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, OLEFormat_Get_IconIndex);
   end Get_IconIndex;

   procedure Put_IconIndex
     (This : OLEFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         OLEFormat_Put_IconIndex,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_IconIndex;

   function Get_IconLabel
     (This : OLEFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, OLEFormat_Get_IconLabel);
   end Get_IconLabel;

   procedure Put_IconLabel
     (This : OLEFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         OLEFormat_Put_IconLabel,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_IconLabel;

   function Get_Label
     (This : OLEFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, OLEFormat_Get_Label);
   end Get_Label;

   function Get_Object
     (This : OLEFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, OLEFormat_Get_Object);
   end Get_Object;

   function Get_ProgID
     (This : OLEFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, OLEFormat_Get_ProgID);
   end Get_ProgID;

   procedure Activate
     (This : OLEFormat_Type)
   is
   begin
      Invoke (This, OLEFormat_Activate);
   end Activate;

   procedure Edit
     (This : OLEFormat_Type)
   is
   begin
      Invoke (This, OLEFormat_Edit);
   end Edit;

   procedure Open
     (This : OLEFormat_Type)
   is
   begin
      Invoke (This, OLEFormat_Open);
   end Open;

   procedure DoVerb
     (This      : OLEFormat_Type;
      VerbIndex : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free      : Boolean := True)
   is
   begin
      Invoke
        (This,
         OLEFormat_DoVerb,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => VerbIndex),
         Free);
   end DoVerb;

   procedure ConvertTo
     (This          : OLEFormat_Type;
      ClassType     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      DisplayAsIcon : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      IconFileName  : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      IconIndex     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      IconLabel     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free          : Boolean := True)
   is
   begin
      Invoke
        (This,
         OLEFormat_ConvertTo,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => IconLabel,
          2 => IconIndex,
          3 => IconFileName,
          4 => DisplayAsIcon,
          5 => ClassType),
         Free);
   end ConvertTo;

   procedure ActivateAs
     (This      : OLEFormat_Type;
      ClassType : GNATCOM.Types.VARIANT;
      Free      : Boolean := True)
   is
   begin
      Invoke
        (This,
         OLEFormat_ActivateAs,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => ClassType),
         Free);
   end ActivateAs;

   function Get_PreserveFormattingOnUpdate
     (This : OLEFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, OLEFormat_Get_PreserveFormattingOnUpdate);
   end Get_PreserveFormattingOnUpdate;

   procedure Put_PreserveFormattingOnUpdate
     (This : OLEFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         OLEFormat_Put_PreserveFormattingOnUpdate,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_PreserveFormattingOnUpdate;

end winword.OLEFormat_Object;

