package body winword.Diagram_Object is

   function Get_Application
     (This : Diagram_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Diagram_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : Diagram_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Diagram_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : Diagram_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Diagram_Get_Parent);
   end Get_Parent;

   function Get_Nodes
     (This : Diagram_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Diagram_Get_Nodes);
   end Get_Nodes;

   function Get_Type
     (This : Diagram_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Diagram_Get_Type);
   end Get_Type;

   function Get_AutoLayout
     (This : Diagram_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Diagram_Get_AutoLayout);
   end Get_AutoLayout;

   procedure Put_AutoLayout
     (This : Diagram_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Diagram_Put_AutoLayout,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AutoLayout;

   function Get_Reverse
     (This : Diagram_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Diagram_Get_Reverse);
   end Get_Reverse;

   procedure Put_Reverse
     (This : Diagram_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Diagram_Put_Reverse,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Reverse;

   function Get_AutoFormat
     (This : Diagram_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Diagram_Get_AutoFormat);
   end Get_AutoFormat;

   procedure Put_AutoFormat
     (This : Diagram_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Diagram_Put_AutoFormat,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AutoFormat;

   procedure Convert
     (This  : Diagram_Type;
      uType : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
   is
   begin
      Invoke
        (This,
         Diagram_Convert,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => uType),
         Free);
   end Convert;

end winword.Diagram_Object;

