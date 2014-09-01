package body winword.CalloutFormat_Object is

   function Get_Application
     (This : CalloutFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CalloutFormat_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : CalloutFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CalloutFormat_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : CalloutFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CalloutFormat_Get_Parent);
   end Get_Parent;

   function Get_Accent
     (This : CalloutFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CalloutFormat_Get_Accent);
   end Get_Accent;

   procedure Put_Accent
     (This : CalloutFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         CalloutFormat_Put_Accent,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Accent;

   function Get_Angle
     (This : CalloutFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CalloutFormat_Get_Angle);
   end Get_Angle;

   procedure Put_Angle
     (This : CalloutFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         CalloutFormat_Put_Angle,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Angle;

   function Get_AutoAttach
     (This : CalloutFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CalloutFormat_Get_AutoAttach);
   end Get_AutoAttach;

   procedure Put_AutoAttach
     (This : CalloutFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         CalloutFormat_Put_AutoAttach,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AutoAttach;

   function Get_AutoLength
     (This : CalloutFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CalloutFormat_Get_AutoLength);
   end Get_AutoLength;

   function Get_Border
     (This : CalloutFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CalloutFormat_Get_Border);
   end Get_Border;

   procedure Put_Border
     (This : CalloutFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         CalloutFormat_Put_Border,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Border;

   function Get_Drop
     (This : CalloutFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CalloutFormat_Get_Drop);
   end Get_Drop;

   function Get_DropType
     (This : CalloutFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CalloutFormat_Get_DropType);
   end Get_DropType;

   function Get_Gap
     (This : CalloutFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CalloutFormat_Get_Gap);
   end Get_Gap;

   procedure Put_Gap
     (This : CalloutFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         CalloutFormat_Put_Gap,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Gap;

   function Get_Length
     (This : CalloutFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CalloutFormat_Get_Length);
   end Get_Length;

   function Get_Type
     (This : CalloutFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CalloutFormat_Get_Type);
   end Get_Type;

   procedure Put_Type
     (This : CalloutFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         CalloutFormat_Put_Type,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Type;

   procedure AutomaticLength
     (This : CalloutFormat_Type)
   is
   begin
      Invoke (This, CalloutFormat_AutomaticLength);
   end AutomaticLength;

   procedure CustomDrop
     (This : CalloutFormat_Type;
      Drop : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Invoke
        (This,
         CalloutFormat_CustomDrop,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Drop),
         Free);
   end CustomDrop;

   procedure CustomLength
     (This   : CalloutFormat_Type;
      Length : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
   is
   begin
      Invoke
        (This,
         CalloutFormat_CustomLength,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Length),
         Free);
   end CustomLength;

   procedure PresetDrop
     (This     : CalloutFormat_Type;
      DropType : GNATCOM.Types.VARIANT;
      Free     : Boolean := True)
   is
   begin
      Invoke
        (This,
         CalloutFormat_PresetDrop,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => DropType),
         Free);
   end PresetDrop;

end winword.CalloutFormat_Object;

