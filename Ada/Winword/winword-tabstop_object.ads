with GNATCOM.Dispinterface;

package winword.TabStop_Object is

   type TabStop_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : TabStop_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : TabStop_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : TabStop_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Alignment
     (This : TabStop_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Alignment
     (This : TabStop_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Leader
     (This : TabStop_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Leader
     (This : TabStop_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Position
     (This : TabStop_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Position
     (This : TabStop_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_CustomTab
     (This : TabStop_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Next
     (This : TabStop_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Previous
     (This : TabStop_Type)
     return GNATCOM.Types.VARIANT;

   procedure Clear
     (This : TabStop_Type);

end winword.TabStop_Object;

