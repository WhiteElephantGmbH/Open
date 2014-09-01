package body winword.EndnoteOptions_Object is

   function Get_Application
     (This : EndnoteOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, EndnoteOptions_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : EndnoteOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, EndnoteOptions_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : EndnoteOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, EndnoteOptions_Get_Parent);
   end Get_Parent;

   function Get_Location
     (This : EndnoteOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, EndnoteOptions_Get_Location);
   end Get_Location;

   procedure Put_Location
     (This : EndnoteOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         EndnoteOptions_Put_Location,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Location;

   function Get_NumberStyle
     (This : EndnoteOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, EndnoteOptions_Get_NumberStyle);
   end Get_NumberStyle;

   procedure Put_NumberStyle
     (This : EndnoteOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         EndnoteOptions_Put_NumberStyle,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_NumberStyle;

   function Get_StartingNumber
     (This : EndnoteOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, EndnoteOptions_Get_StartingNumber);
   end Get_StartingNumber;

   procedure Put_StartingNumber
     (This : EndnoteOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         EndnoteOptions_Put_StartingNumber,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_StartingNumber;

   function Get_NumberingRule
     (This : EndnoteOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, EndnoteOptions_Get_NumberingRule);
   end Get_NumberingRule;

   procedure Put_NumberingRule
     (This : EndnoteOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         EndnoteOptions_Put_NumberingRule,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_NumberingRule;

end winword.EndnoteOptions_Object;

