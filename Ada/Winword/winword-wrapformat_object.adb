package body winword.WrapFormat_Object is

   function Get_Application
     (This : WrapFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, WrapFormat_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : WrapFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, WrapFormat_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : WrapFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, WrapFormat_Get_Parent);
   end Get_Parent;

   function Get_Type
     (This : WrapFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, WrapFormat_Get_Type);
   end Get_Type;

   procedure Put_Type
     (This : WrapFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         WrapFormat_Put_Type,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Type;

   function Get_Side
     (This : WrapFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, WrapFormat_Get_Side);
   end Get_Side;

   procedure Put_Side
     (This : WrapFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         WrapFormat_Put_Side,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Side;

   function Get_DistanceTop
     (This : WrapFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, WrapFormat_Get_DistanceTop);
   end Get_DistanceTop;

   procedure Put_DistanceTop
     (This : WrapFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         WrapFormat_Put_DistanceTop,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DistanceTop;

   function Get_DistanceBottom
     (This : WrapFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, WrapFormat_Get_DistanceBottom);
   end Get_DistanceBottom;

   procedure Put_DistanceBottom
     (This : WrapFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         WrapFormat_Put_DistanceBottom,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DistanceBottom;

   function Get_DistanceLeft
     (This : WrapFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, WrapFormat_Get_DistanceLeft);
   end Get_DistanceLeft;

   procedure Put_DistanceLeft
     (This : WrapFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         WrapFormat_Put_DistanceLeft,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DistanceLeft;

   function Get_DistanceRight
     (This : WrapFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, WrapFormat_Get_DistanceRight);
   end Get_DistanceRight;

   procedure Put_DistanceRight
     (This : WrapFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         WrapFormat_Put_DistanceRight,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DistanceRight;

   function Get_AllowOverlap
     (This : WrapFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, WrapFormat_Get_AllowOverlap);
   end Get_AllowOverlap;

   procedure Put_AllowOverlap
     (This : WrapFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         WrapFormat_Put_AllowOverlap,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AllowOverlap;

end winword.WrapFormat_Object;

