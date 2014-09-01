with GNATCOM.Dispinterface;

package winword.OLEFormat_Interface is

   type OLEFormat_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out OLEFormat_Type);

   function Pointer (This : OLEFormat_Type)
     return Pointer_To_OLEFormat;

   procedure Attach (This    : in out OLEFormat_Type;
                     Pointer : in     Pointer_To_OLEFormat);

   function Get_Application
     (This : OLEFormat_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : OLEFormat_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : OLEFormat_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_ClassType
     (This : OLEFormat_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_ClassType
     (This : OLEFormat_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_DisplayAsIcon
     (This : OLEFormat_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_DisplayAsIcon
     (This : OLEFormat_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_IconName
     (This : OLEFormat_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_IconName
     (This : OLEFormat_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_IconPath
     (This : OLEFormat_Type)
     return GNATCOM.Types.BSTR;

   function Get_IconIndex
     (This : OLEFormat_Type)
     return Interfaces.C.long;

   procedure Put_IconIndex
     (This : OLEFormat_Type;
      prop : Interfaces.C.long);

   function Get_IconLabel
     (This : OLEFormat_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_IconLabel
     (This : OLEFormat_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_Label
     (This : OLEFormat_Type)
     return GNATCOM.Types.BSTR;

   function Get_Object
     (This : OLEFormat_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_ProgID
     (This : OLEFormat_Type)
     return GNATCOM.Types.BSTR;

   procedure Activate
     (This : OLEFormat_Type);

   procedure Edit
     (This : OLEFormat_Type);

   procedure Open
     (This : OLEFormat_Type);

   procedure DoVerb
     (This      : OLEFormat_Type;
      VerbIndex : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   procedure ConvertTo
     (This          : OLEFormat_Type;
      ClassType     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      DisplayAsIcon : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      IconFileName  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      IconIndex     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      IconLabel     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   procedure ActivateAs
     (This      : OLEFormat_Type;
      ClassType : GNATCOM.Types.BSTR;
      Free      : Boolean := True);

   function Get_PreserveFormattingOnUpdate
     (This : OLEFormat_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_PreserveFormattingOnUpdate
     (This : OLEFormat_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

end winword.OLEFormat_Interface;

