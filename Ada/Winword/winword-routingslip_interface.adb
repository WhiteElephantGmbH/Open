with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.RoutingSlip_Interface is

   procedure Initialize (This : in out RoutingSlip_Type) is
   begin
      Set_IID (This, IID_RoutingSlip);
   end Initialize;

   function Pointer (This : RoutingSlip_Type)
     return Pointer_To_RoutingSlip
   is
   begin
      return To_Pointer_To_RoutingSlip (Address (This));
   end Pointer;

   procedure Attach (This    : in out RoutingSlip_Type;
                     Pointer : in     Pointer_To_RoutingSlip)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : RoutingSlip_Type)
     return Pointer_To_uApplication
   is
       RetVal : aliased Pointer_To_uApplication;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Application
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Application;

   function Get_Creator
     (This : RoutingSlip_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Creator
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Creator;

   function Get_Parent
     (This : RoutingSlip_Type)
     return GNATCOM.Types.Pointer_To_IDispatch
   is
       RetVal : aliased GNATCOM.Types.Pointer_To_IDispatch;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Parent
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Parent;

   function Get_Subject
     (This : RoutingSlip_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Subject
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Subject;

   procedure Put_Subject
     (This : RoutingSlip_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Subject
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_Subject;

   function Get_Message
     (This : RoutingSlip_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Message
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Message;

   procedure Put_Message
     (This : RoutingSlip_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Message
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_Message;

   function Get_Delivery
     (This : RoutingSlip_Type)
     return WdRoutingSlipDelivery
   is
       RetVal : aliased WdRoutingSlipDelivery;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Delivery
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Delivery;

   procedure Put_Delivery
     (This : RoutingSlip_Type;
      prop : WdRoutingSlipDelivery)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Delivery
         (Pointer (This),
          prop));

   end Put_Delivery;

   function Get_TrackStatus
     (This : RoutingSlip_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_TrackStatus
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_TrackStatus;

   procedure Put_TrackStatus
     (This : RoutingSlip_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_TrackStatus
         (Pointer (This),
          prop));

   end Put_TrackStatus;

   function Get_Protect
     (This : RoutingSlip_Type)
     return WdProtectionType
   is
       RetVal : aliased WdProtectionType;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Protect
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Protect;

   procedure Put_Protect
     (This : RoutingSlip_Type;
      prop : WdProtectionType)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Protect
         (Pointer (This),
          prop));

   end Put_Protect;

   function Get_ReturnWhenDone
     (This : RoutingSlip_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ReturnWhenDone
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ReturnWhenDone;

   procedure Put_ReturnWhenDone
     (This : RoutingSlip_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ReturnWhenDone
         (Pointer (This),
          prop));

   end Put_ReturnWhenDone;

   function Get_Status
     (This : RoutingSlip_Type)
     return WdRoutingSlipStatus
   is
       RetVal : aliased WdRoutingSlipStatus;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Status
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Status;

   function Get_Recipients
     (This  : RoutingSlip_Type;
      Index : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return GNATCOM.Types.VARIANT
   is
       RetVal : aliased GNATCOM.Types.VARIANT;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Recipients
         (Pointer (This),
          Index,
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Recipients;

   procedure Reset
     (This : RoutingSlip_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Reset
         (Pointer (This)));

   end Reset;

   procedure AddRecipient
     (This      : RoutingSlip_Type;
      Recipient : GNATCOM.Types.BSTR;
      Free      : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.AddRecipient
         (Pointer (This),
          Recipient));

      if Free then
               GNATCOM.Interface.Free (Recipient);
      
      end if;

   end AddRecipient;

end winword.RoutingSlip_Interface;

