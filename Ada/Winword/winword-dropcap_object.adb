package body winword.DropCap_Object is

   function Get_Application
     (This : DropCap_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, DropCap_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : DropCap_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, DropCap_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : DropCap_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, DropCap_Get_Parent);
   end Get_Parent;

   function Get_Position
     (This : DropCap_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, DropCap_Get_Position);
   end Get_Position;

   procedure Put_Position
     (This : DropCap_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         DropCap_Put_Position,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Position;

   function Get_FontName
     (This : DropCap_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, DropCap_Get_FontName);
   end Get_FontName;

   procedure Put_FontName
     (This : DropCap_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         DropCap_Put_FontName,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_FontName;

   function Get_LinesToDrop
     (This : DropCap_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, DropCap_Get_LinesToDrop);
   end Get_LinesToDrop;

   procedure Put_LinesToDrop
     (This : DropCap_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         DropCap_Put_LinesToDrop,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_LinesToDrop;

   function Get_DistanceFromText
     (This : DropCap_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, DropCap_Get_DistanceFromText);
   end Get_DistanceFromText;

   procedure Put_DistanceFromText
     (This : DropCap_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         DropCap_Put_DistanceFromText,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DistanceFromText;

   procedure Clear
     (This : DropCap_Type)
   is
   begin
      Invoke (This, DropCap_Clear);
   end Clear;

   procedure Enable
     (This : DropCap_Type)
   is
   begin
      Invoke (This, DropCap_Enable);
   end Enable;

end winword.DropCap_Object;

