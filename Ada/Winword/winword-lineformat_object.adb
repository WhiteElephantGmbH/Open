package body winword.LineFormat_Object is

   function Get_Application
     (This : LineFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, LineFormat_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : LineFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, LineFormat_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : LineFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, LineFormat_Get_Parent);
   end Get_Parent;

   function Get_BackColor
     (This : LineFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, LineFormat_Get_BackColor);
   end Get_BackColor;

   function Get_BeginArrowheadLength
     (This : LineFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, LineFormat_Get_BeginArrowheadLength);
   end Get_BeginArrowheadLength;

   procedure Put_BeginArrowheadLength
     (This : LineFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         LineFormat_Put_BeginArrowheadLength,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_BeginArrowheadLength;

   function Get_BeginArrowheadStyle
     (This : LineFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, LineFormat_Get_BeginArrowheadStyle);
   end Get_BeginArrowheadStyle;

   procedure Put_BeginArrowheadStyle
     (This : LineFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         LineFormat_Put_BeginArrowheadStyle,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_BeginArrowheadStyle;

   function Get_BeginArrowheadWidth
     (This : LineFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, LineFormat_Get_BeginArrowheadWidth);
   end Get_BeginArrowheadWidth;

   procedure Put_BeginArrowheadWidth
     (This : LineFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         LineFormat_Put_BeginArrowheadWidth,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_BeginArrowheadWidth;

   function Get_DashStyle
     (This : LineFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, LineFormat_Get_DashStyle);
   end Get_DashStyle;

   procedure Put_DashStyle
     (This : LineFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         LineFormat_Put_DashStyle,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DashStyle;

   function Get_EndArrowheadLength
     (This : LineFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, LineFormat_Get_EndArrowheadLength);
   end Get_EndArrowheadLength;

   procedure Put_EndArrowheadLength
     (This : LineFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         LineFormat_Put_EndArrowheadLength,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_EndArrowheadLength;

   function Get_EndArrowheadStyle
     (This : LineFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, LineFormat_Get_EndArrowheadStyle);
   end Get_EndArrowheadStyle;

   procedure Put_EndArrowheadStyle
     (This : LineFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         LineFormat_Put_EndArrowheadStyle,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_EndArrowheadStyle;

   function Get_EndArrowheadWidth
     (This : LineFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, LineFormat_Get_EndArrowheadWidth);
   end Get_EndArrowheadWidth;

   procedure Put_EndArrowheadWidth
     (This : LineFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         LineFormat_Put_EndArrowheadWidth,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_EndArrowheadWidth;

   function Get_ForeColor
     (This : LineFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, LineFormat_Get_ForeColor);
   end Get_ForeColor;

   function Get_Pattern
     (This : LineFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, LineFormat_Get_Pattern);
   end Get_Pattern;

   procedure Put_Pattern
     (This : LineFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         LineFormat_Put_Pattern,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Pattern;

   function Get_Style
     (This : LineFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, LineFormat_Get_Style);
   end Get_Style;

   procedure Put_Style
     (This : LineFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         LineFormat_Put_Style,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Style;

   function Get_Transparency
     (This : LineFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, LineFormat_Get_Transparency);
   end Get_Transparency;

   procedure Put_Transparency
     (This : LineFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         LineFormat_Put_Transparency,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Transparency;

   function Get_Visible
     (This : LineFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, LineFormat_Get_Visible);
   end Get_Visible;

   procedure Put_Visible
     (This : LineFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         LineFormat_Put_Visible,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Visible;

   function Get_Weight
     (This : LineFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, LineFormat_Get_Weight);
   end Get_Weight;

   procedure Put_Weight
     (This : LineFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         LineFormat_Put_Weight,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Weight;

   function Get_InsetPen
     (This : LineFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, LineFormat_Get_InsetPen);
   end Get_InsetPen;

   procedure Put_InsetPen
     (This : LineFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         LineFormat_Put_InsetPen,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_InsetPen;

end winword.LineFormat_Object;

