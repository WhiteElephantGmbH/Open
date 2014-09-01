package body winword.FootnoteOptions_Object is

   function Get_Application
     (This : FootnoteOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FootnoteOptions_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : FootnoteOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FootnoteOptions_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : FootnoteOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FootnoteOptions_Get_Parent);
   end Get_Parent;

   function Get_Location
     (This : FootnoteOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FootnoteOptions_Get_Location);
   end Get_Location;

   procedure Put_Location
     (This : FootnoteOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         FootnoteOptions_Put_Location,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Location;

   function Get_NumberStyle
     (This : FootnoteOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FootnoteOptions_Get_NumberStyle);
   end Get_NumberStyle;

   procedure Put_NumberStyle
     (This : FootnoteOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         FootnoteOptions_Put_NumberStyle,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_NumberStyle;

   function Get_StartingNumber
     (This : FootnoteOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FootnoteOptions_Get_StartingNumber);
   end Get_StartingNumber;

   procedure Put_StartingNumber
     (This : FootnoteOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         FootnoteOptions_Put_StartingNumber,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_StartingNumber;

   function Get_NumberingRule
     (This : FootnoteOptions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FootnoteOptions_Get_NumberingRule);
   end Get_NumberingRule;

   procedure Put_NumberingRule
     (This : FootnoteOptions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         FootnoteOptions_Put_NumberingRule,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_NumberingRule;

end winword.FootnoteOptions_Object;

