package body winword.RoutingSlip_Object is

   function Get_Application
     (This : RoutingSlip_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, RoutingSlip_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : RoutingSlip_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, RoutingSlip_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : RoutingSlip_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, RoutingSlip_Get_Parent);
   end Get_Parent;

   function Get_Subject
     (This : RoutingSlip_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, RoutingSlip_Get_Subject);
   end Get_Subject;

   procedure Put_Subject
     (This : RoutingSlip_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         RoutingSlip_Put_Subject,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Subject;

   function Get_Message
     (This : RoutingSlip_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, RoutingSlip_Get_Message);
   end Get_Message;

   procedure Put_Message
     (This : RoutingSlip_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         RoutingSlip_Put_Message,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Message;

   function Get_Delivery
     (This : RoutingSlip_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, RoutingSlip_Get_Delivery);
   end Get_Delivery;

   procedure Put_Delivery
     (This : RoutingSlip_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         RoutingSlip_Put_Delivery,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Delivery;

   function Get_TrackStatus
     (This : RoutingSlip_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, RoutingSlip_Get_TrackStatus);
   end Get_TrackStatus;

   procedure Put_TrackStatus
     (This : RoutingSlip_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         RoutingSlip_Put_TrackStatus,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_TrackStatus;

   function Get_Protect
     (This : RoutingSlip_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, RoutingSlip_Get_Protect);
   end Get_Protect;

   procedure Put_Protect
     (This : RoutingSlip_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         RoutingSlip_Put_Protect,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Protect;

   function Get_ReturnWhenDone
     (This : RoutingSlip_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, RoutingSlip_Get_ReturnWhenDone);
   end Get_ReturnWhenDone;

   procedure Put_ReturnWhenDone
     (This : RoutingSlip_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         RoutingSlip_Put_ReturnWhenDone,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ReturnWhenDone;

   function Get_Status
     (This : RoutingSlip_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, RoutingSlip_Get_Status);
   end Get_Status;

   function Get_Recipients
     (This  : RoutingSlip_Type;
      Index : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get
        (This,
         RoutingSlip_Get_Recipients,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Get_Recipients;

   procedure Reset
     (This : RoutingSlip_Type)
   is
   begin
      Invoke (This, RoutingSlip_Reset);
   end Reset;

   procedure AddRecipient
     (This      : RoutingSlip_Type;
      Recipient : GNATCOM.Types.VARIANT;
      Free      : Boolean := True)
   is
   begin
      Invoke
        (This,
         RoutingSlip_AddRecipient,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Recipient),
         Free);
   end AddRecipient;

end winword.RoutingSlip_Object;

