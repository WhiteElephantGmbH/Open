package body winword.HorizontalLineFormat_Object is

   function Get_Application
     (This : HorizontalLineFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HorizontalLineFormat_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : HorizontalLineFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HorizontalLineFormat_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : HorizontalLineFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HorizontalLineFormat_Get_Parent);
   end Get_Parent;

   function Get_PercentWidth
     (This : HorizontalLineFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HorizontalLineFormat_Get_PercentWidth);
   end Get_PercentWidth;

   procedure Put_PercentWidth
     (This : HorizontalLineFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         HorizontalLineFormat_Put_PercentWidth,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_PercentWidth;

   function Get_NoShade
     (This : HorizontalLineFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HorizontalLineFormat_Get_NoShade);
   end Get_NoShade;

   procedure Put_NoShade
     (This : HorizontalLineFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         HorizontalLineFormat_Put_NoShade,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_NoShade;

   function Get_Alignment
     (This : HorizontalLineFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HorizontalLineFormat_Get_Alignment);
   end Get_Alignment;

   procedure Put_Alignment
     (This : HorizontalLineFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         HorizontalLineFormat_Put_Alignment,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Alignment;

   function Get_WidthType
     (This : HorizontalLineFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HorizontalLineFormat_Get_WidthType);
   end Get_WidthType;

   procedure Put_WidthType
     (This : HorizontalLineFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         HorizontalLineFormat_Put_WidthType,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_WidthType;

end winword.HorizontalLineFormat_Object;

