package body winword.TabStop_Object is

   function Get_Application
     (This : TabStop_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TabStop_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : TabStop_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TabStop_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : TabStop_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TabStop_Get_Parent);
   end Get_Parent;

   function Get_Alignment
     (This : TabStop_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TabStop_Get_Alignment);
   end Get_Alignment;

   procedure Put_Alignment
     (This : TabStop_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TabStop_Put_Alignment,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Alignment;

   function Get_Leader
     (This : TabStop_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TabStop_Get_Leader);
   end Get_Leader;

   procedure Put_Leader
     (This : TabStop_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TabStop_Put_Leader,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Leader;

   function Get_Position
     (This : TabStop_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TabStop_Get_Position);
   end Get_Position;

   procedure Put_Position
     (This : TabStop_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TabStop_Put_Position,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Position;

   function Get_CustomTab
     (This : TabStop_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TabStop_Get_CustomTab);
   end Get_CustomTab;

   function Get_Next
     (This : TabStop_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TabStop_Get_Next);
   end Get_Next;

   function Get_Previous
     (This : TabStop_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TabStop_Get_Previous);
   end Get_Previous;

   procedure Clear
     (This : TabStop_Type)
   is
   begin
      Invoke (This, TabStop_Clear);
   end Clear;

end winword.TabStop_Object;

