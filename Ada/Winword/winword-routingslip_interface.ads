with GNATCOM.Dispinterface;

package winword.RoutingSlip_Interface is

   type RoutingSlip_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out RoutingSlip_Type);

   function Pointer (This : RoutingSlip_Type)
     return Pointer_To_RoutingSlip;

   procedure Attach (This    : in out RoutingSlip_Type;
                     Pointer : in     Pointer_To_RoutingSlip);

   function Get_Application
     (This : RoutingSlip_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : RoutingSlip_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : RoutingSlip_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Subject
     (This : RoutingSlip_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_Subject
     (This : RoutingSlip_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_Message
     (This : RoutingSlip_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_Message
     (This : RoutingSlip_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_Delivery
     (This : RoutingSlip_Type)
     return WdRoutingSlipDelivery;

   procedure Put_Delivery
     (This : RoutingSlip_Type;
      prop : WdRoutingSlipDelivery);

   function Get_TrackStatus
     (This : RoutingSlip_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_TrackStatus
     (This : RoutingSlip_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_Protect
     (This : RoutingSlip_Type)
     return WdProtectionType;

   procedure Put_Protect
     (This : RoutingSlip_Type;
      prop : WdProtectionType);

   function Get_ReturnWhenDone
     (This : RoutingSlip_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_ReturnWhenDone
     (This : RoutingSlip_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_Status
     (This : RoutingSlip_Type)
     return WdRoutingSlipStatus;

   function Get_Recipients
     (This  : RoutingSlip_Type;
      Index : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return GNATCOM.Types.VARIANT;

   procedure Reset
     (This : RoutingSlip_Type);

   procedure AddRecipient
     (This      : RoutingSlip_Type;
      Recipient : GNATCOM.Types.BSTR;
      Free      : Boolean := True);

end winword.RoutingSlip_Interface;

