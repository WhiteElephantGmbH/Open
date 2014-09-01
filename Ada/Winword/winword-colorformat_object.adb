package body winword.ColorFormat_Object is

   function Get_Application
     (This : ColorFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ColorFormat_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : ColorFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ColorFormat_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : ColorFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ColorFormat_Get_Parent);
   end Get_Parent;

   function Get_RGB
     (This : ColorFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ColorFormat_Get_RGB);
   end Get_RGB;

   procedure Put_RGB
     (This : ColorFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         ColorFormat_Put_RGB,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_RGB;

   function Get_SchemeColor
     (This : ColorFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ColorFormat_Get_SchemeColor);
   end Get_SchemeColor;

   procedure Put_SchemeColor
     (This : ColorFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         ColorFormat_Put_SchemeColor,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_SchemeColor;

   function Get_Type
     (This : ColorFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ColorFormat_Get_Type);
   end Get_Type;

   function Get_Name
     (This : ColorFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ColorFormat_Get_Name);
   end Get_Name;

   procedure Put_Name
     (This : ColorFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         ColorFormat_Put_Name,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Name;

   function Get_TintAndShade
     (This : ColorFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ColorFormat_Get_TintAndShade);
   end Get_TintAndShade;

   procedure Put_TintAndShade
     (This : ColorFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         ColorFormat_Put_TintAndShade,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_TintAndShade;

   function Get_OverPrint
     (This : ColorFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ColorFormat_Get_OverPrint);
   end Get_OverPrint;

   procedure Put_OverPrint
     (This : ColorFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         ColorFormat_Put_OverPrint,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_OverPrint;

   function Get_Ink
     (This  : ColorFormat_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get
        (This,
         ColorFormat_Get_Ink,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Get_Ink;

   procedure Put_Ink
     (This  : ColorFormat_Type;
      Index : GNATCOM.Types.VARIANT;
      P2    : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
   is
   begin
      Put
        (This,
         ColorFormat_Put_Ink,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P2,
          2 => Index),
         Free);
   end Put_Ink;

   function Get_Cyan
     (This : ColorFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ColorFormat_Get_Cyan);
   end Get_Cyan;

   procedure Put_Cyan
     (This : ColorFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         ColorFormat_Put_Cyan,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Cyan;

   function Get_Magenta
     (This : ColorFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ColorFormat_Get_Magenta);
   end Get_Magenta;

   procedure Put_Magenta
     (This : ColorFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         ColorFormat_Put_Magenta,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Magenta;

   function Get_Yellow
     (This : ColorFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ColorFormat_Get_Yellow);
   end Get_Yellow;

   procedure Put_Yellow
     (This : ColorFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         ColorFormat_Put_Yellow,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Yellow;

   function Get_Black
     (This : ColorFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ColorFormat_Get_Black);
   end Get_Black;

   procedure Put_Black
     (This : ColorFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         ColorFormat_Put_Black,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Black;

   procedure SetCMYK
     (This    : ColorFormat_Type;
      Cyan    : GNATCOM.Types.VARIANT;
      Magenta : GNATCOM.Types.VARIANT;
      Yellow  : GNATCOM.Types.VARIANT;
      Black   : GNATCOM.Types.VARIANT;
      Free    : Boolean := True)
   is
   begin
      Invoke
        (This,
         ColorFormat_SetCMYK,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Black,
          2 => Yellow,
          3 => Magenta,
          4 => Cyan),
         Free);
   end SetCMYK;

end winword.ColorFormat_Object;

