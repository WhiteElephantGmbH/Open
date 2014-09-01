package body winword.TextColumn_Object is

   function Get_Application
     (This : TextColumn_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TextColumn_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : TextColumn_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TextColumn_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : TextColumn_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TextColumn_Get_Parent);
   end Get_Parent;

   function Get_Width
     (This : TextColumn_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TextColumn_Get_Width);
   end Get_Width;

   procedure Put_Width
     (This : TextColumn_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TextColumn_Put_Width,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Width;

   function Get_SpaceAfter
     (This : TextColumn_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TextColumn_Get_SpaceAfter);
   end Get_SpaceAfter;

   procedure Put_SpaceAfter
     (This : TextColumn_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TextColumn_Put_SpaceAfter,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_SpaceAfter;

end winword.TextColumn_Object;

