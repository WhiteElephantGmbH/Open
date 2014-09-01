with GNATCOM.Dispinterface;

package winword.Adjustments_Object is

   type Adjustments_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : Adjustments_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : Adjustments_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : Adjustments_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : Adjustments_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Item
     (This  : Adjustments_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure Put_Item
     (This  : Adjustments_Type;
      Index : GNATCOM.Types.VARIANT;
      P2    : GNATCOM.Types.VARIANT;
      Free  : Boolean := True);

end winword.Adjustments_Object;

