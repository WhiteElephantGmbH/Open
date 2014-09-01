package body winword.WebPageFont_Object is

   function Get_Application
     (This : WebPageFont_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, WebPageFont_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : WebPageFont_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, WebPageFont_Get_Creator);
   end Get_Creator;

   function Get_ProportionalFont
     (This : WebPageFont_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, WebPageFont_Get_ProportionalFont);
   end Get_ProportionalFont;

   procedure Put_ProportionalFont
     (This : WebPageFont_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         WebPageFont_Put_ProportionalFont,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ProportionalFont;

   function Get_ProportionalFontSize
     (This : WebPageFont_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, WebPageFont_Get_ProportionalFontSize);
   end Get_ProportionalFontSize;

   procedure Put_ProportionalFontSize
     (This : WebPageFont_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         WebPageFont_Put_ProportionalFontSize,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ProportionalFontSize;

   function Get_FixedWidthFont
     (This : WebPageFont_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, WebPageFont_Get_FixedWidthFont);
   end Get_FixedWidthFont;

   procedure Put_FixedWidthFont
     (This : WebPageFont_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         WebPageFont_Put_FixedWidthFont,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_FixedWidthFont;

   function Get_FixedWidthFontSize
     (This : WebPageFont_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, WebPageFont_Get_FixedWidthFontSize);
   end Get_FixedWidthFontSize;

   procedure Put_FixedWidthFontSize
     (This : WebPageFont_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         WebPageFont_Put_FixedWidthFontSize,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_FixedWidthFontSize;

end winword.WebPageFont_Object;

