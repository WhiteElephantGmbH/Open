package body winword.IMsoDiagram_Object is

   function Get_Application
     (This : IMsoDiagram_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, IMsoDiagram_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : IMsoDiagram_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, IMsoDiagram_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : IMsoDiagram_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, IMsoDiagram_Get_Parent);
   end Get_Parent;

   function Get_Nodes
     (This : IMsoDiagram_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, IMsoDiagram_Get_Nodes);
   end Get_Nodes;

   function Get_Type
     (This : IMsoDiagram_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, IMsoDiagram_Get_Type);
   end Get_Type;

   function Get_AutoLayout
     (This : IMsoDiagram_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, IMsoDiagram_Get_AutoLayout);
   end Get_AutoLayout;

   procedure Put_AutoLayout
     (This : IMsoDiagram_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         IMsoDiagram_Put_AutoLayout,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AutoLayout;

   function Get_Reverse
     (This : IMsoDiagram_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, IMsoDiagram_Get_Reverse);
   end Get_Reverse;

   procedure Put_Reverse
     (This : IMsoDiagram_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         IMsoDiagram_Put_Reverse,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Reverse;

   function Get_AutoFormat
     (This : IMsoDiagram_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, IMsoDiagram_Get_AutoFormat);
   end Get_AutoFormat;

   procedure Put_AutoFormat
     (This : IMsoDiagram_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         IMsoDiagram_Put_AutoFormat,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AutoFormat;

   procedure Convert
     (This  : IMsoDiagram_Type;
      uType : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
   is
   begin
      Invoke
        (This,
         IMsoDiagram_Convert,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => uType),
         Free);
   end Convert;

end winword.IMsoDiagram_Object;

