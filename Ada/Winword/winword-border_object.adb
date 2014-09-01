package body winword.Border_Object is

   function Get_Application
     (This : Border_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Border_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : Border_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Border_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : Border_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Border_Get_Parent);
   end Get_Parent;

   function Get_Visible
     (This : Border_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Border_Get_Visible);
   end Get_Visible;

   procedure Put_Visible
     (This : Border_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Border_Put_Visible,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Visible;

   function Get_ColorIndex
     (This : Border_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Border_Get_ColorIndex);
   end Get_ColorIndex;

   procedure Put_ColorIndex
     (This : Border_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Border_Put_ColorIndex,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ColorIndex;

   function Get_Inside
     (This : Border_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Border_Get_Inside);
   end Get_Inside;

   function Get_LineStyle
     (This : Border_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Border_Get_LineStyle);
   end Get_LineStyle;

   procedure Put_LineStyle
     (This : Border_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Border_Put_LineStyle,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_LineStyle;

   function Get_LineWidth
     (This : Border_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Border_Get_LineWidth);
   end Get_LineWidth;

   procedure Put_LineWidth
     (This : Border_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Border_Put_LineWidth,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_LineWidth;

   function Get_ArtStyle
     (This : Border_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Border_Get_ArtStyle);
   end Get_ArtStyle;

   procedure Put_ArtStyle
     (This : Border_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Border_Put_ArtStyle,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ArtStyle;

   function Get_ArtWidth
     (This : Border_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Border_Get_ArtWidth);
   end Get_ArtWidth;

   procedure Put_ArtWidth
     (This : Border_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Border_Put_ArtWidth,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ArtWidth;

   function Get_Color
     (This : Border_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Border_Get_Color);
   end Get_Color;

   procedure Put_Color
     (This : Border_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Border_Put_Color,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Color;

end winword.Border_Object;

