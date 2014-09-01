with GNATCOM.Dispinterface;

package winword.CustomLabels_Object is

   type CustomLabels_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : CustomLabels_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : CustomLabels_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : CustomLabels_Type)
     return GNATCOM.Types.VARIANT;

   function Getu_NewEnum
     (This : CustomLabels_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : CustomLabels_Type)
     return GNATCOM.Types.VARIANT;

   function Item
     (This  : CustomLabels_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Add
     (This      : CustomLabels_Type;
      Name      : GNATCOM.Types.VARIANT;
      DotMatrix : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free      : Boolean := True)
     return GNATCOM.Types.VARIANT;

end winword.CustomLabels_Object;

