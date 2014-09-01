with GNATCOM.Dispinterface;

package winword.TabStops_Object is

   type TabStops_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Getu_NewEnum
     (This : TabStops_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : TabStops_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Application
     (This : TabStops_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : TabStops_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : TabStops_Type)
     return GNATCOM.Types.VARIANT;

   function Item
     (This  : TabStops_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Add
     (This      : TabStops_Type;
      Position  : GNATCOM.Types.VARIANT;
      Alignment : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Leader    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free      : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure ClearAll
     (This : TabStops_Type);

   function Before
     (This     : TabStops_Type;
      Position : GNATCOM.Types.VARIANT;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function After
     (This     : TabStops_Type;
      Position : GNATCOM.Types.VARIANT;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT;

end winword.TabStops_Object;

