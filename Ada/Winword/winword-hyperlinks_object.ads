with GNATCOM.Dispinterface;

package winword.Hyperlinks_Object is

   type Hyperlinks_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : Hyperlinks_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : Hyperlinks_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : Hyperlinks_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : Hyperlinks_Type)
     return GNATCOM.Types.VARIANT;

   function Getu_NewEnum
     (This : Hyperlinks_Type)
     return GNATCOM.Types.VARIANT;

   function Item
     (This  : Hyperlinks_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function uAdd
     (This       : Hyperlinks_Type;
      Anchor     : GNATCOM.Types.VARIANT;
      Address    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      SubAddress : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free       : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Add
     (This          : Hyperlinks_Type;
      Anchor        : GNATCOM.Types.VARIANT;
      Address       : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      SubAddress    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ScreenTip     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      TextToDisplay : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Target        : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free          : Boolean := True)
     return GNATCOM.Types.VARIANT;

end winword.Hyperlinks_Object;

