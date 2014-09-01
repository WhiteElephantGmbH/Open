package body winword.ShadowFormat_Object is

   function Get_Application
     (This : ShadowFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ShadowFormat_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : ShadowFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ShadowFormat_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : ShadowFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ShadowFormat_Get_Parent);
   end Get_Parent;

   function Get_ForeColor
     (This : ShadowFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ShadowFormat_Get_ForeColor);
   end Get_ForeColor;

   function Get_Obscured
     (This : ShadowFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ShadowFormat_Get_Obscured);
   end Get_Obscured;

   procedure Put_Obscured
     (This : ShadowFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         ShadowFormat_Put_Obscured,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Obscured;

   function Get_OffsetX
     (This : ShadowFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ShadowFormat_Get_OffsetX);
   end Get_OffsetX;

   procedure Put_OffsetX
     (This : ShadowFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         ShadowFormat_Put_OffsetX,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_OffsetX;

   function Get_OffsetY
     (This : ShadowFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ShadowFormat_Get_OffsetY);
   end Get_OffsetY;

   procedure Put_OffsetY
     (This : ShadowFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         ShadowFormat_Put_OffsetY,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_OffsetY;

   function Get_Transparency
     (This : ShadowFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ShadowFormat_Get_Transparency);
   end Get_Transparency;

   procedure Put_Transparency
     (This : ShadowFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         ShadowFormat_Put_Transparency,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Transparency;

   function Get_Type
     (This : ShadowFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ShadowFormat_Get_Type);
   end Get_Type;

   procedure Put_Type
     (This : ShadowFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         ShadowFormat_Put_Type,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Type;

   function Get_Visible
     (This : ShadowFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ShadowFormat_Get_Visible);
   end Get_Visible;

   procedure Put_Visible
     (This : ShadowFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         ShadowFormat_Put_Visible,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Visible;

   procedure IncrementOffsetX
     (This      : ShadowFormat_Type;
      Increment : GNATCOM.Types.VARIANT;
      Free      : Boolean := True)
   is
   begin
      Invoke
        (This,
         ShadowFormat_IncrementOffsetX,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Increment),
         Free);
   end IncrementOffsetX;

   procedure IncrementOffsetY
     (This      : ShadowFormat_Type;
      Increment : GNATCOM.Types.VARIANT;
      Free      : Boolean := True)
   is
   begin
      Invoke
        (This,
         ShadowFormat_IncrementOffsetY,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Increment),
         Free);
   end IncrementOffsetY;

end winword.ShadowFormat_Object;

