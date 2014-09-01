with GNATCOM.Dispinterface;

package winword.RoutingSlip_Object is

   type RoutingSlip_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : RoutingSlip_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : RoutingSlip_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : RoutingSlip_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Subject
     (This : RoutingSlip_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Subject
     (This : RoutingSlip_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Message
     (This : RoutingSlip_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Message
     (This : RoutingSlip_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Delivery
     (This : RoutingSlip_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Delivery
     (This : RoutingSlip_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_TrackStatus
     (This : RoutingSlip_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_TrackStatus
     (This : RoutingSlip_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Protect
     (This : RoutingSlip_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Protect
     (This : RoutingSlip_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ReturnWhenDone
     (This : RoutingSlip_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ReturnWhenDone
     (This : RoutingSlip_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Status
     (This : RoutingSlip_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Recipients
     (This  : RoutingSlip_Type;
      Index : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure Reset
     (This : RoutingSlip_Type);

   procedure AddRecipient
     (This      : RoutingSlip_Type;
      Recipient : GNATCOM.Types.VARIANT;
      Free      : Boolean := True);

end winword.RoutingSlip_Object;

