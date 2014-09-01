with GNATCOM.Dispinterface;

package winword.FreeformBuilder_Object is

   type FreeformBuilder_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : FreeformBuilder_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : FreeformBuilder_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : FreeformBuilder_Type)
     return GNATCOM.Types.VARIANT;

   procedure AddNodes
     (This        : FreeformBuilder_Type;
      SegmentType : GNATCOM.Types.VARIANT;
      EditingType : GNATCOM.Types.VARIANT;
      X1          : GNATCOM.Types.VARIANT;
      Y1          : GNATCOM.Types.VARIANT;
      X2          : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Y2          : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      X3          : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Y3          : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free        : Boolean := True);

   function ConvertToShape
     (This   : FreeformBuilder_Type;
      Anchor : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT;

end winword.FreeformBuilder_Object;

