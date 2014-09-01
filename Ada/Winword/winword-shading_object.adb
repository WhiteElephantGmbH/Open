package body winword.Shading_Object is

   function Get_Application
     (This : Shading_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Shading_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : Shading_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Shading_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : Shading_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Shading_Get_Parent);
   end Get_Parent;

   function Get_ForegroundPatternColorIndex
     (This : Shading_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Shading_Get_ForegroundPatternColorIndex);
   end Get_ForegroundPatternColorIndex;

   procedure Put_ForegroundPatternColorIndex
     (This : Shading_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Shading_Put_ForegroundPatternColorIndex,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ForegroundPatternColorIndex;

   function Get_BackgroundPatternColorIndex
     (This : Shading_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Shading_Get_BackgroundPatternColorIndex);
   end Get_BackgroundPatternColorIndex;

   procedure Put_BackgroundPatternColorIndex
     (This : Shading_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Shading_Put_BackgroundPatternColorIndex,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_BackgroundPatternColorIndex;

   function Get_Texture
     (This : Shading_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Shading_Get_Texture);
   end Get_Texture;

   procedure Put_Texture
     (This : Shading_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Shading_Put_Texture,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Texture;

   function Get_ForegroundPatternColor
     (This : Shading_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Shading_Get_ForegroundPatternColor);
   end Get_ForegroundPatternColor;

   procedure Put_ForegroundPatternColor
     (This : Shading_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Shading_Put_ForegroundPatternColor,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ForegroundPatternColor;

   function Get_BackgroundPatternColor
     (This : Shading_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Shading_Get_BackgroundPatternColor);
   end Get_BackgroundPatternColor;

   procedure Put_BackgroundPatternColor
     (This : Shading_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Shading_Put_BackgroundPatternColor,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_BackgroundPatternColor;

end winword.Shading_Object;

