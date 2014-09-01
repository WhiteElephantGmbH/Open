with GNATCOM.Dispinterface;

package winword.OLEFormat_Object is

   type OLEFormat_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : OLEFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : OLEFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : OLEFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ClassType
     (This : OLEFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ClassType
     (This : OLEFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_DisplayAsIcon
     (This : OLEFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DisplayAsIcon
     (This : OLEFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_IconName
     (This : OLEFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_IconName
     (This : OLEFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_IconPath
     (This : OLEFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_IconIndex
     (This : OLEFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_IconIndex
     (This : OLEFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_IconLabel
     (This : OLEFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_IconLabel
     (This : OLEFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Label
     (This : OLEFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Object
     (This : OLEFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ProgID
     (This : OLEFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Activate
     (This : OLEFormat_Type);

   procedure Edit
     (This : OLEFormat_Type);

   procedure Open
     (This : OLEFormat_Type);

   procedure DoVerb
     (This      : OLEFormat_Type;
      VerbIndex : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free      : Boolean := True);

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
      Free          : Boolean := True);

   procedure ActivateAs
     (This      : OLEFormat_Type;
      ClassType : GNATCOM.Types.VARIANT;
      Free      : Boolean := True);

   function Get_PreserveFormattingOnUpdate
     (This : OLEFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_PreserveFormattingOnUpdate
     (This : OLEFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

end winword.OLEFormat_Object;

