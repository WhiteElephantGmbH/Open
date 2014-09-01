with GNATCOM.Dispinterface;

package winword.PropertyTests_Object is

   type PropertyTests_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : PropertyTests_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : PropertyTests_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Item
     (This  : PropertyTests_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : PropertyTests_Type)
     return GNATCOM.Types.VARIANT;

   procedure Add
     (This        : PropertyTests_Type;
      Name        : GNATCOM.Types.VARIANT;
      Condition   : GNATCOM.Types.VARIANT;
      Value       : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      SecondValue : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Connector   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free        : Boolean := True);

   procedure Remove
     (This  : PropertyTests_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True);

   function Getu_NewEnum
     (This : PropertyTests_Type)
     return GNATCOM.Types.VARIANT;

end winword.PropertyTests_Object;

